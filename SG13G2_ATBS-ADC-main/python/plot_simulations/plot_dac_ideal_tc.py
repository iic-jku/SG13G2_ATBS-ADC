# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from dac_ideal_tb_tc.txt (ngspice) and plots it.
# Created: 29.03.2024
# Last Modified: 30.08.2024
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
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
    # Load vdac_out values from .txt
    data = ng.loadngspicecol("data/dac_ideal_tb_tc.txt", "v(vdac_out)")
    
    # Create Code values
    code = np.array(list(range(256)))
    
    # Plot DAC Transfer Characteristic
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot([0 , 255], [0, 1.5], linewidth = 2)
    plt.plot(code, data, linewidth = 2)
    plt.xlabel('Digital input code')
    plt.ylabel('Analog output voltage in V')
    # plt.title("Ideal 8-Bit DAC Transfer Charateristic")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 260))
    plt.ylim((0, 1.6))
    plt.legend(['ideal transfer charateristic', 'ideal 8-Bit DAC'])
    plt.show()
    
    fig1.savefig("figures/dac/dac_ideal_tc_sim.svg", bbox_inches='tight')
    fig1.savefig("figures/dac/dac_ideal_tc_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/dac/dac_ideal_tc_sim.csv", np.column_stack((code, data)), comments = "", header = "code,data", delimiter = ",")
# ============================================