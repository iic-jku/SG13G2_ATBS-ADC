function [Spikes_vhdl, SODIDx_vhdl, ThresholdList_vhdl, Amplitude_vhdl] = ...
    adaptive_threshold_control(f_clk, y, yint, yfract, n_spikes,...
    win_length, cnt_bits, level_of_reg, delta_steps_bw, adc_bw, ...
    clks_p_sample, d_max_lim, d_min_lim, weylmin, weylmax, thmin,...
    thmax, vmin, vmax, deltasteps_max)

  package_prefix = 'AdaptiveCtrl';
  vhdl_src_path='../vhdl/'; % path where the vhdl source code is located
  matlab_src_path='../matlab/'; % path of the Matlab source files
  modelsim_path=''; % path to the Modelsim executable - put to system path

  WriteSimVals(f_clk, y, yint, yfract, d_max_lim, d_min_lim,  thmin, thmax, vmin, vmax, win_length, cnt_bits, level_of_reg,...
    delta_steps_bw, adc_bw, clks_p_sample, weylmin, weylmax, deltasteps_max, vhdl_src_path, package_prefix);
  WriteStdPackage(n_spikes, vhdl_src_path);
% MODELSIM SIMULTAION
  system(['del "' vhdl_src_path 'adaptive_ctrl.txt"']); % remove results of older Modelsim simulations
  cd(vhdl_src_path);
  system([modelsim_path 'vsim -c -do "sim_matlab.do"']);
  cd(matlab_src_path);
      
  str = fileread([vhdl_src_path 'adaptive_ctrl.txt']);   % read entire file into string
  
% READ PREV SIMULATIONS FROM ARCHIVE 
%   str = fileread(['../vhdl/archive/' 'ecg_min2_max2.txt']);   % read entire file into string
%   str = fileread(['../vhdl/archive/' 'ecg_min4_max10.txt']);   % read entire file into string

 
  parts = strtrim(regexp(str, '(\r|\n)+', 'split'));  % split by each line
 
  ThresholdList_vhdl = [];
  Spikes_vhdl = [];
  SODIDx_vhdl = [];
  Amplitude_vhdl = [];

  for i=1:4:length(parts)
    if (length(parts{i})~=0) % string not empty
      Spikes_vhdl(end+1) = str2double(parts{i}(2));
      SODIDx_vhdl(end+1) = str2double(parts{i+1});
      ThresholdList_vhdl(end+1) = frac2dec(parts{i+2});
      Amplitude_vhdl(end+1) = frac2dec(parts{i+3});
    end
  end
  
  %ThresholdList_vhdl = deltasteps.*quantSFIXED(thmin, yint, -yfract, 1, 0);
  Spikes_vhdl(Spikes_vhdl==0) = -1;

end