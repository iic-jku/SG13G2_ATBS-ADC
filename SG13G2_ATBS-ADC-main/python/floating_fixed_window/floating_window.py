# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2025
# Author: Simon Dorrer
# Description: This file plots the behavior of a float-window event-based ADC.
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
    fs = 1024           # High-res time for "analog" signal
    t = np.linspace(0, duration, fs, endpoint=False)
    f = 1               # Frequency = 1 Hz
    A = 0.5             # Amplitude (since 1 Vpp = 2 * A)
    dc_offset = 0.75    # DC offset
    vin_arr = A * np.sin(2 * np.pi * f * t) + dc_offset
    
    # DAC voltage arrays
    vh_arr = []  # upper DAC
    vl_arr = []  # lower DAC
    
    # Initial condition of DAC voltages
    vh = Vcm + 2 * theta
    vl = Vcm
    vh_arr.append(vh)
    vl_arr.append(vl)
    
    # Floating-window ADC logic
    for i in range(1, len(vin_arr)):
        vin = vin_arr[i]
        if vin > vh:
            # Signal increased beyond upper threshold
            vh = vh + theta
            vl = vl + theta
        elif vin < vl:
            # Signal decreased beyond lower threshold
            vh = vh - theta
            vl = vl - theta
        
        # Append new values
        vh_arr.append(vh)
        vl_arr.append(vl)
    
    # Plotting
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(t, vin_arr, 'b', linewidth = 2, label = '$V_\mathrm{in}$')
    plt.step(t, vh_arr, 'r', linewidth = 2, label = '$V_\mathrm{H}$')
    plt.step(t, vl_arr, 'g', linewidth = 2, label = '$V_\mathrm{L}$')
    plt.title('Floating-Window Event-Based ADC')
    plt.xlabel('$t$ (s)')
    plt.ylabel('$V$ (V)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, duration))
    plt.ylim((0, VDD))
    plt.legend()
    plt.show()
    
    # Save
    fig1.savefig("figures/floating_window_bhv.svg", bbox_inches='tight')
    fig1.savefig("figures/floating_window_bhv.pdf", bbox_inches='tight')
    np.savetxt("figures/floating_window_bhv.csv", 
                np.column_stack((t, vin_arr, vh_arr, vl_arr)), comments = "", 
                header = "time,vin,vh,vl", delimiter = ",")
# ============================================