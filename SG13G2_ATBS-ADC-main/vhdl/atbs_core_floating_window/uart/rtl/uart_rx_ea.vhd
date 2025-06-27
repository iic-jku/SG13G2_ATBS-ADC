-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- Description: This .vhd file implements an UART receiver.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity uart_rx is
	generic( 
    UART_BAUD_COUNTER_BITWIDTH  : natural;
		UART_DATA_LENGTH            : natural
	);
	port( 
		clock_i			      : in std_ulogic;
		reset_i           : in std_ulogic;
    baudrate_adj_i    : in unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
    rx_i              : in std_ulogic;
    
    data_o            : out std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
    data_valid_strb_o : out std_ulogic
	);
end entity uart_rx;

architecture rtl of uart_rx is

-- Constants
constant RX_COUNTER_BITWIDTH      : natural := natural(ceil(log2(real(UART_DATA_LENGTH))));

-- Type definitions
type TRX_STATE is (IDLE, STARTBIT, RECEIVING, STOPBIT);

-- Internal signals
-- Counter for storing received bits 
signal receive_counter_value      : unsigned(RX_COUNTER_BITWIDTH - 1 downto 0);
signal next_receive_counter_value : unsigned(RX_COUNTER_BITWIDTH - 1 downto 0);

-- Counter for Baudrate
signal baud_counter_value         : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
signal next_baud_counter_value    : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);

-- Storing received data
signal received_data        : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal next_received_data   : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal data_valid_strb      : std_ulogic;

-- States
signal rx_state             : TRX_STATE;
signal next_rx_state        : TRX_STATE;
signal prev_state           : TRX_STATE;
signal next_strobe          : std_ulogic;

begin

  reg_proc: process(clock_i, reset_i)
  begin
    if reset_i = '1' then 
      receive_counter_value <= (others => '0');
      baud_counter_value <= (others => '0');
      rx_state <= IDLE;
      received_data <= (others => '0');
      data_valid_strb <= '0';
    elsif rising_edge(clock_i) then
      receive_counter_value <= next_receive_counter_value;
      baud_counter_value <= next_baud_counter_value;
      rx_state <= next_rx_state;
      received_data <= next_received_data;
      data_valid_strb <= next_strobe;
      end if;
  end process reg_proc;
  -- =====================================================
  
  rx_counter_logic: process(receive_counter_value, rx_state, baud_counter_value, baudrate_adj_i)
  begin
    -- default assignment
    next_receive_counter_value <= receive_counter_value;
    
    if rx_state = RECEIVING then
      if baud_counter_value = baudrate_adj_i then
        next_receive_counter_value <= receive_counter_value + 1;
      end if;
    else
      next_receive_counter_value <= (others => '0');
    end if;
  end process rx_counter_logic;
  -- =====================================================

  baud_counter_logic: process(baud_counter_value, rx_state, baudrate_adj_i)
  begin
    -- default assignment
    next_baud_counter_value <= baud_counter_value;
    
    if baud_counter_value < baudrate_adj_i then
      next_baud_counter_value <= baud_counter_value + 1;
    else
      next_baud_counter_value <= (others => '0');
    end if;
    
    if rx_state = IDLE then
      next_baud_counter_value <= (others => '0'); -- Otherwise, counter is too late to reach max. value and start bit is skipped.
    end if;
  end process baud_counter_logic;
  -- =====================================================
  
  rx_fsm_logic: process(rx_state, received_data, receive_counter_value, rx_i, baud_counter_value, baudrate_adj_i)
  begin
    -- default assignment
    next_rx_state <= rx_state;
    next_received_data <= received_data;
    next_strobe <= '0';
    
    case rx_state is
      when IDLE => 
        next_strobe <= '0';
        if rx_i = '0' then
          next_rx_state <= STARTBIT; 
        end if;
        
      when STARTBIT => 
        if baud_counter_value = baudrate_adj_i then
          next_rx_state <= RECEIVING;
        end if;
        
      when RECEIVING => 
        if baud_counter_value = shift_right(baudrate_adj_i, 1) then -- Sampling RX bits at baudrate_adj_i / 2
          next_received_data(to_integer(receive_counter_value)) <= rx_i;
        end if;
        if baud_counter_value = baudrate_adj_i and receive_counter_value = UART_DATA_LENGTH - 1 then
          next_rx_state <= STOPBIT;
        end if;
        
      when STOPBIT => 
        if baud_counter_value = shift_right(baudrate_adj_i, 1) then -- baudrate_adj_i / 2
          next_rx_state <= IDLE;
          next_strobe <= '1';
        end if;
        
      when others => 
        next_received_data <= (others => '0');
    end case;
  end process rx_fsm_logic;
  -- =====================================================
  
  -- Concurrent output statements
  data_o <= received_data;
  data_valid_strb_o <= data_valid_strb;
  -- =====================================================
end architecture rtl;