-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 06.10.2024
-- Description: This .vhd file implements an UART transmitter.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity uart_tx is
	generic( 
		UART_BAUD_COUNTER_BITWIDTH  : natural;
		UART_DATA_LENGTH            : natural
	);
	port( 
		clock_i			    : in std_ulogic;
		reset_i       	: in std_ulogic;
    baudrate_adj_i  : in unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
		tx_start_strb_i : in std_ulogic;
		data_i          : in std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
    
    tx_strb_o       : out std_ulogic;
		tx_o            : out std_ulogic
	);
end entity uart_tx;

architecture rtl of uart_tx is

-- Constants
constant TX_COUNTER_BITWIDTH  : natural := natural(ceil(log2(real(UART_DATA_LENGTH))));

-- Type definitions
type TTX_STATE is (IDLE, STARTTX, STARTBIT, TRANSMITTING, STOPBIT);

-- Internal signals
signal tx							       : std_ulogic;
signal tx_strb               : std_ulogic;
signal next_tx_strb          : std_ulogic;

-- Counter for transmitting data bits
signal transmit_counter_value       : unsigned(TX_COUNTER_BITWIDTH - 1 downto 0);
signal next_transmit_counter_value  : unsigned(TX_COUNTER_BITWIDTH - 1 downto 0);

-- Counter for Baudrate
signal baud_counter_value           : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);
signal next_baud_counter_value      : unsigned(UART_BAUD_COUNTER_BITWIDTH - 1 downto 0);

-- States
signal tx_state 		         : TTX_STATE;
signal next_tx_state         : TTX_STATE;

begin
    
	reg_proc: process(clock_i, reset_i)
	begin
		if reset_i = '1' then
			transmit_counter_value <= (others => '0');
      baud_counter_value <= (others => '0');
			tx_state <= IDLE;
      tx_strb <= '0';
		elsif rising_edge(clock_i) then
			transmit_counter_value <= next_transmit_counter_value;
      baud_counter_value <= next_baud_counter_value;
			tx_state <= next_tx_state;
      tx_strb <= next_tx_strb;
		end if;
	end process reg_proc;
  -- =====================================================

	-- count up if in TRANSMITTING, otherwise counter is 0
	tx_counter_logic: process(tx_state, transmit_counter_value, baud_counter_value, baudrate_adj_i)
	begin
		-- default assignment
		next_transmit_counter_value <= transmit_counter_value;

		if tx_state = TRANSMITTING then 
			if baud_counter_value = baudrate_adj_i then
				next_transmit_counter_value <= transmit_counter_value + 1;
			end if;
		else 
			next_transmit_counter_value <= (others => '0');
		end if;
	end process tx_counter_logic;
  -- =====================================================
  
  baud_counter_logic: process(baud_counter_value, baudrate_adj_i) is
	begin
		-- default assignment
		next_baud_counter_value <= baud_counter_value;
		
		if baud_counter_value < baudrate_adj_i then
			next_baud_counter_value <= baud_counter_value + 1;
		else 
			next_baud_counter_value <= (others => '0');
		end if;
	end process baud_counter_logic;
	-- ===================================================
  
	tx_fsm_logic: process(tx_state, transmit_counter_value, tx_start_strb_i, data_i, baud_counter_value, baudrate_adj_i)
	begin
		-- default assignment
		next_tx_state <= tx_state;
		tx <= '-';

		case tx_state is
			when IDLE => 
				tx <= '1';	-- Drive Line High for Idle
				if tx_start_strb_i = '1' then
					if baud_counter_value = baudrate_adj_i then 
						-- if baud_counter_value = baudrate_adj_i is at the same time, then start bit can start now, if not one has to wait until
						-- the next baud_counter_value = baudrate_adj_i, because otherwise the start bit would be too long.
						next_tx_state <= STARTBIT;
					else
						next_tx_state <= STARTTX;
					end if;
				end if;

			-- additional state needed because tx_start_strb_i and baud_counter_value = baudrate_adj_i can occur at different times.
			when STARTTX => 
				tx <= '1';
				if baud_counter_value = baudrate_adj_i then
					next_tx_state <= STARTBIT;
					tx <= '0';
				end if;
			  
			when STARTBIT =>
				tx <= '0';
				if baud_counter_value = baudrate_adj_i  then
					next_tx_state <= TRANSMITTING;
				end if;
			  
			when TRANSMITTING => 
				if transmit_counter_value <= UART_DATA_LENGTH - 1 then
					tx <= data_i(to_integer(transmit_counter_value));
					if transmit_counter_value = UART_DATA_LENGTH - 1 and baud_counter_value = baudrate_adj_i then         
						next_tx_state <= STOPBIT;
					end if;
				end if;
			  
			when STOPBIT => 
				tx <= '1';
				if baud_counter_value = baudrate_adj_i then
					-- if tx_start_strb_i occurs at the end of STOPBIT no need to go in idle, transmission can start again.
					if tx_start_strb_i = '1' then
						next_tx_state <= STARTBIT;
					else
						next_tx_state <= IDLE;
					end if;
				end if;
			  
			when others => 
        tx <= '-';
		end case;
  end process tx_fsm_logic;

  next_tx_strb <= '1' when tx_state = STOPBIT and (next_tx_state = STARTBIT or next_tx_state = IDLE)  else '0';
  -- =====================================================
  
  -- Concurrent output statements
  tx_o <= tx;
  tx_strb_o <= tx_strb;
  -- =====================================================
end architecture rtl;