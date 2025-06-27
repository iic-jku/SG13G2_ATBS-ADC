-------------------------------------------------------------------------------------------- 
-- Author: Simon Dorrer 
-- Last Modified: 11.10.2024 
-- Description: TBS SimVals and Package Constants created by Matlab. 
-------------------------------------------------------------------------------------------- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.math_real.all; 

package TBSSimVals is 
  -- MAIN CONSTANTS 
  -- ===================================================== 
  constant CLK_FREQ : natural := 8000000; 
  constant MAIN_COUNTER_BITWIDTH : natural := 20; 
  constant MAIN_COUNTER_MAX : natural := 800000; 
  constant DEBOUNCER_BITWIDTH : natural := 16; 
  constant DEBOUNCER_MAX : natural := 65536; 
  -- ===================================================== 

  -- COMPARATOR INPUT CONSTANTS
  -- ===================================================== 
  constant N_FF : natural := 2; 
  constant N_CHANNELS : natural := 2; 
  -- ===================================================== 

  -- TBS CONSTANTS
  -- ===================================================== 
  constant MAX_CLIPPING_VALUE : natural := 255; 
  constant MIN_CLIPPING_VALUE : natural := 0; 
  -- ===================================================== 

  -- ATBS CONSTANTS
  -- ===================================================== 
  constant D_MAX_LIM : natural := 2; 
  constant D_MIN_LIM : natural := 2; 
  constant WEYLSD_BITS : natural := natural(ceil(log2(real(2 * (D_MAX_LIM + 1))))); 
  constant DELTA_STEPS_BITWIDTH : natural := 8; 
  -- ===================================================== 

  -- TIME MEASUREMENT CONSTANTS
  -- ===================================================== 
  constant TIME_COUNTER_BITWIDTH : natural := 18; 
  constant TIME_COUNTER_MAX : natural := 262144; 
  -- ===================================================== 

  -- DAC CONSTANTS
  -- ===================================================== 
  constant DAC_SETTLING_CLKS : natural := 80; 
  constant DAC_BITWIDTH : natural := 8; 
  -- ===================================================== 

  -- PWM CONSTANTS
  -- ===================================================== 
  constant PWM_COUNTER_BITWIDTH : natural := 8; 
  constant PWM_COUNTER_MAX : natural := 256; 
  -- ===================================================== 

  -- ANALOG TRIGGER CONSTANTS
  -- ===================================================== 
  constant TRIGGER_COUNTER_BITWIDTH : natural := 8;
  constant TRIGGER_COUNTER_MAX : natural := 160;
  -- ===================================================== 

  -- SC NOC GENERATOR CONSTANTS
  -- ===================================================== 
  constant SC_NOC_COUNTER_BITWIDTH : natural := 11;
  constant SC_NOC_COUNTER_MAX : natural := 2048;
  -- ===================================================== 

  -- MEMORY CONSTANTS
  -- ===================================================== 
  constant ADDR_BITWIDTH : natural := 6;
  constant DATA_BITWIDTH : natural := 19;
  -- ===================================================== 

  -- UART CONSTANTS
  -- ===================================================== 
  constant UART_DATA_LENGTH : natural := 8;
  constant UART_BAUD_COUNTER_MAX : natural := 417;
  constant UART_BAUD_COUNTER_BITWIDTH : natural := 9;
  -- ===================================================== 

  -- ETHERNET CONSTANTS
  -- ===================================================== 
  constant N_PAYLOAD_BYTES : natural := 300; 
  -- ===================================================== 
end package TBSSimVals;