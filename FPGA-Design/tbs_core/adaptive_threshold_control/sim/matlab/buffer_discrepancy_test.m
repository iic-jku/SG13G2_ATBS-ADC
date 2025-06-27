% Bac-Thesis: Adaptive-Threshold-Based-Sampling
% Author: Anna Werzi
% Date: 21.11.2022
% Co-simulation for spike buffering based on a time window with discrepancy
% calculation

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% INIT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
clc;
labels = {};
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SIMULATE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TBS SimVals
f_clk = 100*10^6; % Hz
VCC = 3.3; % V
adc_bitwidth = 6; 
% buffer constants
window = 0.2*10^-5; %s
win_length = window*f_clk;
% tmax > win_length
tmax = 2.1*win_length;
cnt_bits = ceil(log2(tmax));
tmax = 2^cnt_bits;
% discrepancy constants
d_max = 5;
d_min = 2;
buf_size = d_max;
n_thermo_half = d_max;
level_of_reg = buf_size+1; %insert pipeline register after every nth evaluation step
% test signal (sine)
f = 50000; % Hz, high freq. to keep spikes in small intervalls and sim. time short
vpp = 2; % V, take care of vcc boundaries
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GENERATE AND PLOT SAMPLE DATA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example data spikes generated with TBS_Reconstruction\genIdealSpikes.m
addpath('..\..\..\..\..\Matlab\TBS_Reconstruction');
data_s16_wZeros = round(genIdealSpikes(VCC, adc_bitwidth, cnt_bits, f_clk, f, vpp));
data_s16 = nonzeros(data_s16_wZeros).';
delta_v = VCC/2^adc_bitwidth; % minimal threshold for polyfit
abs_t = getTimeVector(data_s16_wZeros,cnt_bits)/f_clk;

% Reconstruct signal from spikes
[recon, spikes] = reconstructSignal(data_s16, delta_v, abs_t, 0); 

% Plotting spikes and reconstructed signal
figure(1);
stem(abs_t, spikes);
hold on;
stairs(abs_t, recon);
hold on;
plot(abs_t, recon);
sgtitle(sprintf('Spikes and reconstructed sinus signal, u = %d V, f = %.0e Hz',vpp/2, f),'FontSize',10);
legend('Spikes', 'Stairs', 'Interpolated');
ylabel('V in V / Spikes');
xlabel('t in s');
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIMULATE BUFFERING OVER TIME WINDOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath('..\..\Spike-Buffering\sim\matlab');
[timestamps_reg_content, spike_reg_content, fill_cnt, abs_timestamps] = getTimeWindowSamples(f_clk, abs_t, data_s16_wZeros, buf_size, cnt_bits, win_length);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIMULATE DISCREPANCY CALCULATION OVER TIME WINDOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% % VHDL
weylsd_vhdl = buffer_discrepancy(data_s16_wZeros, buf_size, win_length, cnt_bits, d_max, d_min, level_of_reg);
% 
n_weylsd = length(spike_reg_content);
weylsd_ml = (1:n_weylsd);
weylsd = (1:n_weylsd);
addpath('..\..\Weyls-Discrepancy\sim\matlab');
for i = 1:n_weylsd
    % hw simulation in matlab
    weylsd_ml(i) = thermometerweyl(cell2mat(spike_reg_content(i)), d_max);
    % straight forward software implementation
    weylsd(i) = fastweyl(cell2mat(spike_reg_content(i)));
end
figure(2)
labels{end+1} = sprintf('D_{max} = %d', d_max);
subplot(3,1,1);
time = abs_timestamps./f_clk;
stairs(time,weylsd_vhdl)
hold on
ylabel('weylsd_{vhdl}')
xlabel('time in s')
legend(labels);
subplot(3,1,2);
stairs(time, weylsd_ml)
hold on
ylabel('weylsd_{ml}')
xlabel('time in s')
subplot(3,1,3);
stairs(time, weylsd)
hold on
ylabel('weylsd')
xlabel('time in s')
sgtitle("Matlab co-simultion for weyls discrepancy ", 'FontSize',10);
%savefig(sprintf('fig/weylsd_dmax%d.fig',d_max))
