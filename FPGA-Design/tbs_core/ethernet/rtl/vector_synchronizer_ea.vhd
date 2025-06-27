-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity vector_synchronizer is
  generic(
    SYNC_CNT : natural;	      -- Amount of Sync Gates
    SYNC_LEN : natural		    -- Vector Length
  );
  port(
    rst_i	   : in std_ulogic;	-- Reset Input
    clk_i	   : in std_ulogic;	-- Clock Input
    sync_i   : in std_ulogic_vector(SYNC_LEN - 1 downto 0);	-- Not synchronized Input
    sync_o	 : out std_ulogic_vector(SYNC_LEN - 1 downto 0)	-- Now synchronized Output
  );
end vector_synchronizer;

architecture rtl of vector_synchronizer is

begin
  
  -- Generate multiple synchronizers
  GEN_SYNC : for i in SYNC_LEN - 1 downto 0 generate
    sync: entity synchronizer(rtl)
    generic map(
      SYNC_CNT  => SYNC_CNT
    )
    port map(
      rst_i		  => rst_i,
      clk_i		  => clk_i,
      sync_i		=> sync_i(i),
      sync_o		=> sync_o(i)
    );
  end generate GEN_SYNC;
  -- =====================================================
end architecture rtl;