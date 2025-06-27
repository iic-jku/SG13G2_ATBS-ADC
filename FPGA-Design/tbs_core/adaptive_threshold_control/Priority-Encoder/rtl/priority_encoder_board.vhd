-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Date: 21.09.2022
-- Description: priority encoder
-- In-/Outputs:
-- code_i		... input code
-- bin_o		... position of the set bit with the highest priority
-- valid_o  ... validates binary output (0 - no priority bit detected)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.PriorityEncoderSimVals.all;
use work.all;

entity priority_encoder_board is
  port(
    clock_i 	: in std_ulogic;
    reset_n_i : in std_ulogic;
    code_i    : in std_ulogic_vector(IN_BITS-1 downto 0);
    
    bin_o     : out unsigned(OUT_BITS-1 downto 0)
  );
end entity;

architecture rtl of priority_encoder_board is

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset				: std_ulogic;

begin

  -- Inverting Input Logic
	reset <= not reset_n_i;
  
  -- Embed Priority Encoder
	priority_encoder_0: entity priority_encoder(rtl)
	generic map(
		IN_BITS => IN_BITS,
    OUT_BITS => OUT_BITS
	)
	port map(
		clock_i 				=> clock_i,
		reset_i 			  => reset,
		code_i 		      => code_i,
    
		bin_o 		      => bin_o
	);
  -- =====================================================
end architecture; 