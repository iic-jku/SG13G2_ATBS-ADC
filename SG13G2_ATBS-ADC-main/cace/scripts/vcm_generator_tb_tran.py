# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the Vcm generator MC transient analysis and save it to a .csv file.
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
    
    # Iterate over Vcm MC results
    Vcm_arr = []
    for Vcm in results['Vcm_at_tstop']:
        Vcm_arr.append(Vcm)
    print(f'Vcm_arr = {Vcm_arr}')
    
    # Iterate over tsettle MC results
    tsettle_arr = []
    for tsettle in results['tsettle']:
        tsettle_arr.append(tsettle * 1e3)
    print(f'tsettle_arr = {tsettle_arr}')
    
    # Save data as .csv
    np.savetxt("cace/scripts/vcm_generator.csv",
               np.column_stack((np.array(Vcm_arr), np.array(tsettle_arr))), comments = "", 
               header = "Vcm,tsettle", delimiter = ",")
    
    return {'Vcm_arr': Vcm_arr, 'tsettle_arr': tsettle_arr}
# ============================================