v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 630 -1080 930 -1080 930 -880 630 -880 630 -1080 {dash = 8}
P 4 5 1260 -1010 1260 -1240 1420 -1240 1420 -1010 1260 -1010 {dash = 8}
T {Auxiliary OTA for Bias Circuit} 880 -1670 0 0 1 1 {}
T {Vgs=1.5V-1.22V~0.28V} 1430 -1100 0 0 0.22 0.22 {}
T {Inverter for Enable} 630 -1110 0 0 0.4 0.4 {}
T {di_bias_en = 1... enable
di_bias_en = 0... disable} 440 -950 0 0 0.2 0.2 {}
T {Power Down} 1260 -1300 0 0 0.4 0.4 {}
T {18.30nA
155pA (PD)} 1860 -1230 0 0 0.4 0.4 {}
T {1.219V} 1660 -980 0 0 0.4 0.4 {}
N 1140 -1020 1140 -940 {lab=#net1}
N 920 -1120 1080 -1120 {lab=#net2}
N 920 -1260 920 -1120 {lab=#net2}
N 920 -1260 1140 -1260 {lab=#net2}
N 1140 -1260 1140 -1220 {lab=#net2}
N 1620 -1260 1620 -1220 {lab=#net2}
N 1620 -1260 1840 -1260 {lab=#net2}
N 1840 -1260 1840 -1120 {lab=#net2}
N 1680 -1120 1840 -1120 {lab=#net2}
N 1140 -940 1140 -860 {lab=#net1}
N 1380 -1260 1620 -1260 {lab=#net2}
N 1460 -1120 1560 -1120 {lab=Vgs_ma34}
N 1380 -760 1560 -760 {lab=VSS}
N 1140 -660 1140 -620 {lab=VSS}
N 1380 -620 1620 -620 {lab=VSS}
N 1620 -660 1620 -620 {lab=VSS}
N 1380 -760 1380 -620 {lab=VSS}
N 1200 -760 1380 -760 {lab=VSS}
N 1140 -620 1380 -620 {lab=VSS}
N 1620 -940 1620 -860 {lab=vout}
N 1680 -760 1720 -760 {lab=vinn}
N 1620 -940 1720 -940 {lab=vout}
N 1620 -1020 1620 -940 {lab=vout}
N 1040 -760 1080 -760 {lab=vinp}
N 1920 -1260 1940 -1260 {lab=VDD}
N 1840 -1260 1860 -1260 {lab=#net2}
N 1620 -620 1940 -620 {lab=VSS}
N 1320 -1120 1460 -1120 {lab=Vgs_ma34}
N 1320 -1120 1320 -1080 {lab=Vgs_ma34}
N 1200 -1120 1320 -1120 {lab=Vgs_ma34}
N 1320 -1020 1320 -940 {lab=#net1}
N 1320 -1260 1320 -1220 {lab=#net2}
N 1140 -1260 1320 -1260 {lab=#net2}
N 1320 -1160 1320 -1120 {lab=Vgs_ma34}
N 1320 -1190 1380 -1190 {lab=#net2}
N 1380 -1260 1380 -1190 {lab=#net2}
N 1320 -1260 1380 -1260 {lab=#net2}
N 1320 -1050 1380 -1050 {lab=#net2}
N 1380 -1190 1380 -1050 {lab=#net2}
N 760 -940 760 -900 {lab=VSS}
N 760 -1060 760 -1020 {lab=VDD}
N 580 -1300 580 -980 {lab=di_ota_en}
N 580 -980 700 -980 {lab=di_ota_en}
N 1460 -1160 1460 -1120 {lab=Vgs_ma34}
N 960 -980 960 -950 {lab=ota_en_n}
N 840 -980 960 -980 {lab=ota_en_n}
N 1220 -1190 1280 -1190 {lab=di_ota_en}
N 1220 -1300 1220 -1190 {lab=di_ota_en}
N 580 -1300 1220 -1300 {lab=di_ota_en}
N 1220 -1050 1280 -1050 {lab=ota_en_n}
N 1220 -1050 1220 -980 {lab=ota_en_n}
N 1140 -940 1320 -940 {lab=#net1}
N 540 -980 580 -980 {lab=di_ota_en}
N 960 -980 1220 -980 {lab=ota_en_n}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 1940 -1260 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 1940 -620 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 540 -980 0 0 {name=p5 lab=di_ota_en}
C {ipin.sym} 1040 -760 0 0 {name=p4 lab=vinp}
C {ipin.sym} 1720 -760 2 0 {name=p6 lab=vinn}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1140 -1120 0 1 {name=xM3 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_pmos_stacked/sg13g2_lv_pmos_stacked_x4.sym} 1620 -1120 0 0 {name=xM4 W_P=20.0u L_P=40.0u NG_P=20 M_P=1}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1140 -760 0 0 {name=xM1 W_N=5.0u L_N=40.0u NG_N=5 M_N=1}
C {devices/opin.sym} 1720 -940 0 0 {name=p8 lab=vout}
C {ammeter.sym} 1890 -1260 1 1 {name=VIdd savecurrent=true spice_ignore=0}
C {lab_pin.sym} 1460 -1160 0 1 {name=p14 sig_type=std_logic lab=Vgs_ma34}
C {stacked_transistors/sg13g2_lv_nmos_stacked/sg13g2_lv_nmos_stacked_x2.sym} 1620 -760 0 1 {name=xM2 W_N=5.0u L_N=40.0u NG_N=5 M_N=1}
C {sg13g2_pr/sg13_lv_pmos.sym} 1300 -1190 0 0 {name=MPD1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1300 -1050 0 0 {name=MPD2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {inverter/inverter_lv.sym} 760 -980 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
C {lab_pin.sym} 960 -950 1 1 {name=p10 sig_type=std_logic lab=ota_en_n}
C {lab_pin.sym} 760 -900 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -1060 0 0 {name=p12 sig_type=std_logic lab=VDD}
