% Bac-Thesis: Adaptive-th-Based-Sampling
% Author: Michael Lunglmayr, Anna Werzi
% Date: 01.02.2023
% Adapted according to FPGA implementation

function [Spikes, SpikeIdx, ThresholdList, SpikesInWindow, AmplitudeList] = SODConstWeyl (y, yint, yfract, th, thmin, thmax, weylmin, weylmax, vmax, windowlen, B)
% function [Spikes, SpikeIdx] = SOD (y, th, thmin, thmax, weylmin, weylmax, windowlen)

th = quantSFIXED(th, yint, -yfract, 1, 0);
thmin = quantSFIXED(thmin, yint, -yfract, 1, 0);
thmax = quantSFIXED(thmax, yint, -yfract, 1, 0);
vmax = quantSFIXED(vmax, yint, -yfract, 1, 0);
% th = deltasteps * thmin
deltasteps = 1;
% steps to boundaries
steps_to_upper = 2^B/2-2;
steps_to_lower = 2^B/2;

y_upper = quantSFIXED(2*th, yint, -yfract, 1, 0);
y_lower = 0; 
CurrentSpike = 0;
widenwindow = 0;
narrowwindow = 0;

Spikes = [];
SpikeIdx = [];
SpikeWindow = [];
SpikeIdxWindow = [];
SpikesInWindow = [];

ThresholdList = [];
AmplitudeList = [];

for i=1:length(y)
  
  if steps_to_upper == 0
    disp('a')
  end
  yq = quantSFIXED(y(i), yint, -yfract, 1, 0); 
  % spike_detection
  if (steps_to_upper ~= 0) && (yq > y_upper)
    CurrentSpike = 1;
    AmplitudeList(end+1) = y_upper;
  elseif (steps_to_lower ~= 0) && (yq < y_lower)
    CurrentSpike = -1;
    AmplitudeList(end+1) = y_lower;
  end
        
  if CurrentSpike ~= 0
    % buffer input for next weyl calculation

    Spikes(end + 1) = CurrentSpike;
    SpikeIdx(end + 1) = i;
    SpikeIdxWindow(end + 1) = i;
    SpikeWindow(end + 1) = CurrentSpike;
    ThresholdList(end + 1) = th;
  
    % calc discrepancy including the current spike
    %if i >= windowlen
      lasttimestamptoconsider = i - windowlen;
      
      while ~isempty(SpikeIdxWindow) && (SpikeIdxWindow(1) < lasttimestamptoconsider)
        SpikeIdxWindow(1) = [];   % remove times that are ouside of window
        SpikeWindow(1) = [];
      end
   
      w = fastweyl(SpikeWindow); % welysd without current spike
      
      prev_th = th;
      prev_deltasteps = deltasteps;
      % calculate new th
      if (th < thmax) && (w > weylmax)     % if w too large ==> make th larger
          th = quantSFIXED(th*2, yint, -yfract, 1, 0);
          deltasteps = deltasteps*2;
          widenwindow = 1;
      elseif (th > thmin) && (w < weylmin)
          th = quantSFIXED(th/2, yint, -yfract, 1, 0);
          deltasteps = deltasteps/2;
          delta_sum = quantSFIXED(prev_th + th, yint, -yfract, 1, 0);
          deltasteps_sum = prev_deltasteps + deltasteps;
          narrowwindow = 1;
      end
    

      % clipping
      % check if upper/lower voltage boundaries are exceeded
      adaption = widenwindow | narrowwindow;
      if (steps_to_upper < deltasteps) && (CurrentSpike == 1)
          th_c = quantSFIXED(vmax - y_upper, yint, -yfract, 1, 0);
          deltasteps_c = steps_to_upper;
          if adaption
            % no adaption due to clipping
            th = prev_th;
            adaption = 0;
          end
      elseif (steps_to_lower < deltasteps) && (CurrentSpike == -1)
          th_c = quantSFIXED(vmax + y_lower, yint, -yfract, 1, 0);
          deltasteps_c = steps_to_lower;
          % no adaption due to clipping
          if adaption
            th = prev_th;
            adaption = 0;
          end
      else
          th_c = th;
          deltasteps_c = deltasteps;
      end      

      % widen window
      delta_v_lower = th_c;
      delta_v_upper = th_c;
      deltasteps_upper = deltasteps_c;
      deltasteps_lower = deltasteps_c;

      if widenwindow && adaption
          if CurrentSpike == 1 
            delta_v_lower = 0;
            deltasteps_lower = 0;
          else
            delta_v_upper = 0; 
            deltasteps_upper = 0;
          end
      elseif narrowwindow && adaption
           % narrow window
          if CurrentSpike == 1 
            delta_v_lower = delta_sum;
            deltasteps_lower = deltasteps_sum;
          else
            delta_v_upper = delta_sum;
            deltasteps_upper = deltasteps_sum;
          end
      end

      y_upper = quantSFIXED(y_upper + CurrentSpike*delta_v_upper, yint, -yfract, 1, 0);
      y_lower = quantSFIXED(y_lower + CurrentSpike*delta_v_lower, yint, -yfract, 1, 0);

      steps_to_upper = steps_to_upper + CurrentSpike*deltasteps_upper;
      steps_to_lower = steps_to_lower - CurrentSpike*deltasteps_lower;

      CurrentSpike = 0;
      widenwindow = 0;
      narrowwindow = 0;
  end
  
end
disp('end')
end