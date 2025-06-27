-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a hardware, 
-- which converts the DATA_BITWIDTH (e.g. 16-Bit) into UART_DATA_LENGTH (e.g. 8-Bit).
-- Send memory value (variable byte length) with UART (8-Bit data length)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity memory2uart is
	generic(
		DATA_BITWIDTH		  : natural;
		UART_DATA_LENGTH  : natural
	);
	port(
		-- INPUTS
		clock_i				  : in std_ulogic;
		reset_i				  : in std_ulogic;
		read_strb_i	    : in std_ulogic;
		tx_strb_i		    : in std_ulogic;
		memory_data_i		: in std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		
		-- OUTPUTS
		UART_data_o  		: out std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
    tx_start_strb_o : out std_ulogic
	);
end entity memory2uart; 	

architecture rtl of memory2uart is

-- Constants and Type definitions
constant BYTES            : natural := natural(ceil(real(DATA_BITWIDTH) / real(UART_DATA_LENGTH)));
constant BITWIDTH         : natural := BYTES * 8;
constant COUNTER_LENGTH   : natural := natural(ceil(log2(real(BYTES))));
type TShiftReg is array (0 to BYTES - 1) of std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);

-- Internal signals
signal shift_reg_out		  : TShiftReg;
signal next_shift_reg_out	: TShiftReg;
signal tx_start_strb      : std_ulogic;
signal next_tx_start_strb : std_ulogic;
signal counter            : unsigned(COUNTER_LENGTH - 1 downto 0);
signal next_counter       : unsigned(COUNTER_LENGTH - 1 downto 0);
signal data               : std_ulogic_vector(BITWIDTH - 1 downto 0);

begin

  -- Prepend sign-correct zeros or ones, if DATA_BITWIDTH is not a power of 2.
  data <= std_ulogic_vector(resize(signed(memory_data_i), BITWIDTH));
  -- =====================================================
  
	reg_proc: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
			shift_reg_out <= (others => (others => '0'));
      tx_start_strb <= '0';
      counter <= (others => '0');
		elsif rising_edge(clock_i) then
      shift_reg_out <= next_shift_reg_out;
      tx_start_strb <= next_tx_start_strb;
      counter <= next_counter;
		end if;
	end process reg_proc;
	-- =====================================================
  
	shift_logic: process(shift_reg_out, read_strb_i, counter, data, tx_strb_i) is
  variable j : natural;
	begin
    -- default assignment
		next_shift_reg_out <= shift_reg_out;
    next_tx_start_strb <= '0';
    
    -- read bytes from memory
    if read_strb_i = '1' then
      -- split to single bytes
      next_tx_start_strb <= '1';
      for i in 0 to BYTES - 1 loop
        j := i; -- j := i (send high byte first) and j := (BYTES - 1) - i (send low byte first) 
        next_shift_reg_out(j) <= data(UART_DATA_LENGTH - 1 + i * UART_DATA_LENGTH downto i * UART_DATA_LENGTH);
      end loop;
    -- shift after transmitted one byte (except for last byte)
		elsif tx_strb_i = '1' and counter < BYTES - 1 then
			next_shift_reg_out(1 to BYTES - 1) <= shift_reg_out(0 to BYTES - 2);
      next_tx_start_strb <= '1';
    end if;
	end process shift_logic;
  -- =====================================================
  
  byte_counter_logic: process(tx_strb_i, counter) is
  begin
    -- default assignment
    next_counter <= counter;
    
    if tx_strb_i = '1' then
      if counter = BYTES - 1 then
        next_counter <= (others => '0'); -- when BYTES are not power of 2
      else
        next_counter <= counter + 1;
      end if;
    end if;
  end process byte_counter_logic;
	-- =====================================================
  
  -- Concurrent output statements
  tx_start_strb_o <= tx_start_strb;
	UART_data_o <= shift_reg_out(BYTES - 1);
  -- =====================================================
end architecture rtl;