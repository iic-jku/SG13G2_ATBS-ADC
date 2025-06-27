function [spike_reg_fill_cnt]=spikes_shiftreg(f_clk, data_s16_wZeros, buf_size, win_length, cnt_bits)

  package_prefix = 'SpikesShiftReg';
  vhdl_src_path='../vhdl/'; % path where the vhdl source code is located
  matlab_src_path='../matlab/'; % path of the Matlab source files
  modelsim_path=''; % path to the Modelsim executable - put to system path

  WriteSimVals(f_clk, data_s16_wZeros, win_length, cnt_bits, vhdl_src_path, package_prefix)
  atbs_vhdl_src_path='../../sim/vhdl/'; % path where the vhdl source code of the overall atbs project is located
  addpath('../../../sim/matlab'); % path to WriteStdPackage
  WriteStdPackage(buf_size, atbs_vhdl_src_path)
  
  system(['del "' vhdl_src_path 'spikesshiftreg.txt"']); % remove results of older Modelsim simulations
  cd(vhdl_src_path);
  system([modelsim_path 'vsim -c -do "sim_matlab.do"']);
  cd(matlab_src_path);
  
  str = fileread([vhdl_src_path 'spikesshiftreg.txt']);   % read entire file into string
  parts = strtrim(regexp( str, '(\r|\n)+', 'split'));  % split by each line
  

 %spike_reg_content(end + 1) = cellfun(@str2num,strsplit(parts{i},','),'un',0).';

  spike_reg_fill_cnt = [];
  for i=1:length(parts)
    if (length(parts{i}) ~= 0) % string not empty
      spike_reg_fill_cnt(end+1)= str2double(parts{i});
    end
  end
  
  
    
end