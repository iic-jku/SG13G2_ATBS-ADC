-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 27.09.2024
-- Description: This .vhd file implements the board wrapper of the analog trigger entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity analog_trigger_board is
	port(
		clock_i 			    : in std_ulogic;
		reset_n_i 			  : in std_ulogic;
    enable_i          : in std_ulogic;
    period_adj_i      : in unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
		duty_cycle_adj_i  : in unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
    
		analog_trigger_o  : out std_ulogic
	);
end entity analog_trigger_board;

architecture rtl of analog_trigger_board is

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset 		: std_ulogic;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Analog Trigger
	analog_trigger_0: entity analog_trig(rtl)
  generic map(
    TRIGGER_COUNTER_BITWIDTH => TRIGGER_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock_i,
		reset_i	          => reset,
    enable_i	        => enable_i,
    period_adj_i      => period_adj_i,
    duty_cycle_adj_i  => duty_cycle_adj_i,
    
		analog_trigger_o  => analog_trigger_o
	);
	-- =====================================================
end architecture rtl;