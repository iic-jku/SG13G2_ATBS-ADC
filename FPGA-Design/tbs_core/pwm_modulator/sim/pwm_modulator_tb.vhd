-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 24.07.2024
-- Description: This .vhd file implements a testbench testing the PWM entity.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.TBSSimVals.all;
use work.all;

entity pwm_modulator_tb is

end entity pwm_modulator_tb;

architecture bhv of pwm_modulator_tb is

-- INPUT signals
signal clock 			: std_ulogic := '0';
signal reset_n	  : std_ulogic := '1'; -- active low input
signal enable 		: std_ulogic := '1';

signal on_cnt_val : unsigned(PWM_COUNTER_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal pwm        : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset			: std_ulogic;

signal tb_end     : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed PWM
	dut_pwm_modulator: entity pwm_modulator(rtl)
  generic map(
    PWM_COUNTER_BITWIDTH  => PWM_COUNTER_BITWIDTH,
    PWM_COUNTER_MAX       => PWM_COUNTER_MAX
	)
	port map(
		clock_i       => clock,
		reset_i	      => reset,
    enable_i      => enable,
    on_cnt_val_i  => on_cnt_val,
    
		pwm_o         => pwm
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
    
    -- 0% Duty Cycle
    on_cnt_val <= to_unsigned(0, PWM_COUNTER_BITWIDTH);
    wait for 10 * PWM_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 25% Duty Cycle
    on_cnt_val <= to_unsigned(PWM_COUNTER_MAX / 4 - 1, PWM_COUNTER_BITWIDTH);
    wait for 10 * PWM_COUNTER_MAX * sec / CLK_FREQ;
    
    -- Test Enable Function
    enable <= '0';
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    enable <= '1';
    wait for 10 * TRIGGER_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 50% Duty Cycle
    on_cnt_val <= to_unsigned(PWM_COUNTER_MAX / 2 - 1, PWM_COUNTER_BITWIDTH);
    wait for 10 * PWM_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 75% Duty Cycle
    on_cnt_val <= to_unsigned(3 * PWM_COUNTER_MAX / 4 - 1, PWM_COUNTER_BITWIDTH);
    wait for 10 * PWM_COUNTER_MAX * sec / CLK_FREQ;
    
    -- 100% Duty Cycle
    on_cnt_val <= to_unsigned(PWM_COUNTER_MAX - 1, PWM_COUNTER_BITWIDTH);
    wait for 10 * PWM_COUNTER_MAX * sec / CLK_FREQ;
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;