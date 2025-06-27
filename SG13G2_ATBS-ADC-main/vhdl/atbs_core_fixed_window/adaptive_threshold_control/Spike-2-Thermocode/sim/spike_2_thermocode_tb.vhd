-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 22.09.2022
-- Description: testbench for spike_2_thermocode_ea 
-- In-/Outputs:
-- spike_i  ... spike (10 - negativ, 01 - positive, 00 - zero, 11 - invalid)
-- thermo_i	... previous thermocode
-- thermo_o ... updated thermocode
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TBSSimVals.all;
use work.Spike2ThermoSimVals.all;
use work.all;

entity spike_2_thermocode_tb is

end entity;

architecture bhv of spike_2_thermocode_tb is

signal spike_tb       : std_ulogic_vector(1 downto 0):= "00";

-- thermometer code with offset
signal prev_thermo_tb : std_ulogic_vector(THERMO_BITS - 1 downto 0) := (THERMO_BITS/2 - 1 downto 0 => '1', others => '0');
signal thermo_tb      : std_ulogic_vector(THERMO_BITS - 1 downto 0);
signal tb_end         : std_ulogic := '0';
      
begin
  
  -- Embed spike_2_thermocode for testing
  dut_spike_2_thermocode: entity spike_2_thermocode(rtl)
  generic map(
    THERMO_BITS => THERMO_BITS
  )
  port map(
    spike_i     => spike_tb,
    thermo_i    => prev_thermo_tb,
    thermo_o    => thermo_tb 
  );
  -- =====================================================
  
  -- Simulation Process
  stimuli: process is
    begin
      -- substract and add
      spike_tb <= "10";
      wait for 5 ns;
      
      spike_tb <= "01";
      wait for 5 ns;
      
      -- no spike
      spike_tb <= "00";
      wait for 5 ns;
      
      -- maximum reached, no spike can be added
      prev_thermo_tb <= (others => '1');
      spike_tb <= "01";
      wait for 5 ns;
      
      -- minimum reached, no spike can be substracted
      prev_thermo_tb <= (others => '0');
      spike_tb <= "10";
      wait for 5 ns;
      
      tb_end <= '1';
      report "End of simulation." severity error;
      wait;
  end process;
  -- =====================================================
end architecture;