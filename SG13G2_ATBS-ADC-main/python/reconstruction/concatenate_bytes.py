# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: Concatenate 8-Bit unsigned data to 16-Bit signed data
# Created: 27.12.2024
# Last Modified: 27.12.2024
# ============================================

# Imports
import numpy as np
# ============================================

# Function concatenate_bytes
def concatenate_bytes(data_u8, nbytes, bigendian):
    """
    Author: Anna Werzi
    Converted from Matlab to Python by Simon Dorrer
    Last Modified: 27.12.2024
    Description:  Concatenate 8-Bit unsigned data (np.uint8) to (8*nbytes)-Bit signed data
    
    Parameters:
        data_u8 (numpy.ndarray): Simulated 8-bit unsigned data.
        nbytes (int): Bytes per data / sample.
        bigendian (bool): True for most significant byte first, False otherwise.
    
    Returns:
        numpy.ndarray: (8*nbytes)-bit signed data.
    """
    
    N = int(len(data_u8) / nbytes) # data_u8 length
    unsigned = np.zeros(N, dtype=np.uint16)

    if bigendian:
        for b in range(nbytes):
            unsigned = unsigned + data_u8[b::nbytes] * (2**(8 * (nbytes - b - 1)))
    else:
        for b in range(nbytes):
            unsigned = unsigned + data_u8[b::nbytes] * (2**(8 * b))
    
    msb = 8 * nbytes
    is_negative = (unsigned & (1 << (msb - 1))) != 0 # Matlab: bitget(unsigned, msb);
    
    # Signed conversion
    unsigned = unsigned & ~(1 << (msb - 1))  # Clear MSB
    data_signed = unsigned - (is_negative * (2**(msb - 1)))
    
    return data_signed
# ============================================

if __name__ == '__main__':
    print("This code will not be executed when this file is imported.")
# ============================================