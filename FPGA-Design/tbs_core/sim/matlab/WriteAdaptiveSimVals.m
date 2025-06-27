% =====================================================
% Adaptive SimVals and Package Constants
% =====================================================
function WriteAdaptiveSimVals(level_of_reg, vhdl_src_path, package_prefix) 
    
    filename = sprintf('/%sSimVals_p.vhd', package_prefix);
    f = fopen([vhdl_src_path filename], 'w');
    
    % package content
    fprintf(f, '-------------------------------------------------------------------------------------------- \n');
    fprintf(f, '-- Author: Anna Werzi \n');
    fprintf(f, '-- Author: Simon Dorrer \n');
    fprintf(f, '-- Last Modified: 11.10.2024 \n');
    fprintf(f, '-- Description: Adaptive SimVals and Package Constants created by Matlab. \n');
    fprintf(f, '-------------------------------------------------------------------------------------------- \n\n');

    fprintf(f, 'library ieee; \n');
    fprintf(f, 'use ieee.std_logic_1164.all; \n');
    fprintf(f, 'use ieee.numeric_std.all; \n');
    fprintf(f, 'use ieee.math_real.all; \n\n');

    fprintf(f, 'library work; \n');
    fprintf(f, 'use work.TBSSimVals.all; \n');
    fprintf(f, 'use work.all; \n\n');
    
    fprintf(f, 'package %sSimVals is \n', package_prefix);
    fprintf(f, '  -- CONSTANTS \n');
    fprintf(f, '  -- ===================================================== \n');
    fprintf(f, '  constant LEVEL_OF_REG : natural := %u; \n', level_of_reg);
    fprintf(f, '  -- ===================================================== \n');

    fprintf(f, 'end package %sSimVals;', package_prefix);
    
    fclose(f);
end