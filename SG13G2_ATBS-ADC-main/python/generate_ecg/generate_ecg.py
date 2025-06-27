# -*- coding: utf-8 -*-
# Master-Thesis
# @ JKU IIC / ISP
# 2024
# Author: Simon Dorrer
# Description: This Python file imports a .csv file with a raw ECG signal and 
# exports a .txt file with a processed ECG. 
# # Created: 15.12.2024
# Last Modified: 15.12.2024
# ============================================

# Imports
import numpy as np
import matplotlib.pyplot as plt
import csv
import scipy.signal as sig

import sys
# caution: path[0] is reserved for script path (or '' in REPL)
sys.path.insert(1, '../reconstruction')
import snr_sfdr_sndr as sn
# ============================================

plt.close("all")
# %matplotlib qt
# %matplotlib inline
# ============================================

# Latex font settings in plot
plt.rc('text', usetex = True)
plt.rc('font', family = 'serif', size = 14)
# ============================================

# Main
if __name__ == '__main__':

  # User Constants
  VDD = 1.5
  v_max = 1.2 # Max. limit of analog hardware
  v_min = 0.2 # Min. limit of analog hardware
  # ============================================

  # Import original ECG signal
  # Original ECG signal lies in the range of [-0.5, 0.5].
  ecg_signal_raw = []
  with open('data/ecg_data_raw.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in reader:
        ecg_signal_raw.append(float(row[0]))     
  # ============================================
  
  # Resample ECG to fsig-Hz
  fs_original = 1024        # Original sampling frequency in Hz
  fs = 1 * fs_original      # New target sampling frequency in Hz
  ecg_signal_raw = sig.resample(ecg_signal_raw, int(len(ecg_signal_raw) * fs / fs_original))
  
  # Create time vector
  fsig = 1                  # Signal frequency in Hz
  N = len(ecg_signal_raw)
  tstop = 1 / fsig
  t = np.linspace(0, tstop, N)
  # ============================================
  
  # Scale ECG signal to appropriate voltage range
  # Find minimum
  ecg_min = min(ecg_signal_raw)

  # Find maximum
  ecg_max = max(ecg_signal_raw)

  # Get max. Peak-Peak value of ECG
  ecg_pp = ecg_max - ecg_min

  # Get max. Peak-Peak value of voltage boundaries
  v_pp = v_max - v_min
  # v_pp = 10e-3

  # Calculate scale factor
  scale_factor = v_pp / ecg_pp
  ecg_signal_scaled = [i * scale_factor for i in ecg_signal_raw]
  # ============================================

  # Shift ECG signal up to v_offset
  v_offset = v_min - min(ecg_signal_scaled)
  ecg_signal_offset = [i + v_offset for i in ecg_signal_scaled]
  # ============================================

  # Plotting ECG data with samples vector
  plt.figure(num = 1, tight_layout = True)
  plt.plot(ecg_signal_raw, linewidth = 2)
  plt.plot(ecg_signal_scaled, linewidth = 2)
  plt.plot(ecg_signal_offset, linewidth = 2)
  plt.xlabel('Samples')
  plt.ylabel('$V$ (V)')
  plt.grid(visible = True, linestyle='--')
  plt.legend(['raw', 'scaled', 'shifted'])
  plt.show()
  # ============================================
  
  # Periodogram of ECG
  faxis, ps = sig.periodogram(ecg_signal_offset, fs, window=('kaiser', 38))
  
  # Plot the magnitude spectrum (only positive frequencies)
  plt.figure(num = 2, tight_layout = True)
  plt.plot(faxis, 10*np.log10(ps))
  # plt.title("Periodogram of ECG")
  plt.xlabel("f (Hz)")
  plt.ylabel("Magnitude")
  plt.xlim([0, 512])
  plt.ylim([-120, 0])
  plt.grid(visible = True, linestyle='--')
  plt.show()
  # ============================================
  
  # Steepest slope of ECG
  
  # Compute the first derivative (numerical differentiation)
  dt = tstop / N  # Time step
  derivative = np.gradient(ecg_signal_offset, dt)  # approximate derivative
  
  # Find the steepest slope (maximum absolute derivative)
  steepest_slope = np.max(np.abs(derivative))
  steepest_index = np.argmax(np.abs(derivative))  # index of steepest slope
  
  plt.figure(num = 3, tight_layout = True)
  plt.subplot(2, 1, 1)
  plt.plot(t, ecg_signal_offset, label="ECG")
  plt.scatter(t[steepest_index], ecg_signal_offset[steepest_index], color='r', label="Steepest Slope")
  # plt.title("ECG in Time-Domain")
  plt.xlabel("$t$ (s)")
  plt.ylabel("$V$ (V)")
  plt.legend()
  plt.xlim([0, tstop])
  plt.grid(visible = True, linestyle='--')

  plt.subplot(2, 1, 2)
  plt.plot(t, derivative, label="dV/dt", color='g')
  plt.scatter(t[steepest_index], derivative[steepest_index], color='r', label="Steepest Slope")
  # plt.title("1st Derivative of ECG")
  plt.xlabel("$t$ (s)")
  plt.ylabel("Slope")
  plt.legend()
  plt.xlim([0, tstop])
  plt.grid(visible = True, linestyle='--')
  plt.show()
  # ============================================
  
  # Calculate Tmin / fmax of DAC clock
  N = 5 # Bit
  Vlsb = 2 * VDD / 2**N # differential LSB
  Tmin = Vlsb / steepest_slope
  fmax = 1 / Tmin
  print('Minimum period and maximum DAC clock frequency:')
  print('Tmin =', round(float(Tmin * 1e6), 2), 'us')
  print('fmax =', round(float(fmax * 1e-3), 2), 'kHz')
  print('============================================ \n')
  # ============================================
  
  # Calculate Tavg / favg of DAC clock
  integral_value = np.trapz(np.abs(derivative), t)
  Ti = t[-1] - t[0]  # Time period
  Tavg = Vlsb / (integral_value / Ti)  # Compute T_avg
  favg = 1 / Tavg
  print('Average period and average DAC clock frequency:')
  print('Tavg =', round(float(Tavg * 1e6), 2), 'us')
  print('favg =', round(float(favg * 1e-3), 2), 'kHz')
  print('============================================')
  # ============================================
  
  # Cut out QRS complex
  # ecg_signal_offset = ecg_signal_offset[500:600:1]
  # ============================================

  # Plotting ECG data with time vector
  plt.figure(num = 4, tight_layout = True)
  plt.plot(t, ecg_signal_offset, linewidth = 2)
  plt.xlabel('$t$ (s)')
  plt.ylabel('$V$ (V)')
  plt.xlim([0, tstop])
  plt.ylim([v_min, v_max])
  plt.grid(visible = True, linestyle='--')
  plt.show()
  # ============================================
  
  # Write ecg data to .csv file
  np.savetxt("data/ecg_time.csv", 
               np.column_stack((t, ecg_signal_offset)), comments = "", 
               header = "t,ecg_signal_offset", delimiter = ",")
  
  np.savetxt("data/ecg_periodogram.csv",
               np.column_stack((faxis, 10*np.log10(ps))), comments = "", 
               header = "f,ps_dB", delimiter = ",")
  
  np.savetxt("data/ecg_slope.csv", 
               np.column_stack((t, derivative)), comments = "", 
               header = "t,derivative", delimiter = ",")
  # ============================================
  
  # Print data in Xschem format
  string_out = ''
  for idx, (t, ecg_signal_offset) in enumerate(zip(t, ecg_signal_offset)):
    string_out += ''.join([str(t), ' ', str(round(ecg_signal_offset, 6)), ' '])
  
  string_out = '"dc 0 pwl(' + string_out + ')"'
  # print(string_out)
  # ============================================
  
  # Write pwl data to .txt file
  with open('data/ecg_pwl.txt', 'w') as f:
    f.write(string_out)
  # ============================================