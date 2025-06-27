-------------------------------------------------------------------------------------------- 
-- Author: Anna Werzi 
-- Last Modified: 11.10.2024 
-- Description: Adaptive TBS standard package created by Matlab. 
-------------------------------------------------------------------------------------------- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.math_real.all; 

package adaptive_std is 
  -- CONSTANTS 
  -- ===================================================== 
  constant N_SPIKES : natural := 15; 
  -- ===================================================== 

  -- TYPE DEFINITIONS 
  -- ===================================================== 
  type T_SPIKES is array (N_SPIKES - 1 downto 0) of std_ulogic_vector(1 downto 0); 
  -- ===================================================== 
end package adaptive_std;