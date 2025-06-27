# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the DT comparator MC transient analysis and save it to a .csv file.
# Created: 03.02.2025
# Last Modified: 03.02.2025
# ============================================

# Imports
import numpy as np
from typing import Any
# ============================================

# Functions
def postprocess(results: dict[str, list], conditions: dict[str, Any]) -> dict[str, list]:
    # Print results and conditions for debugging
    # print(f'results: {results}')
    # print(f'conditions: {conditions}')
    
    # Iterate over tpd MC results
    tpd_arr = []
    for tpd in results['tpd']:
        tpd_arr.append(tpd * 1e9)
    print(f'tpd_arr = {tpd_arr}')
    
    # Delete statistical outliers in tpd_arr
    tpd_arr = [val for val in tpd_arr if 1e-3 <= val <= 1e3]
    print(f'tpd_arr = {tpd_arr}')
    
    # Iterate over energy_conv MC results
    energy_conv_arr = []
    for energy_conv in results['energy_conv']:
        energy_conv_arr.append(energy_conv * (-1))
    print(f'energy_conv_arr = {energy_conv_arr}')
    
    # Delete statistical outliers in energy_conv_arr
    energy_conv_arr = [val for val in energy_conv_arr if 1e1 <= val <= 1e4]
    print(f'energy_conv_arr = {energy_conv_arr}')
    
    # Save data as .csv
    np.savetxt('cace/scripts/DT_comparator_tb_tran.csv',
               np.column_stack((np.array(tpd_arr), np.array(energy_conv_arr))), comments = "", 
               header = "tpd_arr,energy_conv_arr", delimiter = ",")
    
    return {'tpd_arr': tpd_arr, 'energy_conv_arr': energy_conv_arr}
# ============================================