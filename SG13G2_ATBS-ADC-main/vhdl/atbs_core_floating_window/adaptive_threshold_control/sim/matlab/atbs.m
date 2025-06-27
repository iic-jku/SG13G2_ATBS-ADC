% Authors:
% Anna Werzi, AK124296

close all;
clear all;


load('..\..\..\sim\matlab\tbs.mat'); % get main TBS SimVals
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% USER CONSTANTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
time_win = 200e-6; % s
d_max = 16; % FPGA constants: limits for adjusting weylmin, weylmax on runtime
d_min = 2;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DERIVED CONSTANTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
win_length = round(f_clk*time_win); % in clock cycles
buf_size = d_max;
level_of_reg = buf_size+1; %insert pipeline register after every nth (n = d_max) evaluation step (none - d_max + 1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% WRITE SIM VALS PACKAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
package_prefix = 'AdaptiveCtrl';
vhdl_src_path ='../vhdl/'; % path where the vhdl source code is located

WriteDesignVals(win_length, level_of_reg, vhdl_src_path, package_prefix);

WriteStdPackage(buf_size, vhdl_src_path);

