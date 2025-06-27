v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Schmitt Trigger for I/O pins} 850 -1700 0 0 1 1 {}
T {Functionality of Schmitt Trigger:
-) Required for digital inputs with slow rising or falling edges (high power consumption) or signals with superimposed noise (false triggering)
-) Minimum L for fast response time
-) Wp = 3*Wn is required to simplify the formulas (sqrt(beta_n / beta_p) = 1) from the paper "CMOS Schmitt triggers" by B. L. Dokic.
-) Regenerative feedback, either at a positive or negative output voltage change, is realized through M3 and M6, respectively.
-) K = Kn = Kp, if M3 and M6 are scaled the same with factor R.
-) Vth = Vth,n ~ -Vth,p yields the simplified formulas:
VT+ = VDD/2 + (VDD - Vth,n) / (2 * (1 + sqrt(K)))
VT- = VDD/2 - (VDD + Vth,p) / (2 * (1 + sqrt(K)))
VH = (VDD - Vth) / (1 + sqrt(K))
-) The hysteresis voltage increases, if K decreases, hence if R increases. This can be realized with a rise in the channel width of M3 and M6.
-) With these simplifications the hysteresis will be symmetric around VDD/2 (common-mode voltage).
-) If R is increased, the hysteresis will increase. However, simultaneously, the propagation delay of the Schmitt trigger and the area also increases. 
Therefore, one must find a trade-off for these characteristics.} 2200 -1570 0 1 0.5 0.5 {}
N 1120 -560 1120 -520 {lab=#net1}
N 1120 -560 1240 -560 {lab=#net1}
N 1120 -600 1120 -560 {lab=#net1}
N 1120 -420 1120 -380 {lab=VSS}
N 1000 -490 1080 -490 {lab=vin}
N 1000 -630 1000 -490 {lab=vin}
N 1000 -630 1080 -630 {lab=vin}
N 1120 -700 1120 -660 {lab=#net2}
N 1120 -740 1120 -700 {lab=#net2}
N 1120 -490 1180 -490 {lab=VSS}
N 1180 -490 1180 -420 {lab=VSS}
N 1120 -420 1180 -420 {lab=VSS}
N 1120 -460 1120 -420 {lab=VSS}
N 1120 -630 1180 -630 {lab=VSS}
N 1180 -630 1180 -490 {lab=VSS}
N 1270 -700 1270 -600 {lab=#net2}
N 1120 -700 1270 -700 {lab=#net2}
N 1270 -560 1270 -380 {lab=VSS}
N 1120 -840 1120 -800 {lab=#net3}
N 1000 -910 1080 -910 {lab=vin}
N 1000 -700 1000 -630 {lab=vin}
N 1000 -770 1080 -770 {lab=vin}
N 1000 -910 1000 -770 {lab=vin}
N 1120 -980 1120 -940 {lab=VDD}
N 1120 -910 1180 -910 {lab=VDD}
N 1180 -980 1180 -910 {lab=VDD}
N 1120 -980 1180 -980 {lab=VDD}
N 1120 -1020 1120 -980 {lab=VDD}
N 1120 -770 1180 -770 {lab=VDD}
N 1180 -910 1180 -770 {lab=VDD}
N 1270 -800 1270 -700 {lab=#net2}
N 1120 -840 1240 -840 {lab=#net3}
N 1120 -880 1120 -840 {lab=#net3}
N 1300 -560 1340 -560 {lab=VDD}
N 1300 -840 1340 -840 {lab=VSS}
N 1000 -770 1000 -700 {lab=vin}
N 880 -700 1000 -700 {lab=vin}
N 1270 -700 1420 -700 {lab=#net2}
N 1560 -700 1680 -700 {lab=vout}
N 1270 -1020 1270 -840 {lab=VDD}
N 1480 -1020 1480 -740 {lab=VDD}
N 1480 -660 1480 -380 {lab=VSS}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1120 -1020 3 0 {name=p5 lab=VDD}
C {devices/opin.sym} 1680 -700 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} 1120 -380 1 0 {name=p1 lab=VSS}
C {devices/ipin.sym} 880 -700 0 0 {name=p4 lab=vin}
C {lab_pin.sym} 1340 -560 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1340 -840 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1270 -1020 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1480 -1020 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -380 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1480 -380 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {inverter/inverter_hv.sym} 1480 -700 0 0 {name=x1 W_P=W_P_ST L_P=L_P_ST W_N=W_N_ST L_N=L_N_ST}
C {sg13g2_pr/sg13_hv_pmos.sym} 1100 -910 0 0 {name=M5
l=L_P_ST
w=W_P_ST
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1100 -770 0 0 {name=M4
l=L_P_ST
w=W_P_ST
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1270 -820 3 0 {name=M6
l=L_P_ST
w=R*W_P_ST
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1100 -490 0 0 {name=M1
l=L_N_ST
w=W_N_ST
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1100 -630 0 0 {name=M2
l=L_N_ST
w=W_N_ST
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1270 -580 1 0 {name=M3
l=L_N_ST
w=R*W_N_ST
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
