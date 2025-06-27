
  tsample = .1e-4; % time resolution of input signal y
  % load ECG
  load long_ecg
  y = y(1:10:end);        % remove upsampling in ECG
  slice = 9800:9900;
  % y = y(1:10:1000);
  [~,y_min_idx] = min( abs(y(slice) ));
  y = y(slice+y_min_idx);
  analog_OS = 4096;
  % analog_OS = 512;

  y_analog_idx = 1:1/analog_OS:length(y)-1/analog_OS;
  y_analog = spline(1:length(y), y, y_analog_idx);
  y = y_analog;
  y = normalize(y,inf);
  t = 1:length(y);