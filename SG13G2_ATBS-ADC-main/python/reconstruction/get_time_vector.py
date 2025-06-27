# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Calculates the time vector for a given spike sequence. 
# The absolute value of the spikes gives the current timer value. 
# A zero marks a timer overflow.
# Created: 27.12.2024
# Last Modified: 27.12.2024
# ============================================

# Function get_time_vector
def get_time_vector(spikes, time_counter_bitwidth):
    """
    Author: Günther Lindorfer, Anna Werzi
    Converted from Matlab to Python by Simon Dorrer
    Last Modified: 27.12.2024
    Description: Calculates the time vector for a given spike sequence.
                 The absolute value of the spikes gives the current timer value.
                 A zero marks a timer overflow.
                 
    Parameters:
        spikes (numpy.ndarray): (8*nbytes)-Bit signed data with overflow zeros.
        time_counter_bitwidth (int): Bitwidth of time unit counter.
    
    Returns:
        list of int: time vector for a given spike sequence.
    """
    
    amount_timer_ovf = 0  # amount of time overflows
    
    time_counter_max = 2**time_counter_bitwidth
    
    t = []
    for spike in spikes:
        if spike == 0:  # increase timer overflows
            amount_timer_ovf = amount_timer_ovf + 1
        else:           # calculate next timestamp
            t.append(amount_timer_ovf * time_counter_max + abs(spike))

    return t
# ============================================

if __name__ == '__main__':
    print("This code will not be executed when this file is imported.")
# ============================================