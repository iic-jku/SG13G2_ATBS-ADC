v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 440 -1080 960 -1080 960 -500 440 -500 440 -1080 {dash = 4}
P 4 6 1260 -500 1260 -1080 2040 -1080 2060 -1080 2060 -500 1260 -500 {dash = 4}
T {Discrete-time dynamic-biasing comparator} 720 -1710 0 0 1 1 {}
T {The bias current in the pre-amplifier stage can be gradually reduced with a tail capacitor (dynamic-biasing) or a cross-coupled pre-amplifier (Chevella's comparator). 

Advantages:
-) The pre-amplifier output nodes stop discharging after the latch triggers which can reduce the average energy consumption by about a factor of 2.5.
-) Gradually reducing the bias current to operate in weak inversion to achieve maximum voltage gain for a given charge transfer and low input-referred noise.
-) SNR can be set with CP / CTAIL.

Disadvantages:
-) Regeneration speed of the output is reduced (lower propagation delay) due to less overdrive voltage of the latch transistors and therefore the current is on average smaller.
-) 20% more area overhead due to tail capacitor CTAIL compared to Elzakker's comparator.
} 110 -1580 0 0 0.5 0.5 {}
T {Pre-amplifier
stage with
tail cap.} 810 -590 0 0 0.4 0.4 {}
T {Latch
stage} 1980 -1060 0 0 0.4 0.4 {}
T {vcpn} 1040 -620 0 0 0.4 0.4 {}
T {vcpp} 2220 -600 0 0 0.4 0.4 {}
N 1500 -520 1560 -520 {lab=VSS}
N 1500 -590 1560 -590 {lab=VSS}
N 1500 -590 1500 -520 {lab=VSS}
N 1560 -560 1560 -520 {lab=VSS}
N 1320 -560 1320 -520 {lab=VSS}
N 1380 -590 1380 -520 {lab=VSS}
N 1320 -520 1380 -520 {lab=VSS}
N 1380 -520 1500 -520 {lab=VSS}
N 1940 -520 2000 -520 {lab=VSS}
N 1940 -590 2000 -590 {lab=VSS}
N 1940 -590 1940 -520 {lab=VSS}
N 2000 -560 2000 -520 {lab=VSS}
N 1760 -560 1760 -520 {lab=VSS}
N 1760 -590 1820 -590 {lab=VSS}
N 1820 -590 1820 -520 {lab=VSS}
N 1760 -520 1820 -520 {lab=VSS}
N 1820 -520 1940 -520 {lab=VSS}
N 1320 -660 1320 -620 {lab=voutp}
N 1560 -660 1560 -620 {lab=voutp}
N 1760 -660 1760 -620 {lab=voutn}
N 2000 -660 2000 -620 {lab=voutn}
N 1680 -590 1720 -590 {lab=voutp}
N 1600 -590 1640 -590 {lab=voutn}
N 1880 -660 2000 -660 {lab=voutn}
N 1660 -520 1760 -520 {lab=VSS}
N 1660 -520 1660 -480 {lab=VSS}
N 1560 -520 1660 -520 {lab=VSS}
N 1420 -1060 1480 -1060 {lab=VDD}
N 1480 -1100 1480 -1060 {lab=VDD}
N 1100 -830 1100 -560 {lab=vcpn}
N 1440 -660 1560 -660 {lab=voutp}
N 1760 -660 1880 -660 {lab=voutn}
N 1100 -1160 1100 -900 {lab=vcpp}
N 2200 -830 2200 -560 {lab=vcpp}
N 1100 -1160 2200 -1160 {lab=vcpp}
N 1100 -500 1100 -480 {lab=VSS}
N 2200 -500 2200 -480 {lab=VSS}
N 1320 -660 1440 -660 {lab=voutp}
N 1840 -1060 1900 -1060 {lab=VDD}
N 1840 -1100 1840 -1060 {lab=VDD}
N 1240 -740 1440 -740 {lab=voutp}
N 1440 -740 1440 -660 {lab=voutp}
N 1440 -900 1480 -900 {lab=#net1}
N 1440 -900 1440 -860 {lab=#net1}
N 1640 -700 1640 -590 {lab=voutn}
N 1680 -740 1680 -590 {lab=voutp}
N 1440 -740 1680 -740 {lab=voutp}
N 1880 -700 1880 -660 {lab=voutn}
N 1640 -700 1880 -700 {lab=voutn}
N 1880 -800 1880 -700 {lab=voutn}
N 1880 -700 2080 -700 {lab=voutn}
N 1440 -800 1440 -740 {lab=voutp}
N 1840 -900 1880 -900 {lab=#net2}
N 1880 -900 1880 -860 {lab=#net2}
N 1100 -830 1400 -830 {lab=vcpn}
N 1100 -860 1100 -830 {lab=vcpn}
N 1920 -830 2200 -830 {lab=vcpp}
N 2200 -1160 2200 -830 {lab=vcpp}
N 1440 -830 1520 -830 {lab=VDD}
N 1800 -830 1880 -830 {lab=VDD}
N 1240 -590 1280 -590 {lab=di_clk_n}
N 2040 -590 2080 -590 {lab=di_clk_n}
N 700 -620 700 -600 {lab=vctail}
N 700 -520 700 -480 {lab=VSS}
N 700 -640 700 -620 {lab=vctail}
N 580 -620 580 -600 {lab=vctail}
N 420 -670 660 -670 {lab=di_clk}
N 420 -570 540 -570 {lab=di_clk_n}
N 580 -570 640 -570 {lab=VSS}
N 580 -520 640 -520 {lab=VSS}
N 580 -540 580 -520 {lab=VSS}
N 640 -570 640 -520 {lab=VSS}
N 700 -540 700 -520 {lab=VSS}
N 700 -520 760 -520 {lab=VSS}
N 760 -670 760 -520 {lab=VSS}
N 420 -790 500 -790 {lab=vinp}
N 900 -790 980 -790 {lab=vinn}
N 540 -760 540 -720 {lab=vs}
N 860 -760 860 -720 {lab=vs}
N 540 -790 620 -790 {lab=VSS}
N 780 -790 860 -790 {lab=VSS}
N 540 -1060 700 -1060 {lab=VDD}
N 700 -970 820 -970 {lab=di_clk}
N 860 -1060 920 -1060 {lab=VDD}
N 700 -1000 700 -970 {lab=di_clk}
N 580 -970 700 -970 {lab=di_clk}
N 700 -1100 700 -1060 {lab=VDD}
N 860 -900 860 -820 {lab=vcpp}
N 840 -900 860 -900 {lab=vcpp}
N 540 -860 1100 -860 {lab=vcpn}
N 860 -900 1100 -900 {lab=vcpp}
N 540 -940 540 -860 {lab=vcpn}
N 540 -1060 540 -1000 {lab=VDD}
N 480 -1060 540 -1060 {lab=VDD}
N 480 -970 540 -970 {lab=VDD}
N 480 -1060 480 -970 {lab=VDD}
N 860 -940 860 -900 {lab=vcpp}
N 860 -1060 860 -1000 {lab=VDD}
N 700 -1060 860 -1060 {lab=VDD}
N 860 -970 920 -970 {lab=VDD}
N 920 -1060 920 -970 {lab=VDD}
N 700 -720 860 -720 {lab=vs}
N 540 -860 540 -820 {lab=vcpn}
N 520 -860 540 -860 {lab=vcpn}
N 700 -720 700 -700 {lab=vs}
N 540 -720 700 -720 {lab=vs}
N 1680 -970 1800 -970 {lab=voutp}
N 1680 -970 1680 -740 {lab=voutp}
N 1520 -970 1640 -970 {lab=voutn}
N 1640 -970 1640 -700 {lab=voutn}
N 1840 -940 1840 -900 {lab=#net2}
N 1480 -940 1480 -900 {lab=#net1}
N 1480 -1060 1480 -1000 {lab=VDD}
N 1420 -970 1480 -970 {lab=VDD}
N 1420 -1060 1420 -970 {lab=VDD}
N 1840 -970 1900 -970 {lab=VDD}
N 1900 -1060 1900 -970 {lab=VDD}
N 1840 -1060 1840 -1000 {lab=VDD}
N 700 -740 700 -720 {lab=vs}
N 1320 -590 1380 -590 {lab=VSS}
N 580 -620 700 -620 {lab=vctail}
N 640 -520 700 -520 {lab=VSS}
N 700 -670 760 -670 {lab=VSS}
N 700 -620 800 -620 {lab=vctail}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/iopin.sym} 700 -1100 3 0 {name=p11 lab=VDD}
C {devices/opin.sym} 1240 -740 2 0 {name=p2 lab=voutp}
C {devices/opin.sym} 2080 -700 0 0 {name=p3 lab=voutn}
C {ipin.sym} 420 -570 0 0 {name=p6 lab=di_clk_n}
C {devices/iopin.sym} 700 -480 1 0 {name=p8 lab=VSS}
C {ipin.sym} 420 -790 0 0 {name=p9 lab=vinp}
C {ipin.sym} 980 -790 2 0 {name=p10 lab=vinn}
C {ipin.sym} 420 -670 0 0 {name=p12 lab=di_clk}
C {sg13g2_pr/sg13_lv_nmos.sym} 680 -670 0 0 {name=M3a
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1300 -590 0 0 {name=M12
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1500 -970 0 1 {name=M8
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1580 -590 0 1 {name=M10
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1740 -590 0 0 {name=M11
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 2020 -590 0 1 {name=M13
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1660 -480 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1480 -1100 3 1 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1100 -480 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2200 -480 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {capa.sym} 1100 -530 0 0 {name=CPn
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2200 -530 0 0 {name=CPp
m=1
value=300f
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_lv_pmos.sym} 1820 -970 0 0 {name=M9
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1840 -1100 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 1420 -830 0 0 {name=M6
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1900 -830 0 1 {name=M7
l=0.13u
w=2.0u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 1520 -830 2 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1800 -830 2 1 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2080 -590 0 1 {name=p21 sig_type=std_logic lab=di_clk_n}
C {capa.sym} 700 -570 0 0 {name=CTAIL
m=1
value=600f
footprint=1206
device="ceramic capacitor"}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -570 0 0 {name=M3b
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 1240 -590 0 0 {name=p23 sig_type=std_logic lab=di_clk_n}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -790 0 0 {name=M1
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 -790 0 1 {name=M2
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 620 -790 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 780 -790 2 1 {name=p14 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -970 0 1 {name=M4
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 840 -970 0 0 {name=M5
l=0.13u
w=1.0u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {lab_wire.sym} 700 -1000 0 0 {name=p15 sig_type=std_logic lab=di_clk}
C {lab_wire.sym} 840 -900 0 0 {name=p1 sig_type=std_logic lab=vcpp}
C {lab_wire.sym} 520 -860 2 1 {name=p4 sig_type=std_logic lab=vcpn}
C {lab_wire.sym} 700 -740 0 1 {name=p22 sig_type=std_logic lab=vs}
C {lab_wire.sym} 800 -620 0 1 {name=p24 sig_type=std_logic lab=vctail}
