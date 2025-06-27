-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 30.09.2024
-- Description: This .vhd file implements the board wrapper of the SC NOC Generator entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity sc_noc_generator_board is
  port(
		clock_i 			    : in std_ulogic;
		reset_n_i 			    : in std_ulogic;
    enable_i          : in std_ulogic;
    period_adj_i      : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
		duty_cycle_adj_i  : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
    overlap_adj_i     : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
    
		sc_noc_1_o 		    : out std_ulogic;
		sc_noc_2_o 			  : out std_ulogic
	);
end entity sc_noc_generator_board;

architecture rtl of sc_noc_generator_board is

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset 		: std_ulogic;

begin
	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed SC NOC Generator
  sc_noc_generator_0: entity sc_noc_generator(rtl)
  generic map(
    SC_NOC_COUNTER_BITWIDTH => SC_NOC_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock_i,
		reset_i	          => reset,
    enable_i          => enable_i,
    period_adj_i      => period_adj_i,
    duty_cycle_adj_i  => duty_cycle_adj_i,
    overlap_adj_i     => overlap_adj_i,
    
    sc_noc_1_o 		    => sc_noc_1_o,
    sc_noc_2_o 		    => sc_noc_2_o
	);
	-- =====================================================
end architecture rtl;