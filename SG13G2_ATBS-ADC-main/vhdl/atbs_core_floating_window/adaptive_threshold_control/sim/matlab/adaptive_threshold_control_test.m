% Authors: Anna Werzi, AK124296
% modified by Simon Dorrer, AK123109

clear all;
close all;

% Figure Settings
% reset(groot);
set(groot,'defaultlinelinewidth',2)
set(groot, ['Default', 'Stair', 'LineWidth'], 2)
set(0,'defaultaxesfontsize', 16)
set(0,'DefaultAxesTitleFontWeight','normal'); 

delete('fig\*')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% USER CONSTANTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% VHDL parameter
vcc = 1.2;   % V analog asym. supply
vmax = 1;    % Vpp assuming bipolar design

yint = 5;    % 2;
yfract = 20; % 35;

% buffer constants
tsample = 1e-3; % time resolution of input signal y
f_clk = 100e6; % Hz; lower boundary for f_clk with desired time resolution
windowlen = 2e-3; % in s
% tmax (counter) > win_length (windowlen*clks_p_sample)
cnt_bits = 19;
tmax = 2^cnt_bits;
% discrepancy constants
d_max = 2; 
d_min = 2;
buf_size = 15;
level_of_reg = buf_size + 1; % insert pipeline register after every nth evaluation step (none - d_max + 1)

B = 6;
LSB = 2^-(B-1); % fractional range [-1,1)
thmin = 2*vmax/2^B;
thmax = (2^B/4)*thmin; % thmin*64*32;

delta_steps_bw = log2(thmax / thmin) + 1; % bits for maximum deltastep multiplication factor (2^delta_steps_bw*thmin)
deltasteps_max = thmax/thmin; % 2^delta_steps_bw - 1;
weylmin = d_min;
weylmax = d_min;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create Signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Signaltype = 'ECG';
Comparison_Offset = 1000; % offset to get rid of border effects of spline interpolation
t = 0:tsample:1; 

% load ECG
% load long_ecg
% y = y(1:10:end);        % remove upsampling in ECG
% slice = 9800:9900;
% % y = y(1:10:1000);
% [~,y_min_idx] = min( abs(y(slice) ));
% y = y(slice+y_min_idx);

load short_ecg
y = y(1:2499); % 2.5 ms

analog_OS = 64; %oversampling 

y_analog_idx = 1:1/analog_OS:length(y)-1/analog_OS;
y_analog = spline(1:length(y), y, y_analog_idx);
y = y_analog;
y = normalize(y,inf);
t = 1:length(y);

% slice signal
y_idx = 1:length(y);
clks_p_sample = round(f_clk*tsample/analog_OS); % clocks per sample
windowlen_ml = windowlen*analog_OS*(1/tsample);

% ADC
Quantized_ADC = round(y/LSB)*LSB;
SNR_ADC = 10*log10(norm(y(Comparison_Offset:end-Comparison_Offset))^2/norm(Quantized_ADC(Comparison_Offset:end-Comparison_Offset)-y(Comparison_Offset:end-Comparison_Offset), 2)^2);

SOD_th = thmin;       % threshold for simple SOD

% TBS
[Spikes, SODIdx] = SOD(y,SOD_th);
SampleAmpl = cumsum(Spikes).*SOD_th + thmin;
SPreconstr = spline(t(SODIdx), SampleAmpl, t);
% SPreconstr = interp1(t(SODIdx), SampleAmpl, t, 'makima');
SNR = 10*log10(norm(y(Comparison_Offset:end-Comparison_Offset))^2/norm(SPreconstr(Comparison_Offset:end-Comparison_Offset)-y(Comparison_Offset:end-Comparison_Offset), 2)^2);
[n,w] = GetWeylWindow(Spikes, SODIdx, windowlen_ml);

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ATBS Matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[Spikes_cw, SODIdx_cw, ThresholdList_cw, SpikesInWindow, SampleAmpl_cw] = SODConstWeyl(y, yint, yfract, SOD_th, thmin, thmax, weylmin, weylmax, vmax, windowlen_ml, B);

%SampleAmpl_cw are the measurement values, t(SODIdx_cw) are the corresponding time values
% SampleAmpl_cw = cumsum(Spikes_cw.*ThresholdList_cw) + thmin; % offset 
SPreconstr_cw = spline(t(SODIdx_cw), SampleAmpl_cw, t);
% SPreconstr_cw = interp1(t(SODIdx_cw), SampleAmpl_cw, t,'makima');
SNR_cw = 10*log10(norm(y(Comparison_Offset:end-Comparison_Offset))^2/norm(SPreconstr_cw(Comparison_Offset:end-Comparison_Offset)-y(Comparison_Offset:end-Comparison_Offset), 2)^2);

[n_cw, w_cw] = GetWeylWindow(Spikes_cw, SODIdx_cw, windowlen_ml);

nThresholds = normalize(ThresholdList_cw, inf);

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ATBS VHDL
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[Spikes_vhdl, SODIdx_vhdl, ThresholdList_vhdl, SampleAmpl_vhdl] = ...
    adaptive_threshold_control(f_clk, y, yint, yfract, buf_size,...
    windowlen*f_clk, cnt_bits, level_of_reg, delta_steps_bw, B, ...
    clks_p_sample, d_max, d_min, weylmin, weylmax, thmin, thmax,...
    -vmax, vmax, deltasteps_max);
%%
%% SampleAmpl_vhdl = cumsum(Spikes_vhdl.*ThresholdList_vhdl) + thmin;
SPreconstr_vhdl = spline(t(SODIdx_vhdl), SampleAmpl_vhdl, t);
SNR_vhdl = 10*log10(norm(y(Comparison_Offset:end-Comparison_Offset))^2/norm(SPreconstr_vhdl(Comparison_Offset:end-Comparison_Offset)-y(Comparison_Offset:end-Comparison_Offset), 2)^2);
[n_vhdl, w_vhdl] = GetWeylWindow(Spikes_vhdl, SODIdx_vhdl, windowlen_ml);
nThreshold_vhdl = normalize(ThresholdList_vhdl,inf);
%-------------------------------------------------------------------------------

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PLOTTING RESULTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('units','normalized','outerposition',[0 0 1 1]);
subplot(2,1,1)
plot(t((1:(length(w)-1))*windowlen_ml), w(1:end-1), t((1:(length(w_cw)-1))*windowlen_ml), w_cw(1:end-1))
title(sprintf('Matlab Co-Simulation (windowlen = %.4f s)', windowlen))
legend('Weyl Disc. TBS', 'Weyl Disc. ATBS')
subplot(2,1,2)
plot(t((1:(length(w)-1))*windowlen_ml), w(1:end-1), t((1:(length(w_vhdl)-1))*windowlen_ml), w_vhdl(1:end-1))
title(sprintf('VHDL Simulation (windowlen = %.4f s)', windowlen))
legend('Weyl Disc. TBS', 'Weyl Disc. ATBS')
exportgraphics(gcf,sprintf('fig/%swindow.pdf', Signaltype))
exportgraphics(gcf,sprintf('fig/%swindow.png', Signaltype))
savefig(sprintf('fig/%swindow.fig', Signaltype))

% [PKS,LOCS]= findpeaks(nThresholds);
% figure;plot(t,y, t,SPreconstr,t,SPreconstr_cw, t(SODIdx_cw), nThresholds, t(SODIdx_cw), Spikes_cw*0.2, t(SODIdx_cw), SampleAmpl_cw, t(SODIdx_cw(LOCS)), PKS, 'd')
figure('units','normalized','outerposition',[0 0 1 1]);
subplot(2,1,1)

%%
% SPLINE INTERPOLATED SIGNALS
% plot(t,y, t,SPreconstr,t,SPreconstr_cw, t(SODIdx_cw), nThresholds, t(SODIdx_cw), Spikes_cw*0.2)
% hold on
% stem(t(SODIdx), Spikes*0.2)
% STAIR INTERPOLATED SIGNALS
plot(t,y)
hold on
plot(t(SODIdx), SampleAmpl)
plot(t(SODIdx_cw), SampleAmpl_cw);
stairs(t(SODIdx_cw), nThresholds)
plot(t(SODIdx_cw), Spikes_cw*0.2)
stem(t(SODIdx_cw), Spikes_cw*0.2)

title(sprintf('Matlab Co-Simulation (D_{min} = %d, D_{max} = %d)',weylmin, weylmax))
legend('y','y_{TBS}', 'y_{ATBS}', 'Thresholds (norm)', 'Spikes ATBS', 'Spikes ATBS', Location='eastoutside')
subplot(2,1,2)

% SPLINE INTERPOLATED SIGNALS
% plot(t,y, t,SPreconstr,t,SPreconstr_vhdl, t(SODIdx_vhdl), nThreshold_vhdl, t(SODIdx_vhdl), Spikes_vhdl*0.2)
% hold on 
% stem(t(SODIdx), Spikes*0.2)
% STAIR INTERPOLATED SIGNALS
plot(t,y)
hold on 
plot(t(SODIdx), SampleAmpl)
plot(t(SODIdx_vhdl), SampleAmpl_vhdl);
stairs(t(SODIdx_vhdl), nThreshold_vhdl)
plot(t(SODIdx_vhdl), Spikes_vhdl*0.2)
stem(t(SODIdx_vhdl), Spikes_vhdl*0.2)

title(sprintf('VHDL Simulation (D_{min} = %d, D_{max} = %d)',weylmin,weylmax))
legend('y','y_{TBS}', 'y_{ATBS}', 'Thresholds (norm)', 'Spikes ATBS', 'Spikes ATBS', Location='eastoutside')
exportgraphics(gcf,sprintf('fig/%s_dmin%d_dmax%d.pdf', Signaltype, weylmin, weylmax))
exportgraphics(gcf,sprintf('fig/%s_dmin%d_dmax%d.png', Signaltype, weylmin, weylmax))
% figure;plot(SODIdx,y(SODIdx),SODIdx ,SampleAmpl, SODIdx, normalize(ThresholdList,inf))
savefig(sprintf('fig/%s_dmin%d_dmax%d.fig', Signaltype, weylmin, weylmax))

figure('units','normalized','outerposition', [0 0 1 1]);
plot(t,y,'g')
hold on
stem( t(SODIdx_cw), Spikes_cw*.5, 'b')
legend('y','Spikes ATBS')
exportgraphics(gcf,sprintf('fig/%s.pdf', Signaltype))
exportgraphics(gcf,sprintf('fig/%s.png', Signaltype))
savefig(sprintf('fig/%s.fig', Signaltype))
% 
disp('SNR_ADC   SNR_SOD     SNR_SODcw   SNR_vhdl')
[SNR_ADC SNR SNR_cw SNR_vhdl]

disp('length    length_cw   length_vhdl')
[length(Spikes) length(Spikes_cw)   length(Spikes_vhdl)]

disp('x% spikes (cw)    x% spikes (vhdl)')
[length(Spikes_cw) length(Spikes_vhdl)]./length(Spikes).*100