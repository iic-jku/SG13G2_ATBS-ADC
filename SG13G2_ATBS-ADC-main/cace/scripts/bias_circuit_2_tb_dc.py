# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the BMR bias circuit MC DC sweep and save it to a .csv file.
# Created: 27.02.2025
# Last Modified: 27.02.2025
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
    
    # Iterate over iout_vdd MC results
    iout_vdd_arr = []
    for iout_vdd in results['iout_vdd']:
        iout_vdd_arr.append(iout_vdd)
    print(f'iout_vdd_arr = {iout_vdd_arr}')
    
    # Delete statistical outliers in iout_vdd_arr
    iout_vdd_arr = [val for val in iout_vdd_arr if 1e-9 <= val <= 1e-6]
    print(f'iout_vdd_arr = {iout_vdd_arr}')
    
    # Save data as .csv
    np.savetxt('cace/scripts/bias_circuit_2_tb_dc.csv',
               np.column_stack((np.array(iout_vdd_arr))), comments = "", 
               header = "iout_vdd_arr", delimiter = ",")
    
    return {'iout_vdd_arr': iout_vdd_arr}
# ============================================