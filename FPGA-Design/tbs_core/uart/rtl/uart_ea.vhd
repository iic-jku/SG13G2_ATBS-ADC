-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- description: This .vhd file combines the Baudrate Strobe Generator, the TX and the RX entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity uart is
	generic(
    UART_BAUD_COUNTER_BITWIDTH : natural;
    UART_DATA_LENGTH           : natural
	);
	port( 
		clock_i         : in std_ulogic;
		reset_i       	: in std_ulogic;
    baudrate_adj_i  : in unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
    
    -- Transmitter
		tx_start_strb_i : in std_ulogic;
		tx_data_i       : in std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
		
    tx_strb_o       : out std_ulogic;
		tx_o            : out std_ulogic;
    
    -- Receiver
    rx_i            : in std_ulogic;
    
    rx_data_strb_o  : out std_ulogic;
    rx_data_o       : out std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0)
	);
end entity uart;

architecture rtl of uart is

begin

	-- Embed UART Transmitter
	uart_tx_0: entity uart_tx(rtl)
	generic map(    
		UART_BAUD_COUNTER_BITWIDTH  => UART_BAUD_COUNTER_BITWIDTH,
		UART_DATA_LENGTH 	          => UART_DATA_LENGTH
	)
	port map(
		clock_i 		      => clock_i,
		reset_i 		      => reset_i,
    baudrate_adj_i    => baudrate_adj_i,
		tx_start_strb_i   => tx_start_strb_i,
		data_i 			      => tx_data_i,
		
    tx_strb_o         => tx_strb_o,
		tx_o 			        => tx_o
	);
	-- =====================================================
	
	-- Embed UART Receiver
  uart_rx_0: entity uart_rx(rtl)
  generic map(
    UART_BAUD_COUNTER_BITWIDTH  => UART_BAUD_COUNTER_BITWIDTH,
		UART_DATA_LENGTH 	          => UART_DATA_LENGTH
	)
	port map(
		clock_i 		      => clock_i,
		reset_i 		      => reset_i,
    baudrate_adj_i    => baudrate_adj_i,
		rx_i              => rx_i,
		
    data_o            => rx_data_o,
		data_valid_strb_o => rx_data_strb_o
	);
	-- =====================================================
end architecture rtl;