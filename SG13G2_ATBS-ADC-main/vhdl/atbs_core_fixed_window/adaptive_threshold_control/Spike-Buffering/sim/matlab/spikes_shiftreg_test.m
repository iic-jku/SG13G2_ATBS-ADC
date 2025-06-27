% Bac-Thesis: Adaptive-Threshold-Based-Sampling
% Author: Anna Werzi
% Date: 9.10.2022
% Simulation of a possible hardware implementation for spike buffering
% based on a time window

clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INIT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
buf_size = 10;
window = 200*10^-9; %s
f_clk = 100e6; % Hz
VCC = 3.3; % V
adc_bitwidth = 6;
win_length = window*f_clk;
% Tmax > win_length
tmax = 2.1*win_length;
cnt_bits = ceil(log2(tmax));
% Sine
f = 100000; % Hz
vpp = 2; % V

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GENERATE AND PLOT SAMPLE DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example data spikes generated with TBS_Reconstruction\genIdealSpikes.m
addpath('..\..\..\..\..\..\Matlab\TBS_Reconstruction');
data_s16_wZeros = round(genIdealSpikes(VCC, adc_bitwidth, cnt_bits, f_clk, f, vpp));
data_s16 = nonzeros(data_s16_wZeros).';
delta_v = VCC/2^adc_bitwidth; % minimal threshold for polyfit
abs_t = getTimeVector(data_s16_wZeros,cnt_bits)/f_clk;

% Reconstruct signal from spikes
[recon, spikes] = reconstructSignal(data_s16, delta_v, abs_t, 0); 

% Plotting spikes and reconstructed signal
figure(1);
subplot(3,1,1)
stem(abs_t, spikes);
hold on;
stairs(abs_t, recon);
hold on;
plot(abs_t, recon);
title('Spikes and reconstructed signal');
legend('Spikes', 'Stairs', 'Interpolated');
ylabel('V in V / Spikes');
xlabel('t in s');
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIMULATE BUFFERING OVER TIME WINDOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[timestamps_reg_content, ~ , n_spikes] = getTimeWindowSamples(f_clk, abs_t, data_s16_wZeros, buf_size, cnt_bits, win_length);

% VHDL
n_spikes_vhdl = spikes_shiftreg(f_clk, data_s16_wZeros, buf_size, win_length, cnt_bits);

% MATLAB
subplot(3,1,2);
plot(n_spikes)
title('fill count of spike buffer - matlab')
xlabel('output strobe count [1]')
ylabel('fill count [1]')
hold on
subplot(3,1,3);
plot(n_spikes_vhdl)
title('fill count of spike buffer - vhdl')
xlabel('output strobe count [1]')
ylabel('fill count [1]')
hold on
% for i=2:length(timestamps_reg_content)
%         disp(timestamps_reg_content(i))
% end
