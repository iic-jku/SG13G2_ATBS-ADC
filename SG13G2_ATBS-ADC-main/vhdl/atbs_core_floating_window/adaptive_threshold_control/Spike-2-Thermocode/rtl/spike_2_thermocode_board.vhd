-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 22.09.2022
-- Description: board wrapper of spike_2_thermocode_ea
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.Spike2ThermoSimVals.all;
use work.all;

entity spike_2_thermocode_board is
  port(
    spike_i   : in std_ulogic_vector(1 downto 0);
    thermo_i  : in std_ulogic_vector(THERMO_BITS-1 downto 0);
    thermo_o  : out std_ulogic_vector(THERMO_BITS-1 downto 0)
  );
end entity;

architecture rtl of spike_2_thermocode_board is
 
begin
  
  -- Embed Spike-2-Thermocode
	spike_2_thermocode_0: entity spike_2_thermocode(rtl)
	generic map(
		THERMO_BITS => THERMO_BITS
	)
	port map(
    spike_i     => spike_i,
    thermo_i 	  => thermo_i,
    thermo_o 		=> thermo_o
	);
  -- =====================================================  
end architecture; 