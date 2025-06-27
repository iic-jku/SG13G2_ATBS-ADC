-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: testbench spike encoder unit for TBS
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;

entity spike_encoder_tb is

end entity spike_encoder_tb;

architecture bhv of spike_encoder_tb is

-- INPUT signals
signal clock 			        : std_ulogic := '1';
signal reset_n 			      : std_ulogic := '1'; -- active low input

signal spike 			        : std_ulogic := '0';
signal spike_strb         : std_ulogic := '0';
signal overflow_strb 	    : std_ulogic := '0';
signal curr_time		      : unsigned(TIME_COUNTER_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal encoded_spike 	    : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);
signal encoded_spike_strb	: std_ulogic;

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 			        : std_ulogic;

signal tb_end             : std_ulogic := '0';

begin

	-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
	reset <= not reset_n;
	-- =====================================================
  
	-- Embed Spike-Encoder
	dut_spike_encoder: entity spike_encoder(rtl)
	generic map (
		TIME_COUNTER_BITWIDTH	=> TIME_COUNTER_BITWIDTH,
		DATA_BITWIDTH		      => DATA_BITWIDTH
	)
	port map(
		clock_i 			        => clock,
		reset_i 			        => reset,
		spike_i 			        => spike,
		spike_strb_i	        => spike_strb,
		overflow_strb_i		    => overflow_strb,
		curr_time_i 		      => curr_time,
		encoded_spike_o		    => encoded_spike,
		encoded_spike_strb_o	=> encoded_spike_strb
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
		reset_n <= '0';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
    
		-----------------------------------------------------
		-- curr_time with spike_strb with max/min value
		-----------------------------------------------------
    overflow_strb <= '0';
		spike_strb <= '1';
		spike <= '1';
		curr_time <= to_unsigned(TIME_COUNTER_MAX - 1 ,curr_time'length);
		wait for 1 * sec / CLK_FREQ;
		spike_strb <= '0';
		wait for 1 * sec / CLK_FREQ;
		spike_strb <= '1';
		spike <= '0';
		wait for 1 * sec / CLK_FREQ;
		spike_strb <= '0';
		wait for 1 * sec / CLK_FREQ;
    
		-----------------------------------------------------
		-- overflow_strb from time measurement unit
		-----------------------------------------------------
		overflow_strb <= '1';
		wait for 1 * sec / CLK_FREQ;
		overflow_strb <= '0';
		wait for 1 * sec / CLK_FREQ;
    
		-----------------------------------------------------
		-- overflow_strb simultaneous with spike_strb
		-- spike_strb should be considered with timestamp != 0
		-----------------------------------------------------
		overflow_strb <= '1';
		spike_strb <= '1';
		spike <= '1';
		curr_time <= to_unsigned(0 ,curr_time'length);
		wait for 1 * sec / CLK_FREQ;
    curr_time <= to_unsigned(1,curr_time'length);
		overflow_strb <= '0';
    spike_strb <= '0';
    wait for 1 * sec / CLK_FREQ;
    overflow_strb <= '1';
		spike_strb <= '1';
		spike <= '0';
		curr_time <= to_unsigned(0 ,curr_time'length);
		wait for 1 * sec / CLK_FREQ;
    curr_time <= to_unsigned(1,curr_time'length);
		overflow_strb <= '0';
    spike_strb <= '0';
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
  -- =====================================================
end architecture bhv;