function [welysd]=buffer_discrepancy(data_s16_wZeros, buf_size, win_length, cnt_bits, d_max, d_min, level_of_reg)

  package_prefix = 'BufferDiscrepancy';
  vhdl_src_path='../vhdl/'; % path where the vhdl source code is located
  matlab_src_path='../matlab/'; % path of the Matlab source files
  modelsim_path=''; % path to the Modelsim executable - put to system path

  WriteSimVals(data_s16_wZeros, win_length, cnt_bits, level_of_reg, vhdl_src_path, package_prefix);
  WriteStdPackage(buf_size, d_max, d_min, vhdl_src_path);
  system(['del "' vhdl_src_path 'bufferdiscrepancy.txt"']); % remove results of older Modelsim simulations
  cd(vhdl_src_path);
  system([modelsim_path 'vsim -c -do "sim_matlab.do"']);
  cd(matlab_src_path);
  
  str = fileread([vhdl_src_path 'bufferdiscrepancy.txt']);   % read entire file into string
  parts = strtrim(regexp(str, '(\r|\n)+', 'split'));  % split by each line
  
  welysd = [];
  for i=1:length(parts)
    if (length(parts{i})~=0) % string not empty
      welysd(end+1) = str2double(parts{i});
    end
  end
    
end