-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 02.10.2022
-- Description: testbench of weyls_discrepancy_ea
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.WeylsDiscrepancySimVals.all;
use work.adaptive_std.all;
use work.std_definitions.all;
use work.all;

use std.TextIO.all;

entity weyls_discrepancy_tb is

end entity weyls_discrepancy_tb;

architecture bhv of weyls_discrepancy_tb is

-- Constants
constant CLK_PERIOD   : time := 1000 ms / CLK_FREQ; 

-- Signals
signal spikes_tb      : T_SPIKES;
signal tb_end         : std_ulogic := '0';
signal spikes_strb_tb : std_ulogic := '0';
signal clock_tb       : std_ulogic := '1';
signal reset_tb       : std_ulogic := '0';
signal weylsd_tb      : unsigned(WEYLSD_BITS - 1 downto 0);
signal weylsd_strb_tb : std_ulogic := '0';
  
begin
  
  -- Embed Weyls Discrepancy
	dut_weyls_discrepancy: entity weyls_discrepancy(rtl)
	generic map(
    LEVEL_OF_REG  => LEVEL_OF_REG,
    WEYLSD_BITS   => WEYLSD_BITS,
    THERMO_BITS   => 2*D_MAX
  )
  port map(
    clock_i 	    => clock_tb,
    reset_i       => reset_tb, 
    spikes_i      => spikes_tb,     
    spikes_strb_i => spikes_strb_tb,
    
    weylsd_o      => weylsd_tb,     
    weylsd_strb_o => weylsd_strb_tb
  );
  -- =====================================================
  
  -- Simulating clock signal
	clk_proc: process
	begin
		clock_tb <= not clock_tb;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
  
  -- Simulation Process
  stimuli: process is
  begin
    reset_tb <= '1';
    wait for CLK_PERIOD;
    reset_tb <= '0';
    wait for CLK_PERIOD;
    
    spikes_strb_tb <= '1';
    spikes_tb <= SPIKES;
    wait for CLK_PERIOD;
    spikes_strb_tb <= '0';
    wait until weylsd_strb_tb = '1';
    wait for 5 * CLK_PERIOD;
    
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
  end process stimuli;
  -- =====================================================
  
  writeout: process(weylsd_strb_tb)
  begin
    if weylsd_strb_tb = '1' then
      write_to_file("weylsd.txt", integer'image(to_integer(weylsd_tb)));
    end if;
  end process writeout;
  -- =====================================================
end architecture; 