-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Mar 25 12:07:17 2025
-- Host        : SimiBook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Simon Dorrer/JKU-Linz/Master/Semester
--               2/Master-Thesis/FPGA-Design/tbs_core/vivado/tbs_core_board/tbs_core_board.gen/sources_1/ip/pll_8MHz/pll_8MHz_stub.vhdl}
-- Design      : pll_8MHz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s25ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll_8MHz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end pll_8MHz;

architecture stub of pll_8MHz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
