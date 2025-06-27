-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- description: This .vhd file implements the board wrapper of the UART entity and a TX / RX test.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity uart_debug_board is
	port( 
    clock_i           : in std_ulogic;
		reset_n_i         : in std_ulogic;
    -- Switches
    switch1_i         : in std_ulogic;
    switch2_i         : in std_ulogic;
    
    -- Transmitter
		tx_o              : out std_ulogic;
    
    -- Receiver
    rx_i              : in std_ulogic;
    
    rx_led_o          : out std_ulogic
	);
end entity uart_debug_board;

architecture rtl of uart_debug_board is

-- Constants
constant UART_BAUD_COUNTER_19200  : natural := natural(real(CLK_FREQ) / real(19200));
constant UART_BAUD_COUNTER_38400  : natural := natural(real(CLK_FREQ) / real(38400)); 
constant UART_BAUD_COUNTER_57600  : natural := natural(real(CLK_FREQ) / real(57600));
constant UART_BAUD_COUNTER_115200 : natural := natural(real(CLK_FREQ) / real(115200));

-- Internal signals
signal tx           : std_ulogic;

signal rx_led       : std_ulogic;
signal next_rx_led  : std_ulogic;

signal rx_data_strb : std_ulogic;
signal rx_data		  : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);

-- 8MHz PLL clock
signal clock_pll 	  : std_ulogic;

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 			  : std_ulogic;

-- Set Baudrate
signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
  
  -- Changing baudrate with switches
  baudrate_adj_logic: process(switch1_i, switch2_i) is
	begin
    if switch1_i = '0' and switch2_i = '0' then
      baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_19200, UART_BAUD_COUNTER_BITWIDTH); -- 19200
    elsif switch1_i = '0' and switch2_i = '1' then
      baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_38400, UART_BAUD_COUNTER_BITWIDTH); -- 38400
    elsif switch1_i = '1' and switch2_i = '0' then
      baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_57600, UART_BAUD_COUNTER_BITWIDTH);  -- 57600
    else -- switch1_i = '1' and switch2_i = '1'
      baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH);  -- 115200
    end if;
	end process baudrate_adj_logic;
	-- ===================================================
  
  -- Embed 8MHz PLL for DE10-Standard FPGA Board
	PLL50to8: entity pll_8MHz(rtl)
	port map(  
    refclk			=> clock_i,
    rst			    => reset,
    outclk_0		=> clock_pll,
    locked      => open
	);
	-- =====================================================
  
  -- Embed UART
	uart_0: entity uart(rtl)
	generic map(    
    UART_BAUD_COUNTER_BITWIDTH => UART_BAUD_COUNTER_BITWIDTH,
    UART_DATA_LENGTH           => UART_DATA_LENGTH
	)
	port map(
		clock_i 		    => clock_pll,
		reset_i 		    => reset,
    baudrate_adj_i  => baudrate_adj,
    
		tx_start_strb_i => rx_data_strb,
		tx_data_i 			=> rx_data,
		
    tx_strb_o       => open,
		tx_o 			      => tx,
    
    rx_i            => rx_i,
    
    rx_data_strb_o  => rx_data_strb,
    rx_data_o       => rx_data
	);
	-- =====================================================
  
  reg_proc: process(clock_i, reset) is
	begin
		if reset = '1' then
			rx_led <= '0';
		elsif rising_edge(clock_i) then
			rx_led <= next_rx_led;
		end if;
	end process reg_proc;
	-- ===================================================
  
  uart_rx_control_logic: process(rx_data_strb, rx_data, rx_led) is
	begin
    -- default assignment
    next_rx_led <= rx_led;
    
    if rx_data_strb = '1' then
      if rx_data = "01000111" then  -- G
        next_rx_led <= '1';
      else
        next_rx_led <= '0';
      end if;
    end if;
	end process uart_rx_control_logic;
	-- ===================================================
  
  -- Concurrent output statements
  rx_led_o <= rx_led;
  tx_o <= tx;
  -- =====================================================
end architecture rtl;