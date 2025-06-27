# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from a .txt (ngspice) and plots it.
# Created: 13.12.2024
# Last Modified: 13.12.2024
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import ngspice2python as ng
# ============================================

plt.close("all")
%matplotlib qt
# %matplotlib inline
# ============================================

# Latex font settings in plot
plt.rc('text', usetex = True)
plt.rc('font', family = 'serif', size = 14)
# ============================================

# Functions
def find_nearest_idx(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return idx
# ============================================

# Main
if __name__ == '__main__':
    # Load values from .txt
    data_time = ng.loadngspicecol("data/atbs_top_floating_window_ideal_tb_tran.txt", "time") * 1e3
    data_vecg = ng.loadngspicecol("data/atbs_top_floating_window_ideal_tb_tran.txt", "v(vecg)")
    data_vdac_upper = ng.loadngspicecol("data/atbs_top_floating_window_ideal_tb_tran.txt", "v(vdac_upper)")
    data_vdac_lower = ng.loadngspicecol("data/atbs_top_floating_window_ideal_tb_tran.txt", "v(vdac_lower)")
    
    # Cut out settling and subsampling
    stop_time_idx = int(find_nearest_idx(data_time, 0.012))
    settling_time = data_time[0:stop_time_idx:4]
    settling_vecg = data_vecg[0:stop_time_idx:4]
    settling_vdac_upper = data_vdac_upper[0:stop_time_idx:4]
    settling_vdac_lower = data_vdac_lower[0:stop_time_idx:4]
    
    # Plot
    plt.figure(num = 1, tight_layout = True)
    plt.plot(settling_time, settling_vecg, linewidth = 2)
    plt.plot(settling_time, settling_vdac_upper, linewidth = 2)
    plt.plot(settling_time, settling_vdac_lower, linewidth = 2)
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    # plt.title("Analog Domain of ATBS Top")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 0.012))
    plt.ylim((0.4, 1))
    plt.legend(['Settling', 'Upper DAC', 'Lower DAC'])
    plt.show()
    np.savetxt("figures/atbs_top/atbs_top_floating_window_ideal_settling_tran_sim.csv", 
               np.column_stack((settling_time, settling_vecg, settling_vdac_upper, settling_vdac_lower)), comments = "", 
               header = "time,vecg,vdac_upper,vdac_lower", delimiter = ",")
    # ============================================
    
    # Cut out QRS complex
    start_time_idx  = int(find_nearest_idx(data_time, 1.95))
    stop_time_idx = int(find_nearest_idx(data_time, 2.35))
    qrs_time = data_time[start_time_idx:stop_time_idx:100]
    qrs_vecg = data_vecg[start_time_idx:stop_time_idx:100]
    qrs_vdac_upper = data_vdac_upper[start_time_idx:stop_time_idx:100]
    qrs_vdac_lower = data_vdac_lower[start_time_idx:stop_time_idx:100]
    
    # Plot
    plt.figure(num = 2, tight_layout = True)
    plt.plot(qrs_time, qrs_vecg, linewidth = 2)
    plt.plot(qrs_time, qrs_vdac_upper, linewidth = 2)
    plt.plot(qrs_time, qrs_vdac_lower, linewidth = 2)
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    # plt.title("Analog Domain of ATBS Top")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((1.95, 2.35))
    plt.ylim((0, 1.5))
    plt.legend(['QRS Complex', 'Upper DAC', 'Lower DAC'])
    plt.show()
    np.savetxt("figures/atbs_top/atbs_top_floating_window_ideal_qrs_tran_sim.csv", 
               np.column_stack((qrs_time, qrs_vecg, qrs_vdac_upper, qrs_vdac_lower)), comments = "", 
               header = "time,vecg,vdac_upper,vdac_lower", delimiter = ",")
    # ============================================
    
    # Subsampling data (every 200th value)
    data_time = data_time[1::200]
    data_vecg = data_vecg[1::200]
    data_vdac_upper = data_vdac_upper[1::200]
    data_vdac_lower = data_vdac_lower[1::200]
    
    # Plot
    fig = plt.figure(num = 3, tight_layout = True)
    plt.plot(data_time, data_vecg, linewidth = 2)
    plt.plot(data_time, data_vdac_upper, linewidth = 2)
    plt.plot(data_time, data_vdac_lower, linewidth = 2)
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    # plt.title("Analog Domain of ATBS Top")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 4))
    plt.ylim((0, 1.5))
    plt.legend(['ECG Signal', 'Upper DAC', 'Lower DAC'])
    plt.show()
    
    fig.savefig("figures/atbs_top/atbs_top_floating_window_ideal_tran_sim.svg", bbox_inches='tight')
    fig.savefig("figures/atbs_top/atbs_top_floating_window_ideal_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/atbs_top/atbs_top_floating_window_ideal_tran_sim.csv", 
               np.column_stack((data_time, data_vecg, data_vdac_upper, data_vdac_lower)), comments = "", 
               header = "time,vecg,vdac_upper,vdac_lower", delimiter = ",")
# ============================================