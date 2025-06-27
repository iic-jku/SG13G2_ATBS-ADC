-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity synchronizer is
  generic(
    SYNC_CNT : natural			  -- Amount of Sync Gates
  );
  port(
    rst_i		 : in std_ulogic;	-- Reset Input
    clk_i		 : in std_ulogic;	-- Clock Input
    sync_i	 : in std_ulogic;	-- Not synchronized Input
    sync_o	 : out std_ulogic	-- Now synchronized Output
  );
end synchronizer;

architecture rtl of synchronizer is

signal synchronizer_chain	:	std_ulogic_vector(SYNC_CNT - 1 downto 0);
signal next_chain			    :	std_ulogic_vector(SYNC_CNT - 1 downto 0);

begin

	reg_proc: process (rst_i, clk_i) is
	begin
		if rst_i = '1' then
			synchronizer_chain <= (others => '0');
		elsif rising_edge(clk_i) then
			synchronizer_chain <= next_chain;
		end if;
	end process reg_proc;
  -- =====================================================
  
	next_state_logic: process (synchronizer_chain, sync_i) is
	begin
		-- default assignment
		next_chain <= synchronizer_chain;
		
		-- Set the corresponding output
		next_chain <= synchronizer_chain(synchronizer_chain'high - 1 downto 0) & sync_i;
	end process next_state_logic;
  -- =====================================================
  
	-- Concurrent output statements
	sync_o <= synchronizer_chain(synchronizer_chain'high);
  -- =====================================================
end architecture rtl;