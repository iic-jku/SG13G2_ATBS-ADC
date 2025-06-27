-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 24.07.2024
-- Description: This .vhd file implements the PWM output for a serial DAC (e.g. RC circuit).
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.all;

entity pwm_modulator is 
  generic(
		PWM_COUNTER_BITWIDTH : natural;
    PWM_COUNTER_MAX : natural
	);
	port(
		clock_i 			: in std_ulogic;
		reset_i 			: in std_ulogic;
    enable_i      : in std_ulogic;
		on_cnt_val_i  : in unsigned(PWM_COUNTER_BITWIDTH - 1 downto 0);
    
		pwm_o 				: out std_ulogic
	);
end entity pwm_modulator;

architecture rtl of pwm_modulator is

-- Internal signals
signal counter_value      : unsigned(PWM_COUNTER_BITWIDTH - 1 downto 0);
signal next_counter_value :	unsigned(PWM_COUNTER_BITWIDTH - 1 downto 0);

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
  
	cnt_logic: process(counter_value) is
	begin
		-- default assignment
		next_counter_value <= counter_value;
		
		if counter_value = PWM_COUNTER_MAX - 1 then	-- if max. PWM period counter is reached, reset counter.
			next_counter_value <= (others => '0');
		else 
			next_counter_value <= counter_value + 1;
		end if;
	end process cnt_logic;
  -- ============================================
  
  -- Concurrent statement to set PWM to '1' or '0', depending on the counter value
	pwm_o <= '1' when (counter_value <= on_cnt_val_i and on_cnt_val_i /= 0) else '0';
  -- ============================================
end architecture rtl;