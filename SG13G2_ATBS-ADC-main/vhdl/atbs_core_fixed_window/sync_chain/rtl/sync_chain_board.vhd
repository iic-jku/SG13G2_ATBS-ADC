-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the board wrapper of the generic synchronization chain entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity sync_chain_board is
  port(
    clock_i		: in std_ulogic;
    reset_n_i : in std_ulogic;
    async_i		: in std_ulogic_vector(N_CHANNELS - 1 downto 0);
    
    sync_o		: out std_ulogic_vector(N_CHANNELS - 1 downto 0)
  );
end entity sync_chain_board;

architecture rtl of sync_chain_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset : std_ulogic;

begin

	-- Inverting Input Logic
	reset <= not reset_n_i;
	
	-- Embed Generic Synchronization Chain entity
	sync_chain_0: entity sync_chain(rtl)
	generic map (
		N_FF        => N_FF,
		N_CHANNELS  => N_CHANNELS
	)
	port map(
		clock_i     => clock_i,
		reset_i 		=> reset,
		async_i		  => async_i,
    
		sync_o 		  => sync_o
	);
	-- =====================================================
end architecture rtl;