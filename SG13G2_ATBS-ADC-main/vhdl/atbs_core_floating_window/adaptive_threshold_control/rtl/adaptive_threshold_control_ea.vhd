-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 02.07.2024 by Simon Dorrer
-- Description: Adaptive Threshold Control architecture 
-- inclusive adaption on counter overflow and clipping logic.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.AdaptiveCtrlSimVals.all;
use work.adaptive_std.all;
use work.all;

entity adaptive_threshold_control is
  generic(
    -- generic values used outside this entity (TBSSimVals), else AdaptiveCtrlSimVals or adaptive_std
    WIN_BITS                  : natural;
    TIME_COUNTER_BITWIDTH     : natural;
    DELTA_STEPS_BITWIDTH      : natural;
    DAC_BITWIDTH              : natural;
    MAX_CLIPPING_VALUE        : natural;
    MIN_CLIPPING_VALUE        : natural;
    WEYLSD_BITS               : natural;
    D_MAX_LIM                 : natural
  );
  port(
    -- INPUTS
    clock_i                   : in std_ulogic;
    reset_i                   : in std_ulogic;
    sync_reset_i              : in std_ulogic;
    overflow_strb_i           : in std_ulogic;
    curr_time_i               : in unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);
    spike_i                   : in std_ulogic; -- constant inbetween spike strobes (spike_detector_ea)
    spike_strb_i              : in std_ulogic;
    d_max_i                   : in unsigned(WEYLSD_BITS - 1 downto 0);
    d_min_i                   : in unsigned(WEYLSD_BITS - 1 downto 0);
    win_length_i              : in unsigned(WIN_BITS - 1 downto 0);
    max_delta_steps_i         : in unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    
    -- OUTPUTS   
    increasing_en_o           : out std_ulogic; 
    decreasing_en_o           : out std_ulogic;
    direction_upper_o         : out std_ulogic;
    direction_lower_o         : out std_ulogic;       
    delta_steps_upper_strb_o  : out std_ulogic;   
    delta_steps_lower_strb_o  : out std_ulogic;
    delta_steps_upper_o       : out unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    delta_steps_lower_o       : out unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
    adapt_on_overflow_strb_o  : out std_ulogic
  );    
end entity adaptive_threshold_control;

architecture rtl of adaptive_threshold_control is

-- Constants definitions
constant MAX_STEPS      : natural := MAX_CLIPPING_VALUE - MIN_CLIPPING_VALUE;
constant REST_STEPS_BITWIDTH  : natural := DAC_BITWIDTH + 1;

-- Internal signals
signal spikes                   : T_SPIKES;
signal spikes_strb              : std_ulogic;
signal weylsd_strb              : std_ulogic;
signal reset_delta              : std_ulogic;
signal adapt_on_overflow_strb   : std_ulogic;
signal adapt_on_overflow        : std_ulogic;
signal next_adapt_on_overflow   : std_ulogic;
signal is_empty_interval        : std_ulogic;
signal start_weylsd_calc        : std_ulogic;
signal adaptive_strb            : std_ulogic;
signal adaptive_limited_strb    : std_ulogic;
signal widen_threshold_strb     : std_ulogic;
signal delta_steps_strb         : std_ulogic;
signal direction_upper          : std_ulogic;
signal direction_lower          : std_ulogic;

signal delta_steps_upper_strb   : std_ulogic;
signal delta_steps_lower_strb   : std_ulogic;

signal delta_steps         : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal prev_delta_steps    : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal delta_steps_limited : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal delta_steps_sum     : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal delta_steps_upper   : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal delta_steps_lower   : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

signal steps_to_upper_v : unsigned(REST_STEPS_BITWIDTH - 1 downto 0);
signal steps_to_lower_v : unsigned(REST_STEPS_BITWIDTH - 1 downto 0);
signal weylsd           : unsigned(WEYLSD_BITS-1 downto 0);

signal next_adaptive_strb         : std_ulogic;
signal next_widen_threshold_strb  : std_ulogic;
signal next_delta_steps_strb      : std_ulogic;
signal next_steps_to_upper_v      : unsigned(REST_STEPS_BITWIDTH - 1 downto 0);
signal next_steps_to_lower_v      : unsigned(REST_STEPS_BITWIDTH - 1 downto 0);
signal next_delta_steps           : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal next_prev_delta_steps      : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal next_is_empty_interval     : std_ulogic;
  
begin
 
  reg_proc: process(clock_i, reset_i) is
  begin
    if reset_i = '1'  then
      steps_to_upper_v <= to_unsigned(MAX_STEPS/2 - 2, REST_STEPS_BITWIDTH); -- to 2 * default_threshold
      steps_to_lower_v <= to_unsigned(MAX_STEPS/2, REST_STEPS_BITWIDTH);
      delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      prev_delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      adaptive_strb <= '0';
      widen_threshold_strb <= '0';
      delta_steps_strb <= '0';
      is_empty_interval <= '0';
      adapt_on_overflow <= '0';
		elsif rising_edge(clock_i) then
      steps_to_upper_v <= next_steps_to_upper_v;
      steps_to_lower_v <= next_steps_to_lower_v;
      delta_steps <= next_delta_steps;
      prev_delta_steps <= next_prev_delta_steps;
      adaptive_strb <= next_adaptive_strb;
      widen_threshold_strb <= next_widen_threshold_strb;
      delta_steps_strb <= next_delta_steps_strb;
      is_empty_interval <= next_is_empty_interval;
      adapt_on_overflow <= next_adapt_on_overflow;
		end if;
  end process;
  -- =====================================================
  
  -- Embed Spike-Shift-Register
  spike_shift_reg_0: entity spike_shift_reg(rtl)
  generic map(
    WIN_BITS => WIN_BITS,
    TIME_COUNTER_BITWIDTH => TIME_COUNTER_BITWIDTH
  )
  port map(
    clock_i          => clock_i,
    reset_i          => reset_i,
    overflow_strb_i	 => overflow_strb_i,
    curr_time_i      => curr_time_i,
    spike_i          => spike_i,
    spike_strb_i     => spike_strb_i,
    win_length_i     => win_length_i,
    
    spikes_o         => spikes,
    spikes_strb_o    => spikes_strb
  );
  -- =====================================================
  
  -- Embed Weyls Discrepancy
  weyls_discrepancy_0: entity weyls_discrepancy(rtl)
  generic map(
    LEVEL_OF_REG  => LEVEL_OF_REG,
    WEYLSD_BITS   => WEYLSD_BITS,
    THERMO_BITS   => 2 * D_MAX_LIM + 2
  )
  port map(
    clock_i 	    => clock_i,
    reset_i       => reset_i,
    spikes_i      => spikes,
    spikes_strb_i => start_weylsd_calc,
    weylsd_o      => weylsd,
    weylsd_strb_o => weylsd_strb
  );
  -- =====================================================
  
  -- No spike between counter overflows
  no_spike_in_interval_logic: process(is_empty_interval, overflow_strb_i, spike_strb_i)
  begin
    -- default assignment
    next_is_empty_interval <= is_empty_interval;
    
    if overflow_strb_i = '1' then
      next_is_empty_interval <= '1';
    elsif spike_strb_i = '1' then
      next_is_empty_interval <= '0';
    end if;
  end process no_spike_in_interval_logic;
  -- =====================================================
  
  -- Adapt on overflow strobe
  adaption_on_overflow_logic: process(adapt_on_overflow, adapt_on_overflow_strb, delta_steps_strb)
  begin
    -- default assignment
    next_adapt_on_overflow <= adapt_on_overflow;
    
    if adapt_on_overflow_strb = '1' then
      next_adapt_on_overflow <= '1';
    elsif delta_steps_strb = '1' then
      next_adapt_on_overflow <= '0';
    end if;
  end process adaption_on_overflow_logic;
  -- =====================================================
  
  -- Trigger adaption after spike or in case if no spike between counter overflows (static signal)
  adapt_on_overflow_strb <= '0' when delta_steps = 1 else (overflow_strb_i and is_empty_interval);
  start_weylsd_calc <= spikes_strb or adapt_on_overflow_strb;
  
  -- Adaptive Threshold Evaluation
  adaption_rule_logic: process(weylsd_strb, delta_steps, prev_delta_steps, 
  max_delta_steps_i, weylsd, d_max_i, d_min_i, reset_delta, sync_reset_i) is 
  begin
    -- default assignment
    next_adaptive_strb <= '0';
    next_widen_threshold_strb <= '0';
    next_delta_steps_strb <= '0';
    next_delta_steps <= delta_steps;
    next_prev_delta_steps <= prev_delta_steps;
    
    -- Based on weyl's discrepancy inlcuding current spike
    if weylsd_strb = '1' then
      next_delta_steps_strb <= '1';
      next_prev_delta_steps <= delta_steps;
      
      if (weylsd > d_max_i) and (delta_steps < max_delta_steps_i) then
        next_widen_threshold_strb <= '1';
        next_adaptive_strb <= '1';
        next_delta_steps <= resize(shift_left(delta_steps, 1), DELTA_STEPS_BITWIDTH);  -- delta_steps = 2 * delta_steps
      elsif (weylsd < d_min_i) and (delta_steps > 1) then
        next_adaptive_strb <= '1';
        next_delta_steps <= resize(shift_right(delta_steps, 1), DELTA_STEPS_BITWIDTH); -- delta_steps = delta_steps / 2
      end if;
    end if;

    if sync_reset_i = '1' then
      next_delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      next_prev_delta_steps <= (others => '0');
    end if;
    
    -- delta_steps are not adapted when DAC levels have to be clipped to the limits, window is just shifted.
    -- Reset delta_steps to previous value for the correct delta_steps_sum in future adaptions.
    if reset_delta = '1' then
      next_delta_steps <= prev_delta_steps;
    end if;
  end process adaption_rule_logic;
  -- =====================================================
  
  delta_steps_sum <= resize(delta_steps + prev_delta_steps, DELTA_STEPS_BITWIDTH);
  
  atbs_clipping_logic: process(adapt_on_overflow, steps_to_upper_v, steps_to_lower_v, spike_i, delta_steps, adaptive_strb) is 
  begin
    -- default assignment
    adaptive_limited_strb <= adaptive_strb;
    delta_steps_limited <= delta_steps;
    reset_delta <= '0';

    if adapt_on_overflow = '0' then
      -- Exceeding upper boundary (clipping - window is increased to limit - 2*delta distance between boundaries remains)
      if (steps_to_upper_v < resize(delta_steps, REST_STEPS_BITWIDTH)) and (spike_i = '1') then
        delta_steps_limited <= resize(steps_to_upper_v, DELTA_STEPS_BITWIDTH);
        adaptive_limited_strb <= '0';
        reset_delta <= adaptive_strb; -- reset delta if adaption was interrupted with clipping 
      -- Exceeding lower boundary (clipping - window is increased to limit - 2*delta distance between boundaries remains)
      elsif (steps_to_lower_v < resize(delta_steps, REST_STEPS_BITWIDTH)) and (spike_i = '0') then
        delta_steps_limited <= resize(steps_to_lower_v, DELTA_STEPS_BITWIDTH);
        adaptive_limited_strb <= '0';
        reset_delta <= adaptive_strb; -- reset delta if adaption was interrupted with clipping
      end if;
    end if;
  end process atbs_clipping_logic;
  -- =====================================================

  set_delta_steps_logic: process(adapt_on_overflow, delta_steps_limited, delta_steps_strb, 
  adaptive_limited_strb, delta_steps_sum, widen_threshold_strb, spike_i)
  begin
    -- default assignment
    delta_steps_upper <= delta_steps_limited;
    delta_steps_lower <= delta_steps_limited;
    delta_steps_upper_strb <= delta_steps_strb;
    delta_steps_lower_strb <= delta_steps_strb;

    if adapt_on_overflow = '0' then
      -- Adapt threshold
      if adaptive_limited_strb = '1' then
        -- Widen threshold
        if widen_threshold_strb = '1' then
          -- Charge Time Calculation is not triggered for selected cap
          if spike_i = '1' then
            delta_steps_lower_strb <= '0';
          else
            delta_steps_upper_strb <= '0';
          end if;
        else
          -- Narrow threshold
          if spike_i = '1' then
            delta_steps_lower <= delta_steps_sum;
          else
            delta_steps_upper <= delta_steps_sum;
          end if;
        end if;
      end if;
    end if;
  end process set_delta_steps_logic;
  -- =====================================================
  
  -- Define direction (1 - up, 0 - down) according to adaption on spike or adaption on overflow
  direction_upper <= (spike_i and (not adapt_on_overflow));
  direction_lower <= (spike_i or adapt_on_overflow);
  -- =====================================================

  -- Tracking voltage difference to upper and lower boundary
  delta_steps_to_limits_logic: process(delta_steps_upper, delta_steps_lower, steps_to_upper_v, steps_to_lower_v, 
  sync_reset_i, direction_upper, direction_lower, delta_steps_upper_strb, delta_steps_lower_strb) is
  begin
    -- default assignment
    next_steps_to_upper_v <= steps_to_upper_v;
    next_steps_to_lower_v <= steps_to_lower_v;

    -- increasing
    if delta_steps_lower_strb = '1' then
      if direction_lower = '1' then
        next_steps_to_lower_v <= steps_to_lower_v + resize(delta_steps_lower, REST_STEPS_BITWIDTH);
        -- decreasing
      else
        next_steps_to_lower_v <= steps_to_lower_v - resize(delta_steps_lower, REST_STEPS_BITWIDTH);
      end if;
    end if;

    if delta_steps_upper_strb = '1' then
      if direction_upper = '1' then
        next_steps_to_upper_v <= steps_to_upper_v - resize(delta_steps_upper, REST_STEPS_BITWIDTH);
        -- decreasing
      else
        next_steps_to_upper_v <= steps_to_upper_v + resize(delta_steps_upper, REST_STEPS_BITWIDTH);
      end if;
    end if;

    if sync_reset_i = '1' then -- for init process
      next_steps_to_upper_v <= to_unsigned(MAX_STEPS/2 - 2, REST_STEPS_BITWIDTH); -- upper DAC set to 2*default_threshold
      next_steps_to_lower_v <= to_unsigned(MAX_STEPS/2, REST_STEPS_BITWIDTH);
    end if;
  end process delta_steps_to_limits_logic;
  -- =====================================================
  
  -- Concurrent output statements
  -- Lock spike_detection when limits are reached.
  increasing_en_o <= '0' when steps_to_upper_v = 0 else '1';
  decreasing_en_o <= '0' when steps_to_lower_v = 0 else '1';
  direction_upper_o <= direction_upper;
  direction_lower_o <= direction_lower;
  delta_steps_upper_strb_o <= delta_steps_upper_strb;
  delta_steps_lower_strb_o <= delta_steps_lower_strb;
  delta_steps_upper_o <= delta_steps_upper;
  delta_steps_lower_o <= delta_steps_lower;
  adapt_on_overflow_strb_o <= adapt_on_overflow_strb;
  -- =====================================================
end architecture;