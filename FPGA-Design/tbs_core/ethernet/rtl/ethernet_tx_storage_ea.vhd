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

entity ethernet_tx_storage is
	generic(
		RAM_INITIALISE		  :	std_ulogic
	);
	port (
		rst_i				        :	in std_ulogic;	-- Reset
		clk_i				        :	in std_ulogic;	-- Clock
		a_overflow_strobe_o	:	out std_ulogic;	-- Strobe when addr_a overflows
		b_overflow_strobe_o	:	out std_ulogic;	-- Strobe when addr_b overflows
		b_address_strobe_i	:	in std_ulogic;	-- Strobe to increment addr_b
		a_data_ready_i		  :	in std_ulogic;	-- Strobe when new data_a is available
		a_data_i			      :	in std_ulogic_vector(TX_RAM_DATA_BITWIDTH - 1 downto 0);	-- RAM data_a
		b_data_o			      :	out std_ulogic_vector(TX_RAM_DATA_BITWIDTH - 1 downto 0);	-- RAM data_b
		a_addr_o			      :	out std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);
		b_addr_o			      :	out std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);
		ram_initialised_o	  :	out std_ulogic	
	);
end entity ethernet_tx_storage;

architecture rtl of ethernet_tx_storage is

signal a_write_signal				         : std_ulogic;
signal a_write_delayed_signal		     : std_ulogic;

signal b_addr_signal				         : std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);
signal a_addr_signal				         : std_ulogic_vector(TX_RAM_ADDR_BITWIDTH - 1 downto 0);
signal a_data_signal				         : std_ulogic_vector(TX_RAM_DATA_BITWIDTH - 1 downto 0);
signal b_data_signal				         : std_ulogic_vector(TX_RAM_DATA_BITWIDTH - 1 downto 0);

signal a_overflow_signal			       : std_ulogic;
signal b_overflow_signal			       : std_ulogic;

signal b_address_strobe				       : std_ulogic;

signal ram_tx_reset_strobe			     : std_ulogic;
signal ram_tx_reset_finished		     : std_ulogic;
signal ram_tx_reset_finished_delayed : std_ulogic; -- Delayed damit beim Reset kein Frame geschickt wird!!!
signal not_ram_tx_reset_finished	   : std_ulogic;

signal enable_initalise				       :	std_ulogic;

begin
  
  reg_proc: process(rst_i, clk_i) is
  begin
    if rst_i = '1' then
      a_write_delayed_signal <= '0';
    elsif rising_edge(clk_i) then
      a_write_delayed_signal <= a_write_signal;
      ram_tx_reset_finished_delayed <= ram_tx_reset_finished;
    end if;
  end process reg_proc;
  -- =====================================================
  
  -- Embed Strobe Generator
  not_ram_tx_reset_finished <= not ram_tx_reset_finished;
  enable_initalise <= not_ram_tx_reset_finished and RAM_INITIALISE;
  
  eth_ram_tx_reset: entity ram_strobeGenerator(rtl)
  generic map( 
    MAX_STROBES	=> TX_RAM_ADDR_SIZE
  )
  port map(
    rst_i		    => rst_i,
    clk_i		    => clk_i,
    enable_i	  => enable_initalise,
    strobe_o	  => ram_tx_reset_strobe,
    finished_o	=> ram_tx_reset_finished
  );
  -- =====================================================
  
  -- Embed dual-port RAM
  a_data_signal	<= a_data_i	when ram_tx_reset_finished = '1' or RAM_INITIALISE = '0' else (others => '0');
  a_write_signal	<= a_data_ready_i	when ram_tx_reset_finished = '1' or RAM_INITIALISE = '0' else ram_tx_reset_strobe;
  
  tx_ram: entity dual_ram(rtl)
  generic map(
    DATA_BITWIDTH => TX_RAM_DATA_BITWIDTH,
    ADDR_BITWIDTH => TX_RAM_ADDR_BITWIDTH
  )
  port map(
    a_clock_i	    => clk_i,
    a_write_i	    => a_write_signal,
    a_addr_i	    => a_addr_signal,
    a_data_i	    => a_data_signal,
    a_data_o	    => open,
    
    b_clock_i	    => clk_i,
    b_write_i	    => '0',
    b_addr_i	    => b_addr_signal,
    b_data_i	    => (others => '0'),
    b_data_o 	    => b_data_signal
  );
  -- =====================================================
  
  -- Embed Address A
  addr_a_creator: entity address(rtl)
  generic map(
    ADDR_BITWIDTH  => TX_RAM_ADDR_BITWIDTH,
    ADDR_MAX_VALUE => TX_RAM_ADDR_SIZE
  )
  port map(
    clk_i 		     => clk_i,
    rst_i 		     => rst_i,
    strobe_i 	     => a_write_delayed_signal,
    address_o      => a_addr_signal,
    overflow_o     => a_overflow_signal
  );
  -- =====================================================
  
  -- Embed Address B
  b_address_strobe	<= b_address_strobe_i;
  
  addr_b_creator: entity address(rtl)
  generic map(
    ADDR_BITWIDTH  => TX_RAM_ADDR_BITWIDTH,
    ADDR_MAX_VALUE => TX_RAM_ADDR_SIZE
  )
  port map(
    clk_i 		     => clk_i,
    rst_i 		     => rst_i,
    strobe_i 	     => b_address_strobe,
    address_o      => b_addr_signal,
    overflow_o     => b_overflow_signal
  );
  -- =====================================================
  
  -- Concurrent output statements
  a_addr_o <= a_addr_signal;
  b_addr_o <= b_addr_signal;
  ram_initialised_o <= ram_tx_reset_finished_delayed when RAM_INITIALISE = '1' else '1';
  a_overflow_strobe_o <= a_overflow_signal;
  b_overflow_strobe_o <= b_overflow_signal;
  b_data_o <= b_data_signal;
  -- =====================================================
end architecture rtl;