---------------------------------------------------------------------------------------------------
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 22.06.2024 by Simon Dorrer
-- Description: Testbench for adaptive threshold control
---------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.AdaptiveCtrlSimVals.all;
use work.std_definitions.all;
use work.adaptive_std.all;
use work.all;

entity adaptive_threshold_control_tb is

end entity adaptive_threshold_control_tb;

architecture bhv of adaptive_threshold_control_tb is
  
-- Constants
constant CLK_PERIOD    	          : time    := 1000 ms / CLK_FREQ;
constant MAX_CNT                  : natural := 2**CNT_BITS - 1;
constant WEYL_MIN_TB              : unsigned(WEYLSD_BITS - 1 downto 0) := to_unsigned(WEYL_MIN, WEYLSD_BITS);
constant WEYL_MAX_TB              : unsigned(WEYLSD_BITS - 1 downto 0) := to_unsigned(WEYL_MAX, WEYLSD_BITS);

-- Signals
signal clock_tb                   : std_ulogic := '1';
signal reset_tb                   : std_ulogic := '0';
signal sync_reset_tb              : std_ulogic := '0';
signal overflow_strb_tb           : std_ulogic := '0';
signal curr_time_tb               : unsigned(CNT_BITS - 1 downto 0) := to_unsigned(CLKS_P_SAMPLE, CNT_BITS);
signal spike_tb                   : std_ulogic := '0';
signal spike_strb_tb              : std_ulogic := '0';
signal charging_en_tb             : std_ulogic;
signal discharging_en_tb          : std_ulogic;
signal adapt_on_overflow_strb_tb  : std_ulogic;
signal adaptive_strb_tb           : std_ulogic;
signal widen_threshold_strb_tb    : std_ulogic;
signal delta_v_strb_tb            : std_ulogic;

signal delta_v_upper_strb_tb      : std_ulogic;
signal delta_v_lower_strb_tb      : std_ulogic;
signal delta_v_upper_tb           : sfixed(VOLT_INT downto - VOLT_FRACT);
signal delta_v_lower_tb           : sfixed(VOLT_INT downto - VOLT_FRACT);
signal delta_v_upper_signed       : sfixed(VOLT_INT downto - VOLT_FRACT);
signal delta_v_lower_signed       : sfixed(VOLT_INT downto - VOLT_FRACT);
signal adaptive_delta_v_tb        : sfixed(VOLT_INT downto - VOLT_FRACT);
signal deltasteps_upper_tb        : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);
signal deltasteps_lower_tb        : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

signal curr_v_upper               : sfixed(VOLT_INT downto - VOLT_FRACT);
signal next_curr_v_upper          : sfixed(VOLT_INT downto - VOLT_FRACT);
signal curr_v_lower               : sfixed(VOLT_INT downto - VOLT_FRACT);
signal next_curr_v_lower          : sfixed(VOLT_INT downto - VOLT_FRACT);
signal i                          : integer := 0; 
signal tb_end                     : std_ulogic := '0';
signal write_en                   : std_ulogic := '0';
  
begin

  -- Embed Adaptive Threshold Control
  dut_adaptive_ctrl: entity adaptive_threshold_control(rtl)
  generic map(
    VOLT_INT		              => VOLT_INT,		           
    VOLT_FRACT                => VOLT_FRACT,          
    TIME_COUNTER_BITWIDTH     => CNT_BITS, 
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
    ADC_BITWIDTH              => ADC_BITWIDTH,
    WEYLSD_BITS               => WEYLSD_BITS,
    D_MAX_LIM                 => D_MAX_LIM   
  )
  port map (
    clock_i				            => clock_tb,
    reset_i				            => reset_tb, 
    sync_reset_i              => sync_reset_tb,
    overflow_strb_i           => overflow_strb_tb,
    curr_time_i               => curr_time_tb,
    spike_i                   => spike_tb,     
    spike_strb_i              => spike_strb_tb,
    curr_v_upper_i            => curr_v_upper,
    curr_v_lower_i            => curr_v_lower,
    d_max_i                   => WEYL_MAX_TB,
    d_min_i                   => WEYL_MIN_TB,
    charging_en_o             => charging_en_tb,
    discharging_en_o          => discharging_en_tb,
    delta_v_upper_strb_o      => delta_v_upper_strb_tb,
    delta_v_lower_strb_o      => delta_v_lower_strb_tb,
    adaptive_delta_v_o        => adaptive_delta_v_tb,
    delta_v_strb_o            => delta_v_strb_tb,
    delta_v_upper_o           => delta_v_upper_tb,
    delta_v_lower_o           => delta_v_lower_tb,
    deltasteps_upper_o        => deltasteps_upper_tb,
    deltasteps_lower_o        => deltasteps_lower_tb,
    adapt_on_overflow_strb_o  => open,
    adaptive_strb_o           => adaptive_strb_tb,
    widen_threshold_strb_o    => widen_threshold_strb_tb
  );
  -- =====================================================
  
  -- Current voltage levels
  curr_v_seq: process(clock_tb, reset_tb) is
  begin
    if reset_tb = '1' then
			curr_v_upper <= resize(shift_left(THRESHOLD_MIN, 1), VOLT_INT, -VOLT_FRACT); -- 2*default_threshold
      curr_v_lower <= (others => '0');
		elsif rising_edge(clock_tb) then
			curr_v_upper <= next_curr_v_upper;
      curr_v_lower <= next_curr_v_lower;
		end if;
  end process curr_v_seq;
  
  update_curr_v: process(delta_v_upper_strb_tb, delta_v_lower_strb_tb, delta_v_upper_tb, delta_v_lower_tb, curr_v_upper, curr_v_lower) is 
  begin
    next_curr_v_upper <= curr_v_upper;
    next_curr_v_lower <= curr_v_lower;

    -- charging on delta_v_strb_tb
    if delta_v_upper_strb_tb = '1' then
        next_curr_v_upper <= resize(curr_v_upper + delta_v_upper_tb, VOLT_INT, -VOLT_FRACT);
    end if;
    if delta_v_lower_strb_tb = '1' then
        next_curr_v_lower <= resize(curr_v_lower + delta_v_lower_tb, VOLT_INT, -VOLT_FRACT);
    end if;
  end process update_curr_v;
  -- =====================================================
  
  -- Simulating clock signal
	clk_proc: process
	begin
		clock_tb <= not clock_tb;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
  
  -- Simulation Process
  stimuli: process is
  variable curr_time : unsigned(CNT_BITS - 1 downto 0) := (others => '0');
  begin
    reset_tb <= '1';
    wait for CLK_PERIOD;
    reset_tb <= '0';
    
    while i < DATA_LENGTH loop
    --if adapt_on_overflow_strb_tb = '0' then
      if SIM_SPIKES(i) > curr_v_upper and charging_en_tb = '1' then
        spike_tb <= '1';
        spike_strb_tb <= '1';
      elsif SIM_SPIKES(i) < curr_v_lower and discharging_en_tb = '1' then
        spike_tb <= '0';
        spike_strb_tb <= '1';
      end if;
    --end if;
      
      wait for CLK_PERIOD;
      spike_strb_tb <= '0';

      wait for 4*CLK_PERIOD; -- minimum delay spikes strb to charging strb (delta_v_strb)

      if (MAX_CNT - curr_time) < CLKS_P_SAMPLE then
        overflow_strb_tb <= '1';
        curr_time_tb <= (others => '0');
        wait for CLK_PERIOD;
        overflow_strb_tb <= '0';
      end if;
      
      -- next sample
      curr_time := resize(curr_time + CLKS_P_SAMPLE, CNT_BITS);

      -- no spike detection at overflow, delay spike for one clock(see spike_encoder_ea.vhd)
      if curr_time = 0 then
        curr_time := to_unsigned(1, CNT_BITS);
      end if;

      curr_time_tb <= curr_time;
      i <= i + 1;
      wait for 0 ns; -- to directly assign new integer i value 
    end loop;
    
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
  end process stimuli;
  -- =====================================================

  write_out: process(spike_strb_tb) is
  begin
    if (spike_strb_tb = '1') then
      write_to_file("adaptive_ctrl.txt", std_ulogic'image(spike_tb));
      write_to_file("adaptive_ctrl.txt", integer'image(i+1)); -- matlab indices
      write_to_file("adaptive_ctrl.txt", to_string(adaptive_delta_v_tb));
      if spike_tb = '1' then
        write_to_file("adaptive_ctrl.txt", to_string(curr_v_upper));
      else
        write_to_file("adaptive_ctrl.txt", to_string(curr_v_lower));
      end if;
    end if;
  end process;
  -- =====================================================
end architecture; 