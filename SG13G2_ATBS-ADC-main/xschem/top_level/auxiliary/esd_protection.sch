v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {ESD Protection} 1100 -1720 0 0 1 1 {}
N 1200 -940 1280 -940 {lab=#net1}
N 1060 -940 1140 -940 {lab=vin}
N 1280 -940 1440 -940 {lab=#net1}
N 1280 -1120 1280 -1080 {lab=VDD}
N 1310 -1050 1360 -1050 {lab=VSS}
N 1310 -830 1360 -830 {lab=VDD}
N 1280 -800 1280 -760 {lab=VSS}
N 1280 -940 1280 -860 {lab=#net1}
N 1280 -1020 1280 -940 {lab=#net1}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {res.sym} 1170 -940 3 1 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 1280 -1120 3 0 {name=p13 lab=VDD}
C {devices/iopin.sym} 1280 -760 1 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 1360 -1050 2 0 {name=p122 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1360 -830 2 0 {name=p125 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} 1060 -940 0 0 {name=p6 lab=vin}
C {devices/opin.sym} 1440 -940 0 0 {name=p1 lab=vout}
C {sg13g2_pr/diodevdd_4kv.sym} 1280 -1050 0 1 {name=D1
model=diodevdd_4kv
m=1
spiceprefix=X
}
C {sg13g2_pr/diodevss_4kv.sym} 1280 -830 0 1 {name=D2
model=diodevss_4kv
spiceprefix=X
m=1
}
