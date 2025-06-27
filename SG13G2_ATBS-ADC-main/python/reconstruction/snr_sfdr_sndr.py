# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Author: https://github.com/hrtlacek/SNR
# Modified by Simon Dorrer:
# -) exluded DC from SNR
# -) more input parameters
# -) formatting code
# -) updated SNR plot
# -) added SNDR calculation + plot
# -) added SFDR calculation + plot
# Description: This module calculates and plots the SNR, SNDR and SFDR.
# Created: 29.12.2024
# Last Modified: 29.12.2024
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import scipy.signal as sig
import copy
# ============================================

# Function bandpower
def bandpower(ps, mode = 'psd'):
    """
    estimate bandpower, see https://de.mathworks.com/help/signal/ref/bandpower.html
    """
    
    if mode=='time':
        x = ps
        l2norm = np.linalg.norm(x)**2./len(x)
        return l2norm
    elif mode == 'psd':
        return sum(ps)  
# ============================================

# Function getIndizesAroundPeak
def getIndizesAroundPeak(arr, peakIndex, searchWidth = 1000):
    peakBins = []
    magMax = arr[peakIndex]
    curVal = magMax
    for i in range(searchWidth):
        newBin = peakIndex + i
        newVal = arr[newBin]
        if newVal > curVal:
            break
        else:
            peakBins.append(int(newBin))
            curVal = newVal
    curVal = magMax
    for i in range(searchWidth):
        newBin = peakIndex - i
        newVal = arr[newBin]
        if newVal > curVal:
            break
        else:
            peakBins.append(int(newBin))
            curVal = newVal
    return np.array(list(set(peakBins)))
# ============================================

# Function freqToBin
def freqToBin(fAxis, Freq):
    return np.argmin(abs(fAxis - Freq))
# ============================================

# Function getPeakInArea
def getPeakInArea(psd, faxis, estimation, searchWidthHz = 10):
    """
    returns bin and frequency of the maximum in an area
    """
    binLow = freqToBin(faxis, estimation - searchWidthHz)
    binHi = freqToBin(faxis, estimation + searchWidthHz)
    peakbin = binLow + np.argmax(psd[binLow:binHi])
    return peakbin, faxis[peakbin]
# ============================================

# Function getHarmonics
def getHarmonics(fund, fs, nHarmonics=6, aliased = False):
    harmonicMultipliers = np.arange(2, nHarmonics + 2)
    harmonicFs = fund * harmonicMultipliers
    if not aliased:
        harmonicFs[harmonicFs > fs/2] = -1
        harmonicFs = np.delete(harmonicFs, harmonicFs == -1)
    else:
        nyqZone = np.floor(harmonicFs / (fs/2))
        oddEvenNyq = nyqZone % 2  
        harmonicFs = np.mod(harmonicFs, fs/2)
        harmonicFs[oddEvenNyq == 1] = (fs/2) - harmonicFs[oddEvenNyq == 1]
    return harmonicFs 
# ============================================

# Function plotSNR
def plotSNR(snr, fs, faxis, ps, dcIndizes, fundIndizes, fullHarmonicBinList, harmPeaks, harmPeakFreqs, newFigure = True):
    if newFigure:
        plt.figure(tight_layout = True)

    # Plot Fundamental & all
    plt.plot(faxis[fundIndizes], 10*np.log10(ps[fundIndizes]), color = 'tab:blue', zorder = 3)
    plt.plot(faxis, 10*np.log10(ps), color = 'tab:orange', zorder = 1)
    
    # Plot DC
    plt.plot(faxis[dcIndizes], 10*np.log10(ps[dcIndizes]), color = 'k', zorder = 2)
        
    # Plot Harmonics
    arrowprops = dict(
        arrowstyle = "->",
        connectionstyle = "angle, angleA=0, angleB=90, rad=10")
    bbox = dict(boxstyle = "round", fc = "0.8")
    
    for i, harm in enumerate(fullHarmonicBinList):
        plt.plot(faxis[harm], 10*np.log10(ps[harm]), color = 'k', zorder = 2)
        
        # display harmonics labels
        plt.annotate("f{}".format(i+1),
        (harmPeakFreqs[i], 10*np.log10(harmPeaks[i])),
        xytext = (0, 30), textcoords = 'offset points',
        bbox = bbox, arrowprops = arrowprops)
    
    plt.title(f'SNR: {snr:.2f}dB')
    plt.ylabel('Power (dB)')
    plt.xlabel('Frequency (Hz)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim([0, fs/2])
    plt.legend(['Fundamental', 'Noise', 'DC and Harmonics (excluded)'])
    plt.show()
    
    return
# ============================================

# Function plotSFDR
def plotSFDR(sfdr, fs, faxis, ps, dcIndizes, fundBin, fundIndizes, highestSpurBin, allHighestSpurBins, newFigure = True):
    if newFigure:
        plt.figure(tight_layout = True)

    # Plot Fundamental & all
    plt.plot(faxis[fundIndizes], 10*np.log10(ps[fundIndizes]), color = 'tab:blue', zorder = 3)
    plt.plot(faxis, 10*np.log10(ps), color = 'tab:orange', zorder = 1)
    
    # Plot DC
    plt.plot(faxis[dcIndizes], 10*np.log10(ps[dcIndizes]), color = 'k', zorder = 2)
        
    # Plot highest spur
    plt.plot(faxis[allHighestSpurBins], 10*np.log10(ps[allHighestSpurBins]), color = 'tab:green', zorder = 2)
    
    # Plot dots
    plt.plot(faxis[fundBin], 10*np.log10(ps[fundBin]), 'bo', zorder = 3)
    plt.plot(faxis[highestSpurBin], 10*np.log10(ps[highestSpurBin]), 'go', zorder = 2)
    
    plt.title(f'SFDR: {sfdr:.2f}dB')
    plt.ylabel('Power (dB)')
    plt.xlabel('Frequency (Hz)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim([0, fs/2])
    plt.legend(['Fundamental', 'Noise and Distortion', 'DC (excluded)', 'Highest Spur'])
    plt.show()
    
    return
# ============================================

# Function plotSINAD
def plotSINAD(sinad, fs, faxis, ps, dcIndizes, fundIndizes, newFigure = True):
    if newFigure:
        plt.figure(tight_layout = True)

    # Plot Fundamental & all
    plt.plot(faxis[fundIndizes], 10*np.log10(ps[fundIndizes]), color = 'tab:blue', zorder = 3)
    plt.plot(faxis, 10*np.log10(ps), color = 'tab:orange', zorder = 1)
    
    # Plot DC
    plt.plot(faxis[dcIndizes], 10*np.log10(ps[dcIndizes]), color = 'k', zorder = 2)
    
    plt.title(f'SINAD: {sinad:.2f}dB')
    plt.ylabel('Power (dB)')
    plt.xlabel('Frequency (Hz)')
    plt.grid(visible = True, linestyle='--')
    plt.xlim([0, fs/2])
    plt.legend(['Fundamental', 'Noise and Distortion', 'DC (excluded)'])
    plt.show()
    
    return
# ============================================

# Function snr
def snr(y, fs, nHarmonics = 6, searchWidth = 1000, newFigure = True):
    """
    Author: https://github.com/hrtlacek/SNR
    Modified by Simon Dorrer:
    -) exluded DC from SNR
    -) more input parameters
    -) code formatting
    -) updated SNR plot
    
    Last Modified: 29.12.2024
    Description: calculates and plots the Signal to Noise Ratio (SNR)
                 
    Parameters:
        y (numpy.ndarray): input data
        fs (int): sampling frequency
        nHarmonics (int): number of harmonics
        searchWidth (int): number of samples to be searched for bins
        newFigure (boolean): new plot (True) or included in subplot (False)
    
    Returns:
        snr: SNR in dB
    """
    
    # Get fundamental
    faxis, ps = sig.periodogram(y, fs, window=('kaiser', 38)) # get periodogram, parametrized like in Matlab
    fundBin = np.argmax(ps) # estimate fundamental at maximum amplitude, get the bin number
    fundIndizes = getIndizesAroundPeak(ps, fundBin, searchWidth) # get bin numbers around fundamental peak
    fundFrequency = faxis[fundBin] # frequency of fundamental
    
    # Get DC
    dcIndizes = getIndizesAroundPeak(ps, 1, searchWidth)
    dcIndizes = dcIndizes[dcIndizes >= 0]
    
    # Get harmonics
    harmonicFs = getHarmonics(fundFrequency, fs, nHarmonics = nHarmonics, aliased = True) # get harmonic frequencies
    
    # Search maxima near estimated harmonic frequencies
    harmonicBorders = np.zeros([2, nHarmonics], dtype = np.int16).T
    fullHarmonicBins = np.array([], dtype = np.int16)
    fullHarmonicBinList = []
    harmPeakFreqs = []
    harmPeaks = []
    for i, harmonic in enumerate(harmonicFs):
        searcharea = 0.1 * fundFrequency
        estimation = harmonic
        
        binNum, freq = getPeakInArea(ps, faxis, estimation, searcharea)
        harmPeakFreqs.append(freq)
        harmPeaks.append(ps[binNum])
        allBins = np.sort(getIndizesAroundPeak(ps, binNum, searchWidth))
        fullHarmonicBins = np.append(fullHarmonicBins, allBins)
        fullHarmonicBinList.append(allBins)
        harmonicBorders[i, :] = [allBins[0], allBins[-1]]
    
    # Calculate Fundamental Power
    fundIndizes.sort()
    pFund = bandpower(ps[fundIndizes[0]:fundIndizes[-1]]) # get power of fundamental
    
    # Calculate Noise Power
    noisePrepared = copy.copy(ps)
    noisePrepared[dcIndizes] = 0 # remove DC
    noisePrepared[fundIndizes] = 0 # remove fundamental
    noisePrepared[fullHarmonicBins] = 0 # remove harmonics
    noiseMean = np.median(noisePrepared[noisePrepared != 0])
    noisePrepared[dcIndizes] = noiseMean
    noisePrepared[fundIndizes] = noiseMean 
    noisePrepared[fullHarmonicBins] = noiseMean
    noisePower = bandpower(noisePrepared)
    
    # Calculate SNR
    snr = 10*np.log10(pFund / noisePower)
    
    # Plot SNR
    plotSNR(snr, fs, faxis, ps, dcIndizes, fundIndizes, fullHarmonicBinList, harmPeaks, harmPeakFreqs, newFigure)
    
    return snr
# ============================================

# Function sfdr
def sfdr(y, fs, nHarmonics = 6, searchWidth = 1000, newFigure = True):
    """
    Author: Simon Dorrer:
        
    Last Modified: 29.12.2024
    Description: calculates and plots the Spurious Free Dynamic Range (SFDR)
                 
    Parameters:
        y (numpy.ndarray): input data
        fs (int): sampling frequency
        nHarmonics (int): number of harmonics
        searchWidth (int): number of samples to be searched for bins
        newFigure (boolean): new plot (True) or included in subplot (False)
    
    Returns:
        sfdr: SFDR in dB
    """
    
    # Get fundamental
    faxis, ps = sig.periodogram(y, fs, window=('kaiser', 38)) # get periodogram, parametrized like in Matlab
    fundBin = np.argmax(ps) # estimate fundamental at maximum amplitude, get the bin number
    fundIndizes = getIndizesAroundPeak(ps, fundBin, searchWidth) # get bin numbers around fundamental peak
    fundFrequency = faxis[fundBin] # frequency of fundamental
    
    # Get DC
    dcIndizes = getIndizesAroundPeak(ps, 1, searchWidth)
    dcIndizes = dcIndizes[dcIndizes >= 0]
    
    # Get harmonics
    harmonicFs = getHarmonics(fundFrequency, fs, nHarmonics = nHarmonics, aliased = True) # get harmonic frequencies
    
    # Search maxima near estimated harmonic frequencies
    harmBins = []
    for i, harmonic in enumerate(harmonicFs):
        searcharea = 0.1 * fundFrequency
        estimation = harmonic
        
        binNum, freq = getPeakInArea(ps, faxis, estimation, searcharea)
        harmBins.append(binNum)
         
    # Calculate fundamental power (only power of highest bin)
    fundamentalPower = np.max(ps)
    
    # Calculate highest spur power
    highestSpurPower = np.max(ps[harmBins])
    highestSpurBin = ps.tolist().index(highestSpurPower)
    allHighestSpurBins = np.sort(getIndizesAroundPeak(ps, highestSpurBin, searchWidth))
    
    # Calculate SFDR
    sfdr = 10*np.log10(fundamentalPower) - 10*np.log10(highestSpurPower)
    
    # Plot SFDR
    plotSFDR(sfdr, fs, faxis, ps, dcIndizes, fundBin, fundIndizes, highestSpurBin, allHighestSpurBins, newFigure)
    
    return sfdr
# ============================================

# Function sndr
def sinad(y, fs, searchWidth = 1000, newFigure = True):
    """
    Author: Simon Dorrer:
        
    Last Modified: 29.12.2024
    Description: calculates and plots the Signal to Noise & Distortion Ratio (SNDR) 
    or Signal to Interference Ratio including Noise & Distortion (SINAD)
    SINAD (= SNDR) is like SNR but without removing the harmonics!
    Do not set noisePrepared[fullHarmonicBins] = 0 / noiseMean.
                 
    Parameters:
        y (numpy.ndarray): input data
        fs (int): sampling frequency
        searchWidth (int): number of samples to be searched for bins
        newFigure (boolean): new plot (True) or included in subplot (False)
    
    Returns:
        sinad: SINAD (= SNDR) in dB
    """
    
    # Get fundamental
    faxis, ps = sig.periodogram(y, fs, window=('kaiser', 38)) # get periodogram, parametrized like in Matlab
    fundBin = np.argmax(ps) # estimate fundamental at maximum amplitude, get the bin number
    fundIndizes = getIndizesAroundPeak(ps, fundBin, searchWidth) # get bin numbers around fundamental peak
    
    # Get DC
    dcIndizes = getIndizesAroundPeak(ps, 1, searchWidth)
    dcIndizes = dcIndizes[dcIndizes >= 0]
    
    # Calculate Fundamental Power
    fundIndizes.sort()
    pFund = bandpower(ps[fundIndizes[0]:fundIndizes[-1]]) # get power of fundamental
    
    # Calculate Noise & Distortion Power
    noiseDistortionPrepared = copy.copy(ps)
    noiseDistortionPrepared[dcIndizes] = 0 # remove DC
    noiseDistortionPrepared[fundIndizes] = 0 # remove fundamental
    noiseDistortionMean = np.median(noiseDistortionPrepared[noiseDistortionPrepared != 0])
    noiseDistortionPrepared[dcIndizes] = noiseDistortionMean
    noiseDistortionPrepared[fundIndizes] = noiseDistortionMean 
    noiseDistortionPower = bandpower(noiseDistortionPrepared)
    
    # Calculate SINAD
    sinad = 10*np.log10(pFund / noiseDistortionPower)
    
    # Plot SINAD
    plotSINAD(sinad, fs, faxis, ps, dcIndizes, fundIndizes, newFigure)
    
    return sinad
# ============================================

if __name__ == '__main__':
    print("This code will not be executed when this file is imported.")
    
    # How to use:
    # import snr_sfdr_sndr as sn
    
    # Signal to Noise Ratio (SNR)
    # snr = sn.snr(y, fs, nHarmonics = 6, searchWidth = 1000, newFigure = True)

    # Spurious Free Dynamic Range (SFDR)
    # sfdr = sn.sfdr(y, fs, nHarmonics = 6, searchWidth = 1000, newFigure = True)
    
    # Signal to Noise & Distortion Ratio (SNDR)
    # Signal to Interference Ratio including Noise & Distortion (SINAD)
    # SINAD = SNDR
    # sndr = sn.sinad(y, fs, searchWidth = 1000, newFigure = True)
# ============================================