-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a testbench testing the generic synchronization chain entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity sync_chain_tb is

end entity sync_chain_tb;

architecture bhv of sync_chain_tb is

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n 				  : std_ulogic := '1'; -- active low input

signal comp_upper 		  : std_ulogic := '0';
signal comp_lower 		  : std_ulogic := '0';

-- OUTPUT signals
signal comp_upper_sync  : std_ulogic;
signal comp_lower_sync 	: std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				    : std_ulogic;

signal tb_end           : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
  -- Embed Generic Synchronization Chain entity
	dut_sync_chain: entity sync_chain(rtl)
	generic map (
		N_FF        => N_FF,
		N_CHANNELS  => N_CHANNELS
	)
	port map(
		clock_i     => clock,
		reset_i 		=> reset,
		async_i(0)  => comp_upper,
    async_i(1)  => comp_lower,
    
    sync_o(0)   => comp_upper_sync,
		sync_o(1)   => comp_lower_sync
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
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
		
		wait for 5 ns;
		-- Inputs go high
		comp_upper <= '1';
		comp_lower <= '1';
		
		wait for 200 ns;
		
		-- Inputs go low
		comp_upper <= '0';
		comp_lower <= '0';
		wait for 400 ns;
		
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;