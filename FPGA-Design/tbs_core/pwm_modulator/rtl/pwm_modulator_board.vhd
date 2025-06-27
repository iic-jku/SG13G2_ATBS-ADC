-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 24.07.2024
-- Description: This .vhd file implements the board wrapper of the PWM entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity pwm_modulator_board is
	port(
		clock_i 			: in std_ulogic;
		reset_n_i 		: in std_ulogic;
    enable_i      : in std_ulogic;
		on_cnt_val_i  : in unsigned(PWM_COUNTER_BITWIDTH - 1 downto 0);
    
		pwm_o 				: out std_ulogic
	);
end entity pwm_modulator_board;

architecture rtl of pwm_modulator_board is

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset 		: std_ulogic;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed PWM
	pwm_0: entity pwm_modulator(rtl)
  generic map(
    PWM_COUNTER_BITWIDTH  => PWM_COUNTER_BITWIDTH,
    PWM_COUNTER_MAX       => PWM_COUNTER_MAX
	)
	port map(
		clock_i       => clock_i,
		reset_i	      => reset,
    enable_i      => enable_i,
    on_cnt_val_i  => on_cnt_val_i,
    
		pwm_o         => pwm_o
	);
	-- =====================================================
end architecture rtl;