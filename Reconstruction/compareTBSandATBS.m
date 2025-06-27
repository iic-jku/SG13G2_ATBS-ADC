% Author: Simon Dorrer
% Last Modified: 21.10.2024
% Description: ToDo
% =====================================================

close all;
clear all;
clc;

%% Latex / Figure Settings
set(groot, 'defaultLineLineWidth', 1.5);
set(groot, ['Default', 'Stair', 'LineWidth'], 1.5);
set(groot, 'DefaultAxesTitle', 'latex');
set(groot, 'defaultTextInterpreter', 'latex');
set(groot, 'defaultAxesTickLabelInterpreter', 'latex');
set(groot, 'defaultLegendInterpreter', 'latex');
% % =====================================================

PLOT_INTERP = 0;
vos = 0.0; %

f_clk = 100e6;
% path = "test";

% path = "pwm_ecg_5bit_10nF_4ms"; 
path = "pwm_ecg_6bit_10nF_4ms"; 
% path = "pwm_ecg_7bit_10nF_1ms";
% path = "pwm_ecg_7bit_10nF_4ms"; 
% path = "pwm_ecg_8bit_10nF_4ms"; 

% path = "pwm_ecg_8bit_1ms_tsettle"; 
% path = "pwm_ecg_7bit_22nF_4ms";
% path = "pwm_ecg_8bit_10nF_4ms_v2";
% path = "pwm_ecg_8bit_22nF_4ms";
% path = "pwm_ecg_8bit_100nF_4ms";
% path = "pwm_ecg_6bit_10nF_4ms";
% path = "ecg_8bit_100nF_4ms_thmax0.5_TOF_no_clipping_in_reconstruction";
% path = "ecg_8bit_100nF_4ms_thmax16xthmin";
% path = "ecg_8bit_100nF_4ms_thmax0.5_TOF";
% path = "ecg_8bit_100nF_2ms_thmax0.5_TOF";
% path = "ecg_6bit_100nF_6ms_thmax0.5_TOF";
% path = "ecg_6bit_100nF_4ms_thmax0.5_TOF_phantomspikes";
% path = "ecg_6bit_100nF_4ms_thmax0.5_TOF";
% path = "ecg_6bit_100nF_4ms_thmax0.5";
% path = "ecg_6bit_100nF_2ms_thmax0.5";
% path = "ecg_8bit_2ms";
% path = "ecg_6bit_6ms_thmax0.5";
% path = "ecg_6bit_2.1ms";
% path = "../";
addpath(path);
load("Settings.mat")
% Load ECG
sample_rate = 1e3; %samples per second (signal generator)
ecg = table2array(readtable('short_ecg_scaled.csv'))-1.65;
ecg = ecg(10:end); % trigger marker (keysight) starts at 10 samples
t = (0:length(ecg)-1)*(1/(sample_rate));
% Load reconstructed signals
load("ATBS.mat")
N = 100*length(abs_t);
tmax = abs_t(end);
t_atbs = abs_t(1):tmax/N:abs_t(end);
atbs_interp = interp1(abs_t, recon, t_atbs, 'makima');
atbs_time = abs_t;
atbs_amp = recon + vos;%+ 0.5*thmin;
atbs_spikes = spikes;
load("TBS.mat")
N = 100*length(abs_t);
tmax = abs_t(end);
t_tbs = abs_t(1):tmax/N:abs_t(end);
tbs_interp = interp1(abs_t, recon, t_tbs, 'makima');
tbs_time = abs_t;
tbs_amp = recon + vos;
tbs_spikes = spikes;

%Crop ECG
i = find(t > max([atbs_time,tbs_time]) , 1);
slice = 1:i;
ecg = ecg(slice);
t = t(slice);

%%
% Plotting spikes and reconstructed signal
figure(1);
stem(atbs_time, 0.25*atbs_spikes, 'Color', '#808080');
hold on;
% atbs_amp( 255:end)=atbs_amp( 255:end)-10*thmin;
scatter(atbs_time, atbs_amp, "red","filled");
hold on;
if PLOT_INTERP
  plot(t_atbs, atbs_interp, 'Color', '#FF0000');
  hold on;
end
% scatter(tbs_time, tbs_amp);
% hold on;
% %plot(t_tbs, tbs_interp, 'Color', '#7E2F8E');
scatter(tbs_time, tbs_amp, 'MarkerEdgeColor', [0.4940 0.1840 0.5560], 'Linewidth', 1)
hold on
stairs([0,atbs_time,plot_time], [th(1),th,th(end)]./norm(th,'Inf'), 'Color', 	'#77AC30');
hold on
%%
plot(t, ecg, 'Color', 'black');
hold on;
if PLOT_INTERP
  legend('Spikes (ATBS)', 'Samples (ATBS)', 'Interpolated (ATBS)', 'Samples (TBS)', 'Thresholds', 'ECG',Location='eastoutside');
else
  legend('Spikes (ATBS)', 'Samples (ATBS)', 'Samples (TBS)', 'Thresholds', 'ECG',Location='eastoutside');
end
grid on
title('Spikes and reconstructed signal');
subtitle(sprintf('D_{max} = %d, D_{min} = %d, t_{win} = %.1f ms, Bit = %d', dmax, dmin, time_win*10^3, adc_bitwidth))
ylabel('V in V / Spikes');
xlabel('t in s');
xlim([0, plot_time])
% xlim([0.5,0.57])
% ylim([-0.7,0.25])


% SNR
t_interp = 0:1/f_clk:t(end); 
ecg_interp = interp1(t, ecg, t_interp, 'makima');
fs = 281.25;%44.1e3; % Hz
% LSB = 0.03125;
LSB = thmin; % 0.03125;
t_sample = 1:f_clk/fs:length(t_interp);
y = zeros(1,length(t_sample));
y_adc = zeros(1,length(t_sample));

idx = 0;
for i = round(t_sample)  
  idx = idx + 1;
  y(idx) = ecg_interp(i);
  y_adc(idx) = round(ecg_interp(i)/LSB)*LSB;
end

adc_samples = length(y_adc);
tbs_samples = length(tbs_spikes);
atbs_samples = length(atbs_spikes);

os = mean(y_adc-y);

snr_adc = 10*log10(norm(y)^2/norm(y_adc-y)^2);

y = zeros(size(tbs_amp));
idx = 0;
for i = round(tbs_time*f_clk)
   idx = idx + 1;
   y(idx) = ecg_interp(i);
end
snr_tbs = 10*log10(norm(y)^2/norm(tbs_amp-y)^2);

y = zeros(size(atbs_amp));
idx = 0;
for i = round(atbs_time*f_clk)
   idx = idx + 1;
   y(idx) = ecg_interp(i);
end
snr_atbs = 10*log10(norm(y)^2/norm(atbs_amp-y)^2);

table({'ADC';'TBS'; 'ATBS'}, [adc_samples; tbs_samples; atbs_samples], [round(snr_adc*100)/100; round(snr_tbs*100)/100; round(snr_atbs*100)/100], 'VariableNames', {'mode', ...
    'samples', 'SNR [dB]'})

rmpath(path);

