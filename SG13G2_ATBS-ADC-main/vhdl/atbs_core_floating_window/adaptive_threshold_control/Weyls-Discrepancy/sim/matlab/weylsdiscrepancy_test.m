% Bac-Thesis: Adaptive-Threshold-Based-Sampling
% Author: Anna Werzi
% Date: 05.10.2022
% Matlab Co-Simulation for weyl's discrepancy calculation


%spikes = [+1,-1,+1,-1,-1,-1,-1,-1,-1,+1,+1,+1,-1,-1,-1,-1]; % out of shift register
spikes = [1,-1,1,-1,-1];
%spikes = zeros(16,1);
f_clk = 10e6;
%spikes = ones(16,1)*-1;
%spikes = ones(16,1);
d_max = 16;
d_min = 2;
n_thermo_half = d_max;
level_of_reg = 2; %insert pipeline register after every nth evaluation step


% modelsim result
weylsd_vhdl = weylsdiscrepancy(f_clk, spikes, length(spikes), level_of_reg, d_max, d_min)
% hw simulation in matlab
weylsd_ml = thermometerweyl(spikes, n_thermo_half)
% straight forward software implementation
weylsd = fastweyl(spikes)
