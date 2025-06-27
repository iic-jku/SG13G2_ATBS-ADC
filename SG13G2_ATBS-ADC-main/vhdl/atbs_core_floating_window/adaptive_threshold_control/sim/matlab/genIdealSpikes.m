% Bac-Thesis: adaptive-threshold based sampling
% Author: Anna Werzi
% Date: 10.10.2022
% Description: This function generates ideal spikes of a sine wave

function [spikes] = genIdealSpikes(VCC, adc_bitwidth, counter_bits, clk_freq, f, vpp)

% Signal Constants
T = 1/f; % in s
N = clk_freq/f; % Samples per Period
t = linspace(0, T, N+1);
signal = vpp/2 * sin(2*pi*f*t);

of_time = 2^counter_bits-1; % time at counter overflow
of_count = 1;
delta_v = VCC/2^adc_bitwidth; % minimal threshold for polyfit
spikes = [];

% Starting conditions after Init
lowerv = 0;
upperv = 2*delta_v;
% =============================

% Generate spikes
for i = 1 : length(t)
  currv = signal(i);
  currt = t(i)*clk_freq - of_time*(of_count-1);
  
  if currv > upperv
    spikes(end+1) = currt;
    upperv = upperv + delta_v;
    lowerv = lowerv + delta_v;
  elseif currv < lowerv
    spikes(end+1) = -currt; % signed as unit16
    upperv = upperv - delta_v;
    lowerv = lowerv - delta_v;
  elseif currt >= of_time
    of_count = of_count + 1;
    spikes(end+1) = 0;
  end
end
spikes = spikes(2:end);

end