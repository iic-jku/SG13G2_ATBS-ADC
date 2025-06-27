% Author: Simon Dorrer
% Last Modified: 23.03.2025
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
f_clk = 8e6; % Hz

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
dac_bitwidth = 7;

% "Virtual" DAC resolution = ld(2^dac_bitwidth / tbs_min_delta_steps) for TBS
% "Virtual" DAC resolution does not influence ATBS.
% Four different "virtual" DAC resolutions can be set via UART.
% Full DAC resolution divided by 2, 4, 8, and 16.
% Full DAC resolution of 7-Bit results into: 
% 6-, 5-, 4- or 3-Bit "virtual" DAC resolutions
% The default "virtual" DAC resolution equals 5-Bit.
% virtual_dac_resolution = 5;
% tbs_min_delta_steps = round(2^dac_bitwidth / 2^virtual_dac_resolution);

% DAC SETTLING TIME
dac_settling_time = 1e-6;
dac_settling_clks = round(dac_settling_time * f_clk);

% Delta Steps Bitwidth
delta_steps_bitwidth = dac_bitwidth;

% Clipping of DAC Voltage (should be symmetric to dc_offset)
VDD = 1.5; % V
VSS = 0; % V
dc_offset = (VDD - VSS) / 2; % V
delta_v = 0.75; % V (full scale)
% delta_v = 0.55; % V (0.2V - 1.3V)
% Symmetrical Clipping
max_clipping_voltage = dc_offset + delta_v; % V
min_clipping_voltage = dc_offset - delta_v; % V
% Asymmetrical Clipping (NOT working for ATBS, only TBS)
% max_clipping_voltage = 1.0; % V
% min_clipping_voltage = 0.2; % V
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

% Four different deltasteps_max can be set (2nd ATBS degree of freedom).
% 2, 4, 8, and 16 (default)
% E.g.: deltasteps_max = 16; % dac_bitwidth = 7: adaptive between 3-Bit and 7-Bit

% ANALOG FRONT-END CONTROL
% Analog Trigger
% 5 different periods / frequencies can bet set via UART.
% dac_settling_time / 16, dac_settling_time / 8, dac_settling_time / 4, dac_settling_time / 2, dac_settling_time
% 62.5kHz, 125kHz, 250kHz, 500kHz, 1MHz (default)
% Hence, trigger_counter_max must be set for the maximum period.
f_ana_min = 62.5e3;
trigger_counter_max = round(f_clk / f_ana_min);

% Switched Capacitor (SC) Non-Overlapping Clock (NOC) Generator
% This design needs two SC NOCs with different frequency ranges.

% The first SC NOC is needed for Vcm Generator, Bias Circuit and CMFB.
% 3 different frequencies can bet set via UART.
% 31.25kHz, 62.5kHz (default), and 125kHz
f_sc_1_min = 31.25e3;
sc_noc_1_counter_max = round(f_clk / f_sc_1_min);

% The second SC NOC is needed for the SC feedback resistor.
% 2 different frequencies can bet set via UART.
% 3906.2Hz, and 7812.5Hz (default)
% Shunt Type SC resistor due to lower output-referred noise.
% f_sc = 5 / (C * R)
C_sc_max = 4e-15; % 4fF
R_sc_max = 320e9; % 320GOhm
f_sc_2_min = 5 / (C_sc_max * R_sc_max); % = 3906.2Hz
sc_noc_2_counter_max = round(f_clk / f_sc_2_min);

% TIME MEASUREMENT UNIT
% WIN_BITS = ceil(log2(time_win_max * f_clk)) = time_counter_bitwidth + 1 (set as constant in tbs_core_ea.vhd)
time_counter_bitwidth = ceil(log2(time_win_max * f_clk)); % TMAX > TWINDOW (max 1 overflow)

% MEMORY CONSTATNS
addr_bitwidth = 6; % 6
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
uart_baud_counter_max, delta_steps_bitwidth, dac_bitwidth, ...
max_clipping_value, min_clipping_value, dac_settling_clks, d_max_lim, d_min_lim, ...
ethernet_payload, trigger_counter_max, sc_noc_1_counter_max, sc_noc_2_counter_max, ...
vhdl_src_path, package_prefix)

package_prefix = 'AdaptiveCtrl';
vhdl_src_path ='../../adaptive_threshold_control/sim/vhdl/'; % path where the vhdl source code is located

WriteAdaptiveSimVals(level_of_reg, vhdl_src_path, package_prefix);

WriteAdaptiveStdPackage(buffer_size, vhdl_src_path);
% =====================================================