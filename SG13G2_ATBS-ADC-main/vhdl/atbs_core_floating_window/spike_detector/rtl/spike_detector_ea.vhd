-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements the logic of detecting a Spike when a Threshold change occurs.
-- Depending on the comparator signals a spike is triggered.
-- 0... decreasing DAC output voltage
-- 1... increasing DAC output voltage
-- The spike detection is disabled when voltage boundaries (GND or VDD) are reached (increasing_en_i / decreasing_en_i)
-- or a voltage changing cycle is in progress (feedback from DAC control entity)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

library work;
use work.all;

entity spike_detector is 
	port(
		clock_i				                : in std_ulogic;
		reset_i				                : in std_ulogic;
    
    detection_en_i                : in std_ulogic;    -- disable entity / detection
		comp_upper_i                  : in std_ulogic;    -- synchronized upper comparator output
		comp_lower_i                  : in std_ulogic;    -- synchronized lower comparator output
    change_upper_strb_i           : in std_ulogic;    -- strb for changing upper voltage
    change_lower_strb_i           : in std_ulogic;    -- strb for changing lower voltage
    stopped_changing_upper_strb_i : in std_ulogic;    -- strb from upper DAC control entity
    stopped_changing_lower_strb_i : in std_ulogic;    -- strb from lower DAC control entity
    increasing_en_i               : in std_ulogic;    -- disable increasing voltage after clipping to upper limit
    decreasing_en_i               : in std_ulogic;    -- disable decreasing voltage after clipping to lower limit
    pause_detection_strb_i        : in std_ulogic;  	-- disable detection until external triggered changing is done

		spike_o 			                : out std_ulogic;
		spike_strb_o		              : out std_ulogic
	);   
end entity spike_detector;
	
architecture rtl of spike_detector is

-- Internal signals
signal spike				              : std_ulogic;
signal hold_spike                 : std_ulogic;
signal spike_strb 	              : std_ulogic;
signal lock_detection             : std_ulogic;
signal next_lock_detection        : std_ulogic;

signal upper_is_changing          : std_ulogic;
signal next_upper_is_changing     : std_ulogic;
signal lower_is_changing          : std_ulogic;
signal next_lower_is_changing     : std_ulogic;

signal is_changing                : std_ulogic;
signal next_is_changing           : std_ulogic;

signal is_changing_f_edge         : std_ulogic;
  
begin

  -- SPIKE DETECTION
  -- Hold Spike register
  reg_proc_0: process(clock_i, reset_i) is
  begin
    if reset_i = '1' then
      hold_spike <= '0';
		elsif rising_edge(clock_i) then
      -- enabled register
      if spike_strb = '1' then
        hold_spike <= spike;
      end if;
		end if;
  end process reg_proc_0;
  -- =====================================================
  
  spike_detection_logic: process(comp_upper_i, comp_lower_i, increasing_en_i, decreasing_en_i, detection_en_i, hold_spike, lock_detection) is
	begin
    -- default assignment
		spike <= hold_spike;
		spike_strb <= '0';

    if lock_detection = '0' and detection_en_i = '1' then
      if comp_upper_i = '1' and increasing_en_i = '1' then
        spike <= '1';
        spike_strb <= '1';
      elsif comp_lower_i = '0' and decreasing_en_i = '1' then -- floating window: comp_lower_i = '0', fixed window: comp_lower_i = '1'
        spike <= '0';
        spike_strb <= '1';
      end if;
    end if;
	end process spike_detection_logic;
	-- =====================================================
  
  -- SPIKE LOCKING
  -- Convert stopped_changing_upper_strb and stopped_changing_lower_strb to enable behaviour
  reg_proc_1: process(clock_i, reset_i) is
    begin
      -- async. reset
      if reset_i = '1' then
        upper_is_changing <= '0';
        lower_is_changing <= '0';
        is_changing <= '0';
        lock_detection <= '0';
      elsif rising_edge(clock_i) then
        upper_is_changing <= next_upper_is_changing;
        lower_is_changing <= next_lower_is_changing;
        is_changing <= next_is_changing;
        -- sync. reset
        if is_changing_f_edge = '1' then
          lock_detection <= '0';
        else
          lock_detection <= next_lock_detection;
        end if;
      end if;
  end process reg_proc_1;
  -- =====================================================
  
  update_is_changing_upper: process(change_upper_strb_i, stopped_changing_upper_strb_i, upper_is_changing) is 
  begin
    -- default assignment
    next_upper_is_changing <= upper_is_changing;
     
    if change_upper_strb_i = '1' then
      next_upper_is_changing <= '1';
    elsif stopped_changing_upper_strb_i = '1' then
      next_upper_is_changing <= '0';
    end if;
  end process update_is_changing_upper;
  -- =====================================================
  
  update_is_changing_lower: process(change_lower_strb_i, stopped_changing_lower_strb_i, lower_is_changing) is 
  begin
    -- default assignment
    next_lower_is_changing <= lower_is_changing;
    
    if change_lower_strb_i = '1' then
      next_lower_is_changing <= '1';
    elsif stopped_changing_lower_strb_i = '1' then
      next_lower_is_changing <= '0';
    end if;
  end process update_is_changing_lower;
  -- =====================================================
  
  -- If upper or lower DAC changes output voltages (falling edge), lock detection.
  next_is_changing <= upper_is_changing or lower_is_changing;
  is_changing_f_edge <= (not next_is_changing) and is_changing;
  -- =====================================================
  
  -- Lock detection from spike detection on until 
  -- all voltage changing processes (upper, lower, both DACs) have finished.
  locking_detection: process(lock_detection, spike_strb, pause_detection_strb_i) 
  begin
    -- default assignment
    next_lock_detection <= lock_detection;
    
    if spike_strb = '1' or pause_detection_strb_i = '1' then
      next_lock_detection <= '1';
    end if;
  end process locking_detection;
  -- =====================================================
  
  -- Concurrent statements
  -- hold spike for adaptive algorithm, mux to prevent delay
	spike_o <= spike when spike_strb = '1' else hold_spike;
	spike_strb_o <= spike_strb;
  -- =====================================================
end architecture rtl;