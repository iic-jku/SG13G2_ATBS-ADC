-- =====================================================
-- Ethernet wrapper for 10/100 Mbit UDP data transfer over Ethernet
-- for use of a MII (or in the future GMII) compatible Ethernet Phy (e.g. Marvel 88e1111)
-- features: no fixed clock frequency required, the clock frequency only has to be higher than 2.5 MHz (10Mbit) or 25 MHz (100 Mbit)
-- preferable the clock frequency should be higher than the ethernet clock by an integer factor (otherwise check frequency of clock 
-- in simulator and check with the phy specs)
-- 
-- (C) Michael Lunglmayr, Institute of Signal Processing ISP, JKU Linz
-- (C) Manuel Feindert, Institute of Signal Processing ISP, JKU Linz
-- modified for given naming convention by Simon Dorrer
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.StandardDefinitions.all;
use work.RAMDefinitions.all;
use work.all;

entity ethernet is
  generic(
    N_PAYLOAD_BYTES : natural
  );
  port(
    -- System Clocks and Reset
    clk_i           : in std_ulogic;
    rst_i	 	        : in std_ulogic;
    rx_clk_i 	      : in std_ulogic;
    tx_clk_i 	      : in std_ulogic;
    phy_rst_o	      : out std_ulogic;
    
    -- Transmit Inputs
    a_data_i        :	in std_ulogic_vector(RX_RAM_DATA_BITWIDTH - 1 downto 0);
    a_data_strobe_i	:	in std_ulogic;
    tx_can_write_o	:	out std_ulogic;
      
    -- Transmit Outputs
    tx_data_o	      :	out std_ulogic_vector(3 downto 0);
    tx_en_o		      :	out std_ulogic;	-- Transmit Data Enable
    
    -- Receive Inputs
    rx_data_i	      :	in std_ulogic_vector(3 downto 0);
    rx_dv_i		      :	in std_ulogic;	-- Receive Data Valid
    rx_err_i	      :	in std_ulogic 	-- Receive Data Error
  );
end entity ethernet;

architecture rtl of ethernet is 
    
-- Synchronization Signals
signal phy_async_signal	: std_ulogic_vector(3 downto 0);	-- Asynchronous Physical Signals
signal phy_sync_signal	: std_ulogic_vector(3 downto 0);	-- Synchronized Physical Signals
signal rx_data_signal	: std_ulogic_vector(3 downto 0);	  -- Synchronized Received Data Signals
signal tx_data_signal	: std_ulogic_vector(3 downto 0);

signal tx_start_strobe      : std_ulogic;
signal tx_a_overflow_strobe	: std_ulogic;

signal rx_clk_signal	: std_ulogic;
signal tx_clk_signal	: std_ulogic;

signal rx_dv_signal		: std_ulogic;
signal rx_err_signal	: std_ulogic;

signal tx_en_signal		: std_ulogic;
signal tx_err_signal	: std_ulogic;

-- RAM Initialization Signals (not used)
signal ram_rx_ready	:	std_ulogic;
signal ram_tx_ready	:	std_ulogic;	
    
begin

	-- Embed Synchronizer Physical
  phy_async_signal  <= rx_clk_i & tx_clk_i & rx_dv_i & rx_err_i;
  
	syncing_physical: entity vector_synchronizer(rtl)
	generic map(
		SYNC_CNT => 2,
		SYNC_LEN => phy_async_signal'length
	)
	port map(
		rst_i	   => rst_i,
		clk_i	   => clk_i,
		sync_i	 => phy_async_signal,
		sync_o	 => phy_sync_signal
	);
	-- =====================================================
  
	rx_clk_signal	<= phy_sync_signal(3);
	tx_clk_signal	<= phy_sync_signal(2);
	rx_dv_signal	<= phy_sync_signal(1);
	rx_err_signal	<= phy_sync_signal(0);
	
	-- Embed Synchronizer Receiver Data
	syncing_data: entity vector_synchronizer(rtl)
	generic map(
		SYNC_CNT => 2,
		SYNC_LEN => rx_data_i'length
	)
	port map(
		rst_i	   => rst_i,
		clk_i	   => clk_i,
		sync_i	 => rx_data_i,
		sync_o	 => rx_data_signal
	);
	-- =====================================================
  
  -- Embed Ethernet Transmitter
	ethernet_tx_entity: entity ethernet_tx(rtl)
	generic map(
		RAM_INITIALISE			    => '0',
		N_PAYLOAD_BYTES			    => N_PAYLOAD_BYTES
	)
	port map(
		rst_i					          => rst_i,
		clk_i					          => clk_i,
		tx_clk_i				        => tx_clk_signal, 

		tx_data_o				        => tx_data_signal,	
		tx_en_o					        => tx_en_signal,
		tx_err_o				        => open,
		tx_start_i				      => tx_start_strobe,
		tx_finished_o			      => open,
	
		ram_can_write_o			    => tx_can_write_o,
		ram_a_overflow_strobe_o	=> tx_a_overflow_strobe,
		ram_b_overflow_strobe_o	=> open,
		ram_a_data_ready_i		  => a_data_strobe_i,
		ram_a_data_i			      => a_data_i,
		ram_initialised_o		    => ram_tx_ready
	);
  
	tx_start_strobe <= tx_a_overflow_strobe;
	-- =====================================================
	
	-- Embed Ethernet Receiver
	ethernet_rx_entity : entity ethernet_rx(rtl)
	generic map(
		RAM_INITIALISE	     => '0',
		N_PAYLOAD_BYTES	     => N_PAYLOAD_BYTES,
		CHECK_MAC		         => '1',
		CHECK_IP		         => '1',
		CHECK_LENGTH	       => '1'
	)
	port map(
		rst_i			           => rst_i,
		clk_i			           => clk_i,
		rx_clk_i		         => rx_clk_signal, 
		
		rx_finished_strobe_o => open,
		
		rx_ip_wrong_o			   => open,
		rx_mac_wrong_o			 => open,
		rx_crc_wrong_o			 => open,
		rx_discard_packet_o  => open,
		rx_data_i				     => rx_data_signal,
		rx_dv_i					     => rx_dv_signal,
		rx_err_i				     => rx_err_signal,
		
		ram_a_write_o			   => open,
		ram_a_addr_o			   => open,
		ram_b_addr_i			   => (others => '0'),
		ram_b_data_o			   => open,
		ram_initialised_o		 => ram_rx_ready
	);
	-- =====================================================
  
  -- Concurrent output statements
  tx_data_o <= tx_data_signal;
	tx_en_o <= tx_en_signal;
	phy_rst_o <= not rst_i;	-- Marvel 88e1111 should reset together with the FPGA
  -- =====================================================
end architecture rtl;