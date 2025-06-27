-- =====================================================
-- Author: Simon Dorrer
-- Author: Anna Werzi
-- Last Modified: 22.06.2024
-- Description: This .vhd file implements a testbench testing the Memory-2-UART entity.
-- =====================================================
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.TBSSimVals.all;
use work.all;
 
entity memory2uart_tb is

end memory2uart_tb;
 
architecture bhv of memory2uart_tb is

constant CLK_PERIOD : time := 1 sec / CLK_FREQ;
constant BYTES      : natural := natural(ceil(real(DATA_BITWIDTH)/real(UART_DATA_LENGTH)));

-- Random Vector Generator
function random_vector(DATA_LENGTH: positive) return std_ulogic_vector is
  variable r : real;
  variable seed1, seed2 : integer := 999;
  variable rand_vector : std_ulogic_vector(DATA_LENGTH - 1 downto 0);
begin
  for i in rand_vector'range loop
    uniform(seed1, seed2, r);
    if r > 0.5 then
      rand_vector(i) := '1';
    else
      rand_vector(i) := '0';
    end if;
  end loop;
  return rand_vector;
end function;

-- -- INPUT signals
signal clock 				 : std_ulogic := '1';
signal reset_n			 : std_ulogic := '1'; -- active low input
signal read_strb  	 : std_ulogic := '0';
signal tx_strb  	   : std_ulogic := '0'; 
signal memory_data   : std_ulogic_vector(DATA_BITWIDTH - 1 downto 0);

-- OUTPUT signals
signal UART_data     : std_ulogic_vector(UART_DATA_LENGTH - 1 downto 0);
signal tx_start_strb : std_ulogic;

-- Inverted Logic for reset input ('1' not pressed, '0' pressed)
signal reset				 : std_ulogic;

signal tb_end        : std_ulogic := '0';

begin

	-- Inverting Input Logic
	reset <= not reset_n;
  
	-- Embed Memory-2-UART
	dut_memory2uart: entity memory2uart(rtl)
	generic map(
		DATA_BITWIDTH	    => DATA_BITWIDTH,
		UART_DATA_LENGTH	=> UART_DATA_LENGTH	
	)
	port map(
		clock_i   		  => clock,
		reset_i	  		  => reset,
    read_strb_i	    => read_strb,
		tx_strb_i		    => tx_strb,
		memory_data_i	  => memory_data,
    
		UART_data_o  		=> UART_data,
    tx_start_strb_o => tx_start_strb
	);
	-- ====================================================
	
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
		wait for CLK_PERIOD;
		reset_n <= '1';		-- active low reset
    
    -- read data (max value)
    read_strb <= '1';
    memory_data <= (others => '1');
    wait for CLK_PERIOD;
    read_strb <= '0';
    -- wait during transmit
    for i in 0 to BYTES - 1 loop
      wait for 2 * CLK_PERIOD;
      tx_strb <= '1';
      wait for CLK_PERIOD;
      tx_strb <= '0';
    end loop;
    wait for 10 * CLK_PERIOD;
    
    -- read data (random number)
    read_strb <= '1';
    memory_data <= random_vector(memory_data'length); 
    wait for CLK_PERIOD;
    read_strb <= '0';
    for i in 0 to BYTES - 1 loop
      wait for 2 * CLK_PERIOD;
      tx_strb <= '1';
      wait for CLK_PERIOD;
      tx_strb <= '0';
    end loop;
    wait for 10 * CLK_PERIOD;
    
    -- read data (min value)
    memory_data <= (others => '0');
    read_strb <= '1';
    wait for CLK_PERIOD;
    read_strb <= '0';
    for i in 0 to BYTES - 1 loop
      wait for 2 * CLK_PERIOD;
      tx_strb <= '1';
      wait for CLK_PERIOD;
      tx_strb <= '0';
    end loop;
    
    tb_end <= '1';
    report "End of simulation." severity error;
    wait;
	end process stimuli;
	-- =====================================================
end bhv;