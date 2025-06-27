-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This counter is called "time measurement" and defines the time in between each spikes.
-- In-/outputs:
-- clock_i				  ... clock input
-- reset_i				  ... reset input
-- overflow_strb_o  ... on each counter overflow a output strobe is generated
-- curr_time_o			... current time from 0 to 2^COUNTER_BIT - 1 (= TIME_COUNTER_MAX - 1)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.all;

entity time_measurement is 
	generic(
		TIME_COUNTER_BITWIDTH : natural;
		TIME_COUNTER_MAX			: natural
	);
	port(
		clock_i 			        : in std_ulogic;
		reset_i 			        : in std_ulogic;
    
    -- to SPIKE ENCODER
		overflow_strb_o		    : out std_ulogic;
		curr_time_o 		      : out unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0)
	);
end entity time_measurement;

architecture rtl of time_measurement is

-- Internal signals for the time_measurement entity
signal counter_value      : unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
signal next_counter_value :	unsigned(TIME_COUNTER_BITWIDTH  - 1 downto 0);

signal overflow_strb		  : std_ulogic;
signal next_overflow_strb	: std_ulogic;

begin

	cnt_reg: process(clock_i, reset_i) is
	begin
		if reset_i = '1' then
			counter_value <= (others => '0');
			overflow_strb <= '0';
		elsif rising_edge(clock_i) then
			counter_value <= next_counter_value;
			overflow_strb <= next_overflow_strb;
		end if;
	end process cnt_reg;
	-- =====================================================
  
	cnt_logic: process(counter_value, overflow_strb) is
	begin
		-- default assignment
		next_counter_value <= counter_value;
		next_overflow_strb <= overflow_strb;
		
		if counter_value = TIME_COUNTER_MAX - 1 then
			next_counter_value <= (others => '0');
			next_overflow_strb <= '1';
		else 
			next_counter_value <= counter_value + 1;
			next_overflow_strb <= '0';
		end if;
	end process cnt_logic;
	-- =====================================================
  
	-- Concurrent statement to set the current counter value to the output
	curr_time_o <= counter_value;
	overflow_strb_o <= overflow_strb;
  -- =====================================================
end architecture rtl;