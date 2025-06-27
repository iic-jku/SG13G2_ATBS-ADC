-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This entity implements a "generic synchronization chain".
-- In-/outputs:
-- clock_i		... clock input
-- reset_i	  ... reset input
-- async_i    ... N_CHANNELS asynchronous input signals
-- sync_o			... N_CHANNELS synchronous output signals
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity sync_chain is
  generic(
    N_FF		    : natural; -- Minimum N_FF = 2
    N_CHANNELS	: natural
  );
  port(
    clock_i		  : in std_ulogic;
    reset_i		  : in std_ulogic;
    async_i		  : in std_ulogic_vector(N_CHANNELS - 1 downto 0);
    
    sync_o		  : out std_ulogic_vector(N_CHANNELS - 1 downto 0)
  );
end entity sync_chain;
	
architecture rtl of sync_chain is

-- Internal signals
-- N_FF registers in series for each N_CHANNELS input signals.
type TBuffer is array(N_FF - 1 downto 0) of std_ulogic_vector(N_CHANNELS - 1 downto 0);
signal buf : TBuffer;

begin

	-- Generic Sync-Chain
	sync_reg: process(clock_i, reset_i) is
	begin
		for i in 1 to N_FF - 1 loop
			if reset_i = '1' then
				buf(0) <= (others => '0');	-- reset asynchronous inputs
				buf(i) <= (others => '0');	-- reset all buf signals + synchronized output
			elsif rising_edge(clock_i) then
				buf(0) <= async_i;	        -- connect asynchronous inputs to first FFs
				buf(i) <= buf(i-1);	        -- cascading-N FFs together
			end if;
		end loop;
	end process sync_reg;
	-- =====================================================
  
	-- Concurrent statement to connect last buffer signal to synchronized output.
	sync_o <= buf(N_FF - 1);
  -- =====================================================
end architecture rtl;