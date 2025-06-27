-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 29.06.2024
-- Description: This .vhd file implements the board wrapper of the debouncer entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity debouncer_board is
	port(
		clock_i		    : in std_ulogic;
		reset_n_i		  : in std_ulogic;
		bouncing_i		: in std_ulogic;
		
		debounced_o		: out std_ulogic
	);
end entity debouncer_board;

architecture rtl of debouncer_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Debouncer entity
	debouncer_0: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
		DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock_i,
		reset_i				      => reset,
    bouncing_i		      => bouncing_i,
    
    debounced_o	        => debounced_o
	);
	-- =====================================================
end architecture rtl;