-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the Memory-2-UART entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity memory2uart_board is
	port(
		-- INPUTS
		clock_i				  : in std_ulogic;
		reset_n_i				: in std_ulogic;
		read_strb_i	    : in std_ulogic;
		tx_strb_i		    : in std_ulogic;
		memory_data_i		: in std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		
		-- OUTPUTS
		UART_data_o  		: out std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
    tx_start_strb_o : out std_ulogic
	);
end entity memory2uart_board; 	

architecture rtl of memory2uart_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin
  
  -- Inverting Input Logic
	reset <= not reset_n_i;
  
	-- Embed Memory-2-UART
	memory2uart_0: entity memory2uart(rtl)
	generic map(
		DATA_BITWIDTH	    => DATA_BITWIDTH,
		UART_DATA_LENGTH	=> UART_DATA_LENGTH	
	)
	port map(
		clock_i   		  => clock_i,
		reset_i	  		  => reset,
    read_strb_i	    => read_strb_i,
		tx_strb_i		    => tx_strb_i,
		memory_data_i	  => memory_data_i,
    
		UART_data_o  		=> UART_data_o,
    tx_start_strb_o => tx_start_strb_o
	);
  -- =====================================================
end architecture rtl;