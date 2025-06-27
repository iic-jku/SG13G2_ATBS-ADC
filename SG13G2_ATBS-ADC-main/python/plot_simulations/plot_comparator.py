# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Plotting DT comparator simulations.
# Created: 28.05.2025
# Last Modified: 28.05.2025
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
    
    # Elzakker's comparator
    # Load data from .txt
    data_time = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "time")
    time = data_time[0::8] * 1e9
    
    data_Vclk = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(clk)")
    Vclk = data_Vclk[0::8]
    
    data_Vs = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(vs)")
    Vs = data_Vs[0::8]
    
    data_Vcpp = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(vcpp)")
    Vcpp = data_Vcpp[0::8]
    
    data_Vcpn = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(vcpn)")
    Vcpn = data_Vcpn[0::8]
    
    data_Voutp = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(voutp)")
    Voutp = data_Voutp[0::8]
    
    data_Voutn = ng.loadngspicecol("data/Elzakker_comparator_tb_tran.txt", "v(voutn)")
    Voutn = data_Voutn[0::8]
    
    # Plot
    fig1, axs = plt.subplots(2)
    axs[0].plot(time, Vs, linewidth = 2)
    axs[0].plot(time, Vcpp, linewidth = 2)
    axs[0].plot(time, Vcpn, linewidth = 2)
    axs[0].legend(['Vs', 'Vcpp', 'Vcpn'])
    axs[0].set_xlabel('$t$ (ns)')
    axs[0].set_ylabel('$V$ (V)')
    axs[0].grid(visible = True, linestyle='--')
    axs[1].plot(time, Vclk, linewidth = 2)
    axs[1].plot(time, Voutp, linewidth = 2)
    axs[1].plot(time, Voutn, linewidth = 2)
    axs[1].legend(['Vclk', 'Voutp', 'Voutn'])
    axs[1].set_xlabel('$t$ (ns)')
    axs[1].set_ylabel('$V$ (V)')
    axs[1].grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig1.savefig("figures/DT_comparator/Elzakker_comparator_tb_tran.svg", bbox_inches='tight')
    fig1.savefig("figures/DT_comparator/Elzakker_comparator_tb_tran.pdf", bbox_inches='tight')
    np.savetxt("figures/DT_comparator/Elzakker_comparator_tb_tran.csv", 
              np.column_stack((time, Vclk, Vs, Vcpp, Vcpn, Voutp, Voutn)), comments = "", 
              header = "time,Vclk,Vs,Vcpp,Vcpn,Voutp,Voutn", delimiter = ",")
    
    # Bindra's comparator
    # Load data from .txt
    data_time = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "time")
    time = data_time[0::8] * 1e9
    
    data_Vclk = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(clk)")
    Vclk = data_Vclk[0::8]
    
    data_Vs = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(vs)")
    Vs = data_Vs[0::8]
    
    data_Vctail = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(vctail)")
    Vctail = data_Vctail[0::8]
    
    data_Vcpp = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(vcpp)")
    Vcpp = data_Vcpp[0::8]
    
    data_Vcpn = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(vcpn)")
    Vcpn = data_Vcpn[0::8]
    
    data_Voutp = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(voutp)")
    Voutp = data_Voutp[0::8]
    
    data_Voutn = ng.loadngspicecol("data/dynamic_biasing_comparator_tb_tran_SI.txt", "v(voutn)")
    Voutn = data_Voutn[0::8]
    
    # Plot
    fig2, axs = plt.subplots(2)
    axs[0].plot(time, Vs, linewidth = 2)
    axs[0].plot(time, Vctail, linewidth = 2)
    axs[0].plot(time, Vcpp, linewidth = 2)
    axs[0].plot(time, Vcpn, linewidth = 2)
    axs[0].legend(['Vs', 'Vctail', 'Vcpp', 'Vcpn'])
    axs[0].set_xlabel('$t$ (ns)')
    axs[0].set_ylabel('$V$ (V)')
    axs[0].grid(visible = True, linestyle='--')
    axs[1].plot(time, Vclk, linewidth = 2)
    axs[1].plot(time, Voutp, linewidth = 2)
    axs[1].plot(time, Voutn, linewidth = 2)
    axs[1].legend(['Vclk', 'Voutp', 'Voutn'])
    axs[1].set_xlabel('$t$ (ns)')
    axs[1].set_ylabel('$V$ (V)')
    axs[1].grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig2.savefig("figures/DT_comparator/dynamic_biasing_comparator_tb_tran.svg", bbox_inches='tight')
    fig2.savefig("figures/DT_comparator/dynamic_biasing_comparator_tb_tran.pdf", bbox_inches='tight')
    np.savetxt("figures/DT_comparator/dynamic_biasing_comparator_tb_tran.csv", 
              np.column_stack((time, Vclk, Vs, Vctail, Vcpp, Vcpn, Voutp, Voutn)), comments = "", 
              header = "time,Vclk,Vs,Vctail,Vcpp,Vcpn,Voutp,Voutn", delimiter = ",")
# ============================================