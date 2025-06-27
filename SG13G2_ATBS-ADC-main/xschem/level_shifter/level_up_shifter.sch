v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Parameterizable Level-Up-Shifter} 800 -1720 0 0 1 1 {}
T {Functionality of the Level-Shifter:
-) Level shifters are widely used as bridges that connect low core voltage (e.g. 1.5V) to high I/O interface voltage (e.g. 3.3V). 
-) The following level shifter has no static power consumption and is suitable for the given I/O interface voltages in ultra-deep sub-micron. 
-) However, due to the high threshold voltage of the thick gate oxide transistors M1 and M2, this level shifter is not suitable for sub-1V supply voltages.
-) The level-shifter consists of three inverters and one latch with a cross-coupled PMOS pair for high positive feedback. 
-) The pull-down NMOS transistors have to overcome the PMOS latch action before the output change state, so the size of M1 and M2 are larger than M3 and M4.
-) For LV and HV the smallest length for fast settling time is chosen. HV transistor is useable at L > 0.45um. HV PMOS width is always 3um for good matching. 
HV NMOS width is 10um in latch and 1um in output inverter. LV PMOS and NMOS width is always 1um for good matching.} 160 -1560 0 0 0.5 0.5 {}
N 1020 -820 1020 -740 {lab=#net1}
N 1020 -820 1100 -820 {lab=#net1}
N 1020 -900 1020 -820 {lab=#net1}
N 1020 -1040 1020 -960 {lab=VDD2}
N 1020 -680 1020 -600 {lab=VSS}
N 1140 -600 1260 -600 {lab=VSS}
N 1260 -680 1260 -600 {lab=VSS}
N 1020 -600 1140 -600 {lab=VSS}
N 1140 -710 1140 -600 {lab=VSS}
N 1020 -710 1140 -710 {lab=VSS}
N 1140 -710 1260 -710 {lab=VSS}
N 1260 -820 1260 -740 {lab=T}
N 1060 -930 1100 -930 {lab=T}
N 1100 -930 1180 -820 {lab=T}
N 1180 -820 1260 -820 {lab=T}
N 1180 -930 1220 -930 {lab=#net1}
N 1100 -820 1180 -930 {lab=#net1}
N 960 -930 1020 -930 {lab=VDD2}
N 960 -1040 960 -930 {lab=VDD2}
N 960 -1040 1020 -1040 {lab=VDD2}
N 1260 -1040 1260 -960 {lab=VDD2}
N 1140 -1040 1260 -1040 {lab=VDD2}
N 1140 -1080 1140 -1040 {lab=VDD2}
N 1020 -1040 1140 -1040 {lab=VDD2}
N 1260 -930 1320 -930 {lab=VDD2}
N 1320 -1040 1320 -930 {lab=VDD2}
N 1260 -1040 1320 -1040 {lab=VDD2}
N 920 -710 980 -710 {lab=A!}
N 1300 -710 1420 -710 {lab=#net2}
N 1560 -710 1680 -710 {lab=A!}
N 1140 -600 1140 -560 {lab=VSS}
N 1500 -670 1500 -640 {lab=VSS}
N 1500 -780 1500 -750 {lab=VDD1}
N 540 -710 660 -710 {lab=A}
N 720 -780 720 -750 {lab=VDD1}
N 720 -670 720 -640 {lab=VSS}
N 1680 -710 1680 -440 {lab=A!}
N 920 -440 1680 -440 {lab=A!}
N 920 -710 920 -440 {lab=A!}
N 800 -710 920 -710 {lab=A!}
N 1260 -860 1260 -820 {lab=T}
N 1260 -900 1260 -860 {lab=T}
N 920 -740 920 -710 {lab=A!}
N 1500 -880 1500 -860 {lab=T}
N 1260 -860 1500 -860 {lab=T}
N 1880 -860 2000 -860 {lab=B}
N 1800 -1080 1800 -900 {lab=VDD2}
N 1800 -820 1800 -640 {lab=VSS}
N 1500 -860 1740 -860 {lab=T}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ipin.sym} 540 -710 0 0 {name=p10 lab=A}
C {devices/iopin.sym} 720 -780 3 0 {name=p11 lab=VDD1}
C {devices/iopin.sym} 1140 -560 1 0 {name=p1 lab=VSS}
C {devices/opin.sym} 2000 -860 0 0 {name=p2 lab=B}
C {lab_pin.sym} 1500 -780 1 0 {name=p3 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 720 -640 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/iopin.sym} 1140 -1080 3 0 {name=p5 lab=VDD2}
C {lab_pin.sym} 1800 -1080 1 0 {name=p6 sig_type=std_logic lab=VDD2}
C {inverter/inverter_lv.sym} 720 -710 0 0 {name=x1 W_P=W_P_LV L_P=L_P_LV W_N=W_N_LV L_N=L_N_LV}
C {lab_pin.sym} 1500 -640 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1800 -640 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 1000 -710 0 0 {name=M1
l=L_N_HV
w=W_N_HV
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_pmos.sym} 1240 -930 0 0 {name=M4
l=L_P_HV
w=W_P_HV
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {lab_wire.sym} 920 -740 0 0 {name=p7 sig_type=std_logic lab=A!}
C {lab_wire.sym} 1500 -880 0 0 {name=p12 sig_type=std_logic lab=T}
C {inverter/inverter_lv.sym} 1500 -710 0 1 {name=x2 W_P=W_P_LV L_P=L_P_LV W_N=W_N_LV L_N=L_N_LV}
C {sg13g2_pr/sg13_hv_pmos.sym} 1040 -930 0 1 {name=M3
l=L_P_HV
w=W_P_HV
ng=1
m=1
model=sg13_hv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 1280 -710 0 1 {name=M2
l=L_N_HV
w=W_N_HV
ng=1
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {inverter/inverter_hv.sym} 1800 -860 0 0 {name=x3 W_P=W_P_HV L_P=L_P_HV W_N=0.1*W_N_HV L_N=L_N_HV}
