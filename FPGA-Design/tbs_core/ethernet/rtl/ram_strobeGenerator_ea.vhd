-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity ram_strobeGenerator is
	generic( 
		MAX_COUNT	  :	natural := 2;	  -- Max. Count count_value for the generator
		MAX_STROBES	:	natural			    -- Max. Amount of Strobes generated
	);
	port(
		rst_i		    :	in  std_ulogic;	-- Reset Input
		clk_i		    :	in  std_ulogic;	-- Clock Input
		enable_i	  :	in std_ulogic;	-- Enables the Strobe Generator
		strobe_o	  :	out std_ulogic;	-- Strobe Signal Output
		finished_o	:	out std_ulogic	-- Always high, when the MAX_STROBES value is reached
	);
end entity ram_strobeGenerator;

architecture rtl of ram_strobeGenerator is

constant COUNTER_BITWIDTH	:	natural := natural( ceil( log2( real( MAX_COUNT ) ) ) );
constant STROBES_BITWIDTH	:	natural := natural( ceil( log2( real( MAX_STROBES ) ) ) );

signal count_value			  :	unsigned(COUNTER_BITWIDTH - 1 downto 0);
signal next_count_value 	:	unsigned(COUNTER_BITWIDTH - 1 downto 0);

signal strobe_value			  :	unsigned(STROBES_BITWIDTH downto 0);
signal next_strobe_value	:	unsigned(STROBES_BITWIDTH downto 0);

begin

  reg_proc: process(rst_i, clk_i) is
  begin
    if rst_i = '1' then
      count_value <= (others => '0');
      strobe_value <= (others => '0');
    elsif rising_edge(clk_i) then
      count_value <= next_count_value;
      strobe_value <= next_strobe_value;
    end if;
  end process reg_proc;
  -- =====================================================
  
  next_value_logic: process(count_value, strobe_value, enable_i) is
  begin
    -- default assignment
    next_count_value <= count_value;
    next_strobe_value <= strobe_value;
    
    if enable_i = '1' then
      if(count_value = MAX_COUNT - 1) then
        -- Set Count count_value to Zero
        next_count_value <= (others => '0');
        -- Increase value by one
        next_strobe_value <= strobe_value + to_unsigned(1, next_strobe_value'length);
        -- Reset the value
        if strobe_value = MAX_STROBES then
          next_strobe_value <= (others => '0');
        end if;
      else
        -- Count upwards
        next_count_value <= count_value + to_unsigned(1, next_count_value'length);
      end if;
    end if;
  end process next_value_logic;
  -- =====================================================
  
  -- Concurrent output statements
  -- Write the signal to the output (either 1 or 0)	
  strobe_o <= '1' when count_value = MAX_COUNT - 1 and enable_i = '1' else '0';
  finished_o <= '1' when strobe_value = MAX_STROBES else '0';
	-- =====================================================
end architecture rtl;