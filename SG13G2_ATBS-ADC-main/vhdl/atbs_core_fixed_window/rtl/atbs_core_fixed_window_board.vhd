-- =====================================================
-- Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
-- Author: Simon Dorrer
-- Last Modified: 23.03.2025
-- Description: This .vhd file implements the board wrapper of the threshold-based sampling entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity atbs_core_fixed_window_board is
	port(
    -- INPUTS
    clock_i				            : in std_ulogic;
    reset_n_i				          : in std_ulogic;
    
    -- Comparators
    comp_upper_i		          : in std_ulogic; -- Output of comparator of upper threshold
    comp_lower_i		          : in std_ulogic; -- Output of comparator of lower threshold
    
    -- AWG Trigger
    trigger_start_sampling_i  : in std_ulogic; -- Coming from AWG Trigger
    
    -- Switches for different modes
    trigger_start_mode_i      : in std_ulogic; -- Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           : in std_ulogic; -- TBS(0), ATBS(1)
    control_mode_i            : in std_ulogic; -- Switches(0), UART(1)
    -- Switch for Input Signal Select Switch
    signal_select_in_i        : in std_ulogic; -- ECG(0), BNC(1)
    -- Enable Switch for Input Signal Select Switch, Amp. and DAC.
    enable_i                  : in std_ulogic; -- Disable(0), Enable(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  : in std_ulogic; -- full DAC resolution(0), "virtual" DAC resolution(1)
    
    -- OUTPUTS
    -- Comparator
    phi_comp_o                : out std_ulogic;
    
    -- DAC
    phi_dac_upper_o           : out std_ulogic;
    dac_upper_o	              :	out std_ulogic_vector(3 downto 0);
    phi_dac_lower_o           : out std_ulogic;
    dac_lower_o	              :	out std_ulogic_vector(3 downto 0);
    
    -- Non-Overlapping Clocks (NOCs)
    -- Vcm Generator
    phi_vcm_generator_1_o     : out std_ulogic;
    phi_vcm_generator_2_o     : out std_ulogic;
    -- Bio-Signal Amplifier
    phi_bias_1_o              : out std_ulogic;
    phi_bias_2_o              : out std_ulogic;
    phi_cmfb_1_o              : out std_ulogic;
    phi_cmfb_2_o              : out std_ulogic;
    phi_res_1_o               : out std_ulogic;
    phi_res_2_o               : out std_ulogic;
    
    -- Analog Control
    -- Bio-Signal Amplifier
    bio_amp_en_o              : out std_ulogic;
    select_cap_o              : out std_ulogic_vector(2 downto 0); -- 3-Bit Thermometer coded: open, 33pF, 165pF, 330pF
    -- SPDT Input Switch
    select_spdt_o             : out std_ulogic; -- BNC(0), ECG(1)
    
    -- LEDs
    idle_led_o                : out std_ulogic;	-- '1'... Lights up, if Main FSM is in idle state!
    overflow_led_o            : out std_ulogic;	-- '1'... Lights up, if FIFO is full!
    underflow_led_o           : out std_ulogic;	-- '1'... Lights up, if FIFO is empty!
    
    -- Spike
    spike_o                   : out std_ulogic;
    
    -- UART
    uart_rx_i      			      : in std_ulogic;
    uart_tx_o      			      : out std_ulogic
	);
end entity atbs_core_fixed_window_board;

architecture rtl of atbs_core_fixed_window_board is

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset 		: std_ulogic;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Adaptive Threshold Based Sampling
	atbs_core_0: entity atbs_core_fixed_window(rtl)
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
    -- DAC CONSTANTS
    DAC_SETTLING_CLKS           => DAC_SETTLING_CLKS,
    DAC_BITWIDTH                => DAC_BITWIDTH,
    -- ANALOG TRIGGER CONSTANTS
    TRIGGER_COUNTER_BITWIDTH    => TRIGGER_COUNTER_BITWIDTH,
    TRIGGER_COUNTER_MAX         => TRIGGER_COUNTER_MAX,
    -- SC NOC GENERATOR 1 CONSTANTS
    SC_NOC_1_COUNTER_BITWIDTH   => SC_NOC_1_COUNTER_BITWIDTH,
    SC_NOC_1_COUNTER_MAX        => SC_NOC_1_COUNTER_MAX,
    -- SC NOC GENERATOR 2 CONSTANTS
    SC_NOC_2_COUNTER_BITWIDTH   => SC_NOC_2_COUNTER_BITWIDTH,
    SC_NOC_2_COUNTER_MAX        => SC_NOC_2_COUNTER_MAX,
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
    clock_i				            => clock_i,
    reset_btn_i				        => reset,
    
    -- Comparators
    comp_upper_i		          => comp_upper_i,
    comp_lower_i		          => comp_lower_i,
    
    -- AWG Trigger
    trigger_start_sampling_i  => trigger_start_sampling_i,  -- Coming from AWG Trigger
    
    -- Switches for different modes
    trigger_start_mode_i      => trigger_start_mode_i,      -- Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           => adaptive_mode_i,           -- TBS(0), ATBS(1)
    control_mode_i            => control_mode_i,            -- Switches(0), UART(1)
    -- Switch for Input Signal Select Switch
    signal_select_in_i        => signal_select_in_i,        -- ECG(0), BNC(1)
    -- Enable Switch for Input Signal Select Switch, Amp. and DAC.
    enable_i                  => enable_i,                  -- Disable(0), Enable(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  => select_tbs_delta_steps_i,  -- full DAC resolution(0), "virtual" DAC resolution(1)
    
    -- OUTPUTS
    -- Comparator
    phi_comp_o                => phi_comp_o,
    
    -- DAC
    phi_dac_upper_o           => phi_dac_upper_o,
    dac_upper_o	              => dac_upper_o,
    phi_dac_lower_o           => phi_dac_lower_o,
    dac_lower_o	              => dac_lower_o,
    
    -- Non-Overlapping Clocks (NOCs)
    -- Vcm Generator
    phi_vcm_generator_1_o     => phi_vcm_generator_1_o,
    phi_vcm_generator_2_o     => phi_vcm_generator_2_o,
    -- Bio-Signal Amplifier
    phi_bias_1_o              => phi_bias_1_o,
    phi_bias_2_o              => phi_bias_2_o,
    phi_cmfb_1_o              => phi_cmfb_1_o,
    phi_cmfb_2_o              => phi_cmfb_2_o,
    phi_res_1_o               => phi_res_1_o,
    phi_res_2_o               => phi_res_2_o,
    
    -- Analog Control
    -- Bio-Signal Amplifier
    bio_amp_en_o              => bio_amp_en_o,
    select_cap_o              => select_cap_o,
    -- SPDT Input Switch
    select_spdt_o             => select_spdt_o,
    
    -- LEDs
    idle_led_o                => idle_led_o,
    overflow_led_o            => overflow_led_o,
    underflow_led_o           => underflow_led_o,
    
    -- Spike
    spike_o                   => spike_o,
    
    -- UART
    uart_rx_i      			      => uart_rx_i,
    uart_tx_o      			      => uart_tx_o
	);
	-- =====================================================
end architecture rtl;