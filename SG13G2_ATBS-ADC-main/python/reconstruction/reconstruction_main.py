# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Get Ngspice simulated UART bitstream from Xschem and reconstruct the signal from it.
# Created: 03.04.2025
# Last Modified: 03.04.2025
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import scipy.io as sio
from scipy import signal
import pandas as pd
import pickle
import bitstream2data
import concatenate_bytes
import get_time_vector
import reconstruction_ATBS
import reconstruction_TBS
# ============================================

plt.close("all")
# %matplotlib qt
# %matplotlib inline
# ============================================

# Load TBS SimVals variables
tbs_vals = sio.loadmat('../../vhdl/atbs_core_floating_window/sim/matlab/tbs.mat')
# ============================================

# File path to UART bitstream
data_name = 'atbs_top_floating_window_ideal_tb_tran_uart_1us'
file_path = 'data/' + data_name + '.txt'
# ============================================

# Reconstruction Settings
tbs_mode = 0            # 0... TBS; 1... ATBS                
virtual_dac_res = 1     # 0... full DAC res.; 1... virtual DAC res.
ecg_or_sine = 0         # 0... sine; 1... ecg

# ATBS degrees of freedom via UART
time_win = 4e-3         # time window (1ms, 2ms, 4ms (default), 8ms, 16ms or 32ms)
deltasteps_max = 16     # max. delta steps (2, 4, 8 or 16 (default))
# ============================================

# TBS User Constants
# Clock Frequency
f_clk = tbs_vals.get("f_clk")[0][0] # Hz

# DAC Bitwidth
if virtual_dac_res == 1 and tbs_mode == 0:   # "virtual" DAC resolution
    # dac_bitwidth = 3 # d
    # dac_bitwidth = 4 # c
    dac_bitwidth = 5   # b
    # dac_bitwidth = 6 # a
else:                                        # Full DAC resolution
    dac_bitwidth = dac_bitwidth = tbs_vals.get("dac_bitwidth")[0][0]

# Adaptive Control Unit
buffer_size = tbs_vals.get("buffer_size")[0][0]
d_max_lim = tbs_vals.get("d_max_lim")[0][0] # limits for adjusting weylmax
d_min_lim = tbs_vals.get("d_min_lim")[0][0] # limits for adjusting weylmin
adapt_on_overflow = 1 # 0... No, 1... yes

# Voltage
VDD = tbs_vals.get("VDD")[0][0]
dc_offset = tbs_vals.get("dc_offset")[0][0] # V
max_clipping_voltage = tbs_vals.get("max_clipping_voltage")[0][0] # limits voltage clipping limit
min_threshold = max_clipping_voltage / 2**dac_bitwidth
max_threshold = deltasteps_max * min_threshold

# Time Measurement Unit
time_counter_bitwidth = tbs_vals.get("time_counter_bitwidth")[0][0] # TMAX > TWINDOW (max 1 overflow)

# UART Contants
uart_baudrate = 115200; # 19200, 38400, 57600, 115200 (default)
uart_data_length = tbs_vals.get("uart_data_length")[0][0]
bytes_per_sample = tbs_vals.get("bytes_per_sample")[0][0]
# ============================================

if __name__ == '__main__':
    
    ## Load data_u8
    xschem = 1
    if xschem == 1:
        # Load bitstream from .txt and return the decoded data in uint8
        data_u8 = bitstream2data.bitstream2data(file_path, f_clk, uart_baudrate, uart_data_length, 141, 601.3e-6, VDD/2, "little", True)
        data_u8 = data_u8[3:-1]
        print(data_u8)
        data_name = 'TBS_Xschem_5Bit_virtual_Sine_Reconstruction_1us'
    else:
        # Reconstruct Data
        # data_name = 'TBS_PoC_5Bit_virtual_Sine_Reconstruction'
        data_name = 'ATBS_PoC_8Bit_4ms_Sine_Reconstruction'
        # data_name = 'TBS_PoC_5Bit_virtual_ECG_Reconstruction'
        # data_name = 'ATBS_PoC_8Bit_ECG_Reconstruction'
        recon_data = sio.loadmat('data/test/' + data_name + '.mat')
        
        tbs_mode = recon_data.get("tbs_mode")[0][0]
        virtual_dac_res = recon_data.get("virtual_dac_res")[0][0]
        ecg_or_sine = recon_data.get("ecg_or_sine")[0][0]
        time_win = recon_data.get("time_win")[0][0]
        
        # User Constants
        f_clk = recon_data.get("f_clk")[0][0]
        dac_bitwidth = recon_data.get("dac_bitwidth")[0][0]
        buffer_size = recon_data.get("buffer_size")[0][0]
        d_max_lim = recon_data.get("d_max_lim")[0][0]
        d_min_lim = recon_data.get("d_min_lim")[0][0]
        adapt_on_overflow = recon_data.get("adapt_on_overflow")[0][0]
        dc_offset = recon_data.get("dc_offset")[0][0]
        max_clipping_voltage = recon_data.get("max_clipping_voltage")[0][0]
        min_threshold = recon_data.get("min_threshold")[0][0]
        max_threshold = recon_data.get("max_threshold")[0][0]
        time_counter_bitwidth = recon_data.get("time_counter_bitwidth")[0][0]
        bytes_per_sample = recon_data.get("bytes_per_sample")[0][0]
        
        # Reconstruction Data
        data_u8 = recon_data.get("data_u8")[:, 0]
    # ============================================
    
    ## Transform read data (data_u8) into useable data (data_s16) & time vector (abs_t)
    # Concatenate 8-Bit unsigned data to (8*nbytes)-Bit signed data (still contains overflow zeros)
    data_s16_w_ovf_zeros = concatenate_bytes.concatenate_bytes(data_u8, bytes_per_sample, True)

    # Remove overflow zeros
    data_s16 = data_s16_w_ovf_zeros[np.nonzero(data_s16_w_ovf_zeros)]

    # Construct time vector
    abs_t = get_time_vector.get_time_vector(data_s16_w_ovf_zeros, time_counter_bitwidth)
    abs_t = [i / f_clk for i in abs_t]
    # ============================================
    
    ## Reconstruction
    if tbs_mode == 1:       # ATBS
        [recon, spikes, t_recon, phantom_spikes, t_phantom, th] = reconstruction_ATBS.reconstruction_ATBS(data_s16_w_ovf_zeros, 
                                                                    min_threshold, max_threshold, d_min_lim, d_max_lim, 
                                                                    abs_t, time_win, dc_offset, buffer_size, 
                                                                    max_clipping_voltage/2, adapt_on_overflow);
    elif tbs_mode == 0:     # TBS
        [recon, spikes, t_recon, phantom_spikes, t_phantom] =reconstruction_TBS.reconstruction_TBS(data_s16, min_threshold, abs_t, dc_offset)
    # ============================================
    
    ## Creating analog signal
    if ecg_or_sine == 0:  # Sine
        Vpp = 1.0  # Amplitude of the sine wave
        f_sig = 2000   # Frequency in Hz
        Vdc = dc_offset
        duration = 1/f_sig  # Duration in seconds
        t_analog = np.linspace(0, duration, len(t_recon), endpoint=True)
        analog_signal = Vpp / 2 * np.sin(2 * np.pi * f_sig * t_analog) + Vdc
    else:  # ECG
        ecg_data = pd.read_csv("../generate_ecg/data/ecg_data_out_ideal.csv")
        t_analog = np.array([i * 3e2 for i in ecg_data['t'].to_list()])
        analog_signal = np.array(ecg_data['ecg_signal_offset'].to_list())
    # ============================================
    
    ## Plotting results
    if xschem == 1:
        recon = [i - min_threshold for i in recon] # needed for Xschem reconstruction
        # t_analog = [i * 1e3 for i in t_analog]
        # t_recon = [i * 1e3 for i in t_recon]
    
    # Scale spikes by 0.25 for better visibility
    spikes = [i * 0.25 for i in spikes]
    
    fig = plt.figure(tight_layout = True)
    plt.plot(t_analog, analog_signal, label='Analog Signal', linewidth = 2, color='tab:blue')
    plt.stem(t_recon, spikes, label='Spikes', markerfmt='o', basefmt='tab:grey')
    plt.scatter(t_recon, recon, label='Sample Points', color='tab:orange')
    plt.step(t_recon, recon, label='ZOH Interpolation', where='post', color="tab:purple") # ZOH... Zero Order Hold
    plt.plot(t_recon, recon, label='Linear Interpolation', linewidth = 2, color="tab:green")
    
    if np.array(phantom_spikes).size: 
        plt.stem(t_phantom, [i * 0.25 for i in phantom_spikes], label='Phantom Spikes', linefmt='r', markerfmt='ro', basefmt='tab:grey')
    if tbs_mode == 1:
        plt.step(t_recon, [i + 0.5 for i in th], where='post', label='Threshold + 0.5', color="tab:brown")  # Threshold line
    
    # Labels and grid
    plt.ylabel('$V$ (V), Spikes')
    plt.xlabel('$t$ (s)')
    plt.grid(visible = True, linestyle='--')
    
    # Set x-axis limits
    # plt.xlim([0, t_analog[-1]])
    
    # Legend and display
    plt.legend()
    plt.show()
    # ============================================
    
    ## Saving results
    fig.savefig('figures/' + data_name + '.svg', bbox_inches='tight')
    fig.savefig('figures/' + data_name + '.pdf', bbox_inches='tight')
    if ecg_or_sine == 0:  # sine ToDo: check for ECG
        if tbs_mode == 1: # ATBS
            np.savetxt('figures/' + data_name + '.csv', 
                        np.column_stack((t_analog, t_recon, analog_signal, spikes, recon, th)), 
                        comments = "", header = "t_analog,t_recon,analog_signal,spikes,recon,th", delimiter = ",")
            
            np.savetxt('figures/' + data_name + '_phantom.csv', 
                       np.column_stack((t_phantom, phantom_spikes)), 
                       comments = "", header = "t_phantom,phantom_spikes", delimiter = ",")
        elif tbs_mode == 0:     # TBS
            np.savetxt('figures/' + data_name + '.csv', 
                       np.column_stack((t_analog, t_recon, analog_signal, spikes, recon)), 
                       comments = "", header = "t_analog,t_recon,analog_signal,spikes,recon", delimiter = ",")
    
    # Saving objects for calculate_SNDR.py
    with open('data/' + data_name + '.pkl', 'wb') as f:
        pickle.dump([t_analog, t_recon, analog_signal, spikes, recon], f)
# ============================================