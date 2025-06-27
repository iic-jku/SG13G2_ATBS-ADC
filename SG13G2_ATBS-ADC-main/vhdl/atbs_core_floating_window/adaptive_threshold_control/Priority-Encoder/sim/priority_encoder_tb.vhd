-- =====================================================
-- Bachelor's Thesis: Adaptive Threshold Based Sampling
-- Author: Anna Werzi
-- Last Modified: 21.09.2022
-- Description: testbench of priority encoder
-- In-/Outputs:
-- code_i		... input code
-- bin_o	  ... position of the set bit with the highest priority
-- valid_o  ... validates binary output (0 - no priority bit detected)
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TBSSimVals.all;
use work.PriorityEncoderSimVals.all;
use work.all;

entity priority_encoder_tb is

end entity;

architecture bhv of priority_encoder_tb is

-- Constants
constant CLK_PERIOD : time := 1000 ms / CLK_FREQ; 

-- Signals
signal clock 				: std_ulogic := '1';
signal reset_n 		  : std_ulogic := '1';
signal code_tb    	: std_ulogic_vector(IN_BITS-1 downto 0);
signal bin_tb       : unsigned(OUT_BITS-1 downto 0);
signal tb_end       : std_ulogic := '0';

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				      : std_ulogic;

begin
  
	-- Inverting Input Logic
	reset <= not reset_n;

  -- Embed Priority Encoder
  dut_priority_encoder: entity priority_encoder(rtl)
	generic map(
		IN_BITS   => IN_BITS,
    OUT_BITS  => OUT_BITS
	)
	port map(
		clock_i   => clock,
		reset_i   => reset,
		code_i 		=> code_tb,
    
		bin_o 		=> bin_tb
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
  stimuli: process is
	begin
		reset_n <= '0';
		wait for CLK_PERIOD;
		reset_n <= '1';
    wait for CLK_PERIOD;
    
    for i in 2**code_tb'high downto 0 loop
      code_tb <= std_ulogic_vector(to_unsigned(i, IN_BITS));
      wait for 2 * CLK_PERIOD;
    end loop;
 
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
  end process;
  -- =====================================================
end architecture; 