-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 24.03.2025
-- Description: This .vhd file implements a non-overlapping clock (NOC) generator
-- for switched capacitors (SC) in the analog front-end.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.all;

entity sc_noc_generator is 
  generic(
		SC_NOC_COUNTER_BITWIDTH   : natural
	);
	port(
		clock_i 			    : in std_ulogic;
		reset_i 			    : in std_ulogic;
    enable_i          : in std_ulogic;
    period_adj_i      : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
		duty_cycle_adj_i  : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
    overlap_adj_i     : in unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
    
		sc_noc_1_o 		    : out std_ulogic;
		sc_noc_2_o 			  : out std_ulogic
	);
end entity sc_noc_generator;

architecture rtl of sc_noc_generator is

-- Internal signals
signal counter_value      : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal next_counter_value :	unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);

begin
	
	cnt_reg: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
			counter_value <= (others => '0');
		elsif rising_edge(clock_i) then
      if enable_i = '1' then
        counter_value <= next_counter_value;
      end if;
		end if;
	end process cnt_reg;
	-- ============================================
  
	cnt_logic: process(counter_value, period_adj_i) is
	begin
		-- default assignment
		next_counter_value <= counter_value;
		
		if counter_value = period_adj_i then	-- if period_adj_i value is reached, reset counter.
			next_counter_value <= (others => '0');
		else 
			next_counter_value <= counter_value + 1;
		end if;
	end process cnt_logic;
  -- ============================================
  
  -- Concurrent statement to set sc_noc_1_o / sc_noc_2_o to '1' or '0', depending on the counter value.
  sc_noc_1_o <= '1' when (counter_value < duty_cycle_adj_i or (duty_cycle_adj_i /= 0 and counter_value = period_adj_i and duty_cycle_adj_i = period_adj_i)) else '0';
  sc_noc_2_o <= '1' when ((counter_value > overlap_adj_i and counter_value <= (overlap_adj_i + duty_cycle_adj_i - 1)) or (counter_value = overlap_adj_i)) else '0';
  -- ============================================
end architecture rtl;