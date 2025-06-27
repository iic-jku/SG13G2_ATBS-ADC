% =====================================================
% Adaptive TBS standard package
% =====================================================
function WriteAdaptiveStdPackage(buf_size, vhdl_src_path) 

    f = fopen([vhdl_src_path 'adaptive_std_p.vhd'], 'w');
    
    n_spikes = buf_size;

    % package content
    fprintf(f, '-------------------------------------------------------------------------------------------- \n');
    fprintf(f, '-- Author: Anna Werzi \n');
    fprintf(f, '-- Last Modified: 11.10.2024 \n');
    fprintf(f, '-- Description: Adaptive TBS standard package created by Matlab. \n');
    fprintf(f, '-------------------------------------------------------------------------------------------- \n\n');
    
    fprintf(f, 'library ieee; \n');
    fprintf(f, 'use ieee.std_logic_1164.all; \n');
    fprintf(f, 'use ieee.numeric_std.all; \n');
    fprintf(f, 'use ieee.math_real.all; \n\n');
    
    
    fprintf(f, 'package adaptive_std is \n');
    fprintf(f, '  -- CONSTANTS \n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant N_SPIKES : natural := %u; \n', n_spikes);
    fprintf(f, '  -- ===================================================== \n\n');
    
    fprintf(f, '  -- TYPE DEFINITIONS \n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  type T_SPIKES is array (N_SPIKES - 1 downto 0) of std_ulogic_vector(1 downto 0); \n');
    fprintf(f, '  -- ===================================================== \n');
    
    fprintf(f, 'end package adaptive_std;');
    
    fclose(f);
end