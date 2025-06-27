-- =====================================================
-- Test Entity for receiving ethernet data over MII
-- for use of a MII (or in the future GMII) compatible Ethernet Phy (e.g. Marvel 88e1111)
-- timing in 802.3-2012_section2, p. 56 ff
-- 
-- (C) Michael Lunglmayr, Institute of Signal Processing ISP, JKU Linz
-- (C) Manuel Feindert, Institute of Signal Processing ISP, JKU Linz
-- modified for given naming convention by Simon Dorrer
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.EthernetDefinitions.all;
use work.all;

entity ethernet_rx_controller is
  generic(
    N_PAYLOAD_BYTES	     : natural;
    CHECK_MAC		         : std_ulogic;
    CHECK_IP		         : std_ulogic;
    CHECK_LENGTH	       : std_ulogic
  );
  port(
    -- System Clocks and Reset --
    clk_i		             : in std_ulogic;
    rst_i		             : in std_ulogic;
    rx_clk_i	           : in std_ulogic;
    rx_eth_en_i	         : in std_ulogic;
    
    -- Receive Inputs --
    rx_data_i	           : in std_ulogic_vector(3 downto 0);
    rx_dv_i		           : in std_ulogic;
    rx_err_i	           : in std_ulogic;
      
    -- Error Outputs --
    rx_ip_wrong_o			   : out	std_ulogic;
    rx_mac_wrong_o			 : out std_ulogic;
    rx_crc_wrong_o			 : out std_ulogic;
    rx_discard_packet_o	 : out std_ulogic;
    
    -- Receive Outputs --
    rx_port_o				     : out std_ulogic_vector(15 downto 0);
    rx_data_strobe_o		 : out std_ulogic;
    rx_finished_strobe_o : out std_ulogic;
    rx_byte_o				     : out std_ulogic_vector(7 downto 0)
  );
end entity ethernet_rx_controller;


architecture rtl of ethernet_rx_controller is 

  -- Constants
	constant FRAME_LENGTH 		:	natural := HEADER_LENGTH + N_PAYLOAD_BYTES + CRC_LENGTH;
	constant FRAME_BITWIDTH		:	natural := natural( ceil( log2( real( FRAME_LENGTH ) ) ) );

	constant IP_FRAME_LENGTH	:	std_ulogic_vector(15 downto 0) := std_ulogic_vector(to_unsigned(N_PAYLOAD_BYTES + IP_HEADER_LENGTH, 16));   
	constant UDP_FRAME_LENGTH	:	std_ulogic_vector(15 downto 0) := std_ulogic_vector(to_unsigned(N_PAYLOAD_BYTES + UDP_HEADER_LENGTH, 16));
  
  -- Signals
	signal rx_clk_before		  :	std_ulogic;
	signal next_rx_clk_before	:	std_ulogic;
	
	signal rx_finished_strobe	:	std_ulogic;
	signal rx_finished_strobe_delayed	:	std_ulogic; -- SO THAT CRC CHECKS AFTERWARDS! EXPLAIN!
	
	signal rx_clk_rising_edge	:	std_ulogic;
	
	signal rx_byte				    :	std_ulogic_vector(7 downto 0);
	signal next_rx_byte			  :	std_ulogic_vector(7 downto 0);

	signal byte_number			  :	unsigned(FRAME_BITWIDTH - 1 downto 0);
	signal next_byte_number		:	unsigned(FRAME_BITWIDTH - 1 downto 0);

	type tRX_FSM_State is (IDLE, RECEIVING_HEADER, RECEIVING_PAYLOAD, RECEIVING_CRC, IGNOREPACKET);
	signal current_state		  :	tRX_FSM_State;
	signal next_state			    :	tRX_FSM_State;

	signal discard_packet_signal		  :	std_ulogic;
	signal next_discard_packet_signal	:	std_ulogic;

	signal nibble		          :	std_ulogic;
	signal next_nibble	      :	std_ulogic;

	signal nCRC32		          :	std_ulogic_vector(31 downto 0);
	signal next_nCRC32	      :	std_ulogic_vector(31 downto 0);
	signal CRC32		          :	std_ulogic_vector(31 downto 0);
	signal next_CRC32	        :	std_ulogic_vector(31 downto 0);

	signal rx_ip_wrong_signal	 :	std_ulogic;
	signal rx_mac_wrong_signal :	std_ulogic;
	
	signal rx_crc_wrong_signal		  :	std_ulogic;
	signal next_rx_crc_wrong_signal	:	std_ulogic;
	
	signal port_signal				 :	std_ulogic_vector(15 downto 0);
	signal next_port_signal		 :	std_ulogic_vector(15 downto 0);
begin

  reg_proc: process(clk_i, rst_i) is
  begin
    if rst_i = '1' then
      rx_byte	<= (others => '0');
      current_state	<= IDLE;
      discard_packet_signal	<= '0';
      nCRC32 <= (others => '0');
      nibble <= '0';
      byte_number	<= (others => '0');
      CRC32	<= (others => '1');
      rx_clk_before	<= '0';
      rx_crc_wrong_signal <= '0';
      rx_finished_strobe_delayed <= '0';
      port_signal <= (others => '0');
    elsif rising_edge(clk_i) then
      if rx_eth_en_i = '1' then
        rx_byte	<= next_rx_byte;
        current_state	<= next_state;
        nCRC32 <= next_nCRC32;
        nibble <= next_nibble;
        byte_number	<= next_byte_number;
        CRC32	<= next_CRC32;
        discard_packet_signal	<= next_discard_packet_signal;
        rx_clk_before	<= next_rx_clk_before;
        rx_crc_wrong_signal <= next_rx_crc_wrong_signal;
        rx_finished_strobe_delayed <= rx_finished_strobe;
        port_signal	<= next_port_signal;
      end if;
    end if;
  end process;
  -- =====================================================
  
  crc_logic: process(rx_crc_wrong_signal, rx_finished_strobe_delayed, CRC32, nCRC32) is
  begin
    -- default assignment
    next_rx_crc_wrong_signal <= rx_crc_wrong_signal;
    
    if rx_finished_strobe_delayed = '1' then
      if(CRC32 xor x"FFFFFFFF") /= nCRC32 then
        next_rx_crc_wrong_signal <= '1';
      end if;
    else
      next_rx_crc_wrong_signal <= '0';
    end if;
  end process crc_logic;
  -- =====================================================
  
  rx_fsm_logic: process(current_state, byte_number, nibble, rx_dv_i, discard_packet_signal, rx_clk_rising_edge ) is
  begin
    -- default assignment
    next_state <= current_state;
    next_byte_number <= byte_number;
    next_nibble	<= nibble;
    rx_finished_strobe <= '0';
    
    case current_state is
      when IDLE => 
        if rx_dv_i = '1' then
          next_state <= RECEIVING_HEADER;
        end if;

      when RECEIVING_HEADER =>
        if rx_dv_i = '0' then
          next_state <= IDLE;
          next_byte_number <= (others => '0');
        elsif rx_clk_rising_edge = '1' then
          next_nibble <= not nibble;
          if nibble = '1' then
            if byte_number < HEADER_LENGTH - 1 then 
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_state <= RECEIVING_PAYLOAD;
            end if;
          end if;
        end if;
        if discard_packet_signal = '1' then   
          next_state <= IGNOREPACKET;
        end if;
      
      when RECEIVING_PAYLOAD =>
        if rx_dv_i = '0' then
          next_state <= IDLE;
          next_byte_number <= (others => '0');
        elsif rx_clk_rising_edge = '1' then
          next_nibble <= not nibble;
          if nibble = '1' then
            if byte_number < FRAME_LENGTH - CRC_LENGTH - 2 then 
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_state <= RECEIVING_CRC;
            end if;
          end if;
        end if;
        if discard_packet_signal = '1' then   
          next_state <= IGNOREPACKET;
        end if;
        
      when RECEIVING_CRC	=>
        if rx_dv_i = '0' then
          next_state <= IDLE;
          next_byte_number <= (others => '0');
        elsif rx_clk_rising_edge = '1' then
          next_nibble <= not nibble;
          if nibble = '1' then
            if byte_number < FRAME_LENGTH - 3 then 
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_state <= IDLE;
              rx_finished_strobe <= '1';
              next_byte_number <= (others => '0');
            end if;
          end if;
        end if;
        if discard_packet_signal = '1' then   
          next_state <= IGNOREPACKET;
        end if;
        
      when IGNOREPACKET => 
        if rx_dv_i = '0' then 
          next_state <= IDLE;
          next_byte_number <= (others => '0');			
        end if;
    end case;
  end process rx_fsm_logic;
  -- =====================================================
  
  port_logic: process(byte_number, rx_byte, port_signal) is
  begin
    -- default assignment
    next_port_signal <= port_signal;
    
    -- DOCUMENT: REIHENFOLGE UMGEKEHRT!!
    if byte_number = 44 then
      next_port_signal(15 downto 8) <= rx_byte;
    elsif byte_number = 45 then
      next_port_signal(7 downto 0) <= rx_byte;
    end if;
  end process port_logic;
  -- =====================================================
  
  rx_byte_logic: process(byte_number, rx_byte, nCRC32, rx_clk_rising_edge, nibble, rx_clk_before, CRC32, current_state) is
  begin
    -- default assignment
    next_nCRC32	<= nCRC32;
    next_CRC32 <= CRC32;
    next_discard_packet_signal <= '0';
    rx_ip_wrong_signal <= '0';
    rx_mac_wrong_signal	<= '0';
    
    if nibble = '1' and rx_clk_rising_edge = '1' and rx_clk_before = '0' and current_state /= RECEIVING_CRC then
      if byte_number < 8 then
        next_CRC32 <= (others => '1');
      elsif byte_number <= HEADER_LENGTH + N_PAYLOAD_BYTES - 2 then -- has to be like that because the CRC otherwise is not correct!!! EXPLAIN IN DOCUMENTATION!!!
        next_CRC32 <= crc(rx_byte, CRC32);
      end if;
    end if;
    
    if nibble = '1' and rx_clk_rising_edge = '1' and rx_clk_before = '0' then
      if CHECK_MAC = '1' then
        if    byte_number = 8	then if BOARD_MAC (47 downto 40) /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if;
        elsif byte_number = 9	then if BOARD_MAC (39 downto 32) /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if; 
        elsif byte_number = 10	then if BOARD_MAC (31 downto 24) /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if; 
        elsif byte_number = 11	then if BOARD_MAC (23 downto 16) /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if; 
        elsif byte_number = 12	then if BOARD_MAC (15 downto 8)  /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if; 
        elsif byte_number = 13	then if BOARD_MAC (7 downto 0)   /= rx_byte	then next_discard_packet_signal <= '1'; rx_mac_wrong_signal <= '1'; end if;
        end if;
      end if;
      
      if CHECK_IP = '1' then
        if    byte_number = 38	then if BOARD_IP (31 downto 24) /= rx_byte  then next_discard_packet_signal <= '1'; rx_ip_wrong_signal <= '1'; end if;
        elsif byte_number = 39	then if BOARD_IP (23 downto 16) /= rx_byte  then next_discard_packet_signal <= '1'; rx_ip_wrong_signal <= '1'; end if;
        elsif byte_number = 40	then if BOARD_IP (15 downto 8)  /= rx_byte  then next_discard_packet_signal <= '1'; rx_ip_wrong_signal <= '1'; end if;
        elsif byte_number = 41	then if BOARD_IP (7 downto 0)   /= rx_byte  then next_discard_packet_signal <= '1'; rx_ip_wrong_signal <= '1'; end if;
        end if;
      end if;
      
      -- Check if the package is UDP --
      if byte_number = 31 then
        if x"11" /= rx_byte then
          next_discard_packet_signal <= '1';
        end if;
      end if;
      
      if CHECK_LENGTH = '1' then
        if    byte_number = 24	then if IP_FRAME_LENGTH(15 downto 8)  /= rx_byte  then next_discard_packet_signal <= '1'; end if;
        elsif byte_number = 25	then if IP_FRAME_LENGTH(7 downto 0)   /= rx_byte  then next_discard_packet_signal <= '1'; end if;
        elsif byte_number = 46	then if UDP_FRAME_LENGTH(15 downto 8) /= rx_byte  then next_discard_packet_signal <= '1'; end if;
        elsif byte_number = 47	then if UDP_FRAME_LENGTH(7 downto 0)  /= rx_byte  then next_discard_packet_signal <= '1'; end if;
        end if;
      end if;
      
      if		byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES - 2		then next_nCRC32(7 downto 0)	<= rx_byte; 
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 1 - 2	then next_nCRC32(15 downto 8)	<= rx_byte; 
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 2 - 2	then next_nCRC32(23 downto 16)	<= rx_byte; 
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 3 - 2	then next_nCRC32(31 downto 24)	<= rx_byte; 
      end if;
    end if;  
  end process rx_byte_logic;
  -- =====================================================

  build_data_byte_logic: process(nibble, rx_data_i, rx_dv_i, rx_byte) is
  begin
    -- default assignment
    next_rx_byte <= rx_byte;
    
    if rx_dv_i = '1' then 
      if nibble = '1' then
        next_rx_byte(7 downto 4) <= rx_data_i;
      else 
        next_rx_byte(3 downto 0) <= rx_data_i;
      end if;
    end if;
  end process build_data_byte_logic;
  -- =====================================================
  
  -- Concurrent output statements
  next_rx_clk_before <= rx_clk_i;
  rx_clk_rising_edge <= '1' when next_rx_clk_before = '1' and rx_clk_before = '0' else '0';
  rx_data_strobe_o <= rx_clk_rising_edge and nibble and not rx_clk_before when current_state = RECEIVING_PAYLOAD else '0';
  rx_crc_wrong_o <= rx_crc_wrong_signal;
  rx_port_o <= port_signal;
  rx_byte_o	<= rx_byte;
  rx_finished_strobe_o <= rx_finished_strobe_delayed;
  rx_discard_packet_o	<= discard_packet_signal or rx_crc_wrong_signal;
  rx_ip_wrong_o	<= rx_ip_wrong_signal;
  rx_mac_wrong_o <= rx_mac_wrong_signal;
  -- =====================================================
end architecture rtl;