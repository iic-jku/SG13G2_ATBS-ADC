// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Mar 25 13:00:34 2025
// Host        : SimiBook running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Simon Dorrer/JKU-Linz/Master/Semester
//               2/Master-Thesis/FPGA-Design/tbs_core/vivado/tbs_core_ethernet_board/tbs_core_ethernet_board.gen/sources_1/ip/pll_50MHz/pll_50MHz_stub.v}
// Design      : pll_50MHz
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25ftgb196-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll_50MHz(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule
