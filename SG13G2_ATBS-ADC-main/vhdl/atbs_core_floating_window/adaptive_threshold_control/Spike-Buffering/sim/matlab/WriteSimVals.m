%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Spike Buffering SimVals and Package Constants
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function WriteSimVals(f_clk, data_s16_wZeros, win_length, cnt_bits, folder, package_prefix) 
  
  dataset_length = length(data_s16_wZeros);
  filename = sprintf('/%sSimVals_p.vhd',package_prefix);
  f = fopen([folder filename],'w');
  % package
  fprintf(f,'library ieee;\n');
  fprintf(f,'use ieee.std_logic_1164.all;\n');
  fprintf(f,'use ieee.numeric_std.all;\n');
  fprintf(f,'use ieee.math_real.all;\n');

  fprintf(f,'package %sSimVals is\n', package_prefix);

  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'--SIMULATION CONSTANTS\n');
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'  constant CLK_FREQ: natural := %u;\n', f_clk);
  fprintf(f,'  constant WIN_LENGTH: natural := %u;\n', win_length);
  fprintf(f,'  constant CNT_BITS : natural := %u;\n', cnt_bits);
  fprintf(f,'  constant DATA_LENGTH : natural := %u;\n', dataset_length);
  fprintf(f,'  type T_SIM_SPIKES is array (0 to DATA_LENGTH - 1) of signed(CNT_BITS downto 0);\n');
  fprintf(f,'  constant SIM_SPIKES : T_SIM_SPIKES := (\n', dataset_length);
  
  for i = 1:dataset_length
    % using dec2frac, since dec2bin shows wrong behaviour for negative
    % numbers with a desired size in a range between 8 and 16 bit
    fprintf(f,'"%s"',dec2frac(data_s16_wZeros(i),cnt_bits+1,0));
    if i < dataset_length 
      fprintf(f,', -- %f \n', data_s16_wZeros(i));
    else 
      fprintf(f,');-- %f \n\n\n', data_s16_wZeros(i));
    end
  end
  
  fprintf(f,'end package %sSimVals;\n',package_prefix);
  
  fclose(f);

end
