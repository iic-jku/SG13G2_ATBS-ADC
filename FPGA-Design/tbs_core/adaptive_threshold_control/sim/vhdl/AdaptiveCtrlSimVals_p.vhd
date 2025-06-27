-------------------------------------------------------------------------------------------- 
-- Author: Anna Werzi 
-- Author: Simon Dorrer 
-- Last Modified: 11.10.2024 
-- Description: Adaptive SimVals and Package Constants created by Matlab. 
-------------------------------------------------------------------------------------------- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.math_real.all; 

library work; 
use work.TBSSimVals.all; 
use work.all; 

package AdaptiveCtrlSimVals is 
  -- CONSTANTS 
  -- ===================================================== 
  constant LEVEL_OF_REG : natural := 8; 
  -- ===================================================== 
end package AdaptiveCtrlSimVals;