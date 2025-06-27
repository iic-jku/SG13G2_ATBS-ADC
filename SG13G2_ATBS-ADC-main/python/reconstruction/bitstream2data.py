# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Module for loading Ngspice bitstream and extracting the UART data frames from it.
# Created: 26.12.2024
# Last Modified: 26.12.2024
# ============================================

# Imports
import numpy as np
import math
import matplotlib.pyplot as plt

import sys
# caution: path[0] is reserved for script path (or '' in REPL)
sys.path.insert(1, '../plot_simulations')
import ngspice2python as ng
# ============================================

# Function find_nearest_idx
def find_nearest_idx(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return idx
# ============================================

# Function bitstream2data
def bitstream2data(file_path, f_clk, uart_baudrate, uart_data_length, amount_bytes, start_time, voltage_threshold=0.75, endianness="little", plotFigure=False):
    """
    Converts a Ngspice simulated UART bitstream from Xschem into 8-Bit data.
    
    Args:
        file_path (str): Path to the text file containing time and voltage data.
        f_clk (int): Clock frequency
        uart_baudrate (int): UART baud rate (bits per second).
        uart_data_length (int): Amount of data bits (e.g. 8-Bit)
        amount_bytes (int): Amount of bytes to be converted.
        start_time (float): Start time of UART transmission.
        voltage_threshold (float): Voltage threshold to determine high/low levels.
        endianness (str): "big" or "little" endian
        plotFigure (boolean): plot (True) or no plot (False)
    
    Returns:
        numpy.ndarray of int: Decoded UART data as a numpy array of uint8 values.
    """
    
    # Read the file and parse time and voltage
    time = ng.loadngspicecol(file_path, "time")
    clock = ng.loadngspicecol(file_path, "v(clock)")
    uart = ng.loadngspicecol(file_path, "v(uart_tx)")
    
    # Cut away init. time and shift time array to 0
    start_time_idx = find_nearest_idx(time, start_time)
    time = time[start_time_idx:-1:1]
    time = time - time[0]
    uart = uart[start_time_idx:-1:1]
    clock = clock[start_time_idx:-1:1]
    
    # Determine sampling frequency
    sampling_interval = np.mean(np.diff(time))  # Time between samples
    sampling_rate = 1 / sampling_interval
    
    # Calculate samples per bit
    samples_per_bit = math.ceil(sampling_rate / uart_baudrate) # or int(...)
    
    # Cut away last samples
    last = samples_per_bit + amount_bytes * samples_per_bit * (1 + uart_data_length + 1)
    if last < len(time): 
        time = time[0:last:1]
        uart = uart[0:last:1]
        clock = clock[0:last:1]
    else:
        raise ValueError("The amount of bytes (amount_bytes) is too high!")
    
    # Convert voltage to binary signal (0 or 1)
    uart_binary = (uart > voltage_threshold).astype(int)
    clock_binary = (clock > voltage_threshold).astype(int)
    
    # Decode binary signal into bits
    uart_baud_count = math.ceil(f_clk / uart_baudrate)
    
    # Get indices of clock rising edges
    clock_rising_edge_indices = np.where((clock_binary[:-1] == 0) & (clock_binary[1:] == 1))[0] + 1
    # clock_binary[:-1] and clock_binary[1:] create two shifted versions of the array.
    # (clock_binary[:-1] == 0) & (clock_binary[1:] == 1) finds positions where clock transitions from 0 to 1.
    # np.where(...)[0] gives the indices of these transitions.
    # We add +1 because the transition occurs at the next index.
    
    # Get indices of clock falling edges
    clock_falling_edge_indices = np.where((clock_binary[:-1] == 1) & (clock_binary[1:] == 0))[0] + 1

    # Select every uart_baud_count-th rising edge
    nth_rising_edge_indices = clock_rising_edge_indices[::uart_baud_count]
    
    # Select every uart_baud_count-th falling edge
    nth_falling_edge_indices = clock_falling_edge_indices[1::uart_baud_count]
    
    # Sample UART values in the middle of the UART bit
    sample_indices = np.copy(nth_rising_edge_indices)
    for i in range(0, len(nth_rising_edge_indices)):
        sample_indices[i] = find_nearest_idx(time, time[nth_rising_edge_indices[i]] + (time[nth_falling_edge_indices[i]] - time[nth_rising_edge_indices[i]]) / 2)
    bits = uart_binary[sample_indices]
    
    if plotFigure:
        # Create figure and subplots
        fig, (ax_top, ax_bottom) = plt.subplots(2, 1, figsize=(8, 6), sharex=True)
        ax_top.plot(time, uart_binary, label='UART', color='blue')
        ax_top.legend()
        ax_top.grid(True)
        ax_bottom.plot(time, clock_binary, label='clock', color='green', marker='o')
        ax_bottom.stem(time[nth_rising_edge_indices], clock_binary[nth_rising_edge_indices], label='clock rising edges', linefmt='r--', markerfmt='ro', basefmt=' ')
        ax_bottom.stem(time[nth_falling_edge_indices], clock_binary[nth_falling_edge_indices], label='clock falling edges', linefmt='b--', markerfmt='bo', basefmt=' ')
        ax_bottom.stem(time[sample_indices], clock_binary[sample_indices], label='sample_indices', linefmt='k--', markerfmt='ko', basefmt=' ')
        ax_bottom.legend()
        ax_bottom.grid(True)
        plt.tight_layout()
        plt.show()
    
    # Group bits into bytes
    # UART frame: 1 start bit (0), 8 data bits (1-8), 1 stop bit (9), no parity bits
    decoded_bytes = []
    i = 0
    while i < len(bits):
        if bits[i] == 0:  # Start bit
            if i + (uart_data_length+2) <= len(bits):  # Ensure we have enough bits for a full frame
                data_bits = bits[i+1:i+(uart_data_length+1)]
                stop_bit = bits[i+(uart_data_length+1)]
                if stop_bit == 1:  # Valid stop bit
                    if endianness == "little":
                        byte = int(''.join(map(str, data_bits[::-1])), 2)  # Little-endian
                    elif endianness == "big":
                        byte = int(''.join(map(str, data_bits)), 2)        # Big-endian
                    else:
                        print("Wrong endianness!")
                    decoded_bytes.append(byte)
                else:
                    print("Invalid stop bit!")
                i = i + (uart_data_length+2)  # Move to the next frame
            else:
                break
        else:
            i = i + 1  # Skip invalid start bits
    return np.array(decoded_bytes, np.uint8)
# ============================================