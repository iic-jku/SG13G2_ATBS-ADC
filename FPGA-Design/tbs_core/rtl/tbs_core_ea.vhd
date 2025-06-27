-- =====================================================
-- Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
-- Author: Simon Dorrer
-- Last Modified: 17.10.2024
-- Description: This .vhd file combines every sub-entities and includes the main control FSM.
-- =====================================================

-- input switch MAX4564
-- enable_analog ... !EN
-- input_analog  ... IN
-- !EN = 0 and IN = 0  --> ECG
-- !EN = 0 and IN = 1  --> BNC
-- !EN = 1 and IN = DC --> HIGH-Z

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity tbs_core is
	generic(
		-- MAIN CONSTANTS
    CLK_FREQ                    : natural;
    MAIN_COUNTER_BITWIDTH       : natural;
		MAIN_COUNTER_MAX	          : natural;
    DEBOUNCER_BITWIDTH          : natural;
		DEBOUNCER_MAX			          : natural;
    -- COMPARATOR INPUT CONSTANTS
    N_FF	                      : natural;
		N_CHANNELS	                : natural;
    -- TBS CONSTANTS
    MAX_CLIPPING_VALUE          : natural;
    MIN_CLIPPING_VALUE          : natural;
    -- ATBS CONSTANTS
    D_MAX_LIM                   : natural;
    D_MIN_LIM                   : natural;
    WEYLSD_BITS                 : natural;
    DELTA_STEPS_BITWIDTH        : natural;
    -- TIME MEASUREMENT CONSTANTS
    TIME_COUNTER_BITWIDTH	      : natural;
		TIME_COUNTER_MAX	          : natural;
    -- DAC CONSTANTS
    DAC_SETTLING_CLKS           : natural;
    DAC_BITWIDTH                : natural;
    -- ANALOG TRIGGER CONSTANTS
    TRIGGER_COUNTER_BITWIDTH    : natural;
    TRIGGER_COUNTER_MAX         : natural;
    -- SC NOC GENERATOR
    SC_NOC_COUNTER_BITWIDTH     : natural;
    SC_NOC_COUNTER_MAX          : natural;
    -- MEMORY CONSTANTS
    ADDR_BITWIDTH		            : natural;
		DATA_BITWIDTH		            : natural;
    -- UART CONSTANTS
    UART_BAUD_COUNTER_BITWIDTH  : natural;
    UART_BAUD_COUNTER_MAX       : natural;
    UART_DATA_LENGTH            : natural
	);
	port(
    -- INPUTS
    clock_i				            : in std_ulogic;
    reset_btn_i				        : in std_ulogic;
    -- Comparators
    comp_upper_i		          : in std_ulogic; -- Output of comparator of upper threshold
    comp_lower_i		          : in std_ulogic; -- Output of comparator of lower threshold
    -- AWG Trigger
    trigger_start_sampling_i  : in std_ulogic; -- Coming from AWG Trigger
    -- Switches for different modes
    trigger_start_mode_i      : in std_ulogic; -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           : in std_ulogic; -- SW1: TBS(0), ATBS(1)
    control_mode_i            : in std_ulogic; -- SW2: Switches(0), UART(1)
    -- Switch for Input Signal Select Switch
    signal_select_in_i        : in std_ulogic; -- SW3: ECG(0), BNC(1)
    -- Enable Switch for Input Signal Select Switch, Amp. and DAC.
    enable_i                  : in std_ulogic; -- SW4: Disable(0), Enable(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  : in std_ulogic; -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    -- Select Comparator Type (CT/DT comparator)
    select_comparator_type_i  : in std_ulogic; -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    -- Check ECG LOD (Leads Off Comparator) --> Are ECG electrodes connected?
    ecg_lod_p_i               : in std_ulogic;
    ecg_lod_n_i				        : in std_ulogic;
    
    -- OUTPUTS
    -- Input Signal Select Switch
    signal_select_en_o        : out std_ulogic;
    signal_select_in_o        : out std_ulogic;
    -- Biosignal Amp. Shutdown
    amp_sdn_o                 : out std_ulogic; -- active LOW
    -- DAC
    dac_pd_o                  : out std_ulogic; -- active LOW
    dac_clr_o                 : out std_ulogic; -- active LOW
    dac_wr_upper_o            : out std_ulogic; -- active LOW
    dac_wr_lower_o            : out std_ulogic; -- active LOW
    dac_upper_o	              :	out std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);
    dac_lower_o	              :	out std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);
    -- LEDs
    idle_led_o                : out std_ulogic;	-- LEDR0: '1'... Lights up, if Main FSM is in idle state!
    overflow_led_o            : out std_ulogic;	-- LEDR1: '1'... Lights up, if FIFO is full!
    underflow_led_o           : out std_ulogic;	-- LEDR2: '1'... Lights up, if FIFO is empty!
    ecg_led_o                 : out std_ulogic;	-- LEDR3: '1'... Lights up, if ECG electrodes are connected!
    -- Analog Trigger
    analog_trigger_o          : out std_ulogic;
    -- Switched Capacitor Non-Overlapping Clock Generator
    sc_noc_1_o                : out std_ulogic;
    sc_noc_2_o                : out std_ulogic;
    -- UART
    uart_rx_i      			      : in std_ulogic;
    uart_tx_o      			      : out std_ulogic
	);
end entity tbs_core;

architecture rtl of tbs_core is

-- CONSTANTS
-- Analog Trigger
constant TRIGGER_COUNTER_MAX_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX - 1));          -- 50kHz
constant TRIGGER_COUNTER_DEFAULT_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 2 - 1));  -- 100kHz
constant TRIGGER_COUNTER_MIN_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 4 - 1));      -- 200kHz

constant TRIGGER_COUNTER_DD25_MAX_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 4));
constant TRIGGER_COUNTER_DD50_MAX_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 2));

constant TRIGGER_COUNTER_DD25_DEFAULT_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 2 / 4));
constant TRIGGER_COUNTER_DD50_DEFAULT_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 2 / 2));

constant TRIGGER_COUNTER_DD25_MIN_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 4 / 4));
constant TRIGGER_COUNTER_DD50_MIN_PERIOD : natural := natural(real(TRIGGER_COUNTER_MAX / 4 / 2));

-- Switched Capacitor Non-Overlapping Clock Generator
constant SC_NOC_COUNTER_MAX_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX - 1));            -- 10Hz
constant SC_NOC_COUNTER_DEFAULT_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 2 - 1));    -- 20Hz
constant SC_NOC_COUNTER_MIN_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 4 - 1));        -- 40Hz

constant SC_NOC_COUNTER_DD25_MAX_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 4));
constant SC_NOC_COUNTER_DD25_DEFAULT_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 2 / 4));
constant SC_NOC_COUNTER_DD25_MIN_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 4 / 4));

constant SC_NOC_DELAY_MAX_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 2));
constant SC_NOC_DELAY_DEFAULT_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 2 / 2));
constant SC_NOC_DELAY_MIN_PERIOD : natural := natural(real(SC_NOC_COUNTER_MAX / 2 / 4));

-- UART
constant UART_BAUD_COUNTER_19200  : natural := natural(real(CLK_FREQ) / real(19200));   -- 19200 Baudrate
constant UART_BAUD_COUNTER_38400  : natural := natural(real(CLK_FREQ) / real(38400));   -- 38400 Baudrate
constant UART_BAUD_COUNTER_57600  : natural := natural(real(CLK_FREQ) / real(57600));   -- 57600 Baudrate
constant UART_BAUD_COUNTER_115200 : natural := natural(real(CLK_FREQ) / real(115200));  -- 115200 Baudrate

-- TBS "Virtual" DAC resolution
constant TBS_VIRTUAL_DELTA_STEPS_2  : natural := natural(2);  -- N-1 Bit
constant TBS_VIRTUAL_DELTA_STEPS_4  : natural := natural(4);  -- N-2 Bit
constant TBS_VIRTUAL_DELTA_STEPS_8  : natural := natural(8);  -- N-3 Bit
constant TBS_VIRTUAL_DELTA_STEPS_16 : natural := natural(16); -- N-4 Bit
constant TBS_VIRTUAL_DELTA_STEPS_32 : natural := natural(32); -- N-5 Bit

-- ATBS window length
constant WIN_BITS : natural := TIME_COUNTER_BITWIDTH + 1;
constant ATBS_WIN_LENGTH_1  : natural := natural(real(CLK_FREQ) * real(0.001)); -- 1ms
constant ATBS_WIN_LENGTH_2  : natural := natural(real(CLK_FREQ) * real(0.002)); -- 2ms
constant ATBS_WIN_LENGTH_4  : natural := natural(real(CLK_FREQ) * real(0.004)); -- 4ms (default)
constant ATBS_WIN_LENGTH_8  : natural := natural(real(CLK_FREQ) * real(0.008)); -- 8ms
constant ATBS_WIN_LENGTH_16 : natural := natural(real(CLK_FREQ) * real(0.016)); -- 16ms
constant ATBS_WIN_LENGTH_32 : natural := natural(real(CLK_FREQ) * real(0.032)); -- 32ms

-- ATBS max. delta steps
--> deltasteps_max = 64; % dac_bitwidth = 10: adaptive between 4-Bit and 10-Bit
--> deltasteps_max = 32; % dac_bitwidth = 8: adaptive between 3-Bit and 8-Bit
constant ATBS_MAX_DELTA_STEPS_4  : natural := natural(4);  -- max. 4 steps
constant ATBS_MAX_DELTA_STEPS_8  : natural := natural(8);  -- max. 8 steps
constant ATBS_MAX_DELTA_STEPS_16 : natural := natural(16); -- max. 16 steps
constant ATBS_MAX_DELTA_STEPS_32 : natural := natural(32); -- max. 32 steps
constant ATBS_MAX_DELTA_STEPS_64 : natural := natural(64); -- max. 64 steps
-- =====================================================

-- INTERNAL signals

-- RESET & INPUT HARDWARE
-- =====================================================
signal reset_i      : std_ulogic;
signal reset_sync   : std_ulogic;
signal reset_entity : std_ulogic;

-- Buttons
signal trigger_start_sampling_sync  : std_ulogic;

-- Switches
signal trigger_start_mode_debounced       : std_ulogic;
signal adaptive_mode_debounced 	          : std_ulogic;
signal control_mode_debounced 	          : std_ulogic;
signal signal_select_in_debounced 	      : std_ulogic;
signal enable_debounced                   : std_ulogic;
signal select_tbs_delta_steps_debounced   : std_ulogic;
signal select_comparator_type_debounced   : std_ulogic;

-- Edge detection
signal adaptive_mode_d 	            : std_ulogic;
signal control_mode_d 	            : std_ulogic;
signal signal_select_in_d 	        : std_ulogic;
signal select_tbs_delta_steps_d     : std_ulogic;
signal trigger_start_mode_d         : std_ulogic;
signal trigger_start_sampling_d     : std_ulogic;

signal adaptive_mode_edge_f           : std_ulogic;
signal adaptive_mode_edge_r           : std_ulogic;
signal control_mode_edge_f 	          : std_ulogic;
signal control_mode_edge_r  	        : std_ulogic;
signal select_tbs_delta_steps_edge_f  : std_ulogic;
signal select_tbs_delta_steps_edge_r  : std_ulogic;
signal signal_select_in_edge_f 	      : std_ulogic;
signal signal_select_in_edge_r 	      : std_ulogic;
signal trigger_start_mode_edge_f      : std_ulogic;
signal trigger_start_mode_edge_r      : std_ulogic;
signal trigger_start_sampling_edge_r  : std_ulogic;

-- Input changed strobes
signal input_changed_strb             : std_ulogic;
signal input_changed_reset_strb       : std_ulogic;

signal uart_changed_strb              : std_ulogic;
signal uart_changed_reset_strb        : std_ulogic;

-- ADAPTIVE THRESHOLD BASED SAMPLING SECTION
-- =====================================================
-- Modeling DT comparator
signal dt_comp_upper 	      : std_ulogic;
signal dt_comp_lower 	      : std_ulogic;

-- MUX Output of CT/DT comparator select
signal comp_upper_mux 	    : std_ulogic;
signal comp_lower_mux 	    : std_ulogic;

-- Input hardware entity signals
signal comp_upper_sync 	    : std_ulogic;
signal comp_lower_sync 	    : std_ulogic;

-- Spike-Detector entity signals
signal spike 				        : std_ulogic;
signal spike_strb	          : std_ulogic;
signal detection_en     	  : std_ulogic;
signal pause_detection_strb : std_ulogic;

-- Clipping to increasing boundaries
signal increasing_en            : std_ulogic;
signal decreasing_en            : std_ulogic;
signal next_tbs_increasing_en   : std_ulogic;
signal next_tbs_decreasing_en   : std_ulogic;
signal tbs_increasing_en        : std_ulogic;
signal tbs_decreasing_en        : std_ulogic;
signal atbs_increasing_en       : std_ulogic;
signal atbs_decreasing_en       : std_ulogic;

-- TBS delta steps
signal tbs_delta_steps_upper        : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal tbs_delta_steps_lower        : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

-- Adaptive-Control entity signals
signal reset_delta_steps_strb       : std_ulogic;
signal atbs_direction_upper         : std_ulogic; -- DOWN(0), UP(1)
signal atbs_direction_lower         : std_ulogic; -- DOWN(0), UP(1)
signal atbs_delta_steps_upper_strb  : std_ulogic;
signal atbs_delta_steps_lower_strb  : std_ulogic;
signal atbs_delta_steps_upper       : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal atbs_delta_steps_lower       : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal adapt_on_overflow_strb       : std_ulogic;

-- DAC-Control entity signals
signal clear_dac     	: std_ulogic;
signal dac_init_strb  : std_ulogic;

signal direction_upper          : std_ulogic; -- DOWN(0), UP(1)
signal update_dac_upper_strb    : std_ulogic;
signal dac_counter_value_upper  : unsigned(DAC_BITWIDTH - 1 downto 0);
signal dac_finished_upper_strb  : std_ulogic;
signal dac_pd_upper   : std_ulogic;
signal dac_wr_upper   : std_ulogic;
signal dac_clr_upper  : std_ulogic;
signal dac_upper	    : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);

signal direction_lower          : std_ulogic; -- DOWN(0), UP(1)
signal update_dac_lower_strb    : std_ulogic;
signal dac_counter_value_lower  : unsigned(DAC_BITWIDTH - 1 downto 0);
signal dac_finished_lower_strb  : std_ulogic;
signal dac_pd_lower   : std_ulogic;
signal dac_wr_lower   : std_ulogic;
signal dac_clr_lower  : std_ulogic;
signal dac_lower	    : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);  

-- STORAGE & SHIFT (MUX, D-FF, ENABLE BEHAVIOUR) SECTION
-- =====================================================
signal delta_steps_upper_strb  : std_ulogic;
signal delta_steps_lower_strb  : std_ulogic;
signal delta_steps_upper       : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal delta_steps_lower       : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
  
-- ENCODING and COMMUNICATION SECTION
-- =====================================================
-- Time-Measurement entity signals
signal reset_time_measurement       : std_ulogic;
signal reset_time_measurement_strb  : std_ulogic; 
signal overflow_strb                : std_ulogic; 
signal curr_time 		                : unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);

-- Spike-Encoder signals
signal encoded_spike 	      : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
signal encoded_spike_strb	  : std_ulogic;

-- Communication MUX signals
signal select_enable_write  : std_ulogic;
signal enable_write_mux     : std_ulogic;
  
-- Spike-Memory signals
signal enable_read		      : std_ulogic;
signal read_strb 	          : std_logic;
signal b_data  				      : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
signal fifo_full		  	    : std_ulogic;
signal fifo_empty   		    : std_ulogic;

-- UART signals
signal uart_reset           : std_ulogic;
signal tx_start_strb        : std_ulogic;
signal uart_tx_strb         : std_ulogic;
signal uart_tx              : std_ulogic;
signal tx_data  		        : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal uart_rx_data_strb    : std_ulogic;
signal uart_rx_data  		    : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);

-- UART CONTROL SECTION
-- =====================================================
signal analog_trigger_uart                        : std_ulogic;
signal next_analog_trigger_uart                   : std_ulogic;
signal analog_trigger_period_adj_uart             : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
signal next_analog_trigger_period_adj_uart        : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
signal analog_trigger_duty_cycle_adj_uart         : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
signal next_analog_trigger_duty_cycle_adj_uart    : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);

signal sc_noc_generator_uart                      : std_ulogic;
signal next_sc_noc_generator_uart                 : std_ulogic;
signal sc_noc_generator_period_adj_uart           : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal next_sc_noc_generator_period_adj_uart      : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal sc_noc_generator_duty_cycle_adj_uart       : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal next_sc_noc_generator_duty_cycle_adj_uart  : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal sc_noc_generator_overlap_adj_uart          : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal next_sc_noc_generator_overlap_adj_uart     : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);

signal baudrate_uart            : std_ulogic;
signal next_baudrate_uart       : std_ulogic;
signal baudrate_adj_uart        : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
signal next_baudrate_adj_uart   : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);

signal tbs_virtual_delta_steps_uart           : std_ulogic;
signal next_tbs_virtual_delta_steps_uart      : std_ulogic;
signal next_tbs_virtual_delta_steps_adj_uart  : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal tbs_virtual_delta_steps_adj_uart       : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

signal atbs_win_length_uart           : std_ulogic;
signal next_atbs_win_length_uart      : std_ulogic;
signal atbs_win_length_adj_uart       : unsigned(WIN_BITS - 1 downto 0);
signal next_atbs_win_length_adj_uart  : unsigned(WIN_BITS - 1 downto 0);

signal atbs_max_delta_steps_uart          : std_ulogic;
signal next_atbs_max_delta_steps_uart     : std_ulogic;
signal atbs_max_delta_steps_adj_uart      : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal next_atbs_max_delta_steps_adj_uart : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

-- MAIN CONTROL SECTION
-- =====================================================
-- MAIN-COUNTER
signal main_counter_value 			: unsigned(MAIN_COUNTER_BITWIDTH - 1 downto 0);
signal next_main_counter_value  : unsigned(MAIN_COUNTER_BITWIDTH - 1 downto 0);

signal reset_main_counter_strb  : std_ulogic;

-- MAIN-FSM
type TState is (main_idle, main_reset, main_init, wait_for_dac, wait_for_trigger_1, ignore_trigger_1, wait_for_trigger_2, main_sampling);
signal state				            : TState;
signal next_state               : TState;

signal next_idle_led            : std_ulogic;
signal next_overflow_led        : std_ulogic;
signal next_underflow_led       : std_ulogic;
signal next_select_enable_write : std_ulogic;
signal next_enable_read         : std_ulogic;
signal next_detection_en     	  : std_ulogic;
signal next_clear_dac     	    : std_ulogic;

-- LED signals
signal idle_led                 : std_ulogic;
signal overflow_led             : std_ulogic;
signal underflow_led            : std_ulogic;

-- Analog Trigger
signal analog_trigger           : std_ulogic;

-- Switched Capacitor (SC) Non-Overlapping Clock (NOC) Generator
signal sc_noc_1                 : std_ulogic;
signal sc_noc_2                 : std_ulogic;

-- CONTROL MODE SECTION (DEBUG, ADAPTIVE, SIGNAL SELECT, ENABLE)
-- =====================================================
signal trigger_start_mode           : std_ulogic;
signal trigger_start_mode_uart      : std_ulogic;
signal next_trigger_start_mode_uart : std_ulogic;

signal adaptive_mode              : std_ulogic;
signal adaptive_mode_uart         : std_ulogic;
signal next_adaptive_mode_uart    : std_ulogic;

signal signal_select_in           : std_ulogic;
signal signal_select_in_uart      : std_ulogic;
signal next_signal_select_in_uart : std_ulogic;

signal enable_analog              : std_ulogic;
signal enable_analog_uart         : std_ulogic;
signal next_enable_analog_uart    : std_ulogic;

signal select_tbs_delta_steps           : std_ulogic;
signal select_tbs_delta_steps_uart      : std_ulogic;
signal next_select_tbs_delta_steps_uart : std_ulogic;

signal uart_start_sampling_strb : std_ulogic;
  
begin
  
  -- =====================================================
  -- RESET & INPUT HARDWARE (DEBOUNCING / SYNCHRONIZATION)
  -- =====================================================
  
  -- Embed Synchronization Chain entity for synchronized asynchronous reset
	sync_chain_0: entity sync_chain(rtl)
	generic map(
		N_FF        => N_FF,
		N_CHANNELS  => 1
	)
	port map(
		clock_i     => clock_i,
		reset_i     => reset_btn_i,
		async_i(0)  => '1', -- reset removal, to be synchronized.
    
    sync_o(0)   => reset_sync
	);
	-- =====================================================
  
  -- Reset (Button or UART or Input Changed Reset)
  reset_i <= not reset_sync or uart_reset; -- highest priority reset
  reset_entity <= reset_i or input_changed_reset_strb or uart_changed_reset_strb; -- entity reset of signal path
  -- =====================================================
  
  -- Embed Generic Synchronization Chain entity for trigger_start_sampling_i
  sync_chain_2: entity sync_chain(rtl)
	generic map(
		N_FF        => N_FF,
		N_CHANNELS  => 1
	)
	port map(
		clock_i     => clock_i,
		reset_i     => reset_i,
    async_i(0)  => trigger_start_sampling_i,
    
    sync_o(0)   => trigger_start_sampling_sync
	);
  -- =====================================================
  
  -- Embed Debouncer entities for switch inputs
  -- These debouncers are optional, but good practice for the final ASIC.
  -- Only a debouncer for the enable pin is needed. For all other switches a synchronization chain is enough.
	debouncer_0: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => trigger_start_mode_i,
    
    debounced_o	        => trigger_start_mode_debounced
	);
  
  debouncer_1: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => adaptive_mode_i,
    
    debounced_o	        => adaptive_mode_debounced
	);
  
  debouncer_2: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => control_mode_i,
    
    debounced_o	        => control_mode_debounced
	);
  
  debouncer_3: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => signal_select_in_i,
    
    debounced_o	        => signal_select_in_debounced
	);
  
  debouncer_4: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => enable_i,
    
    debounced_o	        => enable_debounced
	);
  
  debouncer_5: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => select_tbs_delta_steps_i,
    
    debounced_o	        => select_tbs_delta_steps_debounced
	);
  
  debouncer_6: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
    DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset_i,
    bouncing_i		      => select_comparator_type_i,
    
    debounced_o	        => select_comparator_type_debounced
	);
  -- =====================================================
  
  -- Input changed detection / Edge detection
	delay_reg: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
      trigger_start_sampling_d <= '0';
      trigger_start_mode_d <= '0';
      adaptive_mode_d <= '0';
      control_mode_d <= '0';
      signal_select_in_d <= '0';
      select_tbs_delta_steps_d <= '0';
		elsif rising_edge(clock_i) then
      trigger_start_sampling_d <= trigger_start_sampling_sync;
      trigger_start_mode_d <= trigger_start_mode_debounced;
      adaptive_mode_d	<= adaptive_mode_debounced;
      control_mode_d <= control_mode_debounced;
      signal_select_in_d <= signal_select_in_debounced;
      select_tbs_delta_steps_d <= select_tbs_delta_steps_debounced;
		end if;
	end process delay_reg;
  
  trigger_start_sampling_edge_r <= (not trigger_start_sampling_d) and trigger_start_sampling_sync;
  trigger_start_mode_edge_f <= trigger_start_mode_d and (not trigger_start_mode_debounced);
	trigger_start_mode_edge_r <= (not trigger_start_mode_d) and trigger_start_mode_debounced;
  adaptive_mode_edge_f <= adaptive_mode_d and (not adaptive_mode_debounced);
	adaptive_mode_edge_r <= (not adaptive_mode_d) and adaptive_mode_debounced;
  control_mode_edge_f <= control_mode_d and (not control_mode_debounced);
	control_mode_edge_r <= (not control_mode_d) and control_mode_debounced;
  signal_select_in_edge_f <= signal_select_in_d and (not signal_select_in_debounced);
	signal_select_in_edge_r <= (not signal_select_in_d) and signal_select_in_debounced;
  select_tbs_delta_steps_edge_f <= select_tbs_delta_steps_d and (not select_tbs_delta_steps_debounced);
	select_tbs_delta_steps_edge_r <= (not select_tbs_delta_steps_d) and select_tbs_delta_steps_debounced;

  input_changed_strb <= '1' when (trigger_start_mode_edge_f = '1' or trigger_start_mode_edge_r = '1' or 
                            adaptive_mode_edge_f = '1' or adaptive_mode_edge_r = '1' or
                            control_mode_edge_f = '1' or control_mode_edge_r = '1' or
                            signal_select_in_edge_f = '1' or signal_select_in_edge_r = '1' or
                            select_tbs_delta_steps_edge_f = '1' or select_tbs_delta_steps_edge_r = '1') else '0';
	-- =====================================================
  
  
  -- =====================================================
  -- ADAPTIVE THRESHOLD BASED SAMPLING SECTION (Synchronization Chain, Spike-Detector, Adaptive-Control and DAC-Control)
  -- =====================================================
  
  -- Modeling DT comparator
  -- Register with enable (analog_trigger)
  dt_comp_reg: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
      dt_comp_upper <= '0';
      dt_comp_lower <= '0';
		elsif rising_edge(clock_i) then
      if analog_trigger = '1' then
        dt_comp_upper <= comp_upper_i;
        dt_comp_lower <= comp_lower_i;
      end if;
		end if;
	end process dt_comp_reg;
  -- =====================================================
  
  -- MUX for selecting input directly or modeling of DT comparator
  comp_upper_mux <= dt_comp_upper when select_comparator_type_debounced = '1' else comp_upper_i;
  comp_lower_mux <= dt_comp_lower when select_comparator_type_debounced = '1' else comp_lower_i;
  -- =====================================================
  
  -- Embed Generic Synchronization Chain entity for Comparator Inputs
	sync_chain_1: entity sync_chain(rtl)
	generic map(
		N_FF        => N_FF,
		N_CHANNELS  => N_CHANNELS
	)
	port map(
		clock_i     => clock_i,
		reset_i 		=> reset_i,
		async_i(0)  => comp_upper_mux,
    async_i(1)  => comp_lower_mux,
    
    sync_o(0)   => comp_upper_sync,
		sync_o(1)   => comp_lower_sync
	);
	-- =====================================================
  
  -- Embed Spike-Detector entity
  spike_detector_0: entity spike_detector(rtl)
	port map(
		clock_i				                => clock_i,
		reset_i				                => reset_entity,
		
    detection_en_i                => detection_en,
		comp_upper_i                  => comp_upper_sync,
		comp_lower_i                  => comp_lower_sync,
    change_upper_strb_i           => delta_steps_upper_strb,
    change_lower_strb_i           => delta_steps_lower_strb,
    stopped_changing_upper_strb_i => dac_finished_upper_strb,
    stopped_changing_lower_strb_i => dac_finished_lower_strb,
    increasing_en_i               => increasing_en,
    decreasing_en_i               => decreasing_en,
    pause_detection_strb_i        => pause_detection_strb,

		spike_o 			                => spike,
		spike_strb_o	                => spike_strb
	);
	-- =====================================================
  
  -- Embed Adaptive-Control entity
  adaptive_ctrl_0: entity adaptive_threshold_control(rtl)
  generic map(
    WIN_BITS                  => WIN_BITS,
    TIME_COUNTER_BITWIDTH     => TIME_COUNTER_BITWIDTH,
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
    DAC_BITWIDTH              => DAC_BITWIDTH,
    MAX_CLIPPING_VALUE        => MAX_CLIPPING_VALUE,
    MIN_CLIPPING_VALUE        => MIN_CLIPPING_VALUE,
    WEYLSD_BITS               => WEYLSD_BITS,
    D_MAX_LIM                 => D_MAX_LIM
  )
  port map(
    clock_i				            => clock_i,
    reset_i				            => reset_entity,
    sync_reset_i              => reset_delta_steps_strb,
    overflow_strb_i           => overflow_strb,
    curr_time_i               => curr_time,
    spike_i                   => spike,
    spike_strb_i              => spike_strb,
    d_max_i                   => to_unsigned(D_MAX_LIM, WEYLSD_BITS),
    d_min_i                   => to_unsigned(D_MIN_LIM, WEYLSD_BITS),
    win_length_i              => atbs_win_length_adj_uart,
    max_delta_steps_i         => atbs_max_delta_steps_adj_uart,
    
    increasing_en_o           => atbs_increasing_en,
    decreasing_en_o           => atbs_decreasing_en,
    direction_upper_o         => atbs_direction_upper,
    direction_lower_o         => atbs_direction_lower,
    delta_steps_upper_strb_o  => atbs_delta_steps_upper_strb,
    delta_steps_lower_strb_o  => atbs_delta_steps_lower_strb,
    delta_steps_upper_o       => atbs_delta_steps_upper,
    delta_steps_lower_o       => atbs_delta_steps_lower,
    adapt_on_overflow_strb_o  => adapt_on_overflow_strb
  );
	-- =====================================================
  
  -- Embed DAC0-Control entity (Upper DAC)
	dac_control_0: entity dac_control(rtl)
  generic map(
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
		DAC_BITWIDTH              => DAC_BITWIDTH,
    DAC_IS_UPPPER	            => 1,
    DAC_SETTLING_CLKS         => DAC_SETTLING_CLKS    
	)
	port map(
		clock_i				            => clock_i,
		reset_i				            => reset_entity,
    
		enable_dac_i              => enable_analog,
    clear_dac_i               => clear_dac,
    adaptive_mode_i           => adaptive_mode,
    select_tbs_delta_steps_i  => select_tbs_delta_steps,

    -- from ATBS / TBS MUX
    direction_i               => direction_upper,         -- DOWN(0), UP(1)
    update_dac_strb_i         => update_dac_upper_strb,
		delta_steps_i             => delta_steps_upper,
    
    dac_counter_value_o       => dac_counter_value_upper, -- for TBS clipping section
    dac_finished_strb_o       => dac_finished_upper_strb, -- goes to spike_detector: After DAC is finished, spike detector reacts at input again.
    
    -- to DAC
    dac_pd_o                  => dac_pd_upper,
    dac_wr_o                  => dac_wr_upper,
    dac_clr_o                 => dac_clr_upper,
    dac_o	                    => dac_upper
	);
  
  update_dac_upper_strb <= delta_steps_upper_strb or dac_init_strb;
	-- =====================================================
  
  -- Embed DAC1-Control entity (Lower DAC)
	dac_control_1: entity dac_control(rtl)
  generic map(
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
		DAC_BITWIDTH              => DAC_BITWIDTH,
    DAC_IS_UPPPER	            => 0,
    DAC_SETTLING_CLKS         => DAC_SETTLING_CLKS 
	)
	port map(
		clock_i				            => clock_i,
		reset_i				            => reset_entity,
    
		enable_dac_i              => enable_analog,
    clear_dac_i               => clear_dac,
    adaptive_mode_i           => adaptive_mode,
    select_tbs_delta_steps_i  => select_tbs_delta_steps,
    
    -- from ATBS / TBS MUX
    direction_i               => direction_lower,         -- DOWN(0), UP(1)
    update_dac_strb_i         => update_dac_lower_strb,
		delta_steps_i             => delta_steps_lower,
    
    dac_counter_value_o       => dac_counter_value_lower, -- for TBS clipping section
    dac_finished_strb_o       => dac_finished_lower_strb, -- goes to spike_detector: After DAC is finished, spike detector reacts at input again.
    
    -- to DAC
    dac_pd_o                  => dac_pd_lower,
    dac_wr_o                  => dac_wr_lower,
    dac_clr_o                 => dac_clr_lower,
    dac_o	                    => dac_lower
	);
  
  update_dac_lower_strb <= delta_steps_lower_strb or dac_init_strb;
	-- =====================================================
  
  
  -- =====================================================
  -- TBS CLIPPING SECTION
  -- =====================================================
  -- In TBS mode, the DAC output voltage can freely change between MAX_CLIPPING_VALUE and MIN_CLIPPING_VALUE.
  -- By default, these values are MAX_CLIPPING_VALUE = 2^DAC_BITWIDTH-1 and MIN_CLIPPING_VALUE = 0. 
  -- If the external analog hardware is not rail-to-rail, these values can be used for upper and lower bound clipping.
  tbs_clipping_reg: process(clock_i, reset_entity) is
	begin
    if reset_entity = '1' then
      tbs_increasing_en <= '0';
      tbs_decreasing_en <= '0';
		elsif rising_edge(clock_i) then
      tbs_increasing_en <= next_tbs_increasing_en;
      tbs_decreasing_en <= next_tbs_decreasing_en;
		end if;
	end process tbs_clipping_reg;
  
  tbs_clipping_logic: process(tbs_increasing_en, tbs_decreasing_en, dac_counter_value_upper, dac_counter_value_lower, tbs_delta_steps_upper, tbs_delta_steps_lower) is
  begin
		-- default assignment
    next_tbs_increasing_en <= tbs_increasing_en;
    next_tbs_decreasing_en <= tbs_decreasing_en;
    
    -- Clipping of upper bound
    if (dac_counter_value_upper > MAX_CLIPPING_VALUE - tbs_delta_steps_upper) or (dac_counter_value_upper = 2**DAC_BITWIDTH - 1) then
      next_tbs_increasing_en <= '0';
    else
      next_tbs_increasing_en <= '1';
    end if;
    
    -- Clipping of lower bound
    if ((dac_counter_value_lower - tbs_delta_steps_lower) < MIN_CLIPPING_VALUE) or (dac_counter_value_lower = 0) then
      next_tbs_decreasing_en <= '0';
    else
      next_tbs_decreasing_en <= '1';
    end if;
	end process tbs_clipping_logic;
  -- =====================================================
  
  -- =====================================================
  -- Select full DAC resolution or "virtual" DAC resolution  for delta_steps via input switch / UART
  -- =====================================================
  tbs_delta_steps_upper <= tbs_virtual_delta_steps_adj_uart when select_tbs_delta_steps = '1' else to_unsigned(1, DELTA_STEPS_BITWIDTH);
  tbs_delta_steps_lower <= tbs_virtual_delta_steps_adj_uart when select_tbs_delta_steps = '1' else to_unsigned(1, DELTA_STEPS_BITWIDTH);
  -- =====================================================
  
  -- =====================================================
  -- SWITCH ATBS / TBS BEHAVIOUR SECTION
  -- =====================================================
  -- Update delta_steps for lower and upper DAC
  -- ATBS: The next delta steps are calculated in the Adaptive-Control entity. 
  -- TBS: The minimum delta steps can be adjusted. This enables a digitally controlable "virtual" DAC resolution.
  -- Instead of using every counter value, only every second or fourth value can be used, for example.
  delta_steps_upper <= atbs_delta_steps_upper when adaptive_mode = '1' else tbs_delta_steps_upper;
  delta_steps_lower <= atbs_delta_steps_lower when adaptive_mode = '1' else tbs_delta_steps_lower;
  
  -- Strobe for new delta_steps
  -- ATBS: The strobe is generated by the Adaptive-Control entity when the adaptive calculation is done.
  -- TBS: The new delta_steps are directly set at spike strobe from Spike-Detector.
  delta_steps_upper_strb <= atbs_delta_steps_upper_strb when adaptive_mode = '1' else spike_strb;
  delta_steps_lower_strb <= atbs_delta_steps_lower_strb when adaptive_mode = '1' else spike_strb;
  
  -- Setting Direction of ATBS / TBS
  -- ATBS: The signal atbs_direction_upper from the Adaptive-Control entity is used. 
  -- TBS: The signal spike from the Spike-Detector entity is used.
  direction_upper <= atbs_direction_upper when adaptive_mode = '1' else spike;
  direction_lower <= atbs_direction_lower when adaptive_mode = '1' else spike;
  
  -- Pause the spike detection in ATBS mode when an overflow occurs.
  pause_detection_strb <= adapt_on_overflow_strb when adaptive_mode = '1' else '0';
  
  -- In ATBS mode, the enable for increasing or decreasing the DAC output voltage is more complex
  -- and is set in the Adaptive-Control entity.
  increasing_en <= atbs_increasing_en when adaptive_mode = '1' else tbs_increasing_en;
  decreasing_en <= atbs_decreasing_en when adaptive_mode = '1' else tbs_decreasing_en;
  -- =====================================================
  
  -- =====================================================
  -- ANALOG Trigger
  -- =====================================================
	analog_trigger_0: entity analog_trig(rtl)
  generic map(
    TRIGGER_COUNTER_BITWIDTH => TRIGGER_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock_i,
		reset_i	          => reset_entity,
    enable_i          => enable_analog,
    period_adj_i      => analog_trigger_period_adj_uart,
    duty_cycle_adj_i  => analog_trigger_duty_cycle_adj_uart,
    
		analog_trigger_o  => analog_trigger
	);
  -- =====================================================
  
  -- =====================================================
  -- SWITCHED CAPACITOR (SC) NON-OVERLAPPING CLOCK (NOC) GENERATOR
  -- =====================================================
  -- Adjustable clock frequency via UART
  -- Adjustable Duty Cycle (default 50%)
  -- Adjustable delay between both SC Clocks via UART (delay >= 1 clock period)
  sc_noc_generator_0: entity sc_noc_generator(rtl)
  generic map(
    SC_NOC_COUNTER_BITWIDTH => SC_NOC_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock_i,
		reset_i	          => reset_entity,
    enable_i          => enable_analog,
    period_adj_i      => sc_noc_generator_period_adj_uart,
    duty_cycle_adj_i  => sc_noc_generator_duty_cycle_adj_uart,
    overlap_adj_i     => sc_noc_generator_overlap_adj_uart,
    
    sc_noc_1_o 		    => sc_noc_1,
    sc_noc_2_o 		    => sc_noc_2
	);
  -- =====================================================
  
  
  -- =====================================================
  -- ENCODING and COMMUNICATION SECTION (Time-Measurement, Spike-Encoder, Spike-Memory, Memory-2-UART, UART)
  -- =====================================================
  
  -- Embed Time-Measurement entity
  reset_time_measurement <= reset_entity or (reset_time_measurement_strb and trigger_start_mode);
  time_measurement_0: entity time_measurement(rtl)
	generic map(
		TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH,
		TIME_COUNTER_MAX			=> TIME_COUNTER_MAX
	)
	port map(
		clock_i 			  => clock_i,
    reset_i 			  => reset_time_measurement,
    
		overflow_strb_o => overflow_strb,
		curr_time_o 		=> curr_time
	);
	-- =====================================================
  
  -- Embed Spike-Encoder entity
  spike_encoder_0: entity spike_encoder(rtl)
	generic map(
		TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH,
		DATA_BITWIDTH         => DATA_BITWIDTH
	)
	port map(
		clock_i               => clock_i,
		reset_i 			        => reset_entity,
		spike_i 			        => spike,
		spike_strb_i	        => spike_strb,
		overflow_strb_i		    => overflow_strb,
		curr_time_i 		      => curr_time,
		
		encoded_spike_o		    => encoded_spike,
		encoded_spike_strb_o  => encoded_spike_strb
	);
	-- =====================================================
  
  -- Embed Communication MUX (Enable Write)
  enable_write_mux <= encoded_spike_strb when select_enable_write = '1' else '0';
  -- =====================================================
  
  -- Embed dual-port Spike-Memory entity
  spike_memory_0: entity spike_memory(rtl)
	generic map(
		DATA_BITWIDTH 	  => DATA_BITWIDTH,
		ADDR_BITWIDTH	    => ADDR_BITWIDTH	
	)
	port map(
		clock_i   		    => clock_i,
		reset_i	  		    => reset_entity,
		-- Write Port
		enable_write_i    => enable_write_mux, -- strobe behaviour
		a_data_i 				  => encoded_spike,
		-- Read Port
		enable_read_i		  => enable_read,
    tx_strb_i         => uart_tx_strb,
		read_strb_o       => read_strb,
		b_data_o  			  => b_data,
		
		fifo_full_o			  => fifo_full,
		fifo_empty_o		  => fifo_empty
	);
	-- =====================================================
  
  -- Embed Memory-2-UART entity
  memory2uart_0: entity memory2uart(rtl)
	generic map(
		DATA_BITWIDTH	    => DATA_BITWIDTH,
		UART_DATA_LENGTH  => UART_DATA_LENGTH	
	)
	port map(
		clock_i   		    => clock_i,
		reset_i	  		    => reset_entity,
    read_strb_i	      => read_strb,
		tx_strb_i		      => uart_tx_strb,
		memory_data_i	    => b_data,
    
		UART_data_o  		  => tx_data,
    tx_start_strb_o   => tx_start_strb
	);
	-- =====================================================
  
  -- Embed UART entity
  uart_0: entity uart(rtl)
	generic map(    
		UART_BAUD_COUNTER_BITWIDTH 	=> UART_BAUD_COUNTER_BITWIDTH,
		UART_DATA_LENGTH 	          => UART_DATA_LENGTH
	)
	port map(
		clock_i 		      => clock_i,
		reset_i 		      => reset_i,
    baudrate_adj_i    => baudrate_adj_uart,
    -- Transmitter
		tx_start_strb_i   => tx_start_strb,
		tx_data_i 			  => tx_data,
		
    tx_strb_o         => uart_tx_strb,
		tx_o 			        => uart_tx,
    
    -- Receiver
    rx_i              => uart_rx_i,
    
    rx_data_strb_o    => uart_rx_data_strb,
    rx_data_o         => uart_rx_data
	);
	-- =====================================================
  
  
  -- =====================================================
  -- MAIN CONTROL SECTION (COUNTER, FSM, UART RX)
  -- =====================================================
  
  -- Embed Main Counter (for Debug Mode)
	main_counter_reg: process(clock_i, reset_entity) is
	begin
		if reset_entity = '1' then
			main_counter_value <= (others => '0');
		elsif rising_edge(clock_i) then
			main_counter_value <= next_main_counter_value;
		end if;
	end process main_counter_reg;
	-- ===================================================
  
	main_counter_logic: process(main_counter_value, reset_main_counter_strb) is
	begin
		-- default assignment
		next_main_counter_value <= main_counter_value;
		
		if main_counter_value = MAIN_COUNTER_MAX - 1 or reset_main_counter_strb = '1' then
			next_main_counter_value <= (others => '0');
		else 
			next_main_counter_value <= main_counter_value + 1;
		end if;
	end process main_counter_logic;
	-- ===================================================
  
  -- Embed Main Control FSM
  fsm_reg: process(clock_i, reset_i) is
	begin
    if reset_i = '1' then
			state <= main_reset;
      idle_led <= '0';
      overflow_led <= '0';
      underflow_led <= '0';
      select_enable_write <= '0';
      enable_read <= '0';
      detection_en <= '0';
      clear_dac <= '0';
		elsif rising_edge(clock_i) then
			state <= next_state;
      idle_led <= next_idle_led;
      overflow_led <= next_overflow_led;
      underflow_led <= next_underflow_led;
      select_enable_write <= next_select_enable_write;
      enable_read <= next_enable_read;
      detection_en <= next_detection_en;
      clear_dac <= next_clear_dac;
		end if;
  end process fsm_reg;  
  
  main_fsm_logic: process(state, idle_led, overflow_led, underflow_led,
  select_enable_write, enable_read, detection_en, clear_dac, main_counter_value, 
  enable_analog, fifo_full, fifo_empty, input_changed_strb, uart_changed_strb,
  trigger_start_mode, trigger_start_sampling_edge_r, uart_start_sampling_strb) is
  begin
		-- default assignment
    next_state <= state;
    next_idle_led <= idle_led;
    next_overflow_led <= overflow_led;
    next_underflow_led <= underflow_led;
    next_select_enable_write <= select_enable_write;
    next_enable_read <= enable_read;
    next_detection_en <= detection_en;
    next_clear_dac <= clear_dac;
    reset_main_counter_strb <= '0';
    reset_time_measurement_strb <= '0';
    dac_init_strb <= '0';
    reset_delta_steps_strb <= '0';
    input_changed_reset_strb <= '0';
    uart_changed_reset_strb <= '0';
    
    case state is 
      when main_idle =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;
        
        -- Disable Spike Detection
        next_detection_en <= '0';
        
        -- Disable Spike Communication
        next_select_enable_write <= '0';
        
        -- Weak up from idle mode
        if enable_analog = '1' then
          next_idle_led <= '0'; -- Turn OFF IDLE LED
          next_state <= main_reset;
        else
          next_state <= main_idle;
        end if;
        
      when main_reset =>
        -- Disable Spike Detection
        next_detection_en <= '0';
        
        -- Disable Spike Communication
        next_select_enable_write <= '0';
        
        -- Clear DAC
        next_clear_dac <= '0';
        
        -- Turn OFF underflow and overflow LED
        next_underflow_led <= '0';
        next_overflow_led <= '0';
        
        -- Reset main counter
        reset_main_counter_strb <= '1';
        
        next_state <= main_init;
        
      when main_init =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;
        
        -- Wait for debouncer time of input switches (DEBOUNCER_MAX) + some safety time (DAC_SETTLING_CLKS).
        if main_counter_value = (DEBOUNCER_MAX + DAC_SETTLING_CLKS) then
          -- Stop Clear DAC
          next_clear_dac <= '1';
          
          -- Init. DAC to Vdd / 2
          dac_init_strb <= '1';
          
          -- Reset main counter
          reset_main_counter_strb <= '1';
          
          next_state <= wait_for_dac;
        else
          next_state <= main_init;
        end if;
        
      when wait_for_dac =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;
        
        -- Wait for DAC settling time (DAC_SETTLING_CLKS)
        if main_counter_value = DAC_SETTLING_CLKS then
          next_state <= wait_for_trigger_1;
        else
          next_state <= wait_for_dac;
        end if;
      
      when wait_for_trigger_1 =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;
        
        -- Reset entities if inputs or UART change settings
        if input_changed_strb = '1' or uart_changed_strb = '1' then
          next_state <= main_reset;
          input_changed_reset_strb <= '1';
          uart_changed_reset_strb <= '1';
        elsif enable_analog = '0' then      -- Go into idle mode
          next_idle_led <= '1';             -- Turn ON IDLE LED
          next_state <= main_idle;
        -- Trigger_mode: Wait with sampling till first rising edge of trigger input
        -- or uart_start_sampling_strb occured.
        elsif trigger_start_mode = '0' or trigger_start_sampling_edge_r = '1' or uart_start_sampling_strb = '1' then
          -- Reset main counter
          reset_main_counter_strb <= '1';
          
          next_state <= ignore_trigger_1;
        else
          next_state <= wait_for_trigger_1;
        end if;
      
      -- Note: Some AWG deliver a falsely timed or bouncing first trigger signal. --> wait for some time
      when ignore_trigger_1 =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;

        if main_counter_value = DEBOUNCER_MAX then
          next_state <= wait_for_trigger_2;
        else
          next_state <= ignore_trigger_1;
        end if;
        
      when wait_for_trigger_2 =>
        if fifo_empty = '1' then             
          next_enable_read <= '0'; -- stop reading from memory / sending via UART!
        end if;
        
        -- Trigger_mode: Wait with sampling until another rising edge of trigger input.
        if trigger_start_mode = '0' or trigger_start_sampling_edge_r = '1' or uart_start_sampling_strb = '1' then
          -- Enable Spike Detection
          next_detection_en <= '1';
          
          -- Enable Spike Communication
          next_select_enable_write <= '1';
          
          -- Reset delta_steps
          reset_delta_steps_strb <= '1';
        
          -- Reset main counter
          reset_main_counter_strb <= '1';
          
          -- Reset time measurement unit
          reset_time_measurement_strb <= '1';
          
          next_state <= main_sampling;
        else
          next_state <= wait_for_trigger_2;
        end if;
        
      when main_sampling =>
        -- Enable spike communication (Under- or Overflow protection)
        if fifo_full = '1' then     
          next_select_enable_write <= '0';  -- stop writing to Memory
          next_enable_read <= '1';          -- reading is allowed!
          next_overflow_led <= '1';         -- turn on overflow LED
        elsif fifo_empty = '1' then             
          next_select_enable_write <= '1';  -- writing to memory is allowed!
          next_enable_read <= '0';          -- stop reading from memory / sending via UART!
          next_underflow_led <= '1';        -- turn on underflow LED
        else
          next_select_enable_write <= '1';
          next_enable_read <= '1';
          next_underflow_led <= '0';        -- turn off underflow LED
          -- next_overflow_led <= '0';      -- turn off overflow LED (never turned off --> RESET)
        end if;
        
        -- Reset entities if inputs or UART change settings
        if input_changed_strb = '1' or uart_changed_strb = '1' then
          next_state <= main_reset;
          input_changed_reset_strb <= '1';
          uart_changed_reset_strb <= '1';
        elsif enable_analog = '0' then      -- go into idle mode
          next_idle_led <= '1';             -- turn on idle LED
          next_state <= main_idle;
        else
          next_state <= main_sampling;
        end if;
      when others => next_state <= main_idle;
    end case;
	end process main_fsm_logic;
  -- =====================================================
  
  -- Embed UART RX Control
  uart_rx_control_reg: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
      trigger_start_mode_uart <= '1';       -- Start sampling on trigger
      adaptive_mode_uart <= '0';            -- TBS  
      signal_select_in_uart <= '1';         -- BNC  
      enable_analog_uart <= '1';            -- Enable
      select_tbs_delta_steps_uart <= '1';   -- "Virtual" DAC resolution
      
      analog_trigger_uart <= '0';           -- Do not set analog trigger settings
      analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Default Period / Default Frequency
      analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD25_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 25% Duty Cycle
      
      sc_noc_generator_uart <= '0';         -- Do not set SC NOC generator settings
      sc_noc_generator_period_adj_uart <= to_unsigned(SC_NOC_COUNTER_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- Default Period / Default Frequency
      sc_noc_generator_duty_cycle_adj_uart <= to_unsigned(SC_NOC_COUNTER_DD25_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
      sc_noc_generator_overlap_adj_uart <= to_unsigned(SC_NOC_DELAY_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH);
      
      baudrate_uart <= '0';                 -- Do not set UART baudrate
      baudrate_adj_uart <= to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH); -- 115200 Baudrate
      
      tbs_virtual_delta_steps_uart <= '0';  -- Do not set "virtual" DAC resolution
      tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH); -- N-3 Bit
      
      atbs_win_length_uart <= '0';          -- Do not set ATBS window length (WIN_LENGTH)
      atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_4, WIN_BITS); -- 4ms
      
      atbs_max_delta_steps_uart <= '0';     -- Do not set ATBS max. delta_steps (MAX_DELTA_STEPS)
      atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_32, DELTA_STEPS_BITWIDTH); -- max. 32 steps
		elsif rising_edge(clock_i) then
      trigger_start_mode_uart <= next_trigger_start_mode_uart;
      adaptive_mode_uart <= next_adaptive_mode_uart;
      signal_select_in_uart <= next_signal_select_in_uart;
      enable_analog_uart <= next_enable_analog_uart;
      select_tbs_delta_steps_uart <= next_select_tbs_delta_steps_uart;
      
      analog_trigger_uart <= next_analog_trigger_uart;
      analog_trigger_period_adj_uart <= next_analog_trigger_period_adj_uart;
      analog_trigger_duty_cycle_adj_uart <= next_analog_trigger_duty_cycle_adj_uart;
      
      sc_noc_generator_uart <= next_sc_noc_generator_uart;
      sc_noc_generator_period_adj_uart <= next_sc_noc_generator_period_adj_uart;
      sc_noc_generator_duty_cycle_adj_uart <= next_sc_noc_generator_duty_cycle_adj_uart;
      sc_noc_generator_overlap_adj_uart <= next_sc_noc_generator_overlap_adj_uart;
      
      baudrate_uart <= next_baudrate_uart;
      baudrate_adj_uart <= next_baudrate_adj_uart;
      
      tbs_virtual_delta_steps_uart <= next_tbs_virtual_delta_steps_uart;
      tbs_virtual_delta_steps_adj_uart <= next_tbs_virtual_delta_steps_adj_uart;
      
      atbs_win_length_uart <= next_atbs_win_length_uart;
      atbs_win_length_adj_uart <= next_atbs_win_length_adj_uart;
      
      atbs_max_delta_steps_uart <= next_atbs_max_delta_steps_uart;
      atbs_max_delta_steps_adj_uart <= next_atbs_max_delta_steps_adj_uart;
		end if;
	end process uart_rx_control_reg;
	-- ===================================================
  
  uart_rx_control_logic: process(uart_rx_data_strb, uart_rx_data, trigger_start_mode_uart, 
  adaptive_mode_uart, signal_select_in_uart, enable_analog_uart, select_tbs_delta_steps_uart,
  analog_trigger_uart, analog_trigger_period_adj_uart, analog_trigger_duty_cycle_adj_uart,
  sc_noc_generator_uart, sc_noc_generator_period_adj_uart, sc_noc_generator_duty_cycle_adj_uart, sc_noc_generator_overlap_adj_uart,
  baudrate_uart, baudrate_adj_uart, tbs_virtual_delta_steps_uart, tbs_virtual_delta_steps_adj_uart,
  atbs_win_length_uart, atbs_win_length_adj_uart, atbs_max_delta_steps_uart, atbs_max_delta_steps_adj_uart) is
	begin
    -- default assignment
    next_trigger_start_mode_uart <= trigger_start_mode_uart;
    next_adaptive_mode_uart <= adaptive_mode_uart;
    next_signal_select_in_uart <= signal_select_in_uart;
    next_enable_analog_uart <= enable_analog_uart;
    next_select_tbs_delta_steps_uart <= select_tbs_delta_steps_uart;
    
    next_analog_trigger_uart <= analog_trigger_uart;
    next_analog_trigger_period_adj_uart <= analog_trigger_period_adj_uart;
    next_analog_trigger_duty_cycle_adj_uart <= analog_trigger_duty_cycle_adj_uart;
    
    next_sc_noc_generator_uart <= sc_noc_generator_uart;
    next_sc_noc_generator_period_adj_uart <= sc_noc_generator_period_adj_uart;
    next_sc_noc_generator_duty_cycle_adj_uart <= sc_noc_generator_duty_cycle_adj_uart;
    next_sc_noc_generator_overlap_adj_uart <= sc_noc_generator_overlap_adj_uart;
    
    next_baudrate_uart <= baudrate_uart;
    next_baudrate_adj_uart <= baudrate_adj_uart;
    
    next_tbs_virtual_delta_steps_uart <= tbs_virtual_delta_steps_uart;
    next_tbs_virtual_delta_steps_adj_uart <= tbs_virtual_delta_steps_adj_uart;
    
    next_atbs_win_length_uart <= atbs_win_length_uart;
    next_atbs_win_length_adj_uart <= atbs_win_length_adj_uart;
    
    next_atbs_max_delta_steps_uart <= atbs_max_delta_steps_uart;
    next_atbs_max_delta_steps_adj_uart <= atbs_max_delta_steps_adj_uart;
    
    uart_changed_strb <= '0';
    uart_start_sampling_strb <= '0'; 
    uart_reset <= '0';
    
    -- https://www.rapidtables.com/convert/number/ascii-to-binary.html
    if uart_rx_data_strb = '1' then
      if analog_trigger_uart = '1' then           -- Set period and duty cycle of analog trigger
        next_analog_trigger_uart <= '0';
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_MAX_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Maximum Period / Minimum Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD25_MAX_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 25% Duty Cycle
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_MAX_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Maximum Period / Minimum Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD50_MAX_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 50% Duty Cycle
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Default Period / Default Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD25_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 25% Duty Cycle
        elsif uart_rx_data = "01100100" then      -- d (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Default Period / Default Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD50_DEFAULT_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 50% Duty Cycle
        elsif uart_rx_data = "01100101" then      -- e (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_MIN_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Minimum Period / Maximum Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD25_MIN_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 25% Duty Cycle
        elsif uart_rx_data = "01100110" then      -- f (ASCII)
          next_analog_trigger_period_adj_uart <= to_unsigned(TRIGGER_COUNTER_MIN_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- Minimum Period / Maximum Frequency
          next_analog_trigger_duty_cycle_adj_uart <= to_unsigned(TRIGGER_COUNTER_DD50_MIN_PERIOD, TRIGGER_COUNTER_BITWIDTH); -- 50% Duty Cycle
        end if;
      elsif sc_noc_generator_uart = '1' then      -- Set period and delay of non-overlapping clock
        next_sc_noc_generator_uart <= '0';
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_sc_noc_generator_period_adj_uart <= to_unsigned(SC_NOC_COUNTER_MAX_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- Maximum Period / Minimum Frequency
          next_sc_noc_generator_duty_cycle_adj_uart <= to_unsigned(SC_NOC_COUNTER_DD25_MAX_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
          next_sc_noc_generator_overlap_adj_uart <= to_unsigned(SC_NOC_DELAY_MAX_PERIOD, SC_NOC_COUNTER_BITWIDTH);
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_sc_noc_generator_period_adj_uart <= to_unsigned(SC_NOC_COUNTER_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- Default Period / Default Frequency
          next_sc_noc_generator_duty_cycle_adj_uart <= to_unsigned(SC_NOC_COUNTER_DD25_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
          next_sc_noc_generator_overlap_adj_uart <= to_unsigned(SC_NOC_DELAY_DEFAULT_PERIOD, SC_NOC_COUNTER_BITWIDTH);
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_sc_noc_generator_period_adj_uart <= to_unsigned(SC_NOC_COUNTER_MIN_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- Minimum Period / Maximum Frequency
          next_sc_noc_generator_duty_cycle_adj_uart <= to_unsigned(SC_NOC_COUNTER_DD25_MIN_PERIOD, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
          next_sc_noc_generator_overlap_adj_uart <= to_unsigned(SC_NOC_DELAY_MIN_PERIOD, SC_NOC_COUNTER_BITWIDTH);
        end if;
      elsif baudrate_uart = '1' then
        next_baudrate_uart <= '0';
        uart_changed_strb <= '1'; -- since sending 'U' with the old baudrate is not possible anymore. 
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_baudrate_adj_uart <= to_unsigned(UART_BAUD_COUNTER_19200, UART_BAUD_COUNTER_BITWIDTH);  -- 19200 Baudrate
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_baudrate_adj_uart <= to_unsigned(UART_BAUD_COUNTER_38400, UART_BAUD_COUNTER_BITWIDTH);  -- 38400 Baudrate
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_baudrate_adj_uart <= to_unsigned(UART_BAUD_COUNTER_57600, UART_BAUD_COUNTER_BITWIDTH);  -- 57600 Baudrate
        elsif uart_rx_data = "01100100" then      -- d (ASCII)
          next_baudrate_adj_uart <= to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH); -- 115200 Baudrate
        end if;
      elsif tbs_virtual_delta_steps_uart = '1' then
        next_tbs_virtual_delta_steps_uart <= '0';
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_2, DELTA_STEPS_BITWIDTH);  -- N-1 Bit
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_4, DELTA_STEPS_BITWIDTH);  -- N-2 Bit
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH);  -- N-3 Bit
        elsif uart_rx_data = "01100100" then      -- d (ASCII)
          next_tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_16, DELTA_STEPS_BITWIDTH); -- N-4 Bit
        elsif uart_rx_data = "01100101" then      -- e (ASCII)
          next_tbs_virtual_delta_steps_adj_uart <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_32, DELTA_STEPS_BITWIDTH); -- N-5 Bit
        end if;
      elsif atbs_win_length_uart = '1' then
        next_atbs_win_length_uart <= '0';
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_1, WIN_BITS);  -- 1ms
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_2, WIN_BITS);  -- 2ms
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_4, WIN_BITS);  -- 4ms (default)
        elsif uart_rx_data = "01100100" then      -- d (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_8, WIN_BITS);  -- 8ms
        elsif uart_rx_data = "01100101" then      -- e (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_16, WIN_BITS); -- 16ms
        elsif uart_rx_data = "01100110" then      -- f (ASCII)
          next_atbs_win_length_adj_uart <= to_unsigned(ATBS_WIN_LENGTH_32, WIN_BITS); -- 32ms
        end if;
      elsif atbs_max_delta_steps_uart = '1' then
        next_atbs_max_delta_steps_uart <= '0';
        if uart_rx_data = "01100001" then         -- a (ASCII)
          next_atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_4, DELTA_STEPS_BITWIDTH);  -- max. 4 steps
        elsif uart_rx_data = "01100010" then      -- b (ASCII)
          next_atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH);  -- max. 8 steps
        elsif uart_rx_data = "01100011" then      -- c (ASCII)
          next_atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_16, DELTA_STEPS_BITWIDTH); -- max. 16 steps
        elsif uart_rx_data = "01100100" then      -- d (ASCII)
          next_atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_32, DELTA_STEPS_BITWIDTH); -- max. 32 steps
        elsif uart_rx_data = "01100101" then      -- e (ASCII)
          next_atbs_max_delta_steps_adj_uart <= to_unsigned(ATBS_MAX_DELTA_STEPS_64, DELTA_STEPS_BITWIDTH); -- max. 64 steps
        end if;
      else
        if uart_rx_data = "00110000" then           -- 0 (ASCII)
          next_trigger_start_mode_uart <= '0';      -- Start sampling directly
        elsif uart_rx_data = "00110001" then        -- 1 (ASCII)
          next_trigger_start_mode_uart <= '1';      -- Start sampling on trigger
        elsif uart_rx_data = "00110010" then        -- 2 (ASCII)
          next_adaptive_mode_uart <= '0';           -- TBS
        elsif uart_rx_data = "00110011" then        -- 3 (ASCII)
          next_adaptive_mode_uart <= '1';           -- ATBS
        elsif uart_rx_data = "00110100" then        -- 4 (ASCII)
          next_signal_select_in_uart <= '0';        -- ECG  
        elsif uart_rx_data = "00110101" then        -- 5 (ASCII)
          next_signal_select_in_uart <= '1';        -- BNC
        elsif uart_rx_data = "00110110" then        -- 6 (ASCII)
          next_enable_analog_uart <= '0';           -- Disable
        elsif uart_rx_data = "00110111" then        -- 7 (ASCII)
          next_enable_analog_uart <= '1';           -- Enable
        elsif uart_rx_data = "00111000" then        -- 8 (ASCII)
          next_select_tbs_delta_steps_uart <= '0';  -- full DAC resolution
        elsif uart_rx_data = "00111001" then        -- 9 (ASCII)
          next_select_tbs_delta_steps_uart <= '1';  -- "virtual" DAC resolution
        elsif uart_rx_data = "01010101" then        -- U (ASCII)
          uart_changed_strb <= '1';                 -- Update Config.
        elsif uart_rx_data = "01010011" then        -- S (ASCII)
          uart_start_sampling_strb <= '1';          -- Start Sampling
        elsif uart_rx_data = "01010010" then        -- R (ASCII)
          uart_reset <= '1';                        -- Reset
        elsif uart_rx_data = "01010100" then        -- T (ASCII)
          next_analog_trigger_uart <= '1';          -- Analog Trigger settings can be set now.
        elsif uart_rx_data = "01000011" then        -- C (ASCII)
          next_sc_noc_generator_uart <= '1';        -- SC NOC Generator settings can be set now.
        elsif uart_rx_data = "01000010" then        -- B (ASCII)
          next_baudrate_uart <= '1';                -- UART baudrate can be set now.
        elsif uart_rx_data = "01010110" then        -- V (ASCII)
          next_tbs_virtual_delta_steps_uart <= '1'; -- "Virtual" DAC resolution can be set now.
        elsif uart_rx_data = "01010111" then        -- W (ASCII)
          next_atbs_win_length_uart <= '1';         -- ATBS window length (WIN_LENGTH) can be set now.
        elsif uart_rx_data = "01000100" then        -- D (ASCII)
          next_atbs_max_delta_steps_uart <= '1';    -- ATBS max. delta_steps (MAX_DELTA_STEPS) can be set now.
        end if;
      end if;
    end if;
	end process uart_rx_control_logic;
  -- =====================================================
  
  
  -- =====================================================
  -- CONTROL MODE SECTION (DEBUG, ADAPTIVE, SIGNAL SELECT, ENABLE)
  -- =====================================================
  -- If control_mode_debounced = '0', the signals from the Switches are used.
  -- If control_mode_debounced = '1', the signals from the UART receiver are used.
  trigger_start_mode <= trigger_start_mode_debounced when control_mode_debounced = '0' else trigger_start_mode_uart;
  adaptive_mode <= adaptive_mode_debounced when control_mode_debounced = '0' else adaptive_mode_uart;
  signal_select_in <= signal_select_in_debounced when control_mode_debounced = '0' else signal_select_in_uart;
  enable_analog <= enable_debounced when control_mode_debounced = '0' else enable_analog_uart;
  select_tbs_delta_steps <= select_tbs_delta_steps_debounced when control_mode_debounced = '0' else select_tbs_delta_steps_uart;
  -- =====================================================
  
  
  -- =====================================================
  -- CONCURRENT STATEMENTS
  -- =====================================================
  -- LEDs
  idle_led_o <= idle_led;
  overflow_led_o <= overflow_led;
  underflow_led_o <= underflow_led;
  ecg_led_o <= '1' when ecg_lod_p_i = '0' and ecg_lod_n_i = '0' and enable_analog = '1' else '0'; -- Check if, ECG electrodes are connected.
  
  -- set Input Signal select Switch
  signal_select_en_o <= not enable_analog; -- active LOW
  signal_select_in_o <= signal_select_in;
  
  -- Biosignal Amp. Shutdown
  amp_sdn_o <= enable_analog;
  
  -- DAC
  dac_pd_o        <= dac_pd_upper and dac_pd_lower;
  dac_clr_o       <= dac_clr_upper and dac_clr_lower;
  dac_wr_upper_o  <= dac_wr_upper;
  dac_wr_lower_o  <= dac_wr_lower;
  dac_upper_o	    <= dac_upper;
  dac_lower_o     <= dac_lower;
  
  -- Analog Trigger
  analog_trigger_o <= analog_trigger;
  
  -- Switched Capacitor Non-Overlapping Clock Generator
  sc_noc_1_o <= sc_noc_1;
  sc_noc_2_o <= sc_noc_2;
  
  -- UART
  uart_tx_o <= uart_tx;
  -- =====================================================
end architecture rtl;