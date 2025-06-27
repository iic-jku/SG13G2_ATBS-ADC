-- =====================================================
-- Author: Intel
-- Modified by: Michael Lunglmayr, Anna Werzi and Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a parameterized, inferable, true dual-port, dual-clock block RAM in VHDL.
-- Changed orignal template from Intel to using std_ulogic_vector for address bus.
-- =====================================================
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dual_ram is
	generic(
		DATA_BITWIDTH : natural;
		ADDR_BITWIDTH : natural
	);
	port(
		-- Port A
		a_clock_i     : in  std_ulogic;
		a_write_i     : in  std_ulogic;
		a_addr_i      : in  std_ulogic_vector(ADDR_BITWIDTH - 1 downto 0);
		a_data_i      : in  std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		a_data_o      : out std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
    
		-- Port B
		b_clock_i     : in  std_ulogic;
		b_write_i     : in  std_ulogic;
		b_addr_i      : in  std_ulogic_vector(ADDR_BITWIDTH - 1 downto 0);
		b_data_i      : in  std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
		b_data_o      : out std_ulogic_vector(DATA_BITWIDTH - 1 downto 0)
	);
end dual_ram;
 
architecture rtl of dual_ram is

-- Shared memory
type Tmem is array ((2**ADDR_BITWIDTH) - 1 downto 0) of std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
shared variable mem : Tmem;
	
begin

  -- Port A
  process(a_clock_i)
  begin
    if rising_edge(a_clock_i) then
      if(a_write_i = '1') then
        mem(to_integer(unsigned(a_addr_i))) := a_data_i;
      end if;
      a_data_o <= mem(to_integer(unsigned(a_addr_i)));
    end if;
  end process;
  -- ============================================
   
  -- Port B
  process(b_clock_i)
  begin
    if rising_edge(b_clock_i) then
      if(b_write_i = '1') then
        mem(to_integer(unsigned(b_addr_i))) := b_data_i;
      end if;
      b_data_o <= mem(to_integer(unsigned(b_addr_i)));
    end if;
  end process;
  -- ============================================
end architecture rtl;