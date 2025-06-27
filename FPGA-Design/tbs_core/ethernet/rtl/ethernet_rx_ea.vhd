-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.RAMDefinitions.all;
use work.all;

entity ethernet_rx is
  generic(
    RAM_INITIALISE	     : std_ulogic;
    N_PAYLOAD_BYTES	     : natural;
    CHECK_MAC		         : std_ulogic;
    CHECK_IP		         : std_ulogic;
    CHECK_LENGTH	       : std_ulogic
  );
  port (
    rst_i			           : in std_ulogic;
    clk_i			           : in std_ulogic;
    rx_clk_i		         : in std_ulogic;
    
    rx_finished_strobe_o : out std_ulogic;
    
    rx_ip_wrong_o			   : out std_ulogic;
    rx_mac_wrong_o			 : out std_ulogic;
    rx_crc_wrong_o			 : out std_ulogic;
    rx_discard_packet_o	 : out std_ulogic;
    rx_data_i				     : in std_ulogic_vector(3 downto 0);
    rx_dv_i					     : in std_ulogic;
    rx_err_i				     : in std_ulogic;
    
    rx_port_o				     : out std_ulogic_vector(15 downto 0);
    
    ram_a_write_o			   : out std_ulogic;
    ram_a_addr_o			   : out std_ulogic_vector(RX_RAM_ADDR_BITWIDTH - 1 downto 0);
    ram_b_addr_i			   : in std_ulogic_vector(RX_RAM_ADDR_BITWIDTH - 1 downto 0);
    ram_b_data_o			   : out std_ulogic_vector(RX_RAM_DATA_BITWIDTH - 1 downto 0);
    ram_initialised_o		 : out std_ulogic
  );
end entity ethernet_rx;

architecture rtl of ethernet_rx is

signal rx_byte			  :	std_ulogic_vector(7 downto 0);
signal rx_data_strobe	:	std_ulogic;
signal ram_rx_ready		:	std_ulogic;
	
begin

	-- Embed Ethernet Receive RAM Storage
	ethernet_rx_storage_0: entity ethernet_rx_storage(rtl)
	generic map(
		RAM_INITIALISE		=> RAM_INITIALISE		-- Decide, wether the RAM gets pre-filled or not
	)
	port map(
		rst_i				      => rst_i,
		clk_i				      => clk_i,
		a_data_ready_i	  => rx_data_strobe,	-- The next RAM address gets set
		a_write_o			    => ram_a_write_o,		-- Strobe, when the current data gets written to the current address
		b_addr_i			    => ram_b_addr_i,		-- The next RAM address to be read
		a_addr_o			    => ram_a_addr_o,		-- The current address that the RAM wrote on
		b_data_o			    => ram_b_data_o,		-- RAM Data that is currently read
		a_data_i			    => rx_byte,				  -- RAM Data to be stored with the next a_data_ready_i
		ram_initialised_o	=> ram_rx_ready			-- Flag when the RAM has been initialized (1)
	);
	-- =====================================================
  
	-- (1) ... Ethernet RX gets enabled when the RAM has been initialized
	-- (2) ... Marvel always stands for the Marvel 88e1111 IC which handles Ethernet
	-- Embed Ethernet Data Receiver
	ethernet_rx_controller_0: entity ethernet_rx_controller(rtl)
	generic map (
		N_PAYLOAD_BYTES 	   => N_PAYLOAD_BYTES,		  -- Number of bytes to be received with one frame
		CHECK_MAC 			     => CHECK_MAC,			      -- Check the MAC Address of the received frame
		CHECK_IP 			       => CHECK_IP,			        -- Check the IP of the received frame
		CHECK_LENGTH		     => CHECK_LENGTH			    -- Check the Length of the package
	)
	port map (
		clk_i					       => clk_i,
		rst_i					       => rst_i,
		rx_clk_i				     => rx_clk_i,
		rx_eth_en_i				   => ram_rx_ready,				  -- Enables the Ethernet RX Entity (1)
		rx_data_i				     => rx_data_i,					  -- RX Nibble that gets received from the Marvel (2)
		rx_dv_i					     => rx_dv_i,						  -- RX Flag that the data is viable from the Marvel
		rx_err_i				     => rx_err_i,					    -- NOT USED YET
		rx_ip_wrong_o			   => rx_ip_wrong_o,				-- Signal that the IP of the frame was wrong 
		rx_mac_wrong_o			 => rx_mac_wrong_o,				-- Signal that the MAC Address of the frame was wrong
		rx_crc_wrong_o			 => rx_crc_wrong_o,				-- Signal that the CRC Check was wrong
		rx_discard_packet_o	 => rx_discard_packet_o,	-- Signal that the frame was discarded due to an error
		rx_port_o				     => rx_port_o,
		rx_data_strobe_o		 => rx_data_strobe,				-- Strobe that the Marvel received the next data byte
		rx_finished_strobe_o => rx_finished_strobe_o,	-- Strobe that the frame was completely received
		rx_byte_o				     => rx_byte						    -- Current payload byte to be stored in the RAM		
	);
  -- =====================================================
  
  -- Concurrent output statements
  ram_initialised_o <= ram_rx_ready;
  -- =====================================================
end architecture rtl;