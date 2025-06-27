# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2025
# Author: Simon Dorrer
# Description: This file plots the behavior of a fixed-window event-based ADC.
# Created: 22.04.2025
# Last Modified: 22.04.2025
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
# ============================================

plt.close("all")
# %matplotlib qt
# %matplotlib inline
# ============================================

# Latex font settings in plot
plt.rc('text', usetex = True)
plt.rc('font', family = 'serif', size = 14)
# ============================================

# Constants
VDD = 1.5
Vcm = 0.75
N = 4
theta = VDD / 2**N  # threshold
duration = 1        # s
# ============================================

# Main
if __name__ == '__main__':
    # Input signal (e.g. sine)
    fs = 2048           # High-res time for "analog" signal
    t = np.linspace(0, duration, fs, endpoint=False)
    f = 1               # Frequency = 1 Hz
    A = 0.5             # Amplitude (since 1 Vpp = 2 * A)
    dc_offset = 0.75    # DC offset
    vin_arr = A * np.sin(2 * np.pi * f * t) + dc_offset
    

    # Windowed / wrapped signal array
    vw_arr = []  # Vw
    vdac_arr = []
    
    # Initial condition of vw
    vw = vin_arr[0]
    vdac_arr.append(0)
    vw_arr.append(vw)
    
    # VH / VL are fixed
    vh = Vcm + theta
    vl = Vcm - theta
    vh_arr = [vh] * fs
    vl_arr = [vl] * fs
    
    # Count theta (shifter)
    n = 0 # + 1: theta increases, -1: theta decreases
    
    # Fixed-window ADC logic
    for i in range(1, len(vin_arr)):
        vin = vin_arr[i]
        if vw > vh:
            # Signal increased beyond upper threshold
            vw = Vcm
            n = n + 1
        elif vw < vl:
            # Signal decreased beyond lower threshold
            vw = Vcm
            n = n - 1
        else:
            vdac = n * theta
            vw = vin - vdac
            
        # Append new values
        vdac_arr.append(vdac)
        vw_arr.append(vw)
    
    # Plotting
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(t, vin_arr, 'b', linewidth = 2, label = '$V_\mathrm{in}$')
    plt.plot(t, vw_arr, 'k', linewidth = 2, label = '$V_\mathrm{W}$')
    plt.plot(t, vh_arr, color='red', linestyle='--', linewidth = 2, label = '$V_\mathrm{H}$')
    plt.plot(t, vl_arr, color='green', linestyle='--', linewidth = 2, label = '$V_\mathrm{L}$')
    plt.plot(t, vdac_arr, color='magenta', linewidth = 2, label = '$V_\mathrm{DAC}$')
    plt.title('Fixed-Window Event-Based ADC')
    plt.xlabel('$t$ (s)')
    plt.ylabel('$V$ (V)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, duration))
    plt.ylim((-0.5, VDD))
    plt.legend()
    plt.show()
    
    # Save
    fig1.savefig("figures/fixed_window_bhv.svg", bbox_inches='tight')
    fig1.savefig("figures/fixed_window_bhv.pdf", bbox_inches='tight')
    np.savetxt("figures/fixed_window_bhv.csv", 
                np.column_stack((t, vin_arr, vw_arr, vh_arr, vl_arr,vdac_arr)), comments = "", 
                header = "time,vin,vw,vh,vl,vdac", delimiter = ",")
# ============================================