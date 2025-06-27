library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package PriorityEncoderSimVals is

  constant IN_BITS: natural := 8;
  constant OUT_BITS : natural := natural(ceil(log2(real(IN_BITS)))); 
  
end package PriorityEncoderSimVals;
