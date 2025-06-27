-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 29.06.2024
-- Description: This .vhd file implements a testbench testing the debouncer entity.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.TBSSimVals.all;
use work.all;

entity debouncer_tb is

end entity debouncer_tb;

architecture bhv of debouncer_tb is

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n				  : std_ulogic := '1'; -- active low input

signal bouncing         : std_ulogic := '0';
signal debounced        : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				    : std_ulogic;

signal tb_end           : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed Debouncer entity
  dut_debouncer: entity debouncer(rtl)
  generic map(
    DEBOUNCER_BITWIDTH  => DEBOUNCER_BITWIDTH,
		DEBOUNCER_MAX			  => DEBOUNCER_MAX
	)
	port map(
		clock_i				      => clock,
		reset_i				      => reset,
    bouncing_i		      => bouncing,
    
    debounced_o	        => debounced
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
    
    -- Simulate RISING edge bouncing signal (LOW after debouncing time)
    -- debounced_o should be LOW.
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    -- =====================================================
    
    -- Pause
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    
    -- Simulate RISING edge bouncing signal (HIGH after debouncing time)
    -- debounced_o should be HIGH.
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    
    -- Simulate FALLING edge bouncing signal (LOW after debouncing time)
    -- debounced_o should be LOW.
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    -- Pause
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    
    -- Simulate RISING edge bouncing signal (HIGH after debouncing time)
    -- debounced_o should be HIGH.
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    -- Simulate FALLING edge bouncing signal (HIGH after debouncing time)
    -- debounced_o should be HIGH.
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '0';
    wait for DEBOUNCER_MAX / 50 * sec / CLK_FREQ;
    bouncing <= '1';
    
    -- Pause
    wait for DEBOUNCER_MAX * sec / CLK_FREQ;
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;