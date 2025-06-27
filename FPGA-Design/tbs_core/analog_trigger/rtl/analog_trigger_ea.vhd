-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 27.09.2024
-- Description: This .vhd file implements the trigger for the analog front-end (e.g. DT comparator, etc.)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.all;

entity analog_trig is 
  generic(
		TRIGGER_COUNTER_BITWIDTH : natural
	);
	port(
		clock_i 			    : in std_ulogic;
		reset_i 			    : in std_ulogic;
    enable_i          : in std_ulogic;
    period_adj_i      : in unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
		duty_cycle_adj_i  : in unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
    
		analog_trigger_o  : out std_ulogic
	);
end entity analog_trig;

architecture rtl of analog_trig is

-- Internal signals
signal counter_value      : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
signal next_counter_value :	unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);

begin
	
  -- Adaptive clock frequency
  -- ToDo: maybe in future revision
  
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
  
  -- Concurrent statement to set trigger to '1' or '0', depending on the counter value
  analog_trigger_o <= '1' when (counter_value < duty_cycle_adj_i or (duty_cycle_adj_i /= 0 and counter_value = period_adj_i and duty_cycle_adj_i = period_adj_i)) else '0';
  -- ============================================
end architecture rtl;