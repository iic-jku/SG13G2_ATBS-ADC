-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 22.06.2024 by Simon Dorrer (removed sfixed)
-- Description: architecture without adaption on counter overflow
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity adaptive_threshold_control_board is
  port (
    -- INPUTS
    clock_i				            : in std_ulogic;
    reset_n_i				          : in std_ulogic;
    sync_reset_i              : in std_ulogic;
    overflow_strb_i           : in std_ulogic;
    curr_time_i               : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
    spike_i                   : in std_ulogic; -- constant inbetween spike strobes (spike_detector_ea)
    spike_strb_i              : in std_ulogic;
    d_max_i                   : in unsigned(WEYLSD_BITS - 1 downto 0);
    d_min_i                   : in unsigned(WEYLSD_BITS - 1 downto 0);
    
    -- OUTPUTS   
    increasing_en_o           : out std_ulogic; 
    decreasing_en_o           : out std_ulogic;
    direction_upper_o         : out std_ulogic;
    direction_lower_o         : out std_ulogic;       
    delta_steps_upper_strb_o  : out std_ulogic;   
    delta_steps_lower_strb_o  : out std_ulogic;
    delta_steps_upper_o       : out unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    delta_steps_lower_o       : out unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    adapt_on_overflow_strb_o  : out std_ulogic
  );  
end entity adaptive_threshold_control_board;

architecture rtl of adaptive_threshold_control_board is

-- CONSTANTS
-- ATBS window length
constant WIN_BITS : natural := TIME_COUNTER_BITWIDTH + 1;
constant ATBS_WIN_LENGTH_4 : natural := natural(32000); -- 4ms

-- ATBS max. delta steps
constant ATBS_MAX_DELTA_STEPS_32 : natural := natural(32); -- max. 32 steps

-- SIGNALS
-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset				: std_ulogic;  

signal win_length       : unsigned(WIN_BITS - 1 downto 0);
signal max_delta_steps  : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

begin
  
  -- Inverting Input Logic
	reset <= not reset_n_i;
  
  -- Embed Adaptive Threshold Control
  win_length <= to_unsigned(ATBS_WIN_LENGTH_4, WIN_BITS); -- 4 ms
  max_delta_steps <= to_unsigned(ATBS_MAX_DELTA_STEPS_32, DELTA_STEPS_BITWIDTH); -- max. 32 steps
  
	adaptive_threshold_control_0: entity adaptive_threshold_control(rtl)
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
		-- INPUTS
    clock_i 		              => clock_i,
		reset_i 		              => reset,
    
    sync_reset_i              => sync_reset_i,
    overflow_strb_i           => overflow_strb_i,
    curr_time_i               => curr_time_i,
    spike_i                   => spike_i,
    spike_strb_i              => spike_strb_i,
    d_max_i                   => d_max_i,
    d_min_i                   => d_min_i,
    win_length_i              => win_length,
    max_delta_steps_i         => max_delta_steps,
    
    -- OUTPUTS 
    increasing_en_o           => increasing_en_o,
    decreasing_en_o           => decreasing_en_o,
    direction_upper_o         => direction_upper_o,
    direction_lower_o         => direction_lower_o, 
    delta_steps_upper_strb_o  => delta_steps_upper_strb_o,
    delta_steps_lower_strb_o  => delta_steps_lower_strb_o,
    delta_steps_upper_o       => delta_steps_upper_o,
    delta_steps_lower_o       => delta_steps_lower_o,
    adapt_on_overflow_strb_o  => adapt_on_overflow_strb_o
	); 
	-- =====================================================
end architecture;