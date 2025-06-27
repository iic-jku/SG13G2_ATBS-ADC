%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Weyls Discrepancy SimVals and Package Constants
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function WriteSimVals(f_clk, spikes, n_spikes, level_of_reg, d_max, d_min, folder, package_prefix) 
  
  filename = sprintf('%sSimVals_p.vhd',package_prefix);
  f = fopen([folder filename],'w');
  % package
  fprintf(f,'library ieee;\n');
  fprintf(f,'use ieee.std_logic_1164.all;\n');
  fprintf(f,'use ieee.numeric_std.all;\n');
  fprintf(f,'use ieee.math_real.all;\n');
  fprintf(f,'use work.adaptive_std.all;\n');
  
  fprintf(f,'package %sSimVals is\n', package_prefix);

  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'--CONSTANTS\n');
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'  constant D_MAX: natural := %u;\n', d_max);
  fprintf(f,'  constant D_MIN: natural := %u;\n', d_min);
  fprintf(f,'  constant LEVEL_OF_REG: natural := %u;\n', level_of_reg);
  fprintf(f,'  constant WEYLSD_BITS: natural := natural(ceil(log2(real(D_MAX+1))));\n');
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'--SIMULATION CONSTANTS\n');
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'  constant CLK_FREQ: natural := %u;\n', f_clk);
  fprintf(f,'  constant SPIKES : T_SPIKES := (\n');
  
  for i = n_spikes:-1:1
      
    if spikes(i) == -1
        fprintf(f,'"%s"','10');
    elseif spikes(i) == 1
        fprintf(f,'"%s"','01');
    else
        fprintf(f,'"%s"','00');
    end
    
    if i > 1 
      fprintf(f,', -- %d \n', spikes(i));
    else 
      fprintf(f,');-- %d \n\n\n', spikes(i));
    end
    
  end   
 
  
  fprintf(f,'end package %sSimVals;\n',package_prefix);
  
  fclose(f);

end
