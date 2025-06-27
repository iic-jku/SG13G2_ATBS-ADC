% Author: Simon Dorrer
% Last Modified: 04.03.2025
% Description: Read spikes via UART / Ethernet and reconstruct the signal from it.
% Note: Anna Werzi and Manuel Feindert also worked on sub-functions like
% reconstruction_TBS, reconstruction_ATBS and ethernet_data_receive.
% =====================================================

%% Execute TBS SimVals
run('..\FPGA-Design\tbs_core\sim\matlab\tbs.m');
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

%% Load TBS SimVals variables
tbs_vals = load('..\FPGA-Design\tbs_core\sim\matlab\tbs.mat');
% =====================================================

%% Reconstruction Settings
tbs_mode = 0;           % 0... TBS; 1... ATBS
trigger_mode = 0;       % 0... manually; 1... auto (UART) --> change control_mode_i Switch to UART
com_interface = 0;      % 0... UART TX; 1... Ethernet TX; 2... Reconstruct Data (reading data)
auto = 1;               % 0... manually; 1... auto (UART) --> change control_mode_i Switch to UART
saving = 0;             % 0... do not save data and figures; 1... save data and figures                    

signal_select = 0;      % 0... BNC; 1... ECG
virtual_dac_res = 1;    % 0... full DAC res.; 1... virtual DAC res.
read_duration_uart = 3; % in s
ecg_or_sine = 0;        % 0... sine; 1... ecg

% ATBS degrees of freedom via UART
time_win = 4e-3; % time window (1ms, 2ms, 4ms (default), 8ms, 16ms or 32ms)
deltasteps_max = 32; % max. delta steps (4, 8, 16, 32 (default) and 64)

testing = 1;            % 1... test save
% =====================================================

%% Signal Constants
Vpp = 3.0;
Vdc = 1.65;
f_sig = 10;
% =====================================================

%% TBS User Constants
% Clock Frequency
f_clk = tbs_vals.f_clk; % Hz

% DAC Bitwidth
if virtual_dac_res == 1 && tbs_mode == 0    % "virtual" DAC resolution
    % dac_bitwidth = 3; % e
    % dac_bitwidth = 4; % d
    dac_bitwidth = 5; % e / c
    % dac_bitwidth = 6; % d / b
    % dac_bitwidth = 7; % c / a
    % dac_bitwidth = 8; % b
    % dac_bitwidth = 9; % a
else                                        % Full DAC resolution
    dac_bitwidth = tbs_vals.dac_bitwidth;
end

% Adaptive Control Unit
buffer_size = tbs_vals.buffer_size;
d_max_lim = tbs_vals.d_max_lim; % limits for adjusting weylmax
d_min_lim = tbs_vals.d_min_lim; % limits for adjusting weylmin
adapt_on_overflow = 1; % 0... No, 1... yes

% Voltage
VDD = tbs_vals.VDD;
dc_offset = tbs_vals.dc_offset; % V
max_clipping_voltage = tbs_vals.max_clipping_voltage; % limits voltage clipping limit
min_threshold = max_clipping_voltage / 2^dac_bitwidth;
max_threshold = deltasteps_max * min_threshold;

% Time Measurement Unit
time_counter_bitwidth = tbs_vals.time_counter_bitwidth; % TMAX > TWINDOW (max 1 overflow)

% UART Contants
uart_baudrate = 115200; % 19200, 38400, 57600, 115200 (default)
uart_data_length = tbs_vals.uart_data_length;
bytes_per_sample = tbs_vals.bytes_per_sample;
if com_interface ~= 2
    device = serialport("COM3", uart_baudrate, "Timeout", 20);
    flush(device);
end
% Ethernet Contants
% n_ethernet_packages * PAYLOAD_SIZE bytes
if ecg_or_sine == 0     % sine
    n_ethernet_packages = 50;
elseif ecg_or_sine == 1 % ECG
    n_ethernet_packages = 20;
end

RECEIVE_PORT = 25000;             % Target IP where data should be received from
RECEIVE_IP = '192.168.1.100';     % Target Port where data should be received from
PAYLOAD_SIZE = tbs_vals.ethernet_payload;  % Amount of Payload Bytes in one frame
% =====================================================

%% Write Data
% It is important that the Switch on the Dev. Board is set to UART Control.
% The digital core is configured via UART. Alternatively, one could set the
% digital core settings with Hterm or PuTTY.
% However, sampling is started by manually activating the AWG trigger.

% Note: Due to reproducibility and comparability reasons, the sampling 
% process was synchronized to the beginning of the used ECG / Sine trace. 
% The sync signal produced by the singal generator is read by the FPGA
% via a GPIO.

% Note that there is no Ethernet RX in the digital core. Hence, no data can
% be sent by the Matlab Skript using Ethernet.
% The Ethernet TX is also optional, check if it is synthesized in the core.

if com_interface ~= 2 && auto == 1 % UART (auto)
    fprintf("Auto Mode: Setting up digital core via UART... \n");

    write(device, "R", "char");      % Reset
    fprintf("Reset digital core. \n");
    pause(0.5);

    write(device, "1", "char");      % Start sampling on trigger
    fprintf("Start sampling on trigger. \n");
    pause(0.5);
    
    % ATBS / TBS
    if tbs_mode == 1  
        write(device, "3", "char");  % ATBS
        fprintf("ATBS. \n");
    else
        write(device, "2", "char");  % TBS
        fprintf("TBS. \n");
    end
    pause(0.5);
    
    % ECG / BNC
    if signal_select == 1  
        write(device, "4", "char");  % ECG
        fprintf("ECG. \n");
    else
        write(device, "5", "char");  % BNC
        fprintf("BNC. \n");
    end
    pause(0.5);

    % Virtual DAC Res. / Full DAC Res.
    if virtual_dac_res == 1 % Virtual DAC Resolution
        write(device, "9", "char"); % "virtual"
        pause(0.5);
        write(device, "V", "char"); % change "virtual"
        pause(0.5);
        fprintf("Virtual DAC Resolution. \n");
        if tbs_vals.dac_bitwidth == 10
            if dac_bitwidth == 9
                write(device, "a", "char");
                fprintf("9-Bit. \n");
            elseif dac_bitwidth == 8
                write(device, "b", "char");
                fprintf("8-Bit. \n");
            elseif dac_bitwidth == 7
                write(device, "c", "char");
                fprintf("7-Bit. \n");
            elseif dac_bitwidth == 6
                write(device, "d", "char");
                fprintf("6-Bit. \n");
            elseif dac_bitwidth == 5
                write(device, "e", "char");
                fprintf("5-Bit. \n");
            end
        elseif tbs_vals.dac_bitwidth == 8
            if dac_bitwidth == 7
                write(device, "a", "char");
                fprintf("7-Bit. \n");
            elseif dac_bitwidth == 6
                write(device, "b", "char");
                fprintf("6-Bit. \n");
            elseif dac_bitwidth == 5
                write(device, "c", "char");
                fprintf("5-Bit. \n");
            elseif dac_bitwidth == 4
                write(device, "d", "char");
                fprintf("4-Bit. \n");
            elseif dac_bitwidth == 3
                write(device, "e", "char");
                fprintf("3-Bit. \n");
            end
        end
    else                    % Full DAC Resolution
        write(device, "8", "char");
        fprintf("Full DAC Resolution. \n");
        fprintf("%d-Bit. \n", tbs_vals.dac_bitwidth);
    end
    pause(0.5);
    
    % Set Baudrate
    write(device, "B", "char");
    pause(0.5);
    if uart_baudrate == 19200
        write(device, "a", "char");
        fprintf("19200 baud. \n");
    elseif uart_baudrate == 38400
        write(device, "b", "char");
        fprintf("38400 baud. \n");
    elseif uart_baudrate == 57600
        write(device, "c", "char");
        fprintf("57600 baud. \n");
    elseif uart_baudrate == 115200
        write(device, "d", "char");
        fprintf("115200 baud. \n");
    end
    fprintf("Baudrate. \n");
    pause(0.5);

    % Set ATBS win_length / time_win
    write(device, "W", "char");
    pause(0.5);
    if time_win == 1e-3
        write(device, "a", "char");
        fprintf("1ms. \n");
    elseif time_win == 2e-3
        write(device, "b", "char");
        fprintf("2ms. \n");
    elseif time_win == 4e-3
        write(device, "c", "char");
        fprintf("4ms. \n");
    elseif time_win == 8e-3
        write(device, "d", "char");
        fprintf("8ms. \n");
    elseif time_win == 16e-3
        write(device, "e", "char");
        fprintf("16ms. \n");
    elseif time_win == 32e-3
        write(device, "f", "char");
        fprintf("32ms. \n");
    end

    fprintf("ATBS win_length / time_win. \n");
    pause(0.5);
    
    % Set ATBS deltasteps_max
    write(device, "D", "char");
    pause(0.5);
    if deltasteps_max == 4
        write(device, "a", "char");
        fprintf("max. 4 steps. \n");
    elseif deltasteps_max == 8
        write(device, "b", "char");
        fprintf("max. 8 steps. \n");
    elseif deltasteps_max == 16
        write(device, "c", "char");
        fprintf("max. 16 steps. \n");
    elseif deltasteps_max == 32
        write(device, "d", "char");
        fprintf("max. 32 steps. \n");
    elseif deltasteps_max == 64
        write(device, "e", "char");
        fprintf("max. 64 steps. \n");
    end
    fprintf("ATBS deltasteps_max. \n");
    pause(0.5);

    % Optionally, one can set the analog trigger and SC NOC settings here.
    % However, they are not mandatory for the PoC (only ASIC).

    % Update Digital Core
    write(device, "U", "char");      % Update
    fprintf("Update. \n");
    pause(1);

    fprintf("Auto Mode: Settings of digital core are set... \n");
    pause(0.5);
end

%% Read Data
if com_interface == 0       % UART
    flush(device);
    pause(0.5);

    fprintf("Reading UART... \n");
    data_u8 = [];
    tic;
    
    fprintf("Press Trigger / Release Reset... \n");

    % Start ATBS ADC via UART by sending two triggers
    if trigger_mode == 1
        write(device, "S", "char");  % Trigger 1
        fprintf("Send Trigger 1... \n");
        pause(0.5);
        write(device, "S", "char");  % Trigger 2
        fprintf("Send Trigger 2... \n");
    end

    while toc < read_duration_uart
        try
            data_u8(end+1:end + bytes_per_sample, 1) = read(device, bytes_per_sample, "uint8");
        catch
            break;
        end    
        
        if length(data_u8) == bytes_per_sample % first data point received
            disp('Started reading from UART...')
            tic
        end
    end
    % Close the serial port connection
    delete(device);
    clear device;
elseif com_interface == 1   % Ethernet
    fprintf("Reading ETHERNET... \n");
    tic;

    fprintf("Press Trigger / Release Reset... \n");

    % Start ATBS ADC via UART by sending two triggers
    if trigger_mode == 1
        write(device, "S", "char");  % Trigger 1
        fprintf("Send Trigger 1... \n");
        pause(0.5);
        write(device, "S", "char");  % Trigger 2
        fprintf("Send Trigger 2... \n");
    end

    [data_u8, time] = ethernet_data_receive(PAYLOAD_SIZE, RECEIVE_PORT, RECEIVE_IP, n_ethernet_packages);
    data_u8 = double(data_u8.');
elseif com_interface == 2   % Reconstruct Data
    % recon_data = load('data\UART\Sine_10Hz\TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat');
    recon_data = load('data\UART\Sine_10Hz\ATBS_PoC_8Bit_4ms_Sine_Reconstruction.mat');
    % recon_data = load('data\UART\ECG\TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
    % recon_data = load('data\UART\ECG\ATBS_PoC_8Bit_ECG_Reconstruction.mat');
    % Reconstruction Settings
    tbs_mode = recon_data.tbs_mode;           % 0... TBS; 1... ATBS
    virtual_dac_res = recon_data.virtual_dac_res;    % 0... full DAC res.; 1... virtual DAC res.
    ecg_or_sine = recon_data.ecg_or_sine;        % 0... sine; 1... ecg
    time_win = recon_data.time_win; % time window (4ms or 8ms)
    % User Constants
    f_clk = recon_data.f_clk;
    dac_bitwidth = recon_data.dac_bitwidth;
    buffer_size = recon_data.buffer_size;
    d_max_lim = recon_data.d_max_lim;
    d_min_lim = recon_data.d_min_lim;
    adapt_on_overflow = recon_data.adapt_on_overflow;
    dc_offset = recon_data.dc_offset;
    max_clipping_voltage = recon_data.max_clipping_voltage;
    min_threshold = recon_data.min_threshold;
    max_threshold = recon_data.max_threshold;
    time_counter_bitwidth = recon_data.time_counter_bitwidth;
    bytes_per_sample = recon_data.bytes_per_sample;
    % Reconstruction Data
    data_u8 = recon_data.data_u8;
end
% =====================================================

%% Transform read data (data_u8) into useable data (data_s16) & time vector (abs_t)
% Concatenate 8-Bit unsigned data to (8*nbytes)-Bit signed data (still contains overflow zeros)
data_s16_w_ovf_zeros = concatenate_bytes(data_u8, bytes_per_sample, 1);

% Remove overflow zeros
data_s16 = nonzeros(data_s16_w_ovf_zeros);

% Construct time vector
abs_t = get_time_vector(data_s16_w_ovf_zeros, time_counter_bitwidth) / f_clk;
% =====================================================

%% Reconstruction
% Reconstruct signal from spikes
fprintf("Reconstruction... \n");

if tbs_mode == 1        % ATBS
    [recon, spikes, t_recon, phantom_spikes, t_phantom, th] = reconstruction_ATBS(data_s16_w_ovf_zeros, ...
                                                    min_threshold, max_threshold, d_min_lim, d_max_lim, ...
                                                    abs_t, time_win, dc_offset, buffer_size, ...
                                                    max_clipping_voltage/2, adapt_on_overflow);
elseif tbs_mode == 0    % TBS
    [recon, spikes, t_recon, phantom_spikes, t_phantom] = reconstruction_TBS(data_s16, min_threshold, abs_t, dc_offset); 
end
% =====================================================

%% Plotting Results
ecg_data = load('..\Measurements\Generate_ECG\data\ecg_data_0.15V_3.15V.mat');
% ecg_data = load('..\Measurements\Generate_ECG\data\ecg_data_0.3V_2.4V.mat');

if ecg_or_sine == 0     % sine
    t_analog = 0:1/ecg_data.N:3 - 1/ecg_data.N;
    sine = Vpp / 2 * sin(2*pi*t_analog*f_sig) + Vdc; % 3.0Vpp, 1.65Vdc
    analog_signal = sine;
elseif ecg_or_sine == 1 % ECG
    t_analog = 0:1/ecg_data.N:1 - 1/ecg_data.N;
    % ecg_original = ecg_data.ecg_data_interp * 2.94/3.0 + (1.45 - );
    ecg_original = ecg_data.ecg_data_interp;
    analog_signal = ecg_original;

    % t_recon = t_recon - t_recon(1) + 2.5 * 10^(-3);
end

fprintf("Plotting... \n");

figure();
% plot(t_analog, analog_signal)
hold on;
stem(t_recon, 0.25 * spikes.'); % spikes
scatter(t_recon, recon, 'filled'); % sample points
stairs(t_recon, recon); % connect sample points 0th-order interpolation (ZOH... Zero Order Hold)
plot(t_recon, recon); % connect sample points 1st-order (linear) interpolation
stem(t_phantom, 0.25 * phantom_spikes.');
if tbs_mode == 1
    stairs(t_recon, th + 0.5);
end
ylabel('$V$ (V), Spikes');
xlabel('$t$ (s)');
grid on;
if ecg_or_sine == 0     % Sine
    % xlim([0, 0.4]);
else
    xlim([0, t_analog(end)]);
end

if tbs_mode == 1
    % title('Spikes and reconstructed signal (ATBS)');
    legend("analog signal", "valid spikes", "signal samples", "ZOH", "linear interp.", "phantom spikes", "thresholds + 0.5", "Location", "eastoutside");
else
    % title('Spikes and reconstructed signal (TBS)');
    legend("analog signal", "valid spikes", "signal samples", "ZOH", "linear interp.", "phantom spikes", "Location", "east");
end
if com_interface == 0
    title('UART');
elseif com_interface == 1
    title('Ethernet');
end
% ================================================

%% Save figures and workspace
% Distinguish between
% UART / Ethernet
% ATBS / TBS, 
% Full or "Virtual" DAC resolution
% Sine or ECG
if testing == 0
    if saving == 1 && com_interface == 0 % UART
        if ecg_or_sine == 0     % Sine
            if tbs_mode == 1    % ATBS
                if dac_bitwidth == 8
                    if time_win == 4 * 10^(-3)
                        savefig(sprintf('figures/UART/Sine/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.mat');
                    elseif time_win == 8 * 10^(-3)
                        savefig(sprintf('figures/UART/Sine/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.mat');
                    end
                elseif dac_bitwidth == 10
                    savefig(sprintf('figures/UART/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.fig'));
                    save('data/UART/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat');
                    end 
                else
                    if dac_bitwidth == 8
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_8Bit_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_8Bit_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 10
                        savefig(sprintf('figures/UART/Sine/TBS_PoC_10Bit_Sine_Reconstruction.fig'));
                        save('data/UART/Sine/TBS_PoC_10Bit_Sine_Reconstruction.mat');
                    end
                end
            end
        else                    % ECG
            if tbs_mode == 1    % ATBS
                if dac_bitwidth == 8
                    savefig(sprintf('figures/UART/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.fig'));
                    save('data/UART/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                elseif dac_bitwidth == 10
                    savefig(sprintf('figures/UART/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.fig'));
                    save('data/UART/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                    end 
                else
                    if dac_bitwidth == 8
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 10
                        savefig(sprintf('figures/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.fig'));
                        save('data/UART/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                    end
                end
            end
        end
    elseif saving == 1 && com_interface == 1 % Ethernet
        if ecg_or_sine == 0     % Sine
            if tbs_mode == 1    % ATBS
                if dac_bitwidth == 8
                    if tbs_vals.time_win == 4 * 10^(-3)
                        savefig(sprintf('figures/Ethernet/Sine/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/ATBS_PoC_8Bit_4ms_Sine_Reconstruction.mat');
                    elseif tbs_vals.time_win == 8 * 10^(-3)
                        savefig(sprintf('figures/Ethernet/Sine/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/ATBS_PoC_8Bit_8ms_Sine_Reconstruction.mat');
                    end
                elseif dac_bitwidth == 10
                    savefig(sprintf('figures/Ethernet/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.fig'));
                    save('data/Ethernet/Sine/ATBS_PoC_10Bit_Sine_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_3Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_4Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_5Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_6Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_7Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_8Bit_virtual_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_9Bit_virtual_Sine_Reconstruction.mat');
                    end 
                else
                    if dac_bitwidth == 8
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_8Bit_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_8Bit_Sine_Reconstruction.mat');
                    elseif dac_bitwidth == 10
                        savefig(sprintf('figures/Ethernet/Sine/TBS_PoC_10Bit_Sine_Reconstruction.fig'));
                        save('data/Ethernet/Sine/TBS_PoC_10Bit_Sine_Reconstruction.mat');
                    end
                end
            end
        else                    % ECG
            if tbs_mode == 1    % ATBS
                if dac_bitwidth == 8
                    savefig(sprintf('figures/Ethernet/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.fig'));
                    save('data/Ethernet/ECG/ATBS_PoC_8Bit_ECG_Reconstruction.mat');
                elseif dac_bitwidth == 10
                    savefig(sprintf('figures/Ethernet/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.fig'));
                    save('data/Ethernet/ECG/ATBS_PoC_10Bit_ECG_Reconstruction.mat');
                end
            else                % TBS
                % DAC Bitwidth
                if virtual_dac_res == 1
                    if dac_bitwidth == 3
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_3Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 4
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_4Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 5
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_5Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 6
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_6Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 7
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_7Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 8
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_8Bit_virtual_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 9
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_9Bit_virtual_ECG_Reconstruction.mat');
                    end 
                else
                    if dac_bitwidth == 8
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_8Bit_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_8Bit_ECG_Reconstruction.mat');
                    elseif dac_bitwidth == 10
                        savefig(sprintf('figures/Ethernet/ECG/TBS_PoC_10Bit_ECG_Reconstruction.fig'));
                        save('data/Ethernet/ECG/TBS_PoC_10Bit_ECG_Reconstruction.mat');
                    end
                end
            end
        end
    end
else            % Testing
    savefig(sprintf('figures/testing.fig'));
    save('data/testing.mat');

    %% Export .csv for pgfplots
    spikes = 0.25 * spikes.';
    % th = th + 0.5;
    % data_table = table(t_recon.', spikes, recon.', th.', 'VariableNames', {'t_recon', 'spikes', 'recon', 'th'});
    data_table = table(t_recon.', spikes, recon.', 'VariableNames', {'t_recon', 'spikes', 'recon'});
    writetable(data_table, 'figures/testing.csv', 'WriteVariableNames', true)
end
% =====================================================