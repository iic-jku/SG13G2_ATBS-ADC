# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Plotting DAC transient simulation.
# Created: 29.05.2025
# Last Modified: 29.05.2025
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import ngspice2python as ng
# ============================================

plt.close("all")
# %matplotlib qt
# %matplotlib inline
# ============================================

# Latex font settings in plot
# plt.rc('text', usetex = True)
# plt.rc('font', family = 'serif', size = 14)
# ============================================

# Variables

# ============================================

# Functions

# ============================================

# Main
if __name__ == '__main__':

    # Load data from .txt
    data_time = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "time")
    time = data_time[0::8] * 1e6
    
    data_vind = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(vind)")
    vind = data_vind[0::8]
    
    data_vout_dac_upper = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(vout_dac_upper)")
    vout_dac_upper = data_vout_dac_upper[0::8]
    
    data_voutp1 = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(voutp1)")
    voutp1 = data_voutp1[0::8]
    
    data_voutn1 = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(voutn1)")
    voutn1 = data_voutn1[0::8]
    
    data_vout_comp_upper = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(vout_comp_upper)")
    vout_comp_upper = data_vout_comp_upper[0::8]

    data_vout_dac_lower = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(vout_dac_lower)")
    vout_dac_lower = data_vout_dac_lower[0::8]
    
    data_voutp2 = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(voutp2)")
    voutp2 = data_voutp2[0::8]
    
    data_voutn2 = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(voutn2)")
    voutn2 = data_voutn2[0::8]
    
    data_vout_comp_lower = ng.loadngspicecol("data/dac_comp_tb_tran_M4_62kHz.txt", "v(vout_comp_lower)")
    vout_comp_lower = data_vout_comp_lower[0::8]
    
    
    # Plot
    fig1, axs = plt.subplots(2)
    axs[0].plot(time, vind, linewidth = 2)
    axs[0].plot(time, vout_dac_upper, linewidth = 2)
    axs[0].plot(time, voutp1, linewidth = 2)
    axs[0].plot(time, voutn1, linewidth = 2)
    axs[0].plot(time, vout_comp_upper, linewidth = 2)
    axs[0].legend(['Vind', 'Vout - Upper DAC', 'Voutp1', 'Voutn1', 'Vout - Upper Comp.'])
    axs[0].set_xlabel('$t$ (us)')
    axs[0].set_ylabel('$V$ (V)')
    axs[0].grid(visible = True, linestyle='--')
    axs[1].plot(time, vind, linewidth = 2)
    axs[1].plot(time, vout_dac_lower, linewidth = 2)
    axs[1].plot(time, voutp2, linewidth = 2)
    axs[1].plot(time, voutn2, linewidth = 2)
    axs[1].plot(time, vout_comp_lower, linewidth = 2)
    axs[1].legend(['Vind', 'Vout - Lower DAC', 'Voutp2', 'Voutn2', 'Vout - Lower Comp.'])
    axs[1].set_xlabel('$t$ (us)')
    axs[1].set_ylabel('$V$ (V)')
    axs[1].grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig1.savefig("figures/dac/DAC_tran_sim.svg", bbox_inches='tight')
    fig1.savefig("figures/dac/DAC_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/dac/DAC_tran_sim.csv", 
               np.column_stack((time, vind, vout_dac_upper, voutp1, voutn1, vout_comp_upper, vout_dac_lower, voutp2, voutn2, vout_comp_lower)), comments = "", 
               header = "time,vind,vout_dac_upper,voutp1,voutn1,vout_comp_upper,vout_dac_lower,voutp2,voutn2,vout_comp_lower", delimiter = ",")
# ============================================