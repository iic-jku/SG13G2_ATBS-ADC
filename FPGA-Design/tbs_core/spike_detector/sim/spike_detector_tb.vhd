-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a testbench testing the spike detector entity.
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity spike_detector_tb is

end entity spike_detector_tb;

architecture bhv of spike_detector_tb is

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n 				  : std_ulogic := '1';	-- active low input

-- Input-Hardware signals
signal comp_upper_sync  : std_ulogic;
signal comp_lower_sync  : std_ulogic;

-- DAC Control entity signals
signal stopped_changing_upper_strb : std_ulogic := '0';
signal stopped_changing_lower_strb : std_ulogic := '0';

signal comp_upper           : std_ulogic := '0';
signal comp_lower           : std_ulogic := '1';
signal increasing_en        : std_ulogic := '1';
signal decreasing_en        : std_ulogic := '1';

signal detection_en         : std_ulogic;
signal change_upper_strb    : std_ulogic;
signal change_lower_strb    : std_ulogic;
signal pause_detection_strb : std_ulogic;

-- OUTPUT signals
signal spike 				        : std_ulogic;
signal spike_strb	          : std_ulogic;

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 				        : std_ulogic;

signal tb_end           : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
  
	-- Embed Generic Synchronization Chain entity
  dut_sync_chain: entity sync_chain(rtl)
	generic map (
		N_FF        => N_FF,
		N_CHANNELS  => N_CHANNELS
	)
	port map(
		clock_i     => clock,
		reset_i 		=> reset,
		async_i(0)  => comp_upper,
    async_i(1)  => comp_lower,
    
    sync_o(0)   => comp_upper_sync,
		sync_o(1)   => comp_lower_sync
	);
  -- =====================================================
	
	-- Embed spike detector
	dut_spike_detector: entity spike_detector(rtl)
  port map(
		clock_i				                => clock,
		reset_i				                => reset,
		
    detection_en_i                => detection_en,
		comp_upper_i                  => comp_upper,
		comp_lower_i                  => comp_lower,
    change_upper_strb_i           => change_upper_strb,
    change_lower_strb_i           => change_lower_strb,
    stopped_changing_upper_strb_i => stopped_changing_upper_strb,
    stopped_changing_lower_strb_i => stopped_changing_lower_strb,
    increasing_en_i               => increasing_en,
    decreasing_en_i               => decreasing_en,
    pause_detection_strb_i        => pause_detection_strb,

		spike_o 			                => spike,
		spike_strb_o	                => spike_strb
	);
	-- =====================================================
	
	-- Simulating clock signal --> comes from FPGA board later on
	clk_proc: process
	begin
		clock <= not clock;
		wait for 1 * sec / (2 * CLK_FREQ);
	end process clk_proc;
	-- =====================================================
	
	-- Simulation Process
	stimuli: process
	begin
    
    -- Reset and between voltage thresholds
		reset_n <= '0';		  -- active low reset
		wait for 20 ns;
		reset_n <= '1';		  -- active low reset
    wait for 1 us;
    
    detection_en <= '1';
    
		-- analog signal rises above upper threshold (must increasing 2x delta_v)
		comp_upper <= '1';
		comp_lower <= '1';

    wait for 15 us;
    stopped_changing_lower_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_lower_strb <= '0';
    wait for 1 us;  -- some time later, DAC upper is finished
    stopped_changing_upper_strb <= '1';
		comp_upper <= '0';  -- DAC upper above input signal
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_upper_strb <= '0';
    
		wait for 20 us;
    
		-- analog signal rises above upper threshold but limits are reached (clipping)
		comp_upper <= '1';
		comp_lower <= '1';
		increasing_en <= '0';
		wait for 1 us;
    
		-- changing voltage is enabled again after signal falls below lower threshold and decreasing was finished
		-- comp level after this process:
		comp_upper <= '0';
		comp_lower <= '1';
		wait for 2 * sec / CLK_FREQ; -- sync
		increasing_en <= '1';
		wait for 1 us;

		-- analog signal rises above upper threshold (must increase 2x delta_v)
		comp_upper <= '1';
		comp_lower <= '1';

    wait for 15 us;
    stopped_changing_lower_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_lower_strb <= '0';
    wait for 1 us;  -- some time later, DAC upper is finished
    stopped_changing_upper_strb <= '1';
		comp_upper <= '0';  -- DAC upper above input signal
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_upper_strb <= '0';
    
		wait for 20 us;

		-- analog signal falls below lower threshold but limits are reached (clipping)
		comp_upper <= '0';
		comp_lower <= '0';
		decreasing_en <= '0';
		wait for 1 us;
    
		-- decreasing is enabled again after signal arises above upper threshold and increasing was finished
		-- comp level after this process:
		comp_upper <= '0';
		comp_lower <= '1';
		wait for 2 * sec / CLK_FREQ; -- sync
		decreasing_en <= '1';
		wait for 1 us;
    
		-- analog signal falls below lower threshold (must decrease 2x delta_v)
		comp_upper <= '0';
		comp_lower <= '0';
		wait for 15 us;
    stopped_changing_upper_strb <= '1';
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_upper_strb <= '0';
    wait for 1 us;  -- some time later, DAC lower is finished
    stopped_changing_lower_strb <= '1';
		comp_lower <= '1';
    wait for 1 * sec / CLK_FREQ;
    stopped_changing_lower_strb <= '0';
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end architecture bhv;