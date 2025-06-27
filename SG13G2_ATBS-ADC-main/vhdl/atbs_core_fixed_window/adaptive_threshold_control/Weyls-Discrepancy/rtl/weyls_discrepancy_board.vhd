-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 02.10.2022
-- Description: calculation of weyls discrepancy
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.adaptive_std.all;
use work.TBSSimVals.all;
use work.AdaptiveCtrlSimVals.all;
use work.all;

entity weyls_discrepancy_board is
  port(
    clock_i 	    : in std_ulogic;
    reset_n_i     : in std_ulogic;
    spikes_i      : in T_SPIKES;
    spikes_strb_i : in std_ulogic;
    
    weylsd_o      : out unsigned(WEYLSD_BITS - 1 downto 0);
    weylsd_strb_o : out std_ulogic
  );
end entity weyls_discrepancy_board;

architecture rtl of weyls_discrepancy_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset				: std_ulogic;
    
begin

  -- Inverting Input Logic
	reset <= not reset_n_i;
  
  -- Embed Weyls Discrepancy
	weyls_discrepancy_0: entity weyls_discrepancy(rtl)
	generic map(
    LEVEL_OF_REG  => LEVEL_OF_REG,
    WEYLSD_BITS   => WEYLSD_BITS,
    THERMO_BITS   => 2 * (N_SPIKES + 1)
  )
  port map(
    clock_i 	    => clock_i,
    reset_i       => reset, 
    spikes_i      => spikes_i,     
    spikes_strb_i => spikes_strb_i,
    
    weylsd_o      => weylsd_o,     
    weylsd_strb_o => weylsd_strb_o
  );
  -- =====================================================
end architecture; 