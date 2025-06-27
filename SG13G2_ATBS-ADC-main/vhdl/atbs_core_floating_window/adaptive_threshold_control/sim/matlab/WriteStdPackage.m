%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Adaptive TBS standard package
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function WriteStdPackage(n_spikes, folder) 

  f = fopen([folder 'adaptive_std_p.vhd'],'w');
  
  % package
  fprintf(f,'library ieee;\n');
  fprintf(f,'use ieee.std_logic_1164.all;\n');
  fprintf(f,'use ieee.numeric_std.all;\n');
  fprintf(f,'use ieee.math_real.all;\n');
  fprintf(f,'library ieee_proposed;\n');
  fprintf(f,'use ieee_proposed.fixed_float_types.all;\n');
  fprintf(f,'use ieee_proposed.fixed_pkg.all;\n');
  
  
  fprintf(f,'package adaptive_std is\n');

  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'--SIMULATION CONSTANTS\n');
  fprintf(f,'--------------------------------------------------------\n');
  % use independent simulation values
  fprintf(f,'  constant N_SPIKES: natural := %u;\n', n_spikes);
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'--TYPE DEFINITIONS\n');
  fprintf(f,'--------------------------------------------------------\n');
  fprintf(f,'  type T_SPIKES is array (N_SPIKES - 1 downto 0) of std_ulogic_vector(1 downto 0);\n');
  
  fprintf(f,'end package adaptive_std;\n');
  
  fclose(f);

end
