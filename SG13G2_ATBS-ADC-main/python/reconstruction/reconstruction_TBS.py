# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Converts the signed 16-Bit data without overflow zeros to the 
# corresponding spikes and TBS reconstructed signal.
# Created: 27.12.2024
# Last Modified: 27.12.2024
# ============================================

# Imports
import numpy as np
# ============================================

# Function reconstruction_TBS
def reconstruction_TBS(data_s16, delta_v, abs_t, offset):
    """
    Author: Anna Werzi
    Converted from Matlab to Python by Simon Dorrer
    Last Modified: 27.12.2024
    Description: Converts the signed 16-Bit data without overflow zeros to the corresponding spikes and TBS reconstructed signal.

    Parameters:
    data_s16       : numpy array of 16-bit signed data without overflow zeros
    delta_v        : delta voltage between spikes (threshold)
    abs_t          : absolute time in seconds corresponding to data samples
    offset         : offset voltage for asymmetric supply

    Returns:
    amp            : reconstructed signal amplitude
    valid_spikes   : spikes triggered by input signal
    t              : absolute time stamps corresponding to valid_spikes
    phantom_spikes : spikes not representing sample points (triggered after reference refreshing)
    phantom_t      : absolute time stamps corresponding to phantom_spikes
    """

    spikes = np.sign(data_s16)
    v_init = offset + delta_v  # virtual last sample, "v_lower = offset" and "v_upper = offset + 2 * delta_v" after init

    amp = []
    curr_amp = v_init
    t = []
    phantom_t = []
    valid_spikes = []
    phantom_spikes = []
    spikes_valid = 1
    prev_sign = 0

    for i in range(len(spikes)):
        # amplitude tracking
        curr_amp = curr_amp + delta_v * spikes[i]
        
        if prev_sign != spikes[i]:  # check for a sign change
            spikes_valid = 1        # signal is now captured
        
        if spikes_valid == 0:
            # discard data point of phantom spikes
            phantom_spikes.append(spikes[i])
            phantom_t.append(abs_t[i])
        else:
            # valid signal sample
            amp.append(curr_amp)
            t.append(abs_t[i])
            valid_spikes.append(spikes[i])
        
        prev_sign = spikes[i]  # update the previous sign
    
    return amp, valid_spikes, t, phantom_spikes, phantom_t
# ============================================

if __name__ == '__main__':
    print("This code will not be executed when this file is imported.")
# ============================================