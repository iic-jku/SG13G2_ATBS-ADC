% Author: Simon Dorrer
% Last Modified: 25.07.2024
% Description: Import original ECG signal data, scale and offset shift it.
% Interpolate and quantize ECG signal. Export .csv and .rdf for Rigol DG1022A AWG.
% Plot all results and save them as .fig, .svg and .pdf.
% =====================================================

close all;
clear all;
clc;

%% Latex Settings
set(groot, 'defaultLineLineWidth', 1.5)
set(groot, 'DefaultAxesTitle', 'latex');
set(groot, 'defaultTextInterpreter', 'latex');
set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
set(groot, 'defaultLegendInterpreter', 'latex');
% =====================================================

%% USER CONSTANTS
Vdd = 3.3; % V
% v_max = 2.4; % Max. limit of analog hardware
% v_min = 0.3; % Min. limit of analog hardware
v_max = 3.15; % Max. limit of analog hardware
v_min = 0.15; % Min. limit of analog hardware
% =====================================================

%% Import original ECG signal
% Original ECG signal lies in the range of [-0.5, 0.5].
ecg_signal = importdata('ecg_data_raw.csv')';
% =====================================================

%% Scale ECG signal to appropriate voltage range
% Find minimum
ecg_min = min(ecg_signal);

% Find maximum
ecg_max = max(ecg_signal);

% Get max. Peak-Peak value of ECG
ecg_pp = ecg_max - ecg_min;

% Get max. Peak-Peak value of voltage boundaries
v_pp = v_max - v_min;

% Calculate scale factor
scale_factor = v_pp / ecg_pp;

ecg_signal_scaled = ecg_signal * scale_factor;
% =====================================================

%% Shift ECG signal up to Vdd / 2
v_offset = v_min - min(ecg_signal_scaled);
ecg_data_offset = ecg_signal_scaled + v_offset;
ecg_data_short = ecg_data_offset;
% =====================================================

%% Exporting of ECG signal as .csv
writematrix(ecg_data_short', 'data/ecg_data.csv')

% For Keysight AWG's one can use this "ecg_data.csv" and load
% it to the AWG with a USB drive.
% Guide: https://www.keysight.com/us/en/assets/7018-05973/application-notes/5992-2673.pdf
% Keysight 33600A AWG Settings
% from 0.15V to 3.15V
% f = 1Hz (60bpm)
% amplitude = 3Vpp
% offset = 0Vdc
% =====================================================

%% Exporting of ECG signal as .rdf
% .rdf file can be loaded into the Rigol DG1022A Arbitrary Waveform Generator
% http://practicingelectronics.com/articles/article-100001/article.php

% Rigol DG1022A AWG needs 4096 samples in time.
N = 4096;
OSR = N / length(ecg_data_short);
ecg_data_interp = interp(ecg_data_short, OSR);

% Rigol DG1022A AWG uses 14-bit quantization levels, resulting into 0 to 16383 (0 to 2^14-1).
% The values are stored as 16-bit integers.
quant_scale = (2^14-1) / v_max;
ecg_signal_quant = uint16(ecg_data_interp * quant_scale);

fid = fopen('data/ecg_data.rdf', 'w');              % Open the file for writing    
fwrite(fid, ecg_signal_quant, 'uint16', 'ieee-le'); % Write as 16-bit values, little endian
fclose(fid);                                        % Close file

% Rigol DG1022A AWG Settings
% from 0.3V to 2.4V
% f = 1Hz (60bpm)
% amplitude = 2.3Vpp
% offset = 1.3Vdc
% =====================================================

%% Plotting of ECG signal
k = 0:N/OSR-1;
n = 0:N-1;

figure(1);
plot(k, ecg_signal);
hold on;
plot(k, ecg_data_short);
plot(n, ecg_data_interp);
grid on;
xlabel('Samples');
ylabel('Amplitude (V)');
legend('original', 'scaled + offset', 'interpolated');
xlim([0 N-1]);
savefig(sprintf('figures/ecg_interp.fig'));

figure(2);
plot(n, ecg_signal_quant);
grid on;
xlabel('Samples');
ylabel('Quantization Levels');
xlim([0 N-1]);
savefig(sprintf('figures/ecg_quant.fig'));
% =====================================================

%% Export .csv for pgfplots
data_table = table(k.', ecg_signal.', ecg_signal_scaled.', ecg_data_offset.', 'VariableNames', {'k', 'ecg_signal', 'ecg_signal_scaled', 'ecg_data_offset'});
writetable(data_table, 'figures/generate_ecg_k.csv', 'WriteVariableNames', true)

data_table = table(n.', ecg_data_interp.', ecg_signal_quant.', 'VariableNames', {'n', 'ecg_data_interp', 'ecg_signal_quant'});
writetable(data_table, 'figures/generate_ecg_n.csv', 'WriteVariableNames', true)
% =====================================================

%% Save workspace
save('data/ecg_data.mat');
% =====================================================