-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the spike memory entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity spike_memory_board is
	port(
		clock_i				      : in std_ulogic;
		reset_n_i				    : in std_ulogic;
		-- Write Port
		enable_write_i 		  : in std_ulogic;
		a_data_i  			    : in std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		-- Read Port
		enable_read_i		    : in std_ulogic;
    tx_strb_i           : in std_ulogic;
    
		read_strb_o 	      : out std_logic;
		b_data_o  			    : out std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		-- Flags
		fifo_full_o			    : out std_ulogic;
		fifo_empty_o		    : out std_ulogic
	);
end entity spike_memory_board;

architecture rtl of spike_memory_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin
  
  -- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed dual port spike_memory
	spike_memory_0: entity spike_memory(rtl)
	generic map(
		DATA_BITWIDTH 	  => DATA_BITWIDTH,
		ADDR_BITWIDTH	    => ADDR_BITWIDTH	
	)
	port map(
		clock_i   		    => clock_i,
		reset_i	  		    => reset,
		-- Write Port
		enable_write_i    => enable_write_i,
		a_data_i 				  => a_data_i,
		-- Read Port
		enable_read_i		  => enable_read_i,
    tx_strb_i         => tx_strb_i,
		read_strb_o       => read_strb_o,
		b_data_o  			  => b_data_o,
		fifo_full_o			  => fifo_full_o,
		fifo_empty_o		  => fifo_empty_o
	);
	-- =====================================================
end architecture rtl;