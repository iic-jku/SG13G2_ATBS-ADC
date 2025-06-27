-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Date: 08.10.2022
-- Description: priority encoder without valid signal
-- In-/Outputs:
-- code_i ... input code
-- bin_o  ... position of the set bit with the highest priority starting with 1, 
--            0 means none of the bits are set.
-- https://www.electronics-tutorials.ws/de/kombinations/prioritats-encoder.html
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity priority_encoder is
  generic(
    IN_BITS   : natural; 
    OUT_BITS  : natural
  );
  port (
    clock_i   : in std_ulogic;
    reset_i   : in std_ulogic;
    code_i    : in std_ulogic_vector(IN_BITS - 1 downto 0);
    
    bin_o     : out unsigned(OUT_BITS - 1 downto 0)
  );
end entity priority_encoder;

architecture rtl of priority_encoder is

signal bin    : unsigned(OUT_BITS - 1 downto 0);

begin

  bin_logic: process(code_i) is
  begin
    -- default assignment
    bin <= (others => '0');
    
    -- check bits from LSB to MSB
    for i in 0 to IN_BITS - 1 loop
      if code_i(i) = '1' then
        bin <= to_unsigned(i + 1, OUT_BITS);
      end if;
    end loop;
  end process bin_logic;
  -- =====================================================
  
  -- Concurrent output statements
  bin_o <= bin;
  -- =====================================================
end architecture; 