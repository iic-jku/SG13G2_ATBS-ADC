function [weylsd]=weylsdiscrepancy(f_clk, spikes, n_spikes, level_of_reg, d_max, d_min)

  package_prefix = 'WeylsDiscrepancy';
  vhdl_src_path='../vhdl/'; % path where the vhdl source code is located
  matlab_src_path='../matlab/'; % path of the Matlab source files
  modelsim_path=''; % path to the Modelsim executable - put to system path

  WriteSimVals(f_clk, spikes, n_spikes, level_of_reg, d_max, d_min, vhdl_src_path, package_prefix)
  atbs_vhdl_src_path='../../sim/vhdl/'; % path where the vhdl source code of the overall atbs project is located
  addpath('../../../sim/matlab'); % path to WriteStdPackage
  WriteStdPackage(n_spikes, atbs_vhdl_src_path)
  
  system(['del "' vhdl_src_path 'weylsd.txt"']); % remove results of older Modelsim simulations
  cd(vhdl_src_path);
  system([modelsim_path 'vsim -c -do "sim_matlab.do"']);
  cd(matlab_src_path);
  
  str = fileread([vhdl_src_path 'weylsd.txt']);   % read entire file into string
  
  weylsd = str2num(str);
  
end