-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use ieee.math_real.all;

entity address is
  generic(
    ADDR_BITWIDTH	 : natural;
    ADDR_MAX_VALUE : natural
  );
  port(
    clk_i			     : in std_ulogic;
    rst_i			     : in std_ulogic;
    strobe_i	     : in std_ulogic;
    address_o      : out std_ulogic_vector(ADDR_BITWIDTH - 1 downto 0);
    overflow_o     : out std_ulogic
  );
end entity address;

architecture rtl of address is

signal address		:	unsigned(ADDR_BITWIDTH - 1 downto 0);
signal next_address	:	unsigned(ADDR_BITWIDTH - 1 downto 0);

begin

  reg_proc: process(rst_i, clk_i) is
  begin
    if rst_i = '1' then
      address <= (others => '0');
    elsif rising_edge(clk_i) then
      address <= next_address;
    end if;
  end process reg_proc;
  -- =====================================================
  
  next_state_logic: process(address, strobe_i) is
  begin
    -- default assignment
    next_address <= address;
    
    if strobe_i = '1' then
      if address = ADDR_MAX_VALUE - 1 then
        next_address <= (others => '0');
      else
        next_address <= address + to_unsigned(1, next_address'length);
      end if;
    end if;
  end process next_state_logic;
  -- =====================================================
  
  -- Concurrent output statements
  overflow_o <= strobe_i when address = ADDR_MAX_VALUE - 1 and next_address = 0 else '0';
  address_o <= std_ulogic_vector(address);
	-- =====================================================
end architecture rtl;