-- =====================================================
-- Master's Thesis: Threshold-Based Sampling ASIC with FOSS tools.
-- Author: Simon Dorrer
-- Last Modified: 10.10.2024
-- Description: This .vhd file implements the board wrapper of the threshold-based sampling entity.
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
use work.TBSSimVals.all;
use work.all;

entity tbs_core_pwm_board is
	port(
    -- INPUTS
    clock_i				            : in std_ulogic;
    reset_n_i				          : in std_ulogic; -- S2
    -- Comparators
    comp_upper_i		          : in std_ulogic; -- Output of comparator of upper threshold
    comp_lower_i		          : in std_ulogic; -- Output of comparator of lower threshold
    -- AWG Trigger
    trigger_start_sampling_i  : in std_ulogic; -- Coming from AWG Trigger
    -- Switches for different modes
    trigger_start_mode_i      : in std_ulogic; -- S1_1: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           : in std_ulogic; -- S1_2: TBS(0), ATBS(1)
    control_mode_i            : in std_ulogic; -- S1_3: Switches(0), UART(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  : in std_ulogic; -- S1_4: full DAC resolution(0), "virtual" DAC resolution(1)
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
    dac_pwm_upper_o           : out std_ulogic;
    dac_lower_o	              :	out std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);
    dac_pwm_lower_o           : out std_ulogic;
    -- LEDs
    idle_led_o                : out std_ulogic;	-- D1: '1'... Lights up, if Main FSM is in idle state!
    overflow_led_o            : out std_ulogic;	-- D2: '1'... Lights up, if FIFO is full!
    underflow_led_o           : out std_ulogic;	-- D3: '1'... Lights up, if FIFO is empty!
    ecg_led_o                 : out std_ulogic;	-- D4: '1'... Lights up, if ECG electrodes are connected!
    -- Analog Trigger
    analog_trigger_o          : out std_ulogic;
    -- Switched Capacitor Non-Overlapping Clock Generator
    sc_noc_1_o                : out std_ulogic;
    sc_noc_2_o                : out std_ulogic;
    -- UART
    uart_rx_i      			      : in std_ulogic;
    uart_tx_o      			      : out std_ulogic
	);
end entity tbs_core_pwm_board;

architecture rtl of tbs_core_pwm_board is

-- 8MHz PLL clock
signal clock_pll_8MHz  : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset 		  : std_ulogic;

signal trigger_start_mode 		: std_ulogic;
signal adaptive_mode 		      : std_ulogic;
signal control_mode 		      : std_ulogic;
signal select_tbs_delta_steps : std_ulogic;

-- 8MHz PLL Component (Vivado PLL is written in Verilog)
component pll_8MHz
  port(
    clk_out1  : out std_ulogic;
    reset     : in std_ulogic;
    locked    : out std_ulogic;
    clk_in1   : in std_ulogic
  );
end component pll_8MHz;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
  
  trigger_start_mode <= not trigger_start_mode_i;
  adaptive_mode <= not adaptive_mode_i;
  control_mode <= not control_mode_i;
  select_tbs_delta_steps <= not select_tbs_delta_steps_i;
  
  -- Embed 8MHz PLL for s7-Mini FPGA Board
	PLL100to8: pll_8MHz
	port map(
    clk_out1  => clock_pll_8MHz,
    reset     => reset,
    locked    => open,
    clk_in1   => clock_i
	);
	-- =====================================================
	
	-- Embed Adaptive Threshold Based Sampling
	tbs_core_0: entity tbs_core_pwm(rtl)
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
    clock_i				            => clock_pll_8MHz,
    reset_btn_i				        => reset,                     -- S2
    -- Comparators
    comp_upper_i		          => comp_upper_i,
    comp_lower_i		          => comp_lower_i,
    -- AWG Trigger
    trigger_start_sampling_i  => trigger_start_sampling_i,  -- Coming from AWG Trigger
    -- Switches for different modes
    trigger_start_mode_i      => trigger_start_mode,        -- S1_1: Start sampling directly(0), Start sampling on trigger(1)
    adaptive_mode_i           => adaptive_mode,             -- S1_2: TBS(0), ATBS(1)
    control_mode_i            => control_mode,              -- S1_3: Switches(0), UART(1)
    -- Switch for Input Signal Select Switch
    signal_select_in_i        => '1',                       -- ECG(0), BNC(1)
    -- Enable Switch for Input Signal Select Switch, Amp. and DAC.
    enable_i                  => '1',                       -- Disable(0), Enable(1)
    -- Select TBS delta steps --> enables virtual DAC resolution
    select_tbs_delta_steps_i  => select_tbs_delta_steps,    -- S1_4: full DAC resolution(0), "virtual" DAC resolution(1)
    -- Select Comparator Type (CT/DT comparator)
    select_comparator_type_i  => '0',                       -- Modeling CT comparator(0), Modeling DT comparator(1)
    -- Check ECG LOD (Leads Off Comparator) --> Are ECG electrodes connected?
    ecg_lod_p_i               => ecg_lod_p_i,
    ecg_lod_n_i				        => ecg_lod_n_i,
    
    -- OUTPUTS
    -- Input Signal Select Switch
    signal_select_en_o        => signal_select_en_o,
    signal_select_in_o        => signal_select_in_o,
    -- Biosignal Amp. Shutdown
    amp_sdn_o                 => amp_sdn_o,
    -- DAC
    dac_pd_o                  => dac_pd_o,
    dac_clr_o                 => dac_clr_o,
    dac_wr_upper_o            => dac_wr_upper_o,
    dac_wr_lower_o            => dac_wr_lower_o,
    dac_upper_o	              => dac_upper_o,
    dac_pwm_upper_o           => dac_pwm_upper_o,
    dac_lower_o	              => dac_lower_o,
    dac_pwm_lower_o           => dac_pwm_lower_o,
    -- LEDs
    idle_led_o                => idle_led_o,        -- LEDR0
    overflow_led_o            => overflow_led_o,    -- LEDR1
    underflow_led_o           => underflow_led_o,   -- LEDR2
    ecg_led_o                 => ecg_led_o,         -- LEDR3
    -- Analog Trigger
    analog_trigger_o          => analog_trigger_o,
    -- Switched Capacitor Non-Overlapping Clock Generator
    sc_noc_1_o                => sc_noc_1_o,
    sc_noc_2_o                => sc_noc_2_o,
    -- UART
    uart_rx_i      			      => uart_rx_i,
    uart_tx_o      			      => uart_tx_o
	);
	-- =====================================================
end architecture rtl;