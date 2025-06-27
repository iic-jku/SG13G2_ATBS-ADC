# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from schmitt_trigger_tb_tran_noise.txt (ngspice) and plots it. 
# Created: 15.12.2024
# Last Modified: 15.12.2024
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

# Main
if __name__ == '__main__':

    # Load data from .txt
    data_time = ng.loadngspicecol("data/schmitt_trigger_tb_tran.txt", "time") * 1e3
    data_vin = ng.loadngspicecol("data/schmitt_trigger_tb_tran.txt", "v(vin)")
    data_vout_buf = ng.loadngspicecol("data/schmitt_trigger_tb_tran.txt", "v(vout_buf)")
    data_vout_st = ng.loadngspicecol("data/schmitt_trigger_tb_tran.txt", "v(vout_st)")
    
    # Subsampling data (every 2nd value)
    data_time = data_time[1::2]
    data_vin = data_vin[1::2]
    data_vout_buf = data_vout_buf[1::2]
    data_vout_st = data_vout_st[1::2]
    
    # Plot
    fig1 = plt.figure(num = 1, tight_layout = True)
    plt.plot(data_time, data_vin, linewidth = 2)
    plt.plot(data_time, data_vout_buf, linewidth = 2)
    plt.plot(data_time, data_vout_st, linewidth = 2)
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    # plt.title("Buffer vs. Schmitt-Trigger")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 3))
    plt.ylim((0, 3.5))
    plt.legend(['Signal', 'Buffer', 'Schmitt-Trigger'])
    plt.show()
    
    plt.savefig("figures/schmitt_trigger/schmitt_trigger_tran_sim.svg", bbox_inches='tight')
    plt.savefig("figures/schmitt_trigger/schmitt_trigger_tran_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/schmitt_trigger/schmitt_trigger_tran_sim.csv", 
               np.column_stack((data_time, data_vin, data_vout_buf, data_vout_st)), comments = "", 
               header = "time,vin,vout_buf,vout_st", delimiter = ",")
    
    # Load data from .txt
    data_time_noise = ng.loadngspicecol("data/schmitt_trigger_tb_tran_noise.txt", "time") * 1e3
    data_vin_noise = ng.loadngspicecol("data/schmitt_trigger_tb_tran_noise.txt", "v(vin)")
    data_vout_buf_noise = ng.loadngspicecol("data/schmitt_trigger_tb_tran_noise.txt", "v(vout_buf)")
    data_vout_st_noise = ng.loadngspicecol("data/schmitt_trigger_tb_tran_noise.txt", "v(vout_st)")
    
    # Subsampling data (every 2nd value)
    data_time_noise = data_time_noise[1::2]
    data_vin_noise = data_vin_noise[1::2]
    data_vout_buf_noise = data_vout_buf_noise[1::2]
    data_vout_st_noise = data_vout_st_noise[1::2]
    
    # Plot
    fig2 = plt.figure(num = 2, tight_layout = True)
    plt.plot(data_time_noise, data_vin_noise, linewidth = 1)
    plt.plot(data_time_noise, data_vout_buf_noise, linewidth = 1)
    plt.plot(data_time_noise, data_vout_st_noise, linewidth = 3)
    plt.xlabel('$t$ (ms)')
    plt.ylabel('$V$ (V)')
    # plt.title("Buffer vs. Schmitt-Trigger")
    plt.grid(visible = True, linestyle='--')
    plt.xlim((0, 3))
    plt.ylim((0, 3.5))
    plt.legend(['Noisy Signal', 'Buffer', 'Schmitt-Trigger'])
    plt.show()
    
    plt.savefig("figures/schmitt_trigger/schmitt_trigger_tran_noise_sim.svg", bbox_inches='tight')
    plt.savefig("figures/schmitt_trigger/schmitt_trigger_tran_noise_sim.pdf", bbox_inches='tight')
    np.savetxt("figures/schmitt_trigger/schmitt_trigger_tran_noise_sim.csv", 
               np.column_stack((data_time_noise, data_vin_noise, data_vout_buf_noise, data_vout_st_noise)), comments = "", 
               header = "time,vin,vout_buf,vout_st", delimiter = ",")
# ============================================