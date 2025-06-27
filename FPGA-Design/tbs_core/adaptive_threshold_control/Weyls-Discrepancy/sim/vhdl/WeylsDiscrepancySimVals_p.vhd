library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.adaptive_std.all;
package WeylsDiscrepancySimVals is
--------------------------------------------------------
--CONSTANTS
--------------------------------------------------------
  constant D_MAX: natural := 16;
  constant D_MIN: natural := 2;
  constant LEVEL_OF_REG: natural := 2;
  constant WEYLSD_BITS: natural := natural(ceil(log2(real(D_MAX+1))));
--------------------------------------------------------
--SIMULATION CONSTANTS
--------------------------------------------------------
  constant CLK_FREQ: natural := 10000000;
  constant SPIKES : T_SPIKES := (
"10", -- -1 
"10", -- -1 
"01", -- 1 
"10", -- -1 
"01");-- 1 


end package WeylsDiscrepancySimVals;
