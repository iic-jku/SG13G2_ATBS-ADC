-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- description: This .vhd file implements the board wrapper of the UART entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity uart_board is
	port( 
    clock_i         : in std_ulogic;
		reset_n_i       : in std_ulogic;
    
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
end entity uart_board;

architecture rtl of uart_board is

-- Constants
constant UART_BAUD_COUNTER_19200  : natural := natural(real(CLK_FREQ) / real(19200));
constant UART_BAUD_COUNTER_38400  : natural := natural(real(CLK_FREQ) / real(38400)); 
constant UART_BAUD_COUNTER_57600  : natural := natural(real(CLK_FREQ) / real(57600));
constant UART_BAUD_COUNTER_115200 : natural := natural(real(CLK_FREQ) / real(115200));

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset	  : std_ulogic;

-- Set Baudrate
signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0) := to_unsigned(UART_BAUD_COUNTER_19200, UART_BAUD_COUNTER_BITWIDTH);      -- 19200
-- signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0) := to_unsigned(UART_BAUD_COUNTER_38400, UART_BAUD_COUNTER_BITWIDTH);   -- 38400
-- signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0) := to_unsigned(UART_BAUD_COUNTER_57600, UART_BAUD_COUNTER_BITWIDTH);   -- 57600
-- signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0) := to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH);  -- 115200

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed UART
	uart_0: entity uart(rtl)
	generic map(    
    UART_BAUD_COUNTER_BITWIDTH => UART_BAUD_COUNTER_BITWIDTH,
    UART_DATA_LENGTH           => UART_DATA_LENGTH
	)
	port map(
		clock_i 		    => clock_i,
		reset_i 		    => reset,
    baudrate_adj_i  => baudrate_adj,
    
		tx_start_strb_i => tx_start_strb_i,
		tx_data_i 			=> tx_data_i,
		
    tx_strb_o       => tx_strb_o,
		tx_o 			      => tx_o,
    
    rx_i            => rx_i,
    
    rx_data_strb_o  => rx_data_strb_o,
    rx_data_o       => rx_data_o
	);
	-- =====================================================
end architecture rtl;