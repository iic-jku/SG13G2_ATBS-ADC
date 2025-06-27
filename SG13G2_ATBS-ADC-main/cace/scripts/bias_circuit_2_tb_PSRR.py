# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the BMR bias circuit MC AC analysis and save it to a .csv file.
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
    
    # Iterate over PSRR MC results
    PSRR_arr = []
    for PSRR in results['PSRR']:
        PSRR_arr.append(PSRR)
    print(f'PSRR_arr = {PSRR_arr}')
    
    # Delete statistical outliers in PSRR_arr
    PSRR_arr = [val for val in PSRR_arr if 1 <= val <= 200]
    print(f'PSRR_arr = {PSRR_arr}')
    
    # Save data as .csv
    np.savetxt('cace/scripts/bias_circuit_2_tb_PSRR.csv',
               np.column_stack((np.array(PSRR_arr))), comments = "", 
               header = "PSRR_arr", delimiter = ",")
    
    return {'PSRR_arr': PSRR_arr}
# ============================================