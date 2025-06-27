% Author: Simon Dorrer
% Last Modified: 18.10.2024
% Description: Reads saved reconstructed data and calculates the SNDR in 
% time domain and after interpolation the SNR, SFDR and SNDR 
% in frequency domain.
% =====================================================

% ToDo:
% -) LS Fitting on ECG data
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
% =====================================================

%% Reconstruction Settings
tbs_mode = 0;           % 0... TBS; 1... ATBS
com_interface = 0;      % 0... UART; 1... Ethernet                  
ecg_or_sine = 0;        % 0... sine; 1... ecg
virtual_dac_res = 0;    % 0... full DAC res.; 1... virtual DAC res.
dac_bitwidth = 8;       % Full or "Virtual" DAC resolution
time_win = 4 * 10^(-3); % time window (1ms, 2ms, 4ms (default), 8ms, 16ms or 32ms)
LS_fitting = 0;         % 0... no fitting, 1... fit sine / ECG with LS approach 
non_uniform_FFT = 0;    % 0... no non-uniform FFT, 1... testing non-uniform FFT (only for sine)
testing = 1;            % 1... test save
% =====================================================

%% Signal Constants
Vpp = 3.0;
Vdc = 1.65;
f_sig = 10;
bpm = 60;
% =====================================================

%% Load TBS SimVals variables
tbs_vals = load('..\FPGA-Design\tbs_core\sim\matlab\tbs.mat');
% =====================================================

%% Load figures and workspace
% Distinguish between
% UART / Ethernet
% ATBS / TBS, 
% Full or "Virtual" DAC resolution
% Sine or ECG
if f_sig == 1
    sine_folder = 'Sine_1Hz';
elseif f_sig == 10
    sine_folder = 'Sine_10Hz';
elseif f_sig == 20
    sine_folder = 'Sine_20Hz';
elseif f_sig == 50
    sine_folder = 'Sine_50Hz';
end

if testing == 0
    if com_interface == 0 % UART
        if ecg_or_sine == 0     % Sine
            if tbs_mode == 1    % ATBS
                if tbs_vals.dac_bitwidth == 8
                    if time_win == 4 * 10^(-3)
                        data = load(sprintf('data/UART/%s/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.mat', sine_folder));
                    elseif time_win == 8 * 10^(-3)
                        data = load(sprintf('data/UART/%s/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.mat', sine_folder));
                    end
                elseif tbs_vals.dac_bitwidth == 10
                    data = load(sprintf('data/UART/%s/ATBS_PoC_10Bit_Sine_Reconstruction.mat', sine_folder));
                    openfig(sprintf('figures/UART/%s/ATBS_PoC_10Bit_Sine_Reconstruction.fig', sine_folder));
                    fprintf(sprintf('data/UART/%s/ATBS_PoC_10Bit_Sine_Reconstruction.mat', sine_folder));
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        data = load(sprintf('data/UART/%s/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_3Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 4
                        data = load(sprintf('data/UART/%s/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_4Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 5
                        data = load(sprintf('data/UART/%s/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_5Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 6
                        data = load(sprintf('data/UART/%s/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_6Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 7
                        data = load(sprintf('data/UART/%s/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_7Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 8
                        data = load(sprintf('data/UART/%s/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_8Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    elseif dac_bitwidth == 9
                        data = load(sprintf('data/UART/%s/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_9Bit_virtual_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat', sine_folder));
                    end 
                else
                    if tbs_vals.dac_bitwidth == 8
                        data = load(sprintf('data/UART/%s/TBS_PoC_8Bit_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_8Bit_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_8Bit_Sine_Reconstruction.mat', sine_folder));
                    elseif tbs_vals.dac_bitwidth == 10
                        data = load(sprintf('data/UART/%s/TBS_PoC_10Bit_Sine_Reconstruction.mat', sine_folder));
                        openfig(sprintf('figures/UART/%s/TBS_PoC_10Bit_Sine_Reconstruction.fig', sine_folder));
                        fprintf(sprintf('data/UART/%s/TBS_PoC_10Bit_Sine_Reconstruction.mat', sine_folder));
                    end
                end
            end
        else                    % ECG
            if tbs_mode == 1    % ATBS
                if tbs_vals.dac_bitwidth == 8
                    data = load('data/UART/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                    openfig('figures/UART/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.fig');
                    fprintf('data/UART/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                elseif tbs_vals.dac_bitwidth == 10
                    data = load('data/UART/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                    openfig('figures/UART/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.fig');
                    fprintf('data/UART/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        data = load('data/UART/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        data = load('data/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        data = load('data/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        data = load('data/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        data = load('data/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        data = load('data/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        data = load('data/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                    end 
                else
                    if tbs_vals.dac_bitwidth == 8
                        data = load('data/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                    elseif tbs_vals.dac_bitwidth == 10
                        data = load('data/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                        openfig('figures/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.fig');
                        fprintf('data/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                    end
                end
            end
        end
    elseif com_interface == 1 % Ethernet
        if ecg_or_sine == 0     % Sine
            if tbs_mode == 1    % ATBS
                if tbs_vals.dac_bitwidth == 8
                    data = load('data/Ethernet/Sine/ATBS_PoC_8Bit_Sine_Reconstruction.mat');
                    fprintf('data/Ethernet/Sine/ATBS_PoC_8Bit_Sine_Reconstruction.mat');
                elseif tbs_vals.dac_bitwidth == 10
                    data = load('data/Ethernet/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.mat');
                    fprintf('data/Ethernet/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        data = load('data/Ethernet/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        data = load('data/Ethernet/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        data = load('data/Ethernet/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        data = load('data/Ethernet/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        data = load('data/Ethernet/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        data = load('data/Ethernet/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        data = load('data/Ethernet/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat');
                    end 
                else
                    if tbs_vals.dac_bitwidth == 8
                        data = load('data/Ethernet/Sine/TBS_PoC_8Bit_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_8Bit_Sine_Reconstruction.mat');
                    elseif tbs_vals.dac_bitwidth == 10
                        data = load('data/Ethernet/Sine/TBS_PoC_10Bit_Sine_Reconstruction.mat');
                        fprintf('data/Ethernet/Sine/TBS_PoC_10Bit_Sine_Reconstruction.mat');
                    end
                end
            end
        else                    % ECG
            if tbs_mode == 1    % ATBS
                if tbs_vals.dac_bitwidth == 8
                    data = load('data/Ethernet/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                    fprintf('data/Ethernet/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                elseif tbs_vals.dac_bitwidth == 10
                    data = load('data/Ethernet/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                    fprintf('data/Ethernet/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        data = load('data/Ethernet/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/Ethernet/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        data = load('data/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        data = load('data/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        data = load('data/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        data = load('data/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        data = load('data/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        data = load('data/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                    end 
                else
                    if tbs_vals.dac_bitwidth == 8
                        data = load('data/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                    elseif tbs_vals.dac_bitwidth == 10
                        data = load('data/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                        fprintf('data/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                    end
                end
            end
        end
    end
else            % Testing
    data = load('data/testing.mat');
    openfig('figures/testing.fig');
    fprintf('data/testing.mat');
end
fprintf('\n');
% =====================================================

%% Load reconstruction variables
% t_analog = data.t_analog;
% analog_signal = data.analog_signal;

t_recon = data.t_recon;
% t_recon = t_recon - t_recon(1) + XYZ;
spikes = data.spikes;
recon = data.recon;
% ================================================

%% Cut away samples that are not within a complete period.
tolerance = 1e-1;   % Small tolerance to account for floating-point error
idx = find(abs(recon - Vdc) < tolerance, 1, 'last');  % Find last match
if ~isempty(idx)
    recon = recon(1:idx);  % Cut the array at the last matching point
    t_recon = t_recon(1:idx);
else
    warning('No sample found at Vdc = %.2f V', Vcm);
end
% ================================================

%% Interpolation and LS fitting on samples
% Get periods
if ecg_or_sine == 0         % Sine
    P = round(data.read_duration_uart / (1 / f_sig));
else                        % ECG
    P = data.read_duration_uart * (bpm / 60);
end

% Oversampling for interpolation
OSR = 100;
fs = OSR * f_sig;

t = 0:1/fs:1/f_sig-1/fs;

if tbs_mode == 0            % TBS
    tbs_time = t_recon;
    tbs_recon = recon;
    tbs_spikes = spikes;

    N_tbs = round(length(tbs_recon)/P);
    
    % Throw away first sample
    % [~, idx] = find(tbs_time > P*1/f, 1);
    % tbs_time = tbs_time(2:idx-1);
    % tbs_recon = tbs_recon(2:idx-1);

    % Interpolation (only for sine)
    if ecg_or_sine == 0     % Sine
        t_tbs = 0:1/fs:tbs_time(end);
        tbs_interp = interp1(tbs_time, tbs_recon, t_tbs, 'spline');
        fprintf('Interpolation of TBS samples. \n');
     end

    % Least-Squares (LS) fitting
    if ecg_or_sine == 0     % Sine
        if LS_fitting == 1
            % ground truth of analog signal for TBS SNR evaluation
            % fit sine into data samples with LS estimation on Vpp, Vdd and phase
            sine_data = [sin(2*pi*f_sig*tbs_time)]';
            cosine_data = [cos(2*pi*f_sig*tbs_time)]';
            H = [sine_data, cosine_data, ones(length(tbs_recon), 1)];
            alpha_est = inv(H' * H) * H' * tbs_recon';
            % inverse transformation
            A = sqrt(alpha_est(1)^2 + alpha_est(2)^2);
            phase_est = atan(alpha_est(2)/alpha_est(1));
            Vdc_est = alpha_est(3);
            analog_signal_TBS = A * sin(2*pi*f_sig*tbs_time + phase_est) + Vdc_est;
            fprintf('TBS: Least-Squares (LS) fitting of sine wave. \n');
        else
            analog_signal_TBS = Vpp/2 * sin(2*pi*f_sig*tbs_time) + Vdc;
            fprintf('TBS: NO Least-Squares (LS) fitting of sine wave. \n');
        end
    else                    % ECG
        ecg_data = load('..\Measurements\Generate_ECG\data\ecg_data_0.15V_3.15V.mat');
        ecg_original = ecg_data.ecg_data_short; % ecg_data.ecg_data_interp;
        if LS_fitting == 1
            ecg_original = repmat(ecg_original, 1, P); % concatenate P times
            analog_signal_TBS = resample(ecg_original, length(tbs_time), length(ecg_original));
            % Manual fitting (ToDo LS Fitting)
            tbs_time_LS = tbs_time + 0.00;
            analog_signal_TBS = analog_signal_TBS + 0.00;
            fprintf('TBS: Least-Squares (LS) fitting of ECG. \n');
        else
            ecg_original = repmat(ecg_original, 1, P); % concatenate P times
            analog_signal_TBS = resample(ecg_original, length(tbs_time), length(ecg_original));
            fprintf('TBS: NO Least-Squares (LS) fitting of ECG. \n');
        end
    end
else                        % ATBS
    atbs_time = t_recon;
    atbs_recon = recon;
    atbs_spikes = spikes;
    
    N_atbs = round(length(atbs_recon)/P);
    
    % Throw away first sample
    % t_recon = atbs_time(2:idx-1);
    % atbs_time = atbs_recon(2:idx-1);

    % Interpolation (only for sine)
    if ecg_or_sine == 0     % Sine
        t_atbs = 0:1/fs:atbs_time(end);
        atbs_interp = interp1(atbs_time, atbs_recon, t_atbs, 'spline');
        fprintf('Interpolation of ATBS samples. \n');
    end

    % Least-Squares (LS) fitting
    if ecg_or_sine == 0     % Sine
        if LS_fitting == 1
            % ground truth of analog signal for ATBS SNR evaluation
            % fit sine into data samples with LS estimation on Vpp, Vdd and phase
            sine_data = [sin(2*pi*f_sig*atbs_time)]';
            cosine_data = [cos(2*pi*f_sig*atbs_time)]';
            H = [sine_data, cosine_data, ones(length(atbs_recon), 1)];
            alpha_est = inv(H' * H) * H' * atbs_recon';
            % inverse transformation
            A = sqrt(alpha_est(1)^2 + alpha_est(2)^2);
            phase_est = atan(alpha_est(2)/alpha_est(1));
            Vdc_est = alpha_est(3);
            analog_signal_ATBS = A * sin(2*pi*f_sig*atbs_time + phase_est) + Vdc_est;
            fprintf('ATBS: Least-Squares (LS) fitting of sine wave. \n');
        else
            analog_signal_ATBS = Vpp/2 * sin(2*pi*f_sig*atbs_time) + Vdc;
            fprintf('ATBS: NO Least-Squares (LS) fitting of sine wave. \n');
        end
    else                    % ECG
        ecg_data = load('..\Measurements\Generate_ECG\data\ecg_data_0.15V_3.15V.mat');
        ecg_original = ecg_data.ecg_data_short; % ecg_data.ecg_data_interp;
        if LS_fitting == 1
            ecg_original = repmat(ecg_original, 1, P); % concatenate P times
            analog_signal_ATBS = resample(ecg_original, length(atbs_time), length(ecg_original));
            % Manual fitting (ToDo LS Fitting)
            atbs_time_LS = atbs_time + 0.00;
            analog_signal_ATBS = analog_signal_ATBS + 0.00;
            fprintf('ATBS: Least-Squares (LS) fitting of ECG. \n');
        else
            ecg_original = repmat(ecg_original, 1, P); % concatenate P times
            analog_signal_ATBS = resample(ecg_original, length(atbs_time), length(ecg_original));
            fprintf('ATBS: NO Least-Squares (LS) fitting of ECG. \n');
        end
    end
end
% ================================================

%% Testing non-uniform FFT
% Major side lopes occur due to non-uniform samples 
% and are therefore not useful for FFT figures of merits like SNDR.
if non_uniform_FFT == 1 && ecg_or_sine == 0
    fprintf('Testing non-uniform FFT... \n');
    figure();
    if tbs_mode == 0    % TBS
        tbs_nufft = nufft(tbs_time, tbs_recon);
        plot(10*log10(abs(tbs_nufft)));  
        title('Non-uniform FFT (TBS)');
    else                % ATBS
        atbs_nufft = nufft(atbs_time, atbs_recon);
        plot(10*log10(abs(atbs_nufft)));  
        title('Non-uniform FFT (ATBS)'); 
    end
    ylabel('$|.|$');
    xlabel('???');
    grid on;
end
% ================================================

%% Plotting data
fprintf('Plotting data... \n');
figure();
if ecg_or_sine == 0         % Sine
    subplot(4, 1, 1);
end
if tbs_mode == 0    % TBS
    if ecg_or_sine == 0     % Sine
        if LS_fitting == 1
            plot(tbs_time, analog_signal_TBS, 'DisplayName', 'LS est. analog signal');
        else
            plot(tbs_time, analog_signal_TBS, 'DisplayName', 'analog signal');
        end
        hold on;
        scatter(tbs_time, tbs_recon, 'filled', 'DisplayName', 'signal samples');
        plot(t_tbs, tbs_interp, 'DisplayName', 'spline interp.', 'Color', '#77AC30');
    else                    % ECG
        if LS_fitting == 1
            plot(tbs_time_LS, analog_signal_TBS, 'DisplayName', 'LS est. analog signal');
        else
            plot(tbs_time, analog_signal_TBS, 'DisplayName', 'analog signal');
        end
        hold on;
        scatter(tbs_time, tbs_recon, 'filled', 'DisplayName', 'signal samples');
        plot(tbs_time, tbs_recon, 'DisplayName', 'linear interp.', 'Color', '#77AC30');
    end
    title(sprintf('TBS (Samples / Period = %d)', N_tbs));
else                        % ATBS
    if ecg_or_sine == 0     % Sine
        if LS_fitting == 1
            plot(atbs_time, analog_signal_ATBS, 'DisplayName', 'LS est. analog signal');
        else
            plot(atbs_time, analog_signal_ATBS, 'DisplayName', 'analog signal');
        end
        hold on;
        scatter(atbs_time, atbs_recon, 'filled', 'DisplayName', 'signal samples');
        plot(t_atbs, atbs_interp, 'DisplayName', 'spline interp.', 'Color', '#77AC30');
    else                    % ECG
        if LS_fitting == 1
            plot(atbs_time_LS, analog_signal_ATBS, 'DisplayName', 'LS est. analog signal');
        else
            plot(atbs_time, analog_signal_ATBS, 'DisplayName', 'analog signal');
        end
        hold on;
        scatter(atbs_time, atbs_recon, 'filled', 'DisplayName', 'signal samples');
        plot(atbs_time, atbs_recon, 'DisplayName', 'linear interp.', 'Color', '#77AC30');
    end
    title(sprintf('ATBS (Samples / Period = %d)', N_atbs));
end
ylabel('$V$ (V), Spikes');
xlabel('$t$ (s)');
grid on; 
legend;
% ================================================

%% Calculate theoretical maximum SNR
% Level-Crossing ADC Performance Evaluation Toward Ultrasound Application
% by Kirill Kozmin, Jonny Johansson and Jerker Delsing
R = 1 / (f_sig * 1 / tbs_vals.f_clk);
SNR_max = 20 * log10(R) - 14.2;
fprintf('The theoretical maximum SNR for %dHz equals %.2fdB. \n', f_sig, SNR_max);
% ================================================

%% Calculate SNR, SFDR & SNDR in time domain (ECG & sine) and in frequency domain (only for sine)
if tbs_mode == 0            % TBS
    fprintf('Samples per period: %d \n', N_tbs);

    % SNR, SFDR & SNDR in frequency domain (only for sine). 
    % Only possible with interpolated signal.
    % Multiple periods are needed for a good FFT.
    if ecg_or_sine == 0 % Sine
        % Signal to Noise Ratio (SNR)
        subplot(4, 1, 2);
        snr(tbs_interp, fs);
        snr_f_tbs = snr(tbs_interp, fs);
        fprintf('The SNR in frequency domain of spline interpolated TBS samples equals %.2fdB. \n', snr_f_tbs);
        
        % Spurious Free Dynamic Range (SFDR)
        subplot(4, 1, 3);
        sfdr(tbs_interp, fs);
        sfdr_f_tbs = sfdr(tbs_interp, fs);
        fprintf('The SFDR in frequency domain of spline interpolated TBS samples equals %.2fdB. \n', sfdr_f_tbs);
        
        % Signal to Noise & Distortion Ratio (SNDR)
        % Signal to Interference Ratio including Noise & Distortion (SINAD)
        subplot(4, 1, 4);
        sinad(tbs_interp, fs); % SINAD = SNDR
        sndr_f_tbs = sinad(tbs_interp, fs);
        fprintf('The SNDR in frequency domain of spline interpolated TBS samples equals %.2fdB. \n', sndr_f_tbs);
    end

    % SNDR in time domain.
    % Only one period is mandatory.
    analog_signal_TBS = analog_signal_TBS(1:N_tbs);
    tbs_recon = tbs_recon(1:N_tbs);
    sndr_t_tbs = 10*log10(norm(analog_signal_TBS)^2 / norm(tbs_recon-analog_signal_TBS)^2);
    fprintf('The SNDR in time domain of TBS samples equals %.2fdB. \n', sndr_t_tbs);
else                % ATBS
    fprintf('Samples per period: %d \n', N_atbs);

    % SNR, SFDR & SNDR in frequency domain (only for sine). 
    % Only possible with interpolated signal.
    % Multiple periods are needed for a good FFT.
    if ecg_or_sine == 0 % Sine
        % Signal to Noise Ratio
        subplot(4, 1, 2);
        snr(atbs_interp, fs);
        snr_f_atbs = snr(atbs_interp, fs);
        fprintf('The SNR in frequency domain of spline interpolated ATBS samples equals %.2fdB. \n', snr_f_atbs);
        
        % Spurious Free Dynamic Range
        subplot(4, 1, 3);
        sfdr(atbs_interp, fs);
        sfdr_f_atbs = sfdr(atbs_interp, fs);
        fprintf('The SFDR in frequency domain of spline interpolated ATBS samples equals %.2fdB. \n', sfdr_f_atbs);
        
        % Signal to Noise & Distortion Ratio (SNDR)
        % Signal to Interference Ratio including Noise & Distortion (SINAD)
        subplot(4, 1, 4);
        sinad(atbs_interp, fs); % SINAD = SNDR
        sndr_f_atbs = sinad(atbs_interp, fs);
        fprintf('The SNDR in frequency domain of spline interpolated ATBS samples equals %.2fdB. \n', sndr_f_atbs);
    end

    % SNDR in time domain.
    % Only one period is mandatory.
    analog_signal_ATBS = analog_signal_ATBS(1:N_atbs);
    atbs_recon = atbs_recon(1:N_atbs);
    sndr_t_atbs = 10 * log10(norm(analog_signal_ATBS)^2 / norm(atbs_recon-analog_signal_ATBS)^2);
    fprintf('The SNDR in time domain of ATBS samples equals %.2fdB. \n', sndr_t_atbs);
end
% ================================================