-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 14.10.2022
-- Description: test bench for spike buffering over time window
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.SpikesShiftRegSimVals.all;
use work.std_definitions.all;
use work.adaptive_std.all;
use work.all;

use std.TextIO.all;

entity spike_shift_reg_tb is

end entity;

architecture bhv of spike_shift_reg_tb is

-- Constants
constant CLK_PERIOD    	 : time    	:= 1000 ms / CLK_FREQ;
constant WIN_BITS : natural := CNT_BITS + 1;

-- Signals
signal clock_tb          : std_ulogic := '1';
signal reset_tb          : std_ulogic := '0';
signal overflow_strb_tb  : std_ulogic := '0';
signal curr_time_tb      : unsigned(CNT_BITS - 1 downto 0);
signal spike_tb          : std_ulogic;
signal spike_strb_tb     : std_ulogic := '0';
signal win_length_tb     : unsigned(WIN_BITS - 1 downto 0);
signal spikes_tb         : T_SPIKES;
signal spikes_strb_tb    : std_ulogic := '0';
signal tb_end            : std_ulogic := '0';
  
begin
  
  -- Embed Spike-Shift-Register
	dut_spike_shift_reg: entity spike_shift_reg(rtl)
	generic map(     
    WIN_BITS              => WIN_BITS,
    TIME_COUNTER_BITWIDTH => CNT_BITS
  )
  port map(
    clock_i 	      => clock_tb,
    reset_i         => reset_tb, 
    overflow_strb_i	=> overflow_strb_tb,     
    curr_time_i     => curr_time_tb,
    spike_i         => spike_tb,     
    spike_strb_i    => spike_strb_tb,
    win_length_i    => win_length_tb,
    
    spikes_o        => spikes_tb,
    spikes_strb_o   => spikes_strb_tb
  );
  -- =====================================================
  
  -- Embed Time-Measurement
  dut_time_measurement: entity time_measurement(rtl)
	generic map(
		TIME_COUNTER_BITWIDTH => CNT_BITS,
		TIME_COUNTER_MAX			=> 2**CNT_BITS
	)
	port map(
		clock_i 			        => clock_tb,
		reset_i 			        => reset_tb,
		overflow_strb_o		    => overflow_strb_tb,
		curr_time_o 		      => curr_time_tb
	);
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
  begin
    reset_tb <= '1';
    wait for CLK_PERIOD;
    reset_tb <= '0';
    win_length_tb <= to_unsigned(20, WIN_BITS);
    wait;
  end process;
  -- =====================================================
  
  triggerspike: process(curr_time_tb) is
  variable i : natural := 0;
  begin
    spike_strb_tb <= '0';
    if curr_time_tb = resize(unsigned(abs(SIM_SPIKES(i))), CNT_BITS) then
      if SIM_SPIKES(i) > 0 then
        spike_tb <= '1';
      elsif SIM_SPIKES(i) < 0 then
        spike_tb <= '0';
      end if;
      
      if SIM_SPIKES(i) /= 0 then
        spike_strb_tb <= '1';
      end if;

      i := i + 1;
    end if;
    
    if i = DATA_LENGTH -1 then
      tb_end <= '1';
      report "End of simulation." severity error;
    end if;
  end process;
  -- =====================================================
  
  writeout: process(clock_tb) is
  variable n_of_spikes : integer := 0;
  begin
      if spikes_strb_tb = '1' and rising_edge(clock_tb) then
        n_of_spikes := 0;
        for i in 0 to N_SPIKES - 1 loop
        if spikes_tb(i) /= "00" then
          n_of_spikes := n_of_spikes + 1;
        end if;
          -- if spikes_tb(i) = "10" then
            -- write_to_file("spikesshiftreg.txt", integer'image(-1));
          -- elsif spikes_tb(i) = "01" then
            -- write_to_file("spikesshiftreg.txt", integer'image(1));
          -- elsif spikes_tb(i) = "00" then
            -- write_to_file("spikesshiftreg.txt", integer'image(0));
          -- end if;
        end loop;
        write_to_file("spikesshiftreg.txt", integer'image(n_of_spikes));
      end if;
  end process;
  -- =====================================================
end architecture; 