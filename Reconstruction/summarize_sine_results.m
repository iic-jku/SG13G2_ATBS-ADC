% Author: Simon Dorrer
% Last Modified: 15.10.2024
% Description: Summarizes the results from calculate_SNR_SNDR.m and plots
% it over different metrics (e.g. frequency, ...).
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

blue_ml = "#0072BD";
red_ml = "#D95319";
gray = "#808080";

tbs_mode = 1;           % 0... TBS; 1... ATBS

%% SNR / SNDR against f
% Frequency vector
f_tbs = [1, 10, 20, 50];
f_atbs = [1, 10, 50];

% Max. SNR
SNR_max = [88.80, 68.80, 62.78, 54.82];

% TBS
% 5-Bit
SNDR_tbs_5bit = [55.03, 54.62, 55.29, 55.18];
SNR_tbs_5bit = [52.50, 53.09, 52.99, 53.87];
N_tbs_5bit = [56, 56, 56, 56]; % samples per period

% 6-Bit
% SNDR_tbs_6bit = [A, A, A, A];
% SNR_tbs_6bit = [52.59, 53.28, 52.77, B];
% N_tbs_6bit = [C, C, C, C]; % samples per period

% 7-Bit
% SNDR_tbs_7bit = [A, A, A, A];
% SNR_tbs_7bit = [B, B, B, B];
% N_tbs_7bit = [C, C, C, C]; % samples per period

% 8-Bit
% SNDR_tbs_8bit = [A, A, A, A];
SNR_tbs_8bit = [52.67, 53.26, 53.8, 53.94];
N_tbs_8bit = [464, 464, 464, 464]; % samples per period
% ================================================

% ATBS
% time_win = 4ms
% adaptive between 3-Bit and 8-Bit (1:32*thmin)   
SNDR_atbs_4ms = [55.07, 54.08, 44.98]; % spline
SNR_atbs_4ms = [52.97, 52.71, 41.65];
N_atbs_4ms = [293, 36, 14];

% ATBS
% time_win = 8ms
% adaptive between 3-Bit and 8-Bit (1:32*thmin) 
% SNDR_atbs_8ms = [A, -, A, A]; % spline
% SNR_atbs_8ms = [B, -, B, B];
% N_atbs_8ms = [C, C, C, C];


figure();
dy = 1.5;
semilogx(f_tbs, SNR_max, 'Color', red_ml, 'Marker', 'x', 'DisplayName', 'MAX. SNR)')
hold on;
% semilogx(f_tbs, SNR_tbs_5bit, 'Color', gray, 'Marker', '*', 'DisplayName', 'SNR 5-Bit TBS')
% semilogx(f_tbs, SNDR_tbs_5bit, 'Color', blue_ml, 'Marker', '*', 'DisplayName', 'SNDR 5-Bit TBS')
semilogx(f_tbs, SNR_tbs_8bit, 'Color', '#77AC30', 'Marker', 'x', 'DisplayName', 'SNR 8-Bit TBS')
semilogx(f_atbs, SNR_atbs_4ms, 'Color', gray, 'Marker', 'x', 'DisplayName', 'SNR ($4\,\mathrm{ms}$, $32 \theta$)')
semilogx(f_atbs, SNDR_atbs_4ms, 'Color', blue_ml, 'Marker', 'x', 'DisplayName', 'SNDR ($4\,\mathrm{ms}$, $32 \theta$)')
semilogx(5, 25, 'black', 'Marker', 'x', 'HandleVisibility', 'off')
text(5, 25+dy, sprintf('N (samples)'), 'Fontsize', 16)
grid on; 
grid minor; 
box on; 
legend("Interpreter","latex",'Location','northeast');
xlabel("$f\,(\mathrm{Hz})$");
ylabel("SNR/SNDR~(dB)");
% xlim([1, 50]);


% Messungen
% 1Hz:
% 
% 5-Bit:
%   SNR = 52.50
%   SNDR = 55.03
%   N = 56
%   
% 6-Bit:
%   SNR = 52.59
%   SNDR = 55.08
%   N = 116
%   
% 7-Bit:
%   SNR = 52.67
%   SNDR = 55.15
%   N = 232
% 
% 8-Bit:
%   SNR = 52.67
%   SNDR = 55.15
%   N = 464
%   
% ATBS 4ms:
%   SNR = 52.97
%   SNDR = 55.07
%   N = 293
%   
% ATBS 8ms:
%   SNR =
%   SNDR =
%   N =
%   
% 10Hz:
% 
% 5-Bit:
%   SNR = 53.09
%   SNDR = 54.62
%   N = 56
%   
% 6-Bit:
%   SNR = 53.28
%   SNDR = 54.76
%   N = 116
%   
% 7-Bit:
%   SNR = 53.60
%   SNDR = 54.78
%   N = 232
% 
% 8-Bit:
%   SNR = 53.26
%   SNDR = -
%   N = 464
%   
% ATBS 4ms:
%   SNR = 52.71
%   SNDR = 54.08
%   N = 36
% 
% ATBS 8ms:
%   SNR =
%   SNDR =
%   N =
%   
% 20Hz:
% 
% 5-Bit:
%   SNR = 52.99
%   SNDR = 55.29
%   N = 56
%   
% 6-Bit:
%   SNR = 52.77
%   SNDR = 55.24
%   N = 116
%   
% 7-Bit:
%   SNR = 53.88
%   SNDR = -
%   N = 232
% 
% 8-Bit:
%   SNR = 53.8
%   SNDR = -
%   N = 464
%   
% ATBS 4ms:
%   SNR = -
%   SNDR = - 
%   N = -
% 
% ATBS 8ms:
%   SNR =
%   SNDR =
%   N =
%   
% 50Hz:
% 
% 5-Bit:
%   SNR = 53.87
%   SNDR = 55.18
%   N = 56
%   
% 6-Bit:
%   SNR = 53.26
%   SNDR = -
%   N = 116
%   
% 7-Bit:
%   SNR = 53.42
%   SNDR = -
%   N = 232
% 
% 8-Bit:
%   SNR = 53.94
%   SNDR = -
%   N = 464
%   
% ATBS 4ms:
%   SNR = 44.98 % too small thresholds, increase 8ms window
%   SNDR = 41.65 
%   N = 14
%   
% ATBS 8ms:
%   SNR =
%   SNDR =
%   N =