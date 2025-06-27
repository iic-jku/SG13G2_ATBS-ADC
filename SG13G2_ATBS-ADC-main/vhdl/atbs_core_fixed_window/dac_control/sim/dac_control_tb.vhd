-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 08.10.2024
-- Description: This .vhd file implements a testbench testing the DAC control entity.
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.TBSSimVals.all;
use work.all;

entity dac_control_tb is

end entity dac_control_tb;

architecture bhv of dac_control_tb is

-- "Virtual" DAC resolution constants
constant TBS_VIRTUAL_DELTA_STEPS_2  : natural := natural(2);
constant TBS_VIRTUAL_DELTA_STEPS_4  : natural := natural(4);
constant TBS_VIRTUAL_DELTA_STEPS_8  : natural := natural(8);
constant TBS_VIRTUAL_DELTA_STEPS_16 : natural := natural(16);
constant TBS_VIRTUAL_DELTA_STEPS_32 : natural := natural(32);

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n				  : std_ulogic := '1'; -- active low input

signal enable_dac             : std_ulogic;
signal clear_dac              : std_ulogic;
signal adaptive_mode          : std_ulogic;
signal select_tbs_delta_steps : std_ulogic;
signal direction              : std_ulogic;
signal update_dac_strb        : std_ulogic := '0';
signal delta_steps            : unsigned(DELTA_STEPS_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal dac_pd_upper     : std_ulogic; -- active LOW
signal dac_wr_upper     : std_ulogic; -- active LOW
signal dac_clr_upper    : std_ulogic; -- active LOW
signal dac_upper 	      : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);

signal dac_pd_lower     : std_ulogic; -- active LOW
signal dac_wr_lower     : std_ulogic; -- active LOW
signal dac_clr_lower    : std_ulogic; -- active LOW
signal dac_lower 	      : std_ulogic_vector(DAC_BITWIDTH - 1 downto 0);

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				    : std_ulogic;

signal tb_end           : std_ulogic := '0';

signal i                : integer := 0;

begin

	-- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed DAC-Control entity (Upper DAC)
	dut_dac_control_0: entity dac_control(rtl)
  generic map(
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
		DAC_BITWIDTH              => DAC_BITWIDTH,
    DAC_IS_UPPPER	            => 1,
    DAC_SETTLING_CLKS         => DAC_SETTLING_CLKS   
	)
	port map(
		clock_i				            => clock,
		reset_i				            => reset,
    
		enable_dac_i              => enable_dac,
    clear_dac_i               => clear_dac,
    adaptive_mode_i           => adaptive_mode,
    select_tbs_delta_steps_i  => select_tbs_delta_steps,
    
    -- from Adaptive Control
    direction_i               => direction,
    update_dac_strb_i         => update_dac_strb,
		delta_steps_i             => delta_steps,
    
    dac_counter_value_o       => open,
    dac_finished_strb_o       => open,
    
    -- to DAC
    dac_pd_o                  => dac_pd_upper,
    dac_wr_o                  => dac_wr_upper,
    dac_clr_o                 => dac_clr_upper,
    dac_o	                    => dac_upper
	);
	-- =====================================================
  
  -- Embed DAC-Control entity (Lower DAC)
	dut_dac_control_1: entity dac_control(rtl)
  generic map(
    DELTA_STEPS_BITWIDTH      => DELTA_STEPS_BITWIDTH,
		DAC_BITWIDTH              => DAC_BITWIDTH,
    DAC_IS_UPPPER	            => 0,
    DAC_SETTLING_CLKS         => DAC_SETTLING_CLKS   
	)
	port map(
		clock_i				            => clock,
		reset_i				            => reset,
    
		enable_dac_i              => enable_dac,
    clear_dac_i               => clear_dac,
    adaptive_mode_i           => adaptive_mode,
    select_tbs_delta_steps_i  => select_tbs_delta_steps,
    
    -- from Adaptive Control
    direction_i               => direction,
    update_dac_strb_i         => update_dac_strb,
		delta_steps_i             => delta_steps,
    
    dac_counter_value_o       => open,
    dac_finished_strb_o       => open,
    
    -- to DAC
    dac_pd_o                  => dac_pd_lower,
    dac_wr_o                  => dac_wr_lower,
    dac_clr_o                 => dac_clr_lower,
    dac_o	                    => dac_lower
	);
	-- =====================================================
	
	-- Simulating clock signal
	clk_proc: process
	begin
		clock <= not clock;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
	
	-- Simulation Process
	stimuli: process
	begin
    -- =====================================================
    -- Normal Operation of DAC (TBS) with delta_steps = 1
    -- =====================================================
    enable_dac <= '1';
		clear_dac <= '1';
    adaptive_mode <= '0';
    select_tbs_delta_steps <= '0';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    
    -- Reset
		wait for 1 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    -- Go from dac_init to dac_counter
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 5 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Test dac_finished_strb
    direction <= '1';
    delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
    
    
    -- Increase Voltage
    while i < (2**DAC_BITWIDTH / 2) loop
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '1';
      delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 3 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Reset
    i <= 0;
    
    wait for 5 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Decrease Voltage
    while i < (2**DAC_BITWIDTH / 2)  + 4 loop
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '0';
      delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 3 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Disable and clear DAC
    enable_dac <= '1';
		clear_dac <= '1';
    wait for 10 * sec / CLK_FREQ;
    -- =====================================================
    
    
    -- =====================================================
    -- Normal Operation of DAC (TBS) with delta_steps = TBS_VIRTUAL_DELTA_STEPS_8
    -- =====================================================
    enable_dac <= '1';
		clear_dac <= '1';
    adaptive_mode <= '0';
    select_tbs_delta_steps <= '1';  -- SW5: full DAC resolution(0), "virtual" DAC resolution(1)
    delta_steps <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH);
    
    -- Reset
		wait for 1 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Increase Voltage
    while i < (2**DAC_BITWIDTH / 2) / TBS_VIRTUAL_DELTA_STEPS_8 loop -- (2^8 / 2) / 8 = 16
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '1';
      delta_steps <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 3 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Reset
    i <= 0;
    
    wait for 5 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Decrease Voltage
    while i < (2**DAC_BITWIDTH / 2) / TBS_VIRTUAL_DELTA_STEPS_8 + 4 loop -- (2^8 / 2) / 8 + 4 = 20
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '0';
      delta_steps <= to_unsigned(TBS_VIRTUAL_DELTA_STEPS_8, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 3 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Disable and clear DAC
    enable_dac <= '1';
		clear_dac <= '1';
    wait for 10 * sec / CLK_FREQ;
    -- =====================================================
    
    
    -- =====================================================
    -- Normal Operation of DAC (ATBS)
    -- =====================================================
    enable_dac <= '1';
		clear_dac <= '1';
    adaptive_mode <= '1';
    
    -- Reset
    i <= 0;
    
		wait for 5 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Increase Voltage
    while i < (2**DAC_BITWIDTH / 2) loop -- (2^8 / 2) = 128
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '1';
      delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 2 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Reset
    i <= 0;
    
    wait for 5 * sec / CLK_FREQ;
    reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
    update_dac_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    update_dac_strb <= '0';
    wait for 2 * sec / CLK_FREQ;
    -- =====================================================
    
    -- Decrease Voltage
    while i < (2**DAC_BITWIDTH / 2) + 4 loop -- (2^8 / 2) + 4 = 132
      wait for 2 * DAC_SETTLING_CLKS * sec / CLK_FREQ;
      direction <= '0';
      delta_steps <= to_unsigned(1, DELTA_STEPS_BITWIDTH);
      update_dac_strb <= '1';
      wait for 1 * sec / CLK_FREQ;
      update_dac_strb <= '0';
      wait for 2 * sec / CLK_FREQ;
      i <= i + 1;
    end loop;
    -- =====================================================
    
    -- Disable and clear DAC
    enable_dac <= '1';
		clear_dac <= '1';
    wait for 10 * sec / CLK_FREQ;
    -- =====================================================
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;