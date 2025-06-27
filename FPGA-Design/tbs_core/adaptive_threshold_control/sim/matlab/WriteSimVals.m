%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Adaptive SimVals and Package Constants
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function WriteSimVals(f_clk, y, yint, yfract, d_max_lim, d_min_lim, thmin, thmax, vmin, vmax, win_length, cnt_bits, level_of_reg,...
    delta_steps_bw, adc_bw, clks_p_sample, weylmin, weylmax, deltasteps_max, folder, package_prefix) 
  
  dataset_length = length(y);
  filename = sprintf('/%sSimVals_p.vhd', package_prefix);
  f = fopen([folder filename], 'w');
  
  % package
  fprintf(f, 'library ieee; \n');
  fprintf(f, 'use ieee.std_logic_1164.all; \n');
  fprintf(f, 'use ieee.numeric_std.all; \n');
  fprintf(f, 'use ieee.math_real.all; \n');
  fprintf(f, 'library ieee_proposed; \n');
  fprintf(f, 'use ieee_proposed.fixed_float_types.all; \n');
  fprintf(f, 'use ieee_proposed.fixed_pkg.all; \n');
  
  fprintf(f, 'package %sSimVals is \n', package_prefix);

  fprintf(f, '-------------------------------------------------------- \n');
  fprintf(f, '--SIMULATION CONSTANTS \n');
  fprintf(f, '-------------------------------------------------------- \n');
  fprintf(f, '  constant D_MAX_LIM: natural := %u; \n', d_max_lim);
  fprintf(f, '  constant D_MIN_LIM: natural := %u; \n', d_min_lim);
  fprintf(f, '  constant WEYLSD_BITS: natural := natural(ceil(log2(real(2 * (D_MAX_LIM + 1))))); \n');
  fprintf(f, '  constant WIN_LENGTH: natural := %u; \n', win_length);
  fprintf(f, '  constant LEVEL_OF_REG: natural := %u; \n', level_of_reg);
  fprintf(f, '  constant MAX_DELTA_STEPS: natural := %u; \n', deltasteps_max);
  fprintf(f, '  constant VOLT_INT: natural := %u; \n', yint - 1);
  fprintf(f, '  constant VOLT_FRACT: natural := %u; \n', yfract);
  fprintf(f, '  constant THRESHOLD_MIN: sfixed(VOLT_INT downto -VOLT_FRACT) := "%s"; -- %f \n', dec2frac(thmin, yint, yfract), thmin);
  fprintf(f, '  constant THRESHOLD_MAX: sfixed(VOLT_INT downto -VOLT_FRACT) := "%s"; -- %f \n', dec2frac(thmax, yint, yfract), thmax);
  fprintf(f, '  constant V_MIN: sfixed(VOLT_INT downto -VOLT_FRACT) := "%s"; -- %f \n', dec2frac(vmin, yint, yfract), vmin);
  fprintf(f, '  constant V_MAX: sfixed(VOLT_INT downto -VOLT_FRACT) := "%s"; -- %f \n', dec2frac(vmax, yint, yfract), vmax);

  fprintf(f, '  constant CLK_FREQ : natural := %u; \n', f_clk);
  fprintf(f, '  constant CNT_BITS : natural := %u; \n', cnt_bits);
  fprintf(f, '  constant DELTA_STEPS_BW : natural := %u; \n', delta_steps_bw);
  fprintf(f, '  constant ADC_BITWIDTH : natural := %u; \n', adc_bw);
  fprintf(f, '  constant WEYL_MIN : natural := %u; \n', weylmin);
  fprintf(f, '  constant WEYL_MAX : natural := %u; \n', weylmax);

  fprintf(f, '  constant DATA_LENGTH : natural := %u; \n', dataset_length);
  fprintf(f, '  constant CLKS_P_SAMPLE : natural := %u; \n', clks_p_sample);
  fprintf(f, '  type T_SIM_SPIKES is array (0 to DATA_LENGTH - 1) of sfixed(VOLT_INT downto -VOLT_FRACT); \n');
  fprintf(f, '  constant SIM_SPIKES : T_SIM_SPIKES := (\n');
  
  for i = 1:dataset_length
    % using dec2frac, since dec2bin shows wrong behaviour for negative
    % numbers with a desired size in a range between 8 and 16 bit
    fprintf(f, '"%s"',dec2frac(y(i), yint, yfract));
    if i < dataset_length 
      fprintf(f, ', -- %f \n', y(i));
    else 
      fprintf(f, ');-- %f \n\n\n', y(i));
    end
  end
  
  fprintf(f, 'end package %sSimVals; \n',package_prefix);
  
  fclose(f);
end