-- =====================================================
-- Test Entity for sending a fixed Frame over MII
-- for use of a MII (or in the future GMII) compatible Ethernet Phy (e.g. Marvel 88e1111)
-- Timing Diagram in 802.3-2012_section2 => Page 54
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

entity ethernet_tx_controller is
  generic (
    N_PAYLOAD_BYTES	 : natural
  ); 
  port (
    -- System Clocks and Reset
    clk_i				     : in std_ulogic;
    tx_clk_i			   : in std_ulogic;
    rst_i				     : in std_ulogic;
    tx_eth_en_i			 : in std_ulogic;
    
    -- Transmit Inputs
    tx_start_i			 : in std_ulogic;
    tx_payload_i		 : in std_ulogic_vector(7 downto 0);
    
    -- Transmit Outputs
    tx_data_o			   : out std_ulogic_vector(3 downto 0);
    tx_data_strobe_o : out std_ulogic;
    tx_finished_o		 : out std_ulogic;
    tx_en_o				   : out std_ulogic;
    tx_err_o			   : out std_ulogic
  );
end entity ethernet_tx_controller;

architecture rtl of ethernet_tx_controller is 

-- Constants for the Payload Length --
constant BYTE_COUNTER_MAX	  :	natural := N_PAYLOAD_BYTES + HEADER_LENGTH + CRC_LENGTH;
constant BYTE_COUNTER_WIDTH	:	natural := natural( ceil( log2( real( BYTE_COUNTER_MAX ) ) ) );

-- Constants for the IP Checksum Calculation --
constant IP_FRAME_LENGTH	:	std_ulogic_vector(15 downto 0) := std_ulogic_vector(to_unsigned(N_PAYLOAD_BYTES + IP_HEADER_LENGTH, 16));   
constant UDP_FRAME_LENGTH	:	std_ulogic_vector(15 downto 0) := std_ulogic_vector(to_unsigned(N_PAYLOAD_BYTES + UDP_HEADER_LENGTH, 16));
constant IP_CS				    :	std_ulogic_vector(15 downto 0) := IPCS(unsigned(IP_FRAME_LENGTH), BOARD_IP, PC_IP);

-- Constants for the calculated Checksum --
constant IP_CS_H			    :	std_ulogic_vector(7 downto 0) := IP_CS(15 downto 8);
constant IP_CS_L			    :	std_ulogic_vector(7 downto 0) := IP_CS(7 downto 0);

-- Transmit State Machine Signals --
type tTX_FSM_State is (IDLE, SENDING_HEADER, SENDING_PAYLOAD, SENDING_CRC);
signal current_state	:	tTX_FSM_State;
signal next_state			:	tTX_FSM_State;

-- Others --
-- Indication, which nibble gets transmitted next --
signal nibble				:	std_ulogic;
signal next_nibble	:	std_ulogic;

signal tx_finished_strobe	        :	std_ulogic;
signal tx_finished_strobe_delayed	:	std_ulogic;

signal tx_clk_before		  :	std_ulogic;
signal next_tx_clk_before	:	std_ulogic;

signal tx_clk_rising_edge	        :	std_ulogic;
signal tx_clk_rising_edge_delayed : std_ulogic;

signal byte_number			:	unsigned(BYTE_COUNTER_WIDTH - 1 downto 0);
signal next_byte_number	:	unsigned(BYTE_COUNTER_WIDTH - 1 downto 0);

signal tx_en			:	std_ulogic;
signal next_tx_en	:	std_ulogic;

-- Cyclic Redundancy Check --
signal CRC32			:	std_ulogic_vector(31 downto 0);
signal next_CRC32	:	std_ulogic_vector(31 downto 0);
signal nCRC32			:	std_ulogic_vector(31 downto 0);

-- Enable Signal for the Cyclic Shift Register --
-- This has a strobe-like behaviour --
signal cyclicShift_en		   : std_ulogic;
signal next_cyclicShift_en : std_ulogic;

signal header_byte			   : std_ulogic_vector(7 downto 0);
signal byte_to_send			   : std_ulogic_vector(7 downto 0);
signal next_byte_to_send	 : std_ulogic_vector(7 downto 0);

begin

  next_tx_clk_before <= tx_clk_i;
  tx_finished_strobe <= '1' when current_state = SENDING_CRC and next_state = IDLE else '0';
  tx_clk_rising_edge <= '1' when next_tx_clk_before = '1' and tx_clk_before = '0' else '0';
  
  reg_proc: process(clk_i, rst_i) is
  begin
    if rst_i = '1' then
      nibble <= '0';
      tx_en	<= '0';
      cyclicShift_en <= '0';
      current_state	<= IDLE;	
      byte_number	<= (others => '0');
      byte_to_send <= (others => '0');
      CRC32	<= (others => '1');
      tx_clk_before	<= '0';		
      tx_clk_rising_edge_delayed <= '0';
      tx_finished_strobe_delayed <= '0';		
    elsif rising_edge(clk_i) then
      if tx_eth_en_i = '1' then
        nibble <= next_nibble;
        current_state	<= next_state;
        tx_clk_before	<= next_tx_clk_before;
        byte_number	<= next_byte_number;
        tx_en	<= next_tx_en;
        CRC32	<= next_CRC32;
        cyclicShift_en <= next_cyclicShift_en;
        byte_to_send <= next_byte_to_send;
        tx_clk_rising_edge_delayed <= tx_clk_rising_edge;
        tx_finished_strobe_delayed <= tx_finished_strobe;
      end if;
    end if;
  end process reg_proc;
  -- =====================================================
  
  -- Cyclic Shift Register for the Ethernet Header --
  header_shift_register: entity cyclicShift(rtl)
  generic map(
    SHIFT_SIZE			 =>	HEADER_LENGTH,
    IP_FRAME_LENGTH	 =>	IP_FRAME_LENGTH,
    UDP_FRAME_LENGTH =>	UDP_FRAME_LENGTH,
    IP_CS_H				   =>	IP_CS_H,
    IP_CS_L				   =>	IP_CS_L
  )
  port map(
    rst_i			       =>	rst_i,
    clk_i			       =>	clk_i,
    shift_enable_i	 =>	cyclicShift_en,
    data_o			     =>	header_byte
  );
  -- =====================================================

  -- State Machine for Ethernet TX --
  tx_fsm_logic: process(nibble, current_state, tx_start_i, byte_number, tx_clk_rising_edge_delayed, tx_en, cyclicShift_en) is
  begin
    -- default assignment
    next_nibble	<= nibble;
    next_state <= current_state;
    next_tx_en <= tx_en;
    next_byte_number <= byte_number;
    next_cyclicShift_en	<= '0';
    
    case current_state is
      when IDLE =>
        if tx_start_i = '1' then
          next_state	<= SENDING_HEADER;
          next_nibble	<= '0';
        end if;
        
      when SENDING_HEADER =>
        next_tx_en	<= '1';
        if tx_clk_rising_edge_delayed = '1' then
          next_nibble <= not nibble; 
          if nibble = '1' then
            next_cyclicShift_en <= '1';
            if byte_number < HEADER_LENGTH - 1 then
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_state <= SENDING_PAYLOAD;
            end if;
          end if;
        end if;
      
      when SENDING_PAYLOAD =>
        if tx_clk_rising_edge_delayed = '1' then
          next_nibble <= not nibble;
          if nibble = '1' then
            if byte_number < BYTE_COUNTER_MAX - CRC_LENGTH - 2 then
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_state <= SENDING_CRC;
            end if;
          end if;
        end if;
        
      when SENDING_CRC =>
        if tx_clk_rising_edge_delayed = '1' then
          next_nibble <= not nibble;
          if nibble = '1' then
            if byte_number < BYTE_COUNTER_MAX - 3 then
              next_byte_number <= byte_number + to_unsigned(1, next_byte_number'length);
            else
              next_byte_number <= (others => '0');
              next_state <= IDLE;
              next_tx_en <= '0';
            end if;
          end if;
        end if;
    end case;
  end process tx_fsm_logic;
  -- =====================================================

  -- Calculate the CRC32 Signal --
  crc_calc_logic: process(CRC32, byte_number, tx_clk_rising_edge_delayed, byte_to_send, nibble, current_state) is
  begin
    -- default assignment
    next_CRC32 <= CRC32;

    if tx_clk_rising_edge_delayed = '1' and nibble = '1' and current_state /= SENDING_CRC then
      -- Do no CRC Calculation if the Ethernet Header is not yet set
      if byte_number < 8 then
        next_CRC32 <= (others => '1');
      -- Do a CRC Calculation after the Ethernet Header was sent
      elsif byte_number <= HEADER_LENGTH + N_PAYLOAD_BYTES - 2 then
        next_CRC32 <= crc(byte_to_send, CRC32);
      end if;
    end if;
  end process crc_calc_logic;
  -- =====================================================
  
  -- Invert the CRC32 Signal --
  nCRC32 <= not CRC32;
  
  tx_byte_logic : process(byte_number, nCRC32, tx_payload_i, header_byte, current_state)
  begin
    -- default assignment
    next_byte_to_send <= (others => '0');

    if		current_state = SENDING_HEADER	 	then next_byte_to_send <= header_byte;
    elsif	current_state = SENDING_PAYLOAD		then next_byte_to_send <= tx_payload_i;
    elsif	current_state = SENDING_CRC			  then
      if		byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES - 2		  then next_byte_to_send <= nCRC32(7 downto 0);
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 1 - 2	then next_byte_to_send <= nCRC32(15 downto 8);
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 2 - 2	then next_byte_to_send <= nCRC32(23 downto 16);
      elsif	byte_number = HEADER_LENGTH + N_PAYLOAD_BYTES + 3 - 2	then next_byte_to_send <= nCRC32(31 downto 24);
      end if;
    end if;
  end process tx_byte_logic;
  -- =====================================================
  
  -- Concurrent output statements
  tx_finished_o <= tx_finished_strobe_delayed;
  tx_data_strobe_o <= '1' when current_state = SENDING_PAYLOAD and tx_clk_rising_edge_delayed = '1' and nibble = '1' else '0';
  tx_data_o <= byte_to_send(7 downto 4) when nibble = '1' else byte_to_send(3 downto 0);
  tx_en_o <= tx_en; -- Transmition Enable
  tx_err_o <= '0';  -- Currently not used outputs
  -- =====================================================
end architecture rtl;
