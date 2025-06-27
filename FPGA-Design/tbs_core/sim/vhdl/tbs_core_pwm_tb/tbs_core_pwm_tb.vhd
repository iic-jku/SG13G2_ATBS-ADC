-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 17.10.2024
-- Description: This .vhd file implements the testbench of the threshold-based sampling entity with PWM DAC output.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity tbs_core_pwm_tb is

end entity tbs_core_pwm_tb;

architecture bhv of tbs_core_pwm_tb is

-- Constants
constant UART_BAUD_COUNTER_115200 : natural := natural(real(CLK_FREQ) / real(115200));
-- change debounce_counter_time in tbs.m

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n 				  : std_ulogic := '1';	-- active low input

-- Comparators
signal comp_upper       : std_ulogic := '0';
signal comp_lower       : std_ulogic := '0';

-- AWG Trigger
signal trigger_start_sampling : std_ulogic := '0';

-- Switches for different modes
signal trigger_start_mode   : std_ulogic;
signal adaptive_mode        : std_ulogic;
signal control_mode         : std_ulogic;

-- Switch for Input Signal Select Switch
signal signal_select    : std_ulogic;

-- Enable Switch for Input Signal Select Switch, Amp. and DAC.
signal enable           : std_ulogic;

-- Select TBS delta steps --> enables virtual DAC resolution
signal select_tbs_delta_steps : std_ulogic; -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)

-- Select Comparator Type (CT/DT comparator)    
signal select_comparator_type : std_ulogic; -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)

-- Check ECG LOD (Leads Off Comparator) --> Are ECG electrodes connected?
signal ecg_lod_p        : std_ulogic;
signal ecg_lod_n        : std_ulogic;

-- OUTPUT signals   
-- Input Signal Select Switch
signal signal_select_en : std_ulogic;
signal signal_select_in : std_ulogic;

-- Biosignal Amp. Shutdown
signal amp_sdn          : std_ulogic;

-- DAC
signal dac_pd           : std_ulogic;
signal dac_clr          : std_ulogic;
signal dac_wr_upper     : std_ulogic;
signal dac_wr_lower     : std_ulogic;
signal dac_upper	      : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);
signal dac_pwm_upper    : std_ulogic;
signal dac_lower	      : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);
signal dac_pwm_lower    : std_ulogic;

-- LEDs
signal idle_led         : std_ulogic;
signal overflow_led     : std_ulogic;
signal underflow_led    : std_ulogic;
signal ecg_led          : std_ulogic;

-- Analog Trigger
signal analog_trigger   : std_ulogic;

-- Switched Capacitor Non-Overlapping Clock Generator
signal sc_noc_1   : std_ulogic;
signal sc_noc_2   : std_ulogic;

-- UART
signal uart_rx          : std_ulogic := '0';
signal uart_tx          : std_ulogic;

-- Baudrate
signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0) := to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH); -- 115200 Baudrate

-- Translation UART
signal tx_data  		  : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal tx_start_strb 	: std_ulogic := '0';
signal tx 			      : std_ulogic;

-- INTERNAL signals
-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset  : std_ulogic;

-- needed for simulation control
signal tb_end : std_ulogic := '0';

begin
	-- Inverting Input Logic
	reset <= not reset_n;
	
  -- Embed Adaptive Threshold Based Sampling
	dut_tbs: entity tbs_core_pwm(rtl)
  generic map(
    -- MAIN CONSTANTS
    CLK_FREQ                    => CLK_FREQ,
    MAIN_COUNTER_BITWIDTH       => MAIN_COUNTER_BITWIDTH,
		MAIN_COUNTER_MAX	          => MAIN_COUNTER_MAX,
    DEBOUNCER_BITWIDTH          => DEBOUNCER_BITWIDTH,
		DEBOUNCER_MAX			          => DEBOUNCER_MAX,
    -- COMPARATOR INPUT CONSTANTS
    N_FF	                      => N_FF,
		N_CHANNELS	                => N_CHANNELS,
    -- TBS CONSTANTS
    MAX_CLIPPING_VALUE          => MAX_CLIPPING_VALUE,
    MIN_CLIPPING_VALUE          => MIN_CLIPPING_VALUE,
    -- ATBS CONSTANTS
    D_MAX_LIM                   => D_MAX_LIM,
    D_MIN_LIM                   => D_MIN_LIM,
    WEYLSD_BITS                 => WEYLSD_BITS,
    DELTA_STEPS_BITWIDTH        => DELTA_STEPS_BITWIDTH,
    -- TIME MEASUREMENT CONSTANTS
    TIME_COUNTER_BITWIDTH	      => TIME_COUNTER_BITWIDTH,
		TIME_COUNTER_MAX	          => TIME_COUNTER_MAX,
    -- Parallel DAC CONSTANTS
    DAC_SETTLING_CLKS           => DAC_SETTLING_CLKS,
    DAC_BITWIDTH                => DAC_BITWIDTH,
    -- PWM DAC CONSTANTS
    PWM_COUNTER_BITWIDTH        => PWM_COUNTER_BITWIDTH,
    PWM_COUNTER_MAX             => PWM_COUNTER_MAX,
    -- ANALOG TRIGGER CONSTANTS
    TRIGGER_COUNTER_BITWIDTH    => TRIGGER_COUNTER_BITWIDTH,
    TRIGGER_COUNTER_MAX         => TRIGGER_COUNTER_MAX,
    -- SC NOC GENERATOR
    SC_NOC_COUNTER_BITWIDTH     => SC_NOC_COUNTER_BITWIDTH,
    SC_NOC_COUNTER_MAX          => SC_NOC_COUNTER_MAX,
    -- MEMORY CONSTANTS
    ADDR_BITWIDTH		            => ADDR_BITWIDTH,
		DATA_BITWIDTH		            => DATA_BITWIDTH,
    -- UART CONSTANTS
    UART_BAUD_COUNTER_BITWIDTH  => UART_BAUD_COUNTER_BITWIDTH,
    UART_BAUD_COUNTER_MAX       => UART_BAUD_COUNTER_MAX,
    UART_DATA_LENGTH            => UART_DATA_LENGTH
	)
	port map(
    -- INPUTS
    clock_i				            => clock,
    reset_btn_i				        => reset,
    -- Comparators
    comp_upper_i		          => comp_upper,
    comp_lower_i		          => comp_lower,
    -- AWG Trigger
    trigger_start_sampling_i  => trigger_start_sampling, -- Coming from AWG Trigger
    -- Switches for different modes
    trigger_start_mode_i      => trigger_start_mode, -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           => adaptive_mode,   -- SW1: TBS(0), ATBS(1)
    control_mode_i            => control_mode,    -- SW2: Switches(0), UART(1)
    -- Switch for Input Signal Select Switch
    signal_select_in_i        => signal_select,   -- SW3: ECG(0), BNC(1)
    -- Enable Switch for Input Signal Select Switch, Amp. and DAC.
    enable_i                  => enable,          -- SW4: Disable(0), Enable(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  => select_tbs_delta_steps, -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    -- Select Comparator Type (CT/DT comparator)
    select_comparator_type_i  => select_comparator_type, -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    -- Check ECG LOD (Leads Off Comparator) --> Are ECG electrodes connected?
    ecg_lod_p_i               => ecg_lod_p,
    ecg_lod_n_i				        => ecg_lod_n,
    
    -- OUTPUTS
    -- Input Signal Select Switch
    signal_select_en_o        => signal_select_en,
    signal_select_in_o        => signal_select_in,
    -- Biosignal Amp. Shutdown
    amp_sdn_o                 => amp_sdn,
    -- DAC
    dac_pd_o                  => dac_pd,
    dac_clr_o                 => dac_clr,
    dac_wr_upper_o            => dac_wr_upper,
    dac_wr_lower_o            => dac_wr_lower,
    dac_upper_o	              => dac_upper,
    dac_pwm_upper_o           => dac_pwm_upper,
    dac_lower_o	              => dac_lower,
    dac_pwm_lower_o           => dac_pwm_lower,
    -- LEDs
    idle_led_o                => idle_led,      -- LEDR0
    overflow_led_o            => overflow_led,  -- LEDR1
    underflow_led_o           => underflow_led, -- LEDR2
    ecg_led_o                 => ecg_led,       -- LEDR3
    -- Analog Trigger
    analog_trigger_o          => analog_trigger,
    -- Switched Capacitor Non-Overlapping Clock Generator
    sc_noc_1_o                => sc_noc_1,
    sc_noc_2_o                => sc_noc_2,
    -- UART
    uart_rx_i      			      => uart_rx,
    uart_tx_o      			      => uart_tx
	);
	-- =====================================================
  
  -- Embed UART TX for testing (translate bytes to signal and connect it to TBS RX)
  dut_uart: entity uart(rtl)
  generic map(    
    UART_BAUD_COUNTER_BITWIDTH  => UART_BAUD_COUNTER_BITWIDTH,
    UART_DATA_LENGTH            => UART_DATA_LENGTH
  )
  port map(
    clock_i 		    => clock,
    reset_i 		    => reset,
    baudrate_adj_i  => baudrate_adj,
    -- Transmitter
    tx_start_strb_i => tx_start_strb,
    tx_data_i 			=> tx_data,
    
    tx_strb_o       => open,
    tx_o 			      => tx,
    
    -- Receiver (not used)
    rx_i            => '0',
    
    rx_data_strb_o  => open,
    rx_data_o       => open
  );
  -- =====================================================
  
  -- Connect Translation Transmitter to TBS UART Receiver
  uart_rx <= tx;
  
	-- Simulating clock signal --> comes from FPGA board later on
	clk_proc: process
	begin
		clock <= not clock;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
	
	-- Simulation Process
	stimuli: process
	begin
    -- RESET
    wait for 3 * sec / (4 * CLK_FREQ);
		reset_n <= '0';		-- active low reset
		wait for 5 * sec / (2 * CLK_FREQ);
		reset_n <= '1';		-- active low reset
    -- =====================================================
    
    -- TBS SIMULATION with delta_steps = 1
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '0';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    -- TESTING ENABLE
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- SAMPLING
    -- Decrease voltage
    comp_lower <= '0';
    wait for 450 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 900 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    
    -- TBS SIMULATION with delta_steps = "virtual" DAC resolution (N-3, default)
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '1';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    -- =====================================================
    
    -- RESET
		-- reset_n <= '0';		-- active low reset
		-- wait for 1 * sec / (2 * CLK_FREQ);
		-- reset_n <= '1';		-- active low reset
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    -- TESTING ENABLE
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- SAMPLING
    -- Decrease voltage
    comp_lower <= '0';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 100 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    
    -- TBS SIMULATION with delta_steps = "virtual" DAC resolution (N-1)
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '1';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    -- Setting up virtual delta steps via UART
    tx_data <= "01010110"; -- V (ASCII) --> ATBS
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01100001"; -- a (ASCII) --> N-1 Bit
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01010101"; -- U (ASCII) --> Update Config.
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    -- =====================================================
    
    -- RESET
		-- reset_n <= '0';		-- active low reset
		-- wait for 1 * sec / (2 * CLK_FREQ);
		-- reset_n <= '1';		-- active low reset
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    -- TESTING ENABLE
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- SAMPLING
    -- Decrease voltage
    comp_lower <= '0';
    wait for 450 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 900 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    
    -- ATBS SIMULATION
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '1';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '0';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    -- =====================================================
    
    -- RESET
		-- reset_n <= '0';		-- active low reset
		-- wait for 1 * sec / (2 * CLK_FREQ);
		-- reset_n <= '1';		-- active low reset
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    -- TESTING ENABLE
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    
    enable <= '0';            -- SW4: Disable(0), Enable(1)
    wait for 10 * sec / (2 * CLK_FREQ);
    enable <= '1';            -- SW4: Disable(0), Enable(1)
    
    -- Wait for Start-Up and Main-FSM to be in sampling mode.
    wait for (3 * DAC_SETTLING_CLKS) * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- SAMPLING
    -- Decrease voltage
    comp_lower <= '0';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    

    -- SAMPLING AFTER TRIGGER
    trigger_start_mode <= '1';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '1';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    -- Setting up virtual delta steps via UART
    tx_data <= "01010110"; -- V (ASCII) --> ATBS
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01100011"; -- c (ASCII) --> N-3 Bit
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01010101"; -- U (ASCII) --> Update Config.
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 100 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);

    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    
    -- Trigger not detected
    trigger_start_sampling  <= '1';
    wait for 10 * sec / (2 * CLK_FREQ);
    trigger_start_sampling  <= '0';
    
    wait for 40 * sec / (2 * CLK_FREQ);
    
    trigger_start_sampling  <= '1';
    wait for 10 * sec / (2 * CLK_FREQ);
    trigger_start_sampling  <= '0';
    
    wait for 40 * sec / (2 * CLK_FREQ);
    
    -- Trigger detected
    trigger_start_sampling  <= '1';
    wait for 10 * sec / (2 * CLK_FREQ);
    trigger_start_sampling  <= '0';
    
    wait for 2 * (DEBOUNCER_MAX / 32) * sec / (2 * CLK_FREQ);
    
    trigger_start_sampling  <= '1';
    wait for 10 * sec / (2 * CLK_FREQ);
    trigger_start_sampling  <= '0';
    
    -- Decrease voltage
    comp_lower <= '0';
    wait for 250 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 250 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    -- =====================================================
    
    
    -- UART DEBUGGING
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '1';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '0';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '0';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    -- =====================================================
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    
    wait for 300 * sec / CLK_FREQ;
    
    -- Setting up ATBS via UART
    tx_data <= "00110000"; -- 0 (ASCII) --> Start sampling directly
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "00110011"; -- 3 (ASCII) --> ATBS
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01010101"; -- U (ASCII) --> Update Config.
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    -- Decrease voltage
    comp_lower <= '0';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    
    -- Changing Analog Trigger
    tx_data <= "01010100"; -- T (ASCII) --> Analog Trigger settings can be set now.
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01100001"; -- a (ASCII) --> Maximum Period / Minimum Frequency / 25% Duty Cycle
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 250 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Changing to TBS again
    tx_data <= "00110010"; -- 2 (ASCII) --> TBS
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    tx_data <= "01010101"; -- U (ASCII) --> Update Config.
    tx_start_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    tx_start_strb <= '0';
    
    wait for 2 * sec / CLK_FREQ * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH;
    
    -- Decrease voltage
    comp_lower <= '0';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- RESET
		reset_n <= '0';		-- active low reset
		wait for 1 * sec / (2 * CLK_FREQ);
		reset_n <= '1';		-- active low reset
    -- =====================================================
    
    -- DEFINE SETTINGS
    trigger_start_mode <= '0';      -- SW0: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode <= '0';           -- SW1: TBS(0), ATBS(1)
    control_mode <= '0';            -- SW2: Switches(0), UART(1)
    signal_select <= '0';           -- SW3: ECG(0), BNC(1)
    enable <= '1';                  -- SW4: Disable(0), Enable(1)
    select_tbs_delta_steps <= '1';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    select_comparator_type <= '1';  -- SW6: Modeling CT comparator(0), Modeling DT comparator(1)
    
    -- ECG is connected.
    ecg_lod_p <= '0';
    ecg_lod_n <= '0';
    
    wait for 2 * DEBOUNCER_MAX * sec / (CLK_FREQ); -- Debouncing Time
    
    -- Decrease voltage
    comp_lower <= '0';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Increase voltage
    comp_upper <= '1';
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
    -- Input signal within thresholds (do nothing)
    comp_upper <= '0';
    comp_lower <= '1';
    -- =====================================================
    
    wait for 200 * DAC_SETTLING_CLKS * sec / (2 * CLK_FREQ);
    
		tb_end <= '1';
    report "End of simulation." severity error;
    wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;