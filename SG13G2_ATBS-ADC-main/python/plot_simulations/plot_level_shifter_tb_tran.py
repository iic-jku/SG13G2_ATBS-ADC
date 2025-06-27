# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from level_shifter_tb_tran.txt (ngspice) and plots it. 
# Created: 15.12.2024
# Last Modified: 15.12.2024
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
plt.rc('text', usetex = True)
plt.rc('font', family = 'serif', size = 14)
# ============================================

# Main
if __name__ == '__main__':

    # Load data from .txt
    data_time = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "time") * 1e9
    data_a_1V5 = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(a_1V5)")
    data_b_3V3 = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(b_3V3)")
    data_x1t = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(x1t)")
    data_a_3V3 = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(a_3V3)")
    data_b_1V5 = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(b_1V5)")
    data_x2t = ng.loadngspicecol("data/level_shifter_tb_tran.txt", "v(x2t)")

    # Plot
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(data_time, data_a_1V5, linewidth = 2)
    plt.plot(data_time, data_x1t, linewidth = 2)
    plt.plot(data_time, data_b_3V3, linewidth = 2)
    plt.xlabel('$t$ (ns)')
    plt.ylabel('$V$ (V)')
    # plt.title("Level-Up-Shifter")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 400))
    plt.ylim((0, 3.5))
    plt.legend(['1.5V Input', 'T Signal', '3.3V Output'])
    plt.show()
    
    fig1.savefig("figures/level_shifter/level_up_shifter_tran_sim.svg", bbox_inches='tight')
    fig1.savefig("figures/level_shifter/level_up_shifter_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/level_shifter/level_up_shifter_tran_sim.csv", 
               np.column_stack((data_time, data_a_1V5, data_x1t, data_b_3V3)), comments = "", 
               header = "time,a_1V5,x1t,b_3V3", delimiter = ",")
    
    # Plot
    fig2 = plt.figure(num = 2, tight_layout = True)
    plt.plot(data_time, data_a_3V3, linewidth = 2)
    plt.plot(data_time, data_x2t, linewidth = 2)
    plt.plot(data_time, data_b_1V5, linewidth = 2)
    plt.xlabel('$t$ (ns)')
    plt.ylabel('$V$ (V)')
    # plt.title("Level-Down-Shifter")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 400))
    plt.ylim((0, 3.5))
    plt.legend(['3.3V Input', 'T Signal', '1.5V Output'])
    plt.show()
    
    fig2.savefig("figures/level_shifter/level_down_shifter_tran_sim.svg", bbox_inches='tight')
    fig2.savefig("figures/level_shifter/level_down_shifter_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/level_shifter/level_down_shifter_tran_sim.csv", 
               np.column_stack((data_time, data_a_3V3, data_x2t, data_b_1V5)), comments = "", 
               header = "time,a_3V3,x2t,b_1V5", delimiter = ",")
# ============================================