-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 27.09.2024
-- Description: This .vhd file implements a testbench testing the analog trigger entity.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.TBSSimVals.all;
use work.all;

entity analog_trigger_tb is

end entity analog_trigger_tb;

architecture bhv of analog_trigger_tb is

-- CONSTANTS
constant TRIGGER_COUNTER_MAX  : natural := TRIGGER_COUNTER_MAX;

-- INPUT signals
signal clock 			    : std_ulogic := '0';
signal reset_n	      : std_ulogic := '1'; -- active low input
signal enable 			  : std_ulogic := '1'; -- enabled

signal period_adj     : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);
signal duty_cycle_adj : unsigned(TRIGGER_COUNTER_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal analog_trigger : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset			: std_ulogic;

signal tb_end     : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
  -- Embed Analog Trigger
	dut_analog_trigger: entity analog_trig(rtl)
  generic map(
    TRIGGER_COUNTER_BITWIDTH => TRIGGER_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock,
		reset_i	          => reset,
    enable_i	        => enable,
    period_adj_i      => period_adj,
    duty_cycle_adj_i  => duty_cycle_adj,
    
		analog_trigger_o  => analog_trigger
	);
	-- =====================================================
  
	-- Simulating clock signal
	clk_proc: process
	begin
		clock <= not clock;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
	
	-- Simulation Process
	stimuli: process
	begin
    -- Reset
		wait for 1 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    wait for 10 * sec / CLK_FREQ;
    
    -- Maximum Period / Minimum Frequency
    period_adj <= to_unsigned(TRIGGER_COUNTER_MAX - 1, TRIGGER_COUNTER_BITWIDTH);
    
    -- 0% Duty Cycle
    duty_cycle_adj <= to_unsigned(0, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 25% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- Test Enable Function
    enable <= '0';
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    enable <= '1';
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 50% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 2, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 75% Duty Cycle
    duty_cycle_adj <= to_unsigned(3 * TRIGGER_COUNTER_MAX / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 100% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX - 1, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    
    -- Default Period / Default Frequency
    period_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 2 - 1, TRIGGER_COUNTER_BITWIDTH);
    
    -- 0% Duty Cycle
    duty_cycle_adj <= to_unsigned(0, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 25% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 2 / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 50% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 2 / 2, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 75% Duty Cycle
    duty_cycle_adj <= to_unsigned(3 * TRIGGER_COUNTER_MAX / 2 / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 100% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 2 - 1, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    
    -- Minimum Period / Maximum Frequency
    period_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 4 - 1, TRIGGER_COUNTER_BITWIDTH);
    
    -- 0% Duty Cycle
    duty_cycle_adj <= to_unsigned(0, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 25% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 4 / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 50% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 4 / 2, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 75% Duty Cycle
    duty_cycle_adj <= to_unsigned(3 * TRIGGER_COUNTER_MAX / 4 / 4, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 100% Duty Cycle
    duty_cycle_adj <= to_unsigned(TRIGGER_COUNTER_MAX / 4 - 1, TRIGGER_COUNTER_BITWIDTH);
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;