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
use work.TBSSimVals.all;
use work.all;

entity ethernet_board is
  port(
    -- System Clocks and Reset
    clk_i           : in std_ulogic;
    rst_n_i	 	      : in std_ulogic;
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
end entity ethernet_board;

architecture rtl of ethernet_board is 

-- Inverted Logic for button and reset input ('1' not pressed, '0' pressed)
signal rst				  : std_ulogic;
    
begin

	-- Inverting Input Logic
	rst <= not rst_n_i;
  
  -- Embed Ethernet
	ethernet_0: entity ethernet(rtl)
	generic map(    
    N_PAYLOAD_BYTES => N_PAYLOAD_BYTES
  )
  port map(
    -- System Clocks and Reset
    clk_i           => clk_i,
    rst_i	 	        => rst,
    rx_clk_i 	      => rx_clk_i,
    tx_clk_i 	      => tx_clk_i,
    phy_rst_o	      => phy_rst_o,
    
    -- Transmit Inputs
    a_data_i        => a_data_i,
    a_data_strobe_i	=> a_data_strobe_i,
    tx_can_write_o	=> tx_can_write_o,
      
    -- Transmit Outputs
    tx_data_o	      => tx_data_o,
    tx_en_o		      => tx_en_o,
    
    -- Receive Inputs
    rx_data_i	      => rx_data_i,
    rx_dv_i		      => rx_dv_i,
    rx_err_i	      => rx_err_i
  );
	-- =====================================================
end architecture rtl;