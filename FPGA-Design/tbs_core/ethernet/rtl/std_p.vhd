-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TBSSimVals.all;
use work.all;

package StandardDefinitions is
	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	-- constant N_PAYLOAD_BYTES	: natural := 256;	-- Range from 18 up to 1472
	constant CLK_FREQ	: natural := CLK_FREQ;	-- Clock Frequency
end package StandardDefinitions;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.all;

package EthernetDefinitions is
	-- DO NOT CHANGE THIS --
	constant IP_HEADER_LENGTH	 : natural := 28;
	constant UDP_HEADER_LENGTH : natural := 8;
	
	-- DO NOT CHANGE THIS --
	constant HEADER_LENGTH	:	natural := 50;
	constant CRC_LENGTH		  :	natural := 4;

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant BOARD_IP			  :	std_ulogic_vector(4 * 8 - 1 downto 0) := x"C0A80164";	-- equal to 192.168.1.100
	constant PC_IP				  :	std_ulogic_vector(4 * 8 - 1 downto 0) := x"C0A8015A";	-- equal to 192.168.1.90

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant BOARD_MAC		  :	std_ulogic_vector(6 * 8 - 1 downto 0) := x"001234567890";

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant PC_MAC				  :	std_ulogic_vector(6 * 8 - 1 downto 0) := x"08BEAC2653F5"; --x"00E04C36102A"; -- EDIMAX x"08BEAC2653F5";

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant BOARD_PORT		  :	std_ulogic_vector(2 * 8 - 1 downto 0) := x"61A9";	-- equal to 25001
	constant PC_PORT			  :	std_ulogic_vector(2 * 8 - 1 downto 0) := x"61A8";	-- equal to 25000
  
	-- Function Prototypes --
	function crc(data_in	    :	std_ulogic_vector(7 downto 0); crc_value : std_ulogic_vector(31 downto 0)) return std_ulogic_vector;
	function IPCS(vIPFrameLen	:	unsigned(15 downto 0); SRC_IP :	std_ulogic_vector(4 * 8 - 1 downto 0); DST_IP	:	std_ulogic_vector(4 * 8 - 1 downto 0)) return std_ulogic_vector;
end package EthernetDefinitions;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
package body EthernetDefinitions is
  function crc(data_in : std_ulogic_vector (7 downto 0); crc_value : std_ulogic_vector(31 downto 0)) return std_ulogic_vector is
    variable crc_out : std_ulogic_vector(31 downto 0);
  begin
    crc_out := crc_value;
    for k in 0 to 7 loop 
      if crc_out(0) /= data_in(k) then
        crc_out:=('0'& crc_out(31 downto 1)) xor X"EDB88320";
      else
        crc_out:=('0'& crc_out(31 downto 1));
      end if;
    end loop;
  return crc_out;
  end crc;

  function IPCS(vIPFrameLen	:	unsigned(15 downto 0); SRC_IP : std_ulogic_vector(4 * 8 - 1 downto 0); DST_IP	:	std_ulogic_vector(4 * 8 - 1 downto 0)) return std_ulogic_vector is 
    variable CS		 : unsigned(16 downto 0) := '0' & x"7910";   -- 16 because of carry bit, x"7910" is the sum of the constant parts of the IP Header: 45 00 ... 80 11 (excluding the length field)
    variable Carry : unsigned(16 downto 0);
  begin
    -- checksum calculation works by 16 bit adding of all words in the IP header, starting at 45 00 ... to (and including the last word of DST_IP, the carry bit is added after every 16 bit addition to keep the result within range
    CS		:= CS + ('0' & vIPFrameLen);
    carry	:= x"0000" & CS(16);
    CS		:= unsigned( '0' & CS(15 downto 0) );
    CS		:= CS + carry;

    CS		:= CS + unsigned(SRC_IP(31 downto 16));
    carry	:= x"0000" & CS(16);
    CS		:= unsigned( '0' & CS(15 downto 0) );
    CS		:= CS + carry;

    CS		:= CS + unsigned(SRC_IP(15 downto 0));
    carry	:= x"0000" & CS(16);
    CS		:= unsigned( '0' & CS(15 downto 0) );
    CS		:= CS + carry;

    CS		:= CS + unsigned(DST_IP(31 downto 16));
    carry	:= x"0000" & CS(16);
    CS		:= unsigned( '0' & CS(15 downto 0) );
    CS		:= CS + carry;

    CS		:= CS + unsigned(DST_IP(15 downto 0));
    carry	:= x"0000" & CS(16);
    CS		:= unsigned( '0' & CS(15 downto 0) );
    CS		:= CS + carry;

  return not std_ulogic_vector(CS(15 downto 0));
  end IPCS;
end EthernetDefinitions;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.StandardDefinitions.all;
use work.EthernetDefinitions.all;
use work.TBSSimVals.all; -- PAYLOAD SIZE
use work.all;

-- DO NOT CHANGE ANYTHING HERE --
package RAMDefinitions is
	-- DO NOT CHANGE THIS --
	constant RX_RAM_DATA_BITWIDTH		:	natural := 8;

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant RX_RAM_ADDR_SIZE				:	natural := N_PAYLOAD_BYTES;
	constant RX_RAM_ADDR_BITWIDTH		:	natural := natural( ceil( log2( real( RX_RAM_ADDR_SIZE ) ) ) );
	
	-- DO NOT CHANGE THIS --
	constant TX_RAM_DATA_BITWIDTH		:	natural := 8;

	-- THE USER CAN CHANGE THIS FOR HIS OWN PURPOSES --
	constant TX_RAM_ADDR_SIZE				:	natural := N_PAYLOAD_BYTES;
	constant TX_RAM_ADDR_BITWIDTH		:	natural := natural( ceil( log2( real( TX_RAM_ADDR_SIZE ) ) ) );
end package RAMDefinitions;
-------------------------------------------------------------------------------