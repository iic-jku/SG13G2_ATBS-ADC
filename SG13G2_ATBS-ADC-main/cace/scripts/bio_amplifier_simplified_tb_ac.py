# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This file reads the data from the bio-signal amplifier MC AC analysis and save it to a .csv file.
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
    
    # Iterate over Adc_cl_dB MC results
    Adc_cl_dB_arr = []
    for Adc_cl_dB in results['Adc_cl_dB']:
        Adc_cl_dB_arr.append(Adc_cl_dB)
    print(f'Adc_cl_dB_arr = {Adc_cl_dB_arr}')
    
    # Delete statistical outliers in Adc_cl_dB_arr
    Adc_cl_dB_arr = [val for val in Adc_cl_dB_arr if 1 <= val <= 100]
    print(f'Adc_cl_dB_arr = {Adc_cl_dB_arr}')
    
    # # Iterate over fcl MC results
    # fcl_arr = []
    # for fcl in results['fcl']:
        # fcl_arr.append(fcl)
    # print(f'fcl_arr = {fcl_arr}')
    
    # # Delete statistical outliers in fcl_arr
    # fcl_arr = [val for val in fcl_arr if 0.01 <= val <= 10]
    # print(f'fcl_arr = {fcl_arr}')
    
    # # Iterate over fcu MC results
    # fcu_arr = []
    # for fcu in results['fcu']:
        # fcu_arr.append(fcu)
    # print(f'fcu_arr = {fcu_arr}')
    
    # # Delete statistical outliers in fcu_arr
    # fcu_arr = [val for val in fcu_arr if 1 <= val <= 1e6]
    # print(f'fcu_arr = {fcu_arr}')
    
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
    
    # # Iterate over Zin_dc_dm MC results
    # Zin_dc_dm_arr = []
    # for Zin_dc_dm in results['Zin_dc_dm']:
        # Zin_dc_dm_arr.append(Zin_dc_dm)
    # print(f'Zin_dc_dm_arr = {Zin_dc_dm_arr}')
    
    # # Delete statistical outliers in Zin_dc_dm_arr
    # Zin_dc_dm_arr = [val for val in Zin_dc_dm_arr if 1e3 <= val <= 1e12]
    # print(f'Zin_dc_dm_arr = {Zin_dc_dm_arr}')
    
    # # Iterate over Zin_dc_cm MC results
    # Zin_dc_cm_arr = []
    # for Zin_dc_cm in results['Zin_dc_cm']:
        # Zin_dc_cm_arr.append(Zin_dc_cm)
    # print(f'Zin_dc_cm_arr = {Zin_dc_cm_arr}')
    
    # # Delete statistical outliers in Zin_dc_cm_arr
    # Zin_dc_cm_arr = [val for val in Zin_dc_cm_arr if 1e3 <= val <= 1e12]
    # print(f'Zin_dc_cm_arr = {Zin_dc_cm_arr}')
    
    # Save data as .csv
    np.savetxt('cace/scripts/bio_amplifier_simplified_ac.csv',
               #np.column_stack((np.array(Adc_cl_dB_arr), np.array(fcl_arr), np.array(fcu_arr), np.array(CMRR_dc_dB_arr), np.array(Zin_dc_dm_arr), np.array(Zin_dc_cm_arr))), comments = "", 
               #header = "Adc_cl_dB_arr,fcl_arr,fcu_arr,CMRR_dc_dB_arr,Zin_dc_dm_arr,Zin_dc_cm_arr", delimiter = ",")
               np.column_stack((np.array(Adc_cl_dB_arr), np.array(CMRR_dc_dB_arr))), comments = "", 
               header = "Adc_cl_dB_arr,CMRR_dc_dB_arr", delimiter = ",")
    
    # return {'Adc_cl_dB_arr': Adc_cl_dB_arr, 'fcl_arr': fcl_arr, 'fcu_arr': fcu_arr, 'CMRR_dc_dB_arr': CMRR_dc_dB_arr, 'PSRR_dc_dB_arr': PSRR_dc_dB_arr, 'Zin_dc_dm_arr': Zin_dc_dm_arr, 'Zin_dc_cm_arr': Zin_dc_cm_arr}
    # return {'Adc_cl_dB_arr': Adc_cl_dB_arr, 'fcl_arr': fcl_arr, 'fcu_arr': fcu_arr, 'CMRR_dc_dB_arr': CMRR_dc_dB_arr, 'Zin_dc_dm_arr': Zin_dc_dm_arr, 'Zin_dc_cm_arr': Zin_dc_cm_arr}
    return {'Adc_cl_dB_arr': Adc_cl_dB_arr, 'CMRR_dc_dB_arr': CMRR_dc_dB_arr}
# ============================================