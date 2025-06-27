library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package adaptive_std is
--------------------------------------------------------
--SIMULATION CONSTANTS
--------------------------------------------------------
  constant N_SPIKES: natural := 10;
--------------------------------------------------------
--TYPE DEFINITIONS
--------------------------------------------------------
  type T_SPIKES is array (N_SPIKES - 1 downto 0) of std_ulogic_vector(1 downto 0);
end package adaptive_std;
