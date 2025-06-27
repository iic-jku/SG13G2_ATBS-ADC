-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- Description: This .vhd file implements a testbench testing the UART entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity uart_tb is

end entity uart_tb;

architecture bhv of uart_tb is

-- Constants
constant N_DATA: natural := 10;
type INPUT_ARRAY is array (1 to N_DATA) of std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
constant TEST_DATA : INPUT_ARRAY := (
   1  =>  std_ulogic_vector(to_unsigned(208, UART_DATA_LENGTH)),
   2  =>  std_ulogic_vector(to_unsigned(231, UART_DATA_LENGTH)),
   3  =>  std_ulogic_vector(to_unsigned( 32, UART_DATA_LENGTH)),
   4  =>  std_ulogic_vector(to_unsigned(233, UART_DATA_LENGTH)),
   5  =>  std_ulogic_vector(to_unsigned(161, UART_DATA_LENGTH)),
   6  =>  std_ulogic_vector(to_unsigned( 24, UART_DATA_LENGTH)),
   7  =>  std_ulogic_vector(to_unsigned( 71, UART_DATA_LENGTH)),
   8  =>  std_ulogic_vector(to_unsigned(140, UART_DATA_LENGTH)),
   9  =>  std_ulogic_vector(to_unsigned(245, UART_DATA_LENGTH)),
  10  =>  std_ulogic_vector(to_unsigned(247, UART_DATA_LENGTH))
);

constant UART_BAUD_COUNTER_MAX    : natural := UART_BAUD_COUNTER_MAX;
constant UART_BAUD_COUNTER_19200  : natural := natural(real(CLK_FREQ) / real(19200));   -- 19200 Baudrate
constant UART_BAUD_COUNTER_38400  : natural := natural(real(CLK_FREQ) / real(38400));   -- 38400 Baudrate
constant UART_BAUD_COUNTER_57600  : natural := natural(real(CLK_FREQ) / real(57600));   -- 57600 Baudrate
constant UART_BAUD_COUNTER_115200 : natural := natural(real(CLK_FREQ) / real(115200));  -- 115200 Baudrate

-- Signals
signal clock 			    : std_ulogic := '0';
signal reset_n 		    : std_ulogic := '1';

-- TX
signal tx_start_strb 	: std_ulogic := '1';
signal tx_data  		  : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal tx_strb        : std_ulogic;
signal tx 			      : std_ulogic;

-- RX
signal rx             : std_ulogic;
signal rx_data_strb   : std_ulogic;
signal rx_data        : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				  : std_ulogic;

-- Baudrate
signal baudrate_adj : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);

signal tb_end         : std_ulogic := '0';

begin
  
  -- Inverting Input Logic
	reset <= not reset_n;
  
	-- Embed uart_board for testing
	dut_uart: entity uart(rtl)
  generic map(    
    UART_BAUD_COUNTER_BITWIDTH => UART_BAUD_COUNTER_BITWIDTH,
    UART_DATA_LENGTH           => UART_DATA_LENGTH
	)
	port map(
		clock_i 		    => clock,
		reset_i 		    => reset,
    baudrate_adj_i  => baudrate_adj,
    
    -- Transmitter
		tx_start_strb_i => tx_start_strb,
		tx_data_i 			=> tx_data,
		
    tx_strb_o       => tx_strb,
		tx_o 			      => tx,
    
    -- Receiver
    rx_i            => rx,
    
    rx_data_strb_o  => rx_data_strb,
    rx_data_o       => rx_data
	);
	-- =====================================================
	
  -- Connect Transmitter to Receiver
  rx <= tx;
  -- =====================================================
  
	-- Simulating clock signal
	clk_proc: process
	begin
		clock <= not clock;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
  
	-- Simulation Process
	stimuli: process
	begin
		reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
    
    -- 19200 Baudrate
    baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_19200, UART_BAUD_COUNTER_BITWIDTH);   -- 19200
    
    for i in 1 to N_DATA loop 
      tx_data <= TEST_DATA(i);
      tx_start_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      tx_start_strb <= '0';
      wait for 2 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    end loop;
    
    wait for 5 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    -- =====================================================
    
     -- 38400 Baudrate
    baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_38400, UART_BAUD_COUNTER_BITWIDTH);   -- 38400
    
    for i in 1 to N_DATA loop 
      tx_data <= TEST_DATA(i);
      tx_start_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      tx_start_strb <= '0';
      wait for 2 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    end loop;
    
    wait for 5 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    -- =====================================================
    
    -- 57600 Baudrate
    baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_57600, UART_BAUD_COUNTER_BITWIDTH);   -- 57600

    for i in 1 to N_DATA loop 
      tx_data <= TEST_DATA(i);
      tx_start_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      tx_start_strb <= '0';
      wait for 2 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    end loop;
    
    wait for 5 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    -- =====================================================
    
    -- 115200 Baudrate
    baudrate_adj <= to_unsigned(UART_BAUD_COUNTER_115200, UART_BAUD_COUNTER_BITWIDTH);   -- 115200

    for i in 1 to N_DATA loop 
      tx_data <= TEST_DATA(i);
      tx_start_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      tx_start_strb <= '0';
      wait for 2 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    end loop;
    
    wait for 5 * UART_BAUD_COUNTER_MAX * UART_DATA_LENGTH * sec / CLK_FREQ;
    -- =====================================================
    
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;