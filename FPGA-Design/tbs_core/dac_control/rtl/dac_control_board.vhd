-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 08.10.2024
-- Description: This .vhd file implements the board wrapper of the DAC control entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity dac_control_board is
	port(
		clock_i				            : in std_ulogic;
		reset_n_i				          : in std_ulogic;
    
    enable_dac_i              : in std_ulogic;  -- '1'... ON, '0'... OFF
    clear_dac_i               : in std_ulogic;  -- '1'... Normal Operation, '0'... clear DAC register
    adaptive_mode_i           : in std_ulogic;  -- SW1: TBS(0), ATBS(1)
    select_tbs_delta_steps_i  : in std_ulogic;  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    -- from Adaptive Control
    direction_i               : in std_ulogic;  -- '1'... increase V, '0'... decrease V
    update_dac_strb_i         : in std_ulogic;  -- delta_v_upper/lower_strb_o
		delta_steps_i             : in unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    
    dac_counter_value_o       : out unsigned(DAC_BITWIDTH - 1 downto 0);
    dac_finished_strb_o       : out std_ulogic; -- active LOW
    
    -- to DAC
    dac_pd_o                  : out std_ulogic; -- active LOW
    dac_wr_o                  : out std_ulogic; -- active LOW
    dac_clr_o                 : out std_ulogic; -- active LOW
    dac_o	                    :	out std_ulogic_vector(DAC_BITWIDTH - 1 downto 0)
	);
end entity dac_control_board;

architecture rtl of dac_control_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed DAC-Control entity
	dac_control_0: entity dac_control(rtl)
  generic map(
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
		DAC_BITWIDTH              => DAC_BITWIDTH,
    DAC_IS_UPPPER	            => 1,
    DAC_SETTLING_CLKS         => DAC_SETTLING_CLKS    
	)
	port map(
		clock_i				            => clock_i,
		reset_i				            => reset,
    
		enable_dac_i              => enable_dac_i,
    clear_dac_i               => clear_dac_i,
    adaptive_mode_i           => adaptive_mode_i,
    select_tbs_delta_steps_i  => select_tbs_delta_steps_i,
    
    -- from Adaptive Control
    direction_i               => direction_i,
    update_dac_strb_i         => update_dac_strb_i,
		delta_steps_i             => delta_steps_i,
    
    dac_counter_value_o       => dac_counter_value_o,
    dac_finished_strb_o       => dac_finished_strb_o,
    
    -- to DAC
    dac_pd_o                  => dac_pd_o,
    dac_wr_o                  => dac_wr_o,
    dac_clr_o                 => dac_clr_o,
    dac_o	                    => dac_o
	);
	-- =====================================================
end architecture rtl;