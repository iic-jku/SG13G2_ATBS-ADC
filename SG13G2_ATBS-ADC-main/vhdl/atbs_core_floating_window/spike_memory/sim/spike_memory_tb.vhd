-- =====================================================
-- Author: Simon Dorrer
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a testbench testing the spike memory entity.
-- =====================================================
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;
 
entity spike_memory_tb is
	
end spike_memory_tb;
 
architecture rtl of spike_memory_tb is

-- INPUT signals
signal clock 				    : std_ulogic := '0';
signal reset_n				  : std_ulogic := '1'; -- active low input
signal tb_end           : std_ulogic := '0';

-- Write Port
signal enable_write 		: std_ulogic := '0';
signal a_data      			: std_ulogic_vector(DATA_BITWIDTH - 1 downto 0) := (others => '0');

-- Read Port
signal enable_read		  : std_ulogic := '0';
signal read_strb 	      : std_logic;
signal tx_strb          : std_ulogic := '0';
signal b_data  				  : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);

-- Flags
signal fifo_full		  	: std_ulogic;
signal fifo_empty   		: std_ulogic;

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal reset 				    : std_ulogic;

begin

  -- Inverting Input Logic
	reset <= not reset_n;
	
	-- Embed dual port spike_memory
	dut_spike_memory: entity spike_memory(rtl)
	generic map(
		DATA_BITWIDTH	    => DATA_BITWIDTH,
		ADDR_BITWIDTH	    => ADDR_BITWIDTH	
	)
	port map(
		clock_i   		    => clock,
		reset_i	  		    => reset,
		
		-- Write Port
		enable_write_i 		=> enable_write,
		a_data_i 				  => a_data,
		
		-- Read Port
		enable_read_i		  => enable_read,
    tx_strb_i         => tx_strb,
		read_strb_o       => read_strb,
		b_data_o  			  => b_data,
			
		fifo_full_o			  => fifo_full,
		fifo_empty_o		  => fifo_empty
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
    variable i : integer := 0;
	begin
		reset_n <= '0';		-- active low reset
		wait for 5 * sec / CLK_FREQ;
		reset_n <= '1';		-- active low reset
		wait for 1 * sec / CLK_FREQ;
		wait until rising_edge(clock);

		-- Fill the FIFO
		while i < 2**8 - 1 loop
			i := i + 1;
			a_data <= std_ulogic_vector(unsigned(a_data) + 100);
      enable_write <= '1'; -- Start writing
			wait for 1 * sec / CLK_FREQ;
      enable_write <= '0'; -- Stop writing
      wait for 4 * sec / CLK_FREQ;
		end loop;

		-- Empty the FIFO
		enable_read <= '1';
		wait for 255 * sec / CLK_FREQ;
		enable_read <= '0';
    tx_strb <= '1';
		wait for 5 * sec / CLK_FREQ;
		tx_strb <= '0';
    
		-- Start writing
		enable_write <= '1';
		a_data <= std_ulogic_vector(unsigned(a_data) + 100);
		wait for 1 * sec / CLK_FREQ;
		enable_write <= '0';
		wait for 5 * sec / CLK_FREQ;
		enable_read <= '1';
		wait for 1 * sec / CLK_FREQ;
		enable_read <= '0';
    wait for 5 * sec / CLK_FREQ;
    
    -- Check if sending twice if write is enabled for two clock cycles
    a_data <= (others => '0');
    enable_write <= '1';
    wait for 1 * sec / CLK_FREQ;
    a_data <= std_ulogic_vector(unsigned(a_data) + 1);
    wait for 1 * sec / CLK_FREQ;
    enable_write <= '0';
    wait for 5 * sec / CLK_FREQ;
    enable_read <= '1';
		wait for 2 * sec / CLK_FREQ;
		enable_read <= '0';

		wait for 10 * sec / CLK_FREQ;
    
    tb_end <= '1';
    report "End of simulation." severity error;
		wait;
	end process stimuli;
	-- =====================================================
end rtl;