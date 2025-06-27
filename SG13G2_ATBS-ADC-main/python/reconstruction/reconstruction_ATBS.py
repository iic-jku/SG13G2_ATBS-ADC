# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Converts the signed 16-Bit data with overflow zeros to the 
# corresponding spikes and ATBS reconstructed signal.
# Created: 27.12.2024
# Last Modified: 27.12.2024
# ============================================

# Imports
import numpy as np
# ============================================

# Function reconstruction_ATBS
def reconstruction_ATBS(data, thmin, thmax, dmin, dmax, abs_t, time_win, offset, 
                        buffer_size, vmax, mode):
    """
    Author: Anna Werzi
    Converted from Matlab to Python by Simon Dorrer
    Last Modified: 27.12.2024
    Description: Converts the signed 16-Bit data with overflow zeros to the corresponding spikes and ATBS reconstructed signal.

    Parameters:
    data          : numpy array of 16-bit signed data with overflow zeros
    thmin         : minimum voltage delta between subsequent spikes (threshold)
    thmax         : maximum voltage delta between subsequent spikes (threshold)
    dmin          : minimum Weyl's discrepancy for adaptation algorithm
    dmax          : maximum Weyl's discrepancy for adaptation algorithm
    abs_t         : absolute time in seconds corresponding to data samples
    time_win      : time window for evaluating local Weyl's discrepancy
    offset        : offset voltage for asymmetric supply
    buffer_size   : estimated upper boundary for spikes within the chosen time window
    vmax          : voltage limit (restricted to remain below supply range)
    mode          : '1' - adapt on overflow and spike, '0' - solely adapt on spike

    Returns:
    amp           : reconstructed signal amplitude
    valid_spikes  : spikes triggered by input signal
    t             : absolute time stamps corresponding to valid_spikes
    phantom_spikes: spikes not representing sample points (triggered after overflow adaptation)
    phantom_t     : absolute time stamps corresponding to phantom_spikes
    thlist        : list of adapted thresholds during sampling
    """

    # Initialize variables
    spikes = np.sign(data[np.nonzero(data)])  # remove overflow zeros and calculate spike signs
    v_init = offset + thmin
    amp = []
    t = []
    phantom_t = []
    valid_spikes = []
    phantom_spikes = []
    thlist = []

    spikes_valid = 1
    prev_sign = 0
    curr_amp = v_init
    th = thmin
    i = -1; # spike index
    phantomspikes = 0
    vmax = vmax + offset

    start = np.argmax(data != 0)  # Find the first non-zero data index

    for j in range(start, len(data)):
        adapt_on_spike = data[j] != 0
        adapt_on_overflow = (mode == 1) and (th != thmin and data[j] == 0 and data[j-1] == 0)

        if adapt_on_overflow:
            phantomspikes = np.log2(th / thmin)  # maximal phantom spikes (if th is reduced (>>2) until thmin)
            th = th / 2
            # signal level (midpoint between DAC levels; curr_amp) does not change at overflow adaption

        if adapt_on_spike: # real or phantomspike
        
            i = i + 1
            
            if prev_sign != spikes[i]:  # check for a sign change
                spikes_valid = 1  # signal is now captured
            
            # amplitude and threshold tracking
            curr_amp = curr_amp + th * spikes[i]

            # calculate weyls discrepancy over time window
            idx = i
            spikereg = []
            while idx >= 0 and (abs_t[i] - abs_t[idx] <= time_win):
                if len(spikereg) < buffer_size:
                    spikereg.append(spikes[idx])
                    idx = idx - 1
                else:
                    print(len(spikereg))
                    break
            csum = np.cumsum(spikereg)
            w = max(0, max(csum, default=0)) - min(0, min(csum, default=0))

            prevth = th

            # adapt threshold
            if w > dmax and th < thmax:
                th = th * 2
            elif w < dmin and th > thmin:
                th = th / 2
            
            # remove phantomspikes caused by adaption at timer overflow
            if phantomspikes != 0:
                if i != len(spikes) - 1 and spikes[i] != spikes[i+1]: # direction change on next spike
                    phantomspikes = 0
                elif prevth == th: # no th reduction
                    phantomspikes = 0 # future spikes are correct
                else:
                    phantomspikes = phantomspikes - 1
                    
                # keep track of dicarded spikes
                phantom_spikes.append(spikes[i])
                phantom_t.append(abs_t[i])
            # remove phantomspikes
            elif spikes_valid == 0:
                # keep track of dicarded spikes
                phantom_spikes.append(spikes[i])
                phantom_t.append(abs_t[i])
            else:
                # valid signal sample
                amp.append(curr_amp)
                thlist.append(prevth)
                valid_spikes.append(spikes[i])
                t.append(abs_t[i])

            # Clipping
            if abs(curr_amp + spikes[i] * th) > vmax: # check in both directions
                th = prevth # shift window instead of adaption
                curr_amp = curr_amp + spikes[i] * (vmax - th - abs(curr_amp)) # adjust center of threshold window

    return amp, valid_spikes, t, phantom_spikes, phantom_t, thlist
# ============================================

if __name__ == '__main__':
    print("This code will not be executed when this file is imported.")
# ============================================