-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the spike encoder entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity spike_encoder_board is
	port(
		clock_i 			       : in std_ulogic;
		reset_n_i 			     : in std_ulogic;
		spike_i 			       : in std_ulogic;
		spike_strb_i	       : in std_ulogic;
		overflow_strb_i		   : in std_ulogic;
		curr_time_i 		     : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
		
		encoded_spike_o    	 : out std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		encoded_spike_strb_o : out std_ulogic
	);
end entity spike_encoder_board;

architecture rtl of spike_encoder_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 				  : std_ulogic;

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Spike-Encoder
	spike_encoder_0: entity spike_encoder(rtl)
	generic map (
		TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH,
		DATA_BITWIDTH         => DATA_BITWIDTH
	)
	port map(
		clock_i               => clock_i,
		reset_i 			        => reset,
		spike_i 			        => spike_i,
		spike_strb_i	        => spike_strb_i,
		overflow_strb_i		    => overflow_strb_i,
		curr_time_i 		      => curr_time_i,
		
		encoded_spike_o		    => encoded_spike_o,
		encoded_spike_strb_o  => encoded_spike_strb_o
	);
	-- =====================================================
end architecture rtl;