# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Plotting of Ron and Ileak of TGs.
# Created: 24.05.2025
# Last Modified: 24.05.2025
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
    data_vsweep = ng.loadngspicecol("data/transmission_gate_tb_dc_Ron_1u_0.13u.txt", "v-sweep")
    vin = data_vsweep[0::2]
    
    # W = 1u, L = 0.13u, wo dummy
    data_r_lv_wo_dummy_on = ng.loadngspicecol("data/transmission_gate_tb_dc_Ron_1u_0.13u.txt", "v(r_lv_wo_dummy_on)")
    Ron_1u_0_13u_wo_dummy = data_r_lv_wo_dummy_on[0::2] / 1000
    
    # W = 2u, L = 0.13u, wo dummy
    data_r_lv_wo_dummy_on = ng.loadngspicecol("data/transmission_gate_tb_dc_Ron_2u_0.13u.txt", "v(r_lv_wo_dummy_on)")
    Ron_2u_0_13u_wo_dummy = data_r_lv_wo_dummy_on[0::2] / 1000
    
    # W = 2u, L = 0.13u, w dummy
    data_r_lv_w_dummy_on = ng.loadngspicecol("data/transmission_gate_tb_dc_Ron_2u_0.13u.txt", "v(r_lv_w_dummy_on)")
    Ron_2u_0_13u_w_dummy = data_r_lv_w_dummy_on[0::2] / 1000
    
    # W = 2u, L = 0.50u, wo dummy
    data_r_lv_wo_dummy_on = ng.loadngspicecol("data/transmission_gate_tb_dc_Ron_2u_0.50u.txt", "v(r_lv_wo_dummy_on)")
    Ron_2u_0_50u_wo_dummy = data_r_lv_wo_dummy_on[0::2] / 1000
    
    # Plot
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(vin, Ron_1u_0_13u_wo_dummy, linewidth = 2)
    plt.plot(vin, Ron_2u_0_13u_wo_dummy, linewidth = 2)
    plt.plot(vin, Ron_2u_0_13u_w_dummy, linewidth = 2)
    plt.plot(vin, Ron_2u_0_50u_wo_dummy, linewidth = 2)
    plt.xlabel('$V_\mathrm{in}$ (V)')
    plt.ylabel('$R_\mathrm{on}$ ($k\Omega$)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 1.5))
    plt.ylim((0, 4.2))
    plt.legend(['$W = 1\mu$, $L = 0.13\mu$, wo. d.', '$W = 2\mu$, $L = 0.13\mu$, wo. d.', '$W = 2\mu$, $L = 0.13\mu$, w. d.', '$W = 2\mu$, $L = 0.50\mu$, wo. d.'])
    plt.show()
    
    # Saving
    fig1.savefig("figures/transmission_gate/transmission_gate_tb_dc_Ron_LV.svg", bbox_inches='tight')
    fig1.savefig("figures/transmission_gate/transmission_gate_tb_dc_Ron_LV.pdf", bbox_inches='tight')
    np.savetxt("figures/transmission_gate/transmission_gate_tb_dc_Ron_LV.csv", 
               np.column_stack((vin, Ron_1u_0_13u_wo_dummy, Ron_2u_0_13u_wo_dummy, Ron_2u_0_13u_w_dummy, Ron_2u_0_50u_wo_dummy)), comments = "", 
               header = "vin,Ron_1u_0_13u_wo_dummy,Ron_2u_0_13u_wo_dummy,Ron_2u_0_13u_w_dummy,Ron_2u_0_50u_wo_dummy", delimiter = ",")
    
    
    # Load data from .txt
    data_vsweep = ng.loadngspicecol("data/transmission_gate_tb_dc_Ileak_1u_0.13u.txt", "v-sweep")
    vin = data_vsweep[0::2]
    
    # W = 1u, L = 0.13u, wo dummy
    data_Ileak_lv_wo_dummy = ng.loadngspicecol("data/transmission_gate_tb_dc_Ileak_1u_0.13u.txt", "v(Ileak_lv_wo_dummy)")
    Ileak_1u_0_13u_wo_dummy = data_Ileak_lv_wo_dummy[0::2] * 1e12
    
    # W = 2u, L = 0.13u, wo dummy
    data_Ileak_lv_wo_dummy = ng.loadngspicecol("data/transmission_gate_tb_dc_Ileak_2u_0.13u.txt", "v(Ileak_lv_wo_dummy)")
    Ileak_2u_0_13u_wo_dummy = data_Ileak_lv_wo_dummy[0::2] * 1e12
    
    # W = 1u, L = 0.50u, w dummy
    data_Ileak_lv_w_dummy = ng.loadngspicecol("data/transmission_gate_tb_dc_Ileak_1u_0.50u.txt", "v(Ileak_lv_w_dummy)")
    Ileak_1u_0_50u_w_dummy = data_Ileak_lv_w_dummy[0::2] * 1e12
    
    # W = 2u, L = 0.50u, w dummy
    data_Ileak_lv_w_dummy = ng.loadngspicecol("data/transmission_gate_tb_dc_Ileak_2u_0.50u.txt", "v(Ileak_lv_w_dummy)")
    Ileak_2u_0_50u_w_dummy = data_Ileak_lv_w_dummy[0::2] * 1e12
    
    # Plot
    fig2 = plt.figure(num = 1, tight_layout = True)
    plt.plot(vin, Ileak_1u_0_13u_wo_dummy, linewidth = 2)
    plt.plot(vin, Ileak_2u_0_13u_wo_dummy, linewidth = 2)
    plt.plot(vin, Ileak_1u_0_50u_w_dummy, linewidth = 2)
    plt.plot(vin, Ileak_2u_0_50u_w_dummy, linewidth = 2)
    plt.xlabel('$V_\mathrm{in}$ (V)')
    plt.ylabel('$I_\mathrm{leak}$ (pA)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 1.5))
    plt.ylim((-2, 25))
    plt.legend(['$W = 1\mu$, $L = 0.13\mu$, wo. d.', '$W = 2\mu$, $L = 0.13\mu$, wo. d.', '$W = 1\mu$, $L = 0.50\mu$, w. d.', '$W = 2\mu$, $L = 0.50\mu$, w. d.'])
    plt.show()
    
    # Saving
    fig2.savefig("figures/transmission_gate/transmission_gate_tb_dc_Ileak_LV.svg", bbox_inches='tight')
    fig2.savefig("figures/transmission_gate/transmission_gate_tb_dc_Ileak_LV.pdf", bbox_inches='tight')
    np.savetxt("figures/transmission_gate/transmission_gate_tb_dc_Ileak_LV.csv", 
               np.column_stack((vin, Ileak_1u_0_13u_wo_dummy, Ileak_2u_0_13u_wo_dummy, Ileak_1u_0_50u_w_dummy, Ileak_2u_0_50u_w_dummy)), comments = "", 
               header = "vin,Ileak_1u_0_13u_wo_dummy,Ileak_2u_0_13u_wo_dummy,Ileak_1u_0_50u_w_dummy,Ileak_2u_0_50u_w_dummy", delimiter = ",")
# ============================================