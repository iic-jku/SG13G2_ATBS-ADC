# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from CT_comparator_ideal_tb_dc.txt 
# and CT_comparator_ideal_tb_tran.txt (ngspice) and plots it.
# Created: 20.04.2025
# Last Modified: 20.04.2025
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import ngspice2python as ng
# ============================================

plt.close("all")
# %matplotlib qt
%matplotlib inline
# ============================================

# Latex font settings in plot
plt.rc('text', usetex = True)
plt.rc('font', family = 'serif', size = 14)
# ============================================

# Main
if __name__ == '__main__':

    # Load data from .txt
    data_vinp = ng.loadngspicecol("data/CT_comparator_ideal_tb_dc_vout_dvout.txt", "v-sweep") * 1e3
    data_vout = ng.loadngspicecol("data/CT_comparator_ideal_tb_dc_vout_dvout.txt", "v(vout_comp)")
    data_dvout = ng.loadngspicecol("data/CT_comparator_ideal_tb_dc_vout_dvout.txt", "v(dvout_comp)")
    
    # Downsampling x 8
    data_vinp = data_vinp[::4]
    data_vout = data_vout[::4]
    data_dvout = data_dvout[::4]
    # data_dvout = 20 * np.log10(data_dvout)
    
    # Plot
    fig1, ax1 = plt.subplots()
    # Plot on left y-axis
    plt.plot(data_vinp, data_vout, linewidth = 2)
    ax1.set_xlabel('$V_\mathrm{in,p}$ (mV)')
    ax1.set_ylabel('$V_\mathrm{out}$ (V)')
    ax1.set_ylim((0, 1.5))
    # Plot on right y-axis
    ax2 = ax1.twinx()
    ax2.plot(data_vinp, data_dvout, 'r--', linewidth = 2)
    ax2.set_ylabel('$dV_\mathrm{out}/dV_\mathrm{in}$ (1)')
    ax2.set_ylim((0, 1e4))
    plt.grid(visible = True, linestyle='--')
    plt.xlim((750, 752))
    plt.show()

    fig1.savefig("figures/CT_comparator_ideal/CT_comparator_ideal_tb_dc.svg", bbox_inches='tight')
    fig1.savefig("figures/CT_comparator_ideal/CT_comparator_ideal_tb_dc.pdf", bbox_inches='tight')
    np.savetxt("figures/CT_comparator_ideal/CT_comparator_ideal_tb_dc.csv", 
               np.column_stack((data_vinp, data_vout, data_dvout)), comments = "", 
               header = "Vinp,Vout,dVout", delimiter = ",")
    # ============================================
    
    # Load data from .txt
    data_time = ng.loadngspicecol("data/CT_comparator_ideal_tb_tran.txt", "time") * 1e9
    data_vinp = ng.loadngspicecol("data/CT_comparator_ideal_tb_tran.txt", "v(vinp)")
    data_vout = ng.loadngspicecol("data/CT_comparator_ideal_tb_tran.txt", "v(vout_comp)")
    
    # Downsampling x 4
    data_time = data_time[::2]
    data_vinp = data_vinp[::2]
    data_vout = data_vout[::2]
    data_time = data_time[::2]
    data_vinp = data_vinp[::2]
    data_vout = data_vout[::2]
    
    # Plot
    fig2 = plt.figure(num = 1, tight_layout = True)
    plt.plot(data_time, data_vinp, linewidth = 2)
    plt.plot(data_time, data_vout, linewidth = 2)
    plt.xlabel('$t$ (ns)')
    plt.ylabel('$V_\mathrm{in,p}$, $V_\mathrm{out}$ (V)')
    # plt.title("Level-Up-Shifter")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((999, 1002))
    plt.ylim((0, 1.5))
    plt.legend(['$V_\mathrm{in,p}$', '$V_\mathrm{out}$'])
    plt.show()
    
    fig2.savefig("figures/CT_comparator_ideal/CT_comparator_ideal_tb_tran.svg", bbox_inches='tight')
    fig2.savefig("figures/CT_comparator_ideal/CT_comparator_ideal_tb_tran.pdf", bbox_inches='tight')
    np.savetxt("figures/CT_comparator_ideal/CT_comparator_ideal_tb_tran.csv", 
               np.column_stack((data_time, data_vinp, data_vout)), comments = "", 
               header = "time,Vinp,Vout", delimiter = ",")
# ============================================