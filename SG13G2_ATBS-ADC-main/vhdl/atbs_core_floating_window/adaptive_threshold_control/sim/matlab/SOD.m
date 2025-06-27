function [Spikes, SpikeIdx] = SOD (y, threshold)

y_level = threshold; %c_upper = 2*threshold, c_lower = 0 (nach threshold)
Spikes = [];
SpikeIdx = [];

for i=1:length(y)
  diff =y(i)-y_level;
  if abs(diff) > threshold
    CurrentSpike = sign(diff);
    Spikes(end+1) = CurrentSpike;
    SpikeIdx(end+1) = i;
    y_level = y_level+CurrentSpike*threshold;
  end
end