% Author: Simon Dorrer
% Last Modified: 28.02.2025
% Description: Set & calculate all used constants and create SimVals files.
% =====================================================

close all;
clear all;
clc;

% =====================================================
% USER CONSTANTS
% =====================================================
% SIMULATION?
simulation_flag = 0; % 1... simulate digital core

% CLOCK FREQUENCY
% f_clk = 100e6; % Hz (s7-Mini without PLL)
% f_clk = 50e6; % Hz (DE10 without PLL, s7-Mini with PLL)
f_clk = 8e6; % Hz (ASIC or with PLL)

% INPUT SYNC. CHAIN FOR COMPARATORS
n_ff = 2;
n_channels = 2;

% DEBOUNCING TIME FOR INPUT BUTTONS / SWITCHES
% On average, buttons bounce around 5ms.
if simulation_flag == 0
    debounce_counter_time = 2^16 * 1/f_clk; % 16-Bit Counter --> 8.2ms
else
    debounce_counter_time = 10 * 1/f_clk; % 1.25us (simulation)
end
debounce_counter_max = f_clk * debounce_counter_time;

% DAC BITWIDTH
dac_bitwidth = 8; % 8 / 10

% "Virtual" DAC resolution = ld(2^dac_bitwidth / tbs_min_delta_steps) for TBS
% "Virtual" DAC resolution does not influence ATBS.
% Five different "virtual" DAC resolutions can be set via UART.
% Full DAC resolution divided by 2, 4, 8, 16 and 32.
% Full DAC resolution of 8-Bit results into: 
% 7-, 6-, 5-, 4- or 3-Bit "virtual" DAC resolutions
% Full DAC resolution of 10-Bit results into:
% 9-, 8-, 7-, 6- or 5-Bit "virtual" DAC resolutions
% The default "virtual" DAC resolution equals 5-Bit or 7-Bit depending on 
% the full DAC resolution 8-Bit or 10-Bit.
% virtual_dac_resolution = 5;
% tbs_min_delta_steps = round(2^dac_bitwidth / 2^virtual_dac_resolution);

% DAC SETTLING TIME
dac_settling_time = 10e-6; % 10us (e.g. AD5330 / AD5331)
dac_settling_clks = round(dac_settling_time * f_clk);

% Delta Steps Bitwidth
delta_steps_bitwidth = dac_bitwidth;

% Clipping of DAC Voltage (should be symmetric to dc_offset)
VDD = 3.3; % V
VSS = 0; % V
dc_offset = (VDD - VSS) / 2; % V
delta_v = 1.65; % V (full scale)
% delta_v = 0.85; % V (0.8V - 2.5V)
% Symmetrical Clipping
max_clipping_voltage = dc_offset + delta_v; % V
min_clipping_voltage = dc_offset - delta_v; % V
% Asymmetrical Clipping (NOT working for ATBS, only TBS)
% max_clipping_voltage = 2.5; % V
% min_clipping_voltage = 0.4; % V
max_clipping_value = ceil(max_clipping_voltage / VDD * (2^dac_bitwidth - 1));
min_clipping_value = ceil(min_clipping_voltage / VDD * (2^dac_bitwidth - 1));

% Init. DAC voltage values
fprintf('lower_dac_v = %.3fV\n', dc_offset);
fprintf('upper_dac_v = %.3fV (full N-Bit DAC resolution) \n', dc_offset + 2 * VDD / 2^dac_bitwidth);
fprintf('upper_dac_v = %.3fV (virtual DAC resolution: N-1 Bit) \n', dc_offset + 2 * VDD / 2^(dac_bitwidth - 1));
fprintf('upper_dac_v = %.3fV (virtual DAC resolution: N-2 Bit) \n', dc_offset + 2 * VDD / 2^(dac_bitwidth - 2));
fprintf('upper_dac_v = %.3fV (virtual DAC resolution: N-3 Bit) \n', dc_offset + 2 * VDD / 2^(dac_bitwidth - 3));
fprintf('upper_dac_v = %.3fV (virtual DAC resolution: N-4 Bit) \n', dc_offset + 2 * VDD / 2^(dac_bitwidth - 4));
fprintf('upper_dac_v = %.3fV (virtual DAC resolution: N-5 Bit) \n', dc_offset + 2 * VDD / 2^(dac_bitwidth - 5));

% ADAPTIVE CONTROL UNIT
buffer_size = 15;
level_of_reg = (buffer_size + 1)/2; % insert pipeline register after every nth evaluation step (none - buffer_size + 1)
% Small level_of_reg inserts more registers. Hence, the time complexity is better (fmax increases), but more hardware is needed.
d_max_lim = 2;          % limits for adjusting weylmax
d_min_lim = 2;          % limits for adjusting weylmin

% Four different window lengths (in clock cycles) can be set via UART (1st ATBS degree of freedom).
% The maximum window length equals win_length_max = WIN_BITS = time_counter_bitwidth + 1 (set as constant in tbs_core_ea.vhd).
% WIN_BITS = ceil(log2(time_win_max * f_clk))
win_length_1ms = round(f_clk * 1e-3)
win_length_2ms = round(f_clk * 2e-3)
win_length_4ms = round(f_clk * 4e-3) % default
win_length_8ms = round(f_clk * 8e-3)
win_length_16ms = round(f_clk * 16e-3)
win_length_32ms = round(f_clk * 32e-3)
% time_win_max = 8e-3; % set to have data_bitwidth = 16 (2^16 / f_clk = 8.2ms)
time_win_max = 32e-3; % set to have data_bitwidth = 18 (2^18 / f_clk = 32.8ms)
% time_win_max = 64e-3; % set to have data_bitwidth = 19 (2^19 / f_clk = 65.5ms)
% time_win_max = 128e-3; % set to have data_bitwidth = 20 (2^20 / f_clk = 131ms)
% time_win_max = 2000e-3; % set to have data_bitwidth = 24 (2^24 / f_clk = 2.097s)

% Five different deltasteps_max can be set (2nd ATBS degree of freedom).
% 4, 8, 16, 32 (default) and 64
% E.g.:
% --> deltasteps_max = 64; % dac_bitwidth = 10: adaptive between 4-Bit and 10-Bit
% --> deltasteps_max = 32; % dac_bitwidth = 8: adaptive between 3-Bit and 8-Bit

% PWM
% Given pwm_freq --> pwm_counter_bitwidth
% pwm_freq = 1e6; % 1MHz
% pwm_counter_max = f_clk / pwm_freq;
% pwm_counter_bitwidth = ceil(log2(pwm_counter_max));

% Given pwm_counter_bitwidth --> pwm_freq
pwm_counter_bitwidth = dac_bitwidth;
pwm_counter_max = 2^pwm_counter_bitwidth;
pwm_freq = f_clk / pwm_counter_max;

% Analog Trigger
% Default period: dac_settling_time
% Minimum period: dac_settling_time / 2
% Maximum period: dac_settling_time * 2
% The period can be set to minimum, default or maximum via UART.
% Hence, trigger_counter_max must be set for the maximum period.
trigger_counter_max = round(f_clk * dac_settling_time * 2);

% Switched Capacitor (SC) Non-Overlapping Clock (NOC) Generator
% 3 different frequencies, each time multiplied by 2. f_min * 2, ...
% Shunt Type SC resistor due to lower output-referred noise.
% f_sc = 5 / (C * R)
C_sc_max = 4e-15; % 4fF
R_sc_max = 320e9; % 320GOhm
f_sc_min = 5 / (C_sc_max * R_sc_max);
sc_noc_counter_max = round(f_clk / f_sc_min);
% sc_noc_delay_max = sc_noc_counter_max / 2; % max. delay in # registers

% TIME MEASUREMENT UNIT
% WIN_BITS = ceil(log2(time_win_max * f_clk)) = time_counter_bitwidth + 1 (set as constant in tbs_core_ea.vhd)
time_counter_bitwidth = ceil(log2(time_win_max * f_clk)); % TMAX > TWINDOW (max 1 overflow)

% MEMORY CONSTATNS
addr_bitwidth = 6; % 6 (ASIC), 8 / 16 (DE10), 14 (s7-Mini)
data_bitwidth = time_counter_bitwidth + 1; % signed counter values
total_block_memory_bits = data_bitwidth * 2^addr_bitwidth % max. 4096 (Yosys)

% MAIN FSM / COUNTER CONSTANTS
main_counter_time = ceil(10*(debounce_counter_time + 2 * dac_settling_time))/10 ; % dac_settling_time + debounce_counter_time;
main_counter_max = f_clk * main_counter_time;

% =====================================================
% COMMUNICATION CONSTANTS (UART + ETHERNET)
% =====================================================
% UART
% The standardized baud rates are:
% 4800, 9600, 19200, 38400, 57600, 115200, 230400, 460800, 921600
% Keep in mind that uart_baud_counter = round(f_clk / uart_baudrate) >~ 25.
% Hence, 230400 is the maximum for 8MHz.
% Four different baud rates can be set via UART:
% 19200, 38400, 57600, 115200
% The minimum baud rate defines the maximum baud counter (uart_baud_counter_max).
uart_data_length = 8;
uart_baudrate_min = 19200;
uart_baud_counter_max = round(f_clk / uart_baudrate_min);
bytes_per_sample = ceil(data_bitwidth / uart_data_length);

% ETHERNET
% Currently, 50MHz is needed for 10MBit Ethernet communication.
% Normally, 10Mbit should also work with 10MHz.
ethernet_payload = 100 * bytes_per_sample;

% =====================================================
% SAVE WORKSPACE FOR DERIVING SIMVALS GENERATED IN MATLAB
% =====================================================
save('tbs.mat');

% =====================================================
% WRITE SIM VALS PACKAGES
% =====================================================
package_prefix = 'TBS';
vhdl_src_path='../vhdl/'; % path where the vhdl source code is located

WriteSimVals(f_clk, n_ff, n_channels, addr_bitwidth, data_bitwidth, ...
time_counter_bitwidth, main_counter_max, debounce_counter_max, uart_data_length, ...
uart_baud_counter_max, delta_steps_bitwidth, dac_bitwidth, pwm_counter_bitwidth, ...
max_clipping_value, min_clipping_value, dac_settling_clks, d_max_lim, d_min_lim, ...
ethernet_payload, trigger_counter_max, sc_noc_counter_max, ...
vhdl_src_path, package_prefix)

package_prefix = 'AdaptiveCtrl';
vhdl_src_path ='../../adaptive_threshold_control/sim/vhdl/'; % path where the vhdl source code is located

WriteAdaptiveSimVals(level_of_reg, vhdl_src_path, package_prefix);

WriteAdaptiveStdPackage(buffer_size, vhdl_src_path);
% =====================================================