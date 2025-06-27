-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the time measurement entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity time_measurement_board is
	port(
		clock_i					    : in std_ulogic;
		reset_n_i					  : in std_ulogic;
    
		overflow_strb_o			: out std_ulogic;
		curr_time_o 			  : out unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0)
	);
end entity time_measurement_board;

architecture rtl of time_measurement_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Time-Measurement
  time_measurement_0: entity time_measurement(rtl)
	generic map (
		TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH,
		TIME_COUNTER_MAX			=> TIME_COUNTER_MAX
	)
	port map(
		clock_i 			        => clock_i,
		reset_i 			        => reset,
		overflow_strb_o		    => overflow_strb_o,
		curr_time_o 		      => curr_time_o
	);
	-- =====================================================
end architecture rtl;