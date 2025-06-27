# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Plotting of transient simulation of Vcm generator
# Created: 27.05.2025
# Last Modified: 27.05.2025
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import ngspice2python as ng
# ============================================

plt.close("all")
%matplotlib qt
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
    data_time = ng.loadngspicecol("data/vcm_generator_tb_tran_31250Hz.txt", "time")
    time = data_time[0::4] * 1000
    
    data_vphi1 = ng.loadngspicecol("data/vcm_generator_tb_tran_31250Hz.txt", "v(phi_1)")
    vphi1 = data_vphi1[0::4]
    
    data_vphi2 = ng.loadngspicecol("data/vcm_generator_tb_tran_31250Hz.txt", "v(phi_2)")
    vphi2 = data_vphi2[0::4]
    
    data_Vcm = ng.loadngspicecol("data/vcm_generator_tb_tran_31250Hz.txt", "v(Vcm)")
    Vcm = data_Vcm[0::4]
    
    # Plot
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(time, vphi1, linewidth = 2)
    plt.plot(time, vphi2, linewidth = 2)
    plt.plot(time, Vcm, linewidth = 2)
    
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    plt.title("Vcm Generator")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 1.0))
    plt.ylim((0, 1.5))
    plt.legend(['$\Phi_1$', '$\Phi_2$', '$V_\mathrm{cm}$'])
    plt.show()
    
    fig1.savefig("figures/vcm_generator/vcm_generator_tran_sim.svg", bbox_inches='tight')
    fig1.savefig("figures/vcm_generator/vcm_generator_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/vcm_generator/vcm_generator_tran_sim.csv", 
              np.column_stack((time,vphi1,vphi2,Vcm)), comments = "", 
              header = "time,vphi1,vphi2,Vcm", delimiter = ",")
    
    # fig2, axs = plt.subplots(2)
    # axs[0].set_xscale('log')
    # axs[0].plot(data_ol_gain_freq, data_ol_gain_Amag_ol_dB, linewidth = 2)
    # axs[0].set_xlabel('$f$ (Hz)')
    # axs[0].set_ylabel('Open-Loop Gain (dB)')
    # axs[0].grid(True, which="both")
    # axs[0].yaxis.set_major_locator(ticker.MultipleLocator(base=20))
    # axs[1].set_xscale('log')
    # axs[1].plot(data_ol_gain_freq, data_ol_gain_Aarg_ol, linewidth = 2)
    # axs[1].set_xlabel('$f$ (Hz)')
    # axs[1].set_ylabel('Phase (°)')
    # axs[1].grid(True, which="both")
    # axs[1].yaxis.set_major_locator(ticker.MultipleLocator(base=90))
    # # plt.legend(['Ideal Transfer ', 'Ideal 8-Bit DAC'])
    # plt.tight_layout()
    # plt.show()
    
    # fig2.savefig("figures/ToDo.svg", bbox_inches='tight')
    # fig2.savefig("figures/ToDo.eps", bbox_inches='tight')
    # np.savetxt("figures/ToDo/ToDo.csv", 
    #           np.column_stack((data_time, data_a_1V5, data_x1t, data_b_3V3)), comments = "", 
    #           header = "time,a_1V5,x1t,b_3V3", delimiter = ",")
# ============================================