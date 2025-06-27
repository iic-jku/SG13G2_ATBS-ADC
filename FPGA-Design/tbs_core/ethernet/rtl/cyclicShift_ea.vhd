-- =====================================================
-- Author: Manuel Feindert
-- Last Modified: 10.08.2023
-- =====================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

library work;
use work.EthernetDefinitions.all;
use work.all;

entity cyclicShift is
  generic(
    SHIFT_SIZE			 : natural;							             -- Header Size that gets stored
    IP_FRAME_LENGTH	 : std_ulogic_vector(15 downto 0);	 -- Refer to EthernetTX
    UDP_FRAME_LENGTH : std_ulogic_vector(15 downto 0);	 -- Refer to EthernetTX
    IP_CS_H				   : std_ulogic_vector(7 downto 0);	   -- Refer to EthernetTX
    IP_CS_L				   : std_ulogic_vector(7 downto 0)		 -- Refer to EthernetTX
  );
  port(
    rst_i				     : in std_ulogic;						         -- Reset Signal
    clk_i				     : in std_ulogic;						         -- Clock Signal
    shift_enable_i	 : in std_ulogic;						         -- Enables / Disabled the Shift Register
    data_o				   : out std_ulogic_vector(7 downto 0) -- Current data[0]
  );
end entity cyclicShift;

architecture rtl of cyclicShift is 

type TShiftArray is array (SHIFT_SIZE - 1 downto 0) of std_ulogic_vector(7 downto 0);

-- Header Frame which gets initialised with a reset
constant resetShift	:	TShiftArray := (
	-- Preamble --
	0 => x"55",
	1 => x"55",
	2 => x"55",
	3 => x"55",
	4 => x"55",
	5 => x"55",
	6 => x"55",
	7 => x"D5",
	-- Ethernet Header --
	8 => PC_MAC(47 downto 40),				    -- 00
	9 => PC_MAC(39 downto 32),				    -- E0
	10 => PC_MAC(31 downto 24),				    -- 4C
	11 => PC_MAC(23 downto 16),				    -- 36
	12 => PC_MAC(15 downto 8),				    -- 10
	13 => PC_MAC(7 downto 0),				      -- 2A
	14 => BOARD_MAC(47 downto 40),			  -- 00
	15 => BOARD_MAC(39 downto 32),			  -- 12
	16 => BOARD_MAC(31 downto 24),			  -- 34
	17 => BOARD_MAC(23 downto 16),			  -- 56
	18 => BOARD_MAC(15 downto 8),			    -- 78
	19 => BOARD_MAC(7 downto 0),			    -- 90
	-- IP Header --
	20 => x"08",
	21 => x"00",
	22 => x"45",
	23 => x"00",
	24 => IP_FRAME_LENGTH(15 downto 8),		-- 00
	25 => IP_FRAME_LENGTH(7 downto 0),		-- 2E
	26 => x"B3",
	27 => x"FE",
	28 => x"00",
	29 => x"00",
	30 => x"80",
	31 => x"11",
	32 => IP_CS_H, 							          -- 02
	33 => IP_CS_L, 							          -- B2
	34 => BOARD_IP(31 downto 24),			    -- C0
	35 => BOARD_IP(23 downto 16),			    -- A8
	36 => BOARD_IP(15 downto 8),			    -- 01
	37 => BOARD_IP(7 downto 0),				    -- 64
	38 => PC_IP(31 downto 24),				    -- C0
	39 => PC_IP(23 downto 16),				    -- A8
	40 => PC_IP(15 downto 8),				      -- 01
	41 => PC_IP(7 downto 0),				      -- 5A
	-- UDP Header --
	42 => BOARD_PORT(15 downto 8),			  -- 61
	43 => BOARD_PORT(7 downto 0),			    -- A9
	44 => PC_PORT(15 downto 8),				    -- 61
	45 => PC_PORT(7 downto 0),				    -- A8
	46 => UDP_FRAME_LENGTH(15 downto 8),	-- 00
	47 => UDP_FRAME_LENGTH(7 downto 0),		-- 1A
	48 => x"00",
	49 => x"00"
);

signal shiftRegister		  :	TShiftArray;
signal next_shiftRegister	:	TShiftArray;

begin

  reg_proc: process(rst_i, clk_i) is
  begin
    if rst_i = '1' then
      -- Initialise the shift register
      shiftRegister <= resetShift;
    elsif rising_edge(clk_i) then
      -- Enable / Disable Shifting
      if shift_enable_i = '1' then
        shiftRegister <= next_shiftRegister;
      end if;
    end if;
  end process reg_proc;
  -- =====================================================
  
  shift_logic: process(shiftRegister) is
  begin
    -- default assignment
    next_shiftRegister <= shiftRegister;
    next_shiftRegister(SHIFT_SIZE - 1) <= shiftRegister(0);
    
    for i in 0 to SHIFT_SIZE - 2 loop 
      next_shiftRegister(i) <= shiftRegister(i + 1);
    end loop;
  end process shift_logic;
  -- =====================================================
  
  -- Concurrent output statements
  data_o <= shiftRegister(0);
  -- =====================================================
end architecture rtl;