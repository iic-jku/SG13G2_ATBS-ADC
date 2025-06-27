-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_1164.all;

library work;
use work.RAMDefinitions.all;
use work.EthernetDefinitions.all;
use work.all;

entity ethernet_rx_storage is
	generic(
		RAM_INITIALISE		:	std_ulogic
	);
	port(
		rst_i				      :	in std_ulogic;
		clk_i				      :	in std_ulogic;
		a_data_ready_i		:	in std_ulogic;
		a_write_o			    :	out std_ulogic;
		b_addr_i			    :	in std_ulogic_vector(RX_RAM_ADDR_BITWIDTH - 1 downto 0);
		a_addr_o			    :	out std_ulogic_vector(RX_RAM_ADDR_BITWIDTH - 1 downto 0);
		b_data_o			    :	out std_ulogic_vector(RX_RAM_DATA_BITWIDTH - 1 downto 0);
		a_data_i			    :	in std_ulogic_vector(RX_RAM_DATA_BITWIDTH - 1 downto 0);
		ram_initialised_o	: out std_ulogic
	);
end entity ethernet_rx_storage;

architecture rtl of ethernet_rx_storage is

signal a_data_i_signal		       : std_ulogic_vector(RX_RAM_DATA_BITWIDTH - 1 downto 0);
signal a_write_signal		         : std_ulogic;

signal a_addr 				           : unsigned(RX_RAM_ADDR_BITWIDTH - 1 downto 0);
signal next_a_addr			         : unsigned(RX_RAM_ADDR_BITWIDTH - 1 downto 0);

signal a_write_signal_delayed		 : std_ulogic;

signal ram_rx_reset_strobe			 : std_ulogic;
signal ram_rx_reset_finished		 : std_ulogic;
signal not_ram_rx_reset_finished : std_ulogic;

signal enable_initalise				   : std_ulogic;

begin
  
  reg_proc: process (rst_i, clk_i) is
  begin
    if rst_i = '1' then
      a_addr <= (others => '0');
    elsif rising_edge(clk_i) then
      a_addr <= next_a_addr;
      a_write_signal_delayed <= a_write_signal;
    end if;
  end process reg_proc;
  -- =====================================================
  
  -- Embed Strobe Generator
  not_ram_rx_reset_finished <= not ram_rx_reset_finished;
  enable_initalise <= not_ram_rx_reset_finished and RAM_INITIALISE;
  
  eth_ram_rx_reset: entity ram_strobeGenerator(rtl)
  generic map( 
    MAX_STROBES	=> RX_RAM_ADDR_SIZE
  )
  port map(
    rst_i		    => rst_i,
    clk_i		    => clk_i,
    enable_i	  => enable_initalise,
    strobe_o	  => ram_rx_reset_strobe,
    finished_o  => ram_rx_reset_finished
  );
  -- =====================================================

  -- Embed dual-port RAM
  a_data_i_signal	<= a_data_i	when ram_rx_reset_finished = '1' or RAM_INITIALISE = '0' else (others => '0');
  a_write_signal <= a_data_ready_i when ram_rx_reset_finished = '1' or RAM_INITIALISE = '0' else ram_rx_reset_strobe;

  rx_RAM: entity dual_ram(rtl)
  generic map(
    DATA_BITWIDTH => RX_RAM_DATA_BITWIDTH,
    ADDR_BITWIDTH => RX_RAM_ADDR_BITWIDTH
  )
  port map(
    a_clock_i	=> clk_i,
    a_write_i	=> a_write_signal,
    a_addr_i	=> std_ulogic_vector(a_addr), 
    a_data_i	=> a_data_i_signal,
    a_data_o	=> open,
    
    b_clock_i	=> clk_i,
    b_write_i	=> '0',
    b_addr_i	=> b_addr_i,
    b_data_i	=> (others => '0'),
    b_data_o	=> b_data_o
  );
  -- =====================================================
  
  addr_logic: process (a_write_signal_delayed, a_addr) is
  begin
    -- default assignment
    next_a_addr <= a_addr;
    
    if a_write_signal_delayed = '1' then
      next_a_addr <= a_addr + to_unsigned(1, next_a_addr'length);
      if a_addr = RX_RAM_ADDR_SIZE - 1 then
        next_a_addr <= (others => '0');
      end if;
    end if;
  end process addr_logic;
  -- =====================================================
  
  -- Concurrent output statements
  -- Output several signals for the implementation of the "reading behaviour"
  a_addr_o	<= std_ulogic_vector(a_addr);
  a_write_o	<= a_write_signal;
  ram_initialised_o <= ram_rx_reset_finished when RAM_INITIALISE = '1' else '1';
  -- =====================================================
end architecture rtl;