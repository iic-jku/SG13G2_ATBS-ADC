-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 30.09.2024
-- Description: This .vhd file implements a testbench testing the SC NOC Generator entity.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.TBSSimVals.all;
use work.all;

entity sc_noc_generator_tb is

end entity sc_noc_generator_tb;

architecture bhv of sc_noc_generator_tb is

-- INPUT signals
signal clock 			    : std_ulogic := '0';
signal reset_n	      : std_ulogic := '1'; -- active low input
signal enable 			  : std_ulogic := '1'; -- enabled

signal period_adj     : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal duty_cycle_adj : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);
signal overlap_adj    : unsigned(SC_NOC_COUNTER_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal sc_noc_1        : std_ulogic;
signal sc_noc_2        : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset			: std_ulogic;

signal tb_end     : std_ulogic := '0';

signal SC_NOC_COUNTER_MAX : natural := SC_NOC_COUNTER_MAX;
signal CLK_FREQ : natural := CLK_FREQ;

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed SC NOC Generator
	dut_noc_generator: entity sc_noc_generator(rtl)
  generic map(
    SC_NOC_COUNTER_BITWIDTH => SC_NOC_COUNTER_BITWIDTH
	)
	port map(
		clock_i           => clock,
		reset_i	          => reset,
    enable_i          => enable,
    period_adj_i      => period_adj,
    duty_cycle_adj_i  => duty_cycle_adj,
    overlap_adj_i     => overlap_adj,
    
    sc_noc_1_o 		    => sc_noc_1,
    sc_noc_2_o 		    => sc_noc_2
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
    
    wait for 5 * sec / CLK_FREQ;
    
    -- Maximum Period / Minimum Frequency
    period_adj <= to_unsigned(SC_NOC_COUNTER_MAX - 1, SC_NOC_COUNTER_BITWIDTH); -- Maximum Period / Minimum Frequency
    duty_cycle_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 4, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
    overlap_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2, SC_NOC_COUNTER_BITWIDTH);
    
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    -- Test Enable Function
    enable <= '0';
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    enable <= '1';
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    period_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 - 1, SC_NOC_COUNTER_BITWIDTH); -- Default Period / Default Frequency
    duty_cycle_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 4, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
    overlap_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 2, SC_NOC_COUNTER_BITWIDTH);
    
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    period_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 - 1, SC_NOC_COUNTER_BITWIDTH); -- Default Period / Default Frequency
    duty_cycle_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 2, SC_NOC_COUNTER_BITWIDTH); -- 50% Duty Cycle
    overlap_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 2, SC_NOC_COUNTER_BITWIDTH);
    
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    period_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 - 1, SC_NOC_COUNTER_BITWIDTH); -- Default Period / Default Frequency
    duty_cycle_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 2 - 1, SC_NOC_COUNTER_BITWIDTH); -- 50% - 1/fclk Duty Cycle
    overlap_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 2, SC_NOC_COUNTER_BITWIDTH);
    
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    period_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 4 - 1, SC_NOC_COUNTER_BITWIDTH); -- Minimum Period / Maximum Frequency
    duty_cycle_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 4 / 4, SC_NOC_COUNTER_BITWIDTH); -- 25% Duty Cycle
    overlap_adj <= to_unsigned(SC_NOC_COUNTER_MAX / 2 / 4, SC_NOC_COUNTER_BITWIDTH);
    
    wait for 5 * SC_NOC_COUNTER_MAX * sec / CLK_FREQ;
    -- =====================================================
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;