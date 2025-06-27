-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 22.09.2022
-- Description: adjusts the level of a thermocode (with an offset) depending on the spikes
-- In-/Outputs:
-- spike_i	... spike (10 - negative, 01 - positive, 00 - zero, 11 - invalid)
-- thermo_i ... previous thermocode
-- thermo_o ... updated thermocode
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spike_2_thermocode is
  generic(
    THERMO_BITS : natural
  );
  port (
    spike_i     : in std_ulogic_vector(1 downto 0);
    thermo_i    : in std_ulogic_vector(THERMO_BITS - 1 downto 0);
    thermo_o    : out std_ulogic_vector(THERMO_BITS - 1 downto 0)
  );
end entity;

architecture rtl of spike_2_thermocode is

-- sign of spike
signal plus     : std_ulogic;
signal minus    : std_ulogic;
signal thermo   : std_ulogic_vector(THERMO_BITS-1 downto 0);

begin
  
  -- Spike-2-Thermocode Logic
  minus <= spike_i(1);
  plus <= spike_i(0);
  
  spike_2_thermocode_logic: process(thermo_i, minus, plus, spike_i) is
  begin
    -- no spike, thermocode stays unchanged
    if spike_i = "00" then
      thermo <= thermo_i;
    -- update thermocode
    else
      -- first bit
      thermo(0) <= plus or (thermo_i(1) and minus);
      
      for i in 1 to THERMO_BITS-2 loop
        -- set    ... previous is set and spike is positive 
        -- reset  ... next isn't set and spike is negative
        thermo(i) <= (thermo_i(i-1) and plus) or (thermo_i(i+1) and minus);
      end loop;
      
      -- last bit
      thermo(THERMO_BITS-1) <= thermo_i(THERMO_BITS-2) and plus;
    end if;
  end process spike_2_thermocode_logic;
  -- =====================================================
  
  -- Concurrent output statements
  thermo_o <= thermo;
  -- =====================================================
end architecture;