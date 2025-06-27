# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Plotting BMR simulation results
# Created: 30.05.2025
# Last Modified: 30.05.2025
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
    
    # DC Analysis
    # Load data from .txt
    data_VDD = ng.loadngspicecol("data/bias_circuit_2_tb_dc_final.txt", "v-sweep")
    VDD = data_VDD[0::2]
    
    data_Vbiasc = ng.loadngspicecol("data/bias_circuit_2_tb_dc_final.txt", "v(Vbiasc)")
    Vbiasc = data_Vbiasc[0::2] * 1e3
    
    data_Vbias = ng.loadngspicecol("data/bias_circuit_2_tb_dc_final.txt", "v(Vbias)")
    Vbias = data_Vbias[0::2] * 1e3
    
    data_Vbias_v1 = ng.loadngspicecol("data/bias_circuit_1_tb_dc_final.txt", "v(Vbias)")
    Vbias_v1 = data_Vbias_v1[0::2] * 1e3
    
    data_Iout = ng.loadngspicecol("data/bias_circuit_2_tb_dc_final.txt", "v(Iout)")
    Iout = data_Iout[0::2] * 1e9
    
    data_Iout = ng.loadngspicecol("data/bias_circuit_2_tb_dc_final.txt", "v(Iref)")
    Iref = data_Iout[0::2] * 1e9
    
    data_Iout_v1 = ng.loadngspicecol("data/bias_circuit_1_tb_dc_final.txt", "v(Iout)")
    Iout_v1 = data_Iout_v1[0::2] * 1e9
    
    # Plot
    fig1, axs = plt.subplots(2)
    axs[0].plot(VDD, Vbiasc, linewidth = 2)
    axs[0].plot(VDD, Vbias, linewidth = 2)
    axs[0].plot(VDD, Vbias_v1, linewidth = 2)
    axs[0].legend(['Vbiasc', 'Vbias', 'Vbias_v1'])
    axs[0].set_xlabel('$VDD$ (V)')
    axs[0].set_ylabel('$V$ (mV)')
    axs[0].grid(visible = True, linestyle='--')
    axs[1].plot(VDD, Iref, linewidth = 2)
    axs[1].plot(VDD, Iout, linewidth = 2)
    axs[1].plot(VDD, Iout_v1, linewidth = 2)
    axs[1].legend(['Iref', 'Iout', 'Iout_v1'])
    axs[1].set_xlabel('$VDD$ (V)')
    axs[1].set_ylabel('$I$ (nA)')
    axs[1].grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig1.savefig("figures/bias_circuit/bias_circuit_tb_dc.svg", bbox_inches='tight')
    fig1.savefig("figures/bias_circuit/bias_circuit_tb_dc.pdf", bbox_inches='tight')
    np.savetxt("figures/bias_circuit/bias_circuit_tb_dc.csv", 
               np.column_stack((VDD, Vbiasc, Vbias, Iref, Iout)), comments = "", 
               header = "VDD,Vbiasc,Vbias,Iref,Iout", delimiter = ",")
    
    
    # Tran Analysis
    # Load data from .txt
    data_time = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "time")
    time = data_time[0::8] * 1e3
    
    data_VDD = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "v(VDD)")
    VDD = data_VDD[0::8] * 1e3
    
    data_Vbiasc = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "v(Vbiasc)")
    Vbiasc = data_Vbiasc[0::8] * 1e3
    
    data_Vbias = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "v(Vbias)")
    Vbias = data_Vbias[0::8] * 1e3
    
    data_Vsu = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "v(Vsu)")
    Vsu = data_Vsu[0::8] * 1e3
    
    data_Vres = ng.loadngspicecol("data/bias_circuit_4_tb_startup_tran_final.txt", "v(Vres)")
    Vres = data_Vres[0::8] * 1e3
    
    # Plot
    fig2 = plt.figure(tight_layout = True)
    plt.plot(time, Vbiasc, linewidth = 2)
    plt.plot(time, Vbias, linewidth = 2)
    plt.plot(time, VDD, linewidth = 2)
    plt.plot(time, Vsu, linewidth = 2)
    plt.plot(time, Vres, linewidth = 2)
    plt.legend(['Vbiasc', 'Vbias', 'VDD+Enable', 'Vsu', 'Vres'])
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (mV)')
    plt.grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig2.savefig("figures/bias_circuit/bias_circuit_tb_tran.svg", bbox_inches='tight')
    fig2.savefig("figures/bias_circuit/bias_circuit_tb_tran.pdf", bbox_inches='tight')
    np.savetxt("figures/bias_circuit/bias_circuit_tb_tran.csv", 
               np.column_stack((time, VDD, Vbiasc, Vbias, Vsu, Vres)), comments = "", 
               header = "time,VDD,Vbiasc,Vbias,Vsu,Vres", delimiter = ",")
    
    # Looped Tran Analysis - Temp.
    # Load data from .txt
    T = ng.loadngspicecol("data/bias_circuit_4_tb_temp_tran_final.txt", "temp_vec")
    Vbias = ng.loadngspicecol("data/bias_circuit_4_tb_temp_tran.txt", "v(const.vbias_vec)") * 1e3
    Vbiasc = ng.loadngspicecol("data/bias_circuit_4_tb_temp_tran.txt", "v(const.vbiasc_vec)") * 1e3
    Iref = ng.loadngspicecol("data/bias_circuit_4_tb_temp_tran.txt", "v(const.iref_vec)") * 1e9
    Iout = ng.loadngspicecol("data/bias_circuit_4_tb_temp_tran.txt", "v(const.iout_vec)") * 1e9
    
    # Plot
    fig3, axs = plt.subplots(2)
    axs[0].plot(T, Vbiasc, linewidth = 2)
    axs[0].plot(T, Vbias, linewidth = 2)
    axs[0].legend(['Vbiasc', 'Vbias'])
    axs[0].set_xlabel('$T$ (°C)')
    axs[0].set_ylabel('$V$ (mV)')
    axs[0].grid(visible = True, linestyle='--')
    axs[1].plot(T, Iref, linewidth = 2)
    axs[1].plot(T, Iout, linewidth = 2)
    axs[1].legend(['Iref', 'Iout'])
    axs[1].set_xlabel('$T$ (°C)')
    axs[1].set_ylabel('$I$ (nA)')
    axs[1].grid(visible = True, linestyle='--')
    plt.tight_layout()
    plt.show()
    
    fig3.savefig("figures/bias_circuit/bias_circuit_temp_tran.svg", bbox_inches='tight')
    fig3.savefig("figures/bias_circuit/bias_circuit_temp_tran.pdf", bbox_inches='tight')
    np.savetxt("figures/bias_circuit/bias_circuit_temp_tran.csv",
               np.column_stack((T, Vbiasc, Vbias, Iref, Iout)), comments = "", 
               header = "T,Vbiasc,Vbias,Iref,Iout", delimiter = ",")
# ============================================