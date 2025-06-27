# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the amplifier core MC AC analysis and save it to a .csv file.
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
    
    # Iterate over Adc_ol_dB MC results
    Adc_ol_dB_arr = []
    for Adc_ol_dB in results['Adc_ol_dB']:
        Adc_ol_dB_arr.append(Adc_ol_dB)
    print(f'Adc_ol_dB_arr = {Adc_ol_dB_arr}')
    
    # Delete statistical outliers in Adc_ol_dB_arr
    Adc_ol_dB_arr = [val for val in Adc_ol_dB_arr if 1 <= val <= 200]
    print(f'Adc_ol_dB_arr = {Adc_ol_dB_arr}')
    
    # Iterate over fc MC results
    fc_arr = []
    for fc in results['fc']:
        fc_arr.append(fc)
    print(f'fc_arr = {fc_arr}')
    
    # Delete statistical outliers in fc_arr
    fc_arr = [val for val in fc_arr if 1 <= val <= 10000]
    print(f'fc_arr = {fc_arr}')
    
    # Iterate over UGB MC results
    UGB_arr = []
    for UGB in results['UGB']:
        UGB_arr.append(UGB)
    print(f'UGB_arr = {UGB_arr}')
    
    # Delete statistical outliers in UGB_arr
    UGB_arr = [val for val in UGB_arr if 1 <= val <= 1e6]
    print(f'UGB_arr = {UGB_arr}')
    
    # Iterate over PM MC results
    PM_arr = []
    for PM in results['PM']:
        PM_arr.append(PM)
    print(f'PM_arr = {PM_arr}')
    
    # Delete statistical outliers in PM_arr
    PM_arr = [val for val in PM_arr if -360 <= val <= 360]
    print(f'PM_arr = {PM_arr}')
    
    # Iterate over CMRR_dc_dB MC results
    CMRR_dc_dB_arr = []
    for CMRR_dc_dB in results['CMRR_dc_dB']:
        CMRR_dc_dB_arr.append(CMRR_dc_dB)
    print(f'CMRR_dc_dB_arr = {CMRR_dc_dB_arr}')
    
    # Delete statistical outliers in CMRR_dc_dB_arr
    CMRR_dc_dB_arr = [val for val in CMRR_dc_dB_arr if 1 <= val <= 200]
    print(f'CMRR_dc_dB_arr = {CMRR_dc_dB_arr}')
    
    # Iterate over PSRR_dc_dB MC results
    # PSRR_dc_dB_arr = []
    # for PSRR_dc_dB in results['PSRR_dc_dB']:
        # PSRR_dc_dB_arr.append(PSRR_dc_dB)
    # print(f'PSRR_dc_dB_arr = {PSRR_dc_dB_arr}')
    
    # Delete statistical outliers in PSRR_dc_dB_arr
    # PSRR_dc_dB_arr = [val for val in PSRR_dc_dB_arr if 1 <= val <= 200]
    # print(f'PSRR_dc_dB_arr = {PSRR_dc_dB_arr}')
    
    # Iterate over Zin_dc_dm MC results
    Zin_dc_dm_arr = []
    for Zin_dc_dm in results['Zin_dc_dm']:
        Zin_dc_dm_arr.append(Zin_dc_dm)
    print(f'Zin_dc_dm_arr = {Zin_dc_dm_arr}')
    
    # Delete statistical outliers in Zin_dc_dm_arr
    Zin_dc_dm_arr = [val for val in Zin_dc_dm_arr if 1e3 <= val <= 1e12]
    print(f'Zin_dc_dm_arr = {Zin_dc_dm_arr}')
    
    # Iterate over Zin_dc_cm MC results
    Zin_dc_cm_arr = []
    for Zin_dc_cm in results['Zin_dc_cm']:
        Zin_dc_cm_arr.append(Zin_dc_cm)
    print(f'Zin_dc_cm_arr = {Zin_dc_cm_arr}')
    
    # Delete statistical outliers in Zin_dc_cm_arr
    Zin_dc_cm_arr = [val for val in Zin_dc_cm_arr if 1e3 <= val <= 1e12]
    print(f'Zin_dc_cm_arr = {Zin_dc_cm_arr}')
    
    # Save data as .csv
    # np.savetxt('cace/scripts/amplifier_core_simplified_tb_ac.csv',
    #            np.column_stack((np.array(Adc_ol_dB_arr), np.array(fc_arr), np.array(UGB_arr), np.array(PM_arr), np.array(CMRR_dc_dB_arr), np.array(PSRR_dc_dB_arr), np.array(Zin_dc_dm_arr), np.array(Zin_dc_cm_arr))), comments = "", 
    #            header = "Adc_ol_dB_arr,fc_arr,UGB_arr,PM_arr,CMRR_dc_dB_arr,PSRR_dc_dB_arr,Zin_dc_dm_arr,Zin_dc_cm_arr", delimiter = ",")
    
    # return {'Adc_ol_dB_arr': Adc_ol_dB_arr, 'fc_arr': fc_arr, 'UGB_arr': UGB_arr, 'PM_arr': PM_arr, 'CMRR_dc_dB_arr': CMRR_dc_dB_arr, 'PSRR_dc_dB_arr': PSRR_dc_dB_arr, 'Zin_dc_dm_arr': Zin_dc_dm_arr, 'Zin_dc_cm_arr': Zin_dc_cm_arr}
    return {'Adc_ol_dB_arr': Adc_ol_dB_arr, 'fc_arr': fc_arr, 'UGB_arr': UGB_arr, 'PM_arr': PM_arr, 'CMRR_dc_dB_arr': CMRR_dc_dB_arr, 'Zin_dc_dm_arr': Zin_dc_dm_arr, 'Zin_dc_cm_arr': Zin_dc_cm_arr}
# ============================================