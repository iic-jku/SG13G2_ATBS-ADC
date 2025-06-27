-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a testbench testing the time measurement entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity time_measurement_tb is

end entity time_measurement_tb;

architecture bhv of time_measurement_tb is

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset 				    : std_ulogic := '1';	-- active low input	

-- OUTPUT signals
signal overflow_strb 		: std_ulogic := '0';
signal curr_time 			  : unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset_n 				  : std_ulogic;

signal tb_end           : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed Time-Measurement
	dut_time_measurement: entity time_measurement(rtl)
	generic map (
		TIME_COUNTER_BITWIDTH   => TIME_COUNTER_BITWIDTH,
		TIME_COUNTER_MAX			  => TIME_COUNTER_MAX
	)
	port map(
		clock_i 			          => clock,
		reset_i 			          => reset,
		overflow_strb_o		      => overflow_strb,
		curr_time_o 		        => curr_time
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
		reset_n <= '0';		-- active low reset
		wait for 20 ns;
		reset_n <= '1';		-- active low reset
    wait for 10 ms;
    
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;