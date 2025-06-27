# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Reads saved reconstructed data and calculates the SNDR in 
# time domain and after interpolation in frequency domain.
# Created: 27.12.2024
# Last Modified: 27.12.2024
# ============================================

# ToDo:
# -) LS Fitting on ECG data
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import pickle
import pandas as pd
import math
from scipy.interpolate import interp1d
from scipy.signal import resample
import scipy.io as sio
import snr_sfdr_sndr as sn
# ============================================

plt.close("all")
# %matplotlib qt
# %matplotlib inline
# ============================================

# Function find_nearest
def find_nearest_idx(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return idx
# ============================================

# Load TBS SimVals variables
tbs_vals = sio.loadmat('../../vhdl/atbs_core_floating_window/sim/matlab/tbs.mat')
# ============================================

# Reconstruction Settings
tbs_mode = 0            # 0... TBS; 1... ATBS                
virtual_dac_res = 1     # 0... full DAC res.; 1... virtual DAC res.
dac_bitwidth = 5        # Full or "Virtual" DAC resolution
ecg_or_sine = 0         # 0... sine; 1... ecg
time_win = 4e-3         # time window (4ms or 8ms)
LS_fitting = 0          # 0... no fitting, 1... fit sine / ECG with LS approach
xschem = 1              # 0... PoC, 1... Xschem

concatenate = 1
repeats = 20
# ============================================

# Signal Constants
Vpp = 1.0
Vdc = 0.75
f_sig = 2000
bpm = 60
Tclk = 1 / tbs_vals.get("f_clk")[0][0]
# ============================================

if __name__ == '__main__':
    ## Load reconstructed data
    if tbs_mode == 0:   # TBS
        if ecg_or_sine == 0:  # Sine
            if xschem == 0:   # PoC or Xschem?
                data_name = 'TBS_PoC_5Bit_virtual_Sine_Reconstruction'
            else:
                data_name = 'TBS_Xschem_5Bit_virtual_Sine_Reconstruction_1us'
        else:  # ECG
            data_name = 'TBS_PoC_5Bit_virtual_ECG_Reconstruction'
    else:               # ATBS
        if ecg_or_sine == 0:  # Sine
            data_name = 'ATBS_PoC_8Bit_4ms_Sine_Reconstruction'
        else:  # ECG
            data_name = 'ATBS_PoC_8Bit_ECG_Reconstruction'
            
    with open('data/' + data_name + '.pkl', 'rb') as f:
        t_analog, t_recon, analog_signal, spikes, recon = pickle.load(f)
    # ================================================

    ## Interpolation and LS fitting on samples
    # Oversampling for interpolation
    OSR = 100
    fs = OSR * f_sig
    t = np.arange(0, 1 / f_sig, 1 / fs)
    
    if tbs_mode == 0:  # TBS
        tbs_time = np.array(t_recon)[:-1]
        tbs_recon = np.array(recon)[:-1]
        tbs_spikes = np.array(spikes)[:-1]
        
        # Concatenate multiple times
        if concatenate == 1:
            tbs_time = np.concatenate([tbs_time + i * tbs_time[-1] for i in range(repeats)])
            tbs_recon = np.tile(tbs_recon, repeats)      # Repeats the array 10 times
            tbs_spikes = np.tile(tbs_spikes, repeats)    # Repeats the array 10 times
        
        # Interpolation (only for sine)
        if ecg_or_sine == 0:  # Sine
            t_tbs = np.arange(0, tbs_time[-1], 1 / fs)
            tbs_interp = interp1d(tbs_time, tbs_recon, fill_value='extrapolate', kind='cubic')(t_tbs)
            print("Interpolation of TBS samples.")
    
        # Least-Squares (LS) fitting
        if ecg_or_sine == 0:  # Sine
            N_tbs = find_nearest_idx(t_recon, 1 / f_sig)
            P = int(len(tbs_time) / N_tbs)
            if LS_fitting == 1:
                # ground truth of analog signal for TBS SNR evaluation
                # fit sine into data samples with LS estimation on Vpp, Vdd and phase
                sine_data = np.sin(2 * np.pi * f_sig * tbs_time).reshape(-1, 1)
                cosine_data = np.cos(2 * np.pi * f_sig * tbs_time).reshape(-1, 1)
                H = np.hstack([sine_data, cosine_data, np.ones((len(tbs_recon), 1))])
                alpha_est = np.linalg.inv(H.T @ H) @ H.T @ tbs_recon
                # inverse transformation
                A = np.sqrt(alpha_est[0]**2 + alpha_est[1]**2)
                phase_est = np.arctan2(alpha_est[1], alpha_est[0])
                Vdc_est = alpha_est[2]
                analog_signal_TBS = A * np.sin(2 * np.pi * f_sig * tbs_time + phase_est) + Vdc_est
                print("TBS: Least-Squares (LS) fitting of sine wave.")
            else:
                # analog_signal_TBS = Vpp / 2 * np.sin(2 * np.pi * f_sig * (tbs_time + 0.5 * Tclk)) + Vdc
                analog_signal_TBS = Vpp / 2 * np.sin(2 * np.pi * f_sig * tbs_time) + Vdc
                print("TBS: NO Least-Squares (LS) fitting of sine wave.")
        else:  # ECG
            N_tbs = find_nearest_idx(t_recon, bpm / 60)
            P = int(len(tbs_time) / N_tbs)
            ecg_data = pd.read_csv("../generate_ecg/ecg_data.csv")
            ecg_data = np.array(ecg_data['ecg_signal_offset'].to_list())
            if LS_fitting == 1:
                ecg_data = np.tile(ecg_data, P)
                analog_signal_TBS = resample(ecg_data, len(tbs_time))
                # ToDo LS Fitting
                print("TBS: Least-Squares (LS) fitting of ECG.")
            else:
                ecg_data = np.tile(ecg_data, P)
                analog_signal_TBS = resample(ecg_data, len(tbs_time))
                print("TBS: NO Least-Squares (LS) fitting of ECG.")
    else:               # ATBS
        atbs_time = np.array(t_recon)
        atbs_recon = np.array(recon)
        atbs_spikes = np.array(spikes)
    
        # Interpolation (only for sine)
        if ecg_or_sine == 0:  # Sine
            t_atbs = np.arange(0, atbs_time[-1], 1 / fs)
            atbs_interp = interp1d(atbs_time, atbs_recon, fill_value='extrapolate', kind='cubic')(t_atbs)
            print("Interpolation of ATBS samples.")
    
        # Least-Squares (LS) fitting
        if ecg_or_sine == 0:  # Sine
            N_atbs = find_nearest_idx(t_recon, 1 / f_sig)
            P = int(len(atbs_time) / N_atbs)
            if LS_fitting == 1:
                sine_data = np.sin(2 * np.pi * f_sig * atbs_time).reshape(-1, 1)
                cosine_data = np.cos(2 * np.pi * f_sig * atbs_time).reshape(-1, 1)
                H = np.hstack([sine_data, cosine_data, np.ones((len(atbs_recon), 1))])
                alpha_est = np.linalg.inv(H.T @ H) @ H.T @ atbs_recon
                A = np.sqrt(alpha_est[0]**2 + alpha_est[1]**2)
                phase_est = np.arctan2(alpha_est[1], alpha_est[0])
                Vdc_est = alpha_est[2]
                analog_signal_ATBS = A * np.sin(2 * np.pi * f_sig * atbs_time + phase_est) + Vdc_est
                print("ATBS: Least-Squares (LS) fitting of sine wave.")
            else:
                analog_signal_ATBS = Vpp / 2 * np.sin(2 * np.pi * f_sig * atbs_time) + Vdc
                print("ATBS: NO Least-Squares (LS) fitting of sine wave.")
        else:  # ECG
            N_atbs = find_nearest_idx(t_recon, bpm / 60)
            P = int(len(atbs_time) / N_atbs)
            ecg_data = pd.read_csv("../generate_ecg/ecg_data.csv")
            ecg_data = np.array(ecg_data['ecg_signal_offset'].to_list())
            if LS_fitting == 1:
                ecg_data = np.tile(ecg_data, P)
                analog_signal_ATBS = resample(ecg_data, len(atbs_time))
                # ToDo LS Fitting
                print("ATBS: Least-Squares (LS) fitting of ECG.")
            else:
                ecg_data = np.tile(ecg_data, P)
                analog_signal_ATBS = resample(ecg_data, len(atbs_time))
                print("ATBS: NO Least-Squares (LS) fitting of ECG.")
    # ================================================
                
    ## Plotting data
    print('Plotting data...')
    fig1 = plt.figure(num = 1, tight_layout = True)
    if ecg_or_sine == 0:  # Sine
        plt.subplot(4, 1, 1)
    
    if tbs_mode == 0:  # TBS
        if ecg_or_sine == 0:  # Sine
            plt.plot(tbs_time, analog_signal_TBS, label='LS est. analog signal' if LS_fitting == 1 else 'analog signal')
            plt.scatter(tbs_time, tbs_recon, color='red', label='signal samples')
            plt.plot(t_tbs, tbs_interp, label='spline interp.', color='#77AC30')
        else:  # ECG
            plt.plot(tbs_time, analog_signal_TBS, label='LS est. analog signal' if LS_fitting == 1 else 'analog signal')
            plt.scatter(tbs_time, tbs_recon, color='red', label='signal samples')
            plt.plot(tbs_time, tbs_recon, label='linear interp.', color='#77AC30')
        plt.title(f'TBS (Samples / Period = {N_tbs})')
    
    else:  # ATBS
        if ecg_or_sine == 0:  # Sine
            plt.plot(atbs_time, analog_signal_ATBS, label='LS est. analog signal' if LS_fitting == 1 else 'analog signal')
            plt.scatter(atbs_time, atbs_recon, color='red', label='signal samples')
            plt.plot(t_atbs, atbs_interp, label='spline interp.', color='#77AC30')
        else:  # ECG
            plt.plot(atbs_time, analog_signal_ATBS, label='LS est. analog signal' if LS_fitting == 1 else 'analog signal')
            plt.scatter(atbs_time, atbs_recon, color='red', label='signal samples')
            plt.plot(atbs_time, atbs_recon, label='linear interp.', color='#77AC30')
        plt.title(f'ATBS (Samples / Period = {N_atbs})')
    
    plt.ylabel('$V$ (V)')
    plt.xlabel('$t$ (s)')
    plt.grid(visible = True, linestyle='--')
    plt.legend()
    plt.show()
    # ================================================

    ## Calculate theoretical maximum SNR
    # Level-Crossing ADC Performance Evaluation Toward Ultrasound Application
    # by Kirill Kozmin, Jonny Johansson and Jerker Delsing
    f_clk = tbs_vals.get("f_clk")[0][0]
    R = 1 / (f_sig * 1 / f_clk)
    SNR_max = 20 * math.log10(R) - 14.2
    print(f'The theoretical maximum SNR for {f_sig}Hz equals {SNR_max:.2f}dB.')
    # ================================================

    ## Calculate SNDR in time domain and frequency domain (only for sine)
    if tbs_mode == 0:  # TBS
        print(f'Samples per period: {N_tbs}')
        print(f'Number of periods: {P}')
    
        # SNR, SFDR & SNDR in frequency domain (only for sine). 
        # Only possible with interpolated signal.
        # Multiple periods are needed for a good FFT.
        if ecg_or_sine == 0:  # Sine
            # Signal to Noise Ratio (SNR)
            plt.subplot(4, 1, 2);
            snr_f_tbs = sn.snr(tbs_interp, fs, nHarmonics = 6, searchWidth = 1000, newFigure = False)
            print(f'The SNR in frequency domain of spline interpolated TBS samples equals {snr_f_tbs:.2f}dB.')
            
            # Spurious Free Dynamic Range (SFDR)
            plt.subplot(4, 1, 3);
            sfdr_f_tbs = sn.sfdr(tbs_interp, fs, nHarmonics = 6, searchWidth = 1000, newFigure = False)
            print(f'The SFDR in frequency domain of spline interpolated TBS samples equals {sfdr_f_tbs:.2f}dB.')
            
            # Signal to Noise & Distortion Ratio (SNDR)
            # Signal to Interference Ratio including Noise & Distortion (SINAD)
            # SINAD = SNDR
            plt.subplot(4, 1, 4);
            sndr_f_tbs = sn.sinad(tbs_interp, fs, searchWidth = 1000, newFigure = False)
            print(f'The SNDR in frequency domain of spline interpolated TBS samples equals {sndr_f_tbs:.2f}dB.')
    
        # SNDR in time domain.
        # Only one period is mandatory.
        analog_signal_TBS = analog_signal_TBS[:N_tbs]
        tbs_recon = tbs_recon[:N_tbs]
        sndr_t_tbs = 10 * np.log10(np.linalg.norm(analog_signal_TBS) ** 2 / np.linalg.norm(tbs_recon - analog_signal_TBS)**2)
        print(f'The SNDR in time domain of TBS samples equals {sndr_t_tbs:.2f}dB.')
    
    else:  # ATBS
        print(f'Samples per period: {N_atbs}')
        print(f'Number of periods: {P}')
        
        # SNR, SFDR & SNDR in frequency domain (only for sine). 
        # Only possible with interpolated signal.
        # Multiple periods are needed for a good FFT.
        if ecg_or_sine == 0:  # Sine
            # Signal to Noise Ratio (SNR)
            plt.subplot(4, 1, 2);
            snr_f_atbs = sn.snr(atbs_interp, fs, nHarmonics = 6, searchWidth = 1000, newFigure = False)
            print(f'The SNR in frequency domain of spline interpolated ATBS samples equals {snr_f_atbs:.2f}dB.')
            
            # Spurious Free Dynamic Range (SFDR)
            plt.subplot(4, 1, 3);
            sfdr_f_atbs = sn.sfdr(atbs_interp, fs, nHarmonics = 6, searchWidth = 1000, newFigure = False)
            print(f'The SFDR in frequency domain of spline interpolated ATBS samples equals {sfdr_f_atbs:.2f}dB.')
            
            # Signal to Noise & Distortion Ratio (SNDR)
            # Signal to Interference Ratio including Noise & Distortion (SINAD)
            # SINAD = SNDR
            plt.subplot(4, 1, 4);
            sndr_f_atbs = sn.sinad(atbs_interp, fs, searchWidth = 1000, newFigure = False)
            print(f'The SNDR in frequency domain of spline interpolated ATBS samples equals {sndr_f_atbs:.2f}dB.')
    
        # SNDR in time domain.
        # Only one period is mandatory.
        analog_signal_ATBS = analog_signal_ATBS[:N_atbs]
        atbs_recon = atbs_recon[:N_atbs]
        sndr_t_atbs = 10 * np.log10(np.linalg.norm(analog_signal_ATBS) ** 2 / np.linalg.norm(atbs_recon - analog_signal_ATBS) ** 2)
        print(f'The SNDR in time domain of ATBS samples equals {sndr_t_atbs:.2f}dB.')
# ============================================