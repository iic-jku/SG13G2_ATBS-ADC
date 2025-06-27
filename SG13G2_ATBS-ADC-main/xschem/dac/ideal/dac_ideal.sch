v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Ideal 8-Bit DAC} 990 -1660 0 0 1 1 {}
T {10ns output voltage settling time} 1980 -730 0 0 0.4 0.4 {}
N 120 -780 400 -780 {
lab=#net1}
N 400 -780 700 -780 {
lab=#net1}
N 700 -780 1000 -780 {
lab=#net1}
N 1000 -780 1300 -780 {
lab=#net1}
N 1300 -780 1600 -780 {
lab=#net1}
N 1900 -780 2200 -780 {
lab=#net1}
N 1600 -780 1900 -780 {
lab=#net1}
N 120 -1200 120 -1000 {
lab=VDD}
N 1900 -1200 2200 -1200 {
lab=VDD}
N 2200 -1200 2200 -1000 {
lab=VDD}
N 1900 -1200 1900 -1000 {
lab=VDD}
N 1600 -1200 1900 -1200 {
lab=VDD}
N 1600 -1200 1600 -1000 {
lab=VDD}
N 1300 -1200 1600 -1200 {
lab=VDD}
N 400 -1200 400 -1000 {
lab=VDD}
N 120 -1200 400 -1200 {
lab=VDD}
N 700 -1200 700 -1000 {
lab=VDD}
N 400 -1200 700 -1200 {
lab=VDD}
N 1000 -1200 1000 -1000 {
lab=VDD}
N 700 -1200 1000 -1200 {
lab=VDD}
N 1300 -1200 1300 -1000 {
lab=VDD}
N 1000 -1200 1300 -1200 {
lab=VDD}
N 2200 -1200 2320 -1200 {
lab=VDD}
N 160 -990 200 -990 {
lab=di_D0}
N 160 -950 200 -950 {
lab=VSS}
N 200 -950 200 -930 {
lab=VSS}
N 120 -940 120 -780 {
lab=#net1}
N 440 -990 480 -990 {
lab=di_D1}
N 440 -950 480 -950 {
lab=VSS}
N 480 -950 480 -930 {
lab=VSS}
N 740 -990 780 -990 {
lab=di_D2}
N 740 -950 780 -950 {
lab=VSS}
N 780 -950 780 -930 {
lab=VSS}
N 1040 -990 1080 -990 {
lab=di_D3}
N 1040 -950 1080 -950 {
lab=VSS}
N 1080 -950 1080 -930 {
lab=VSS}
N 1340 -990 1380 -990 {
lab=di_D4}
N 1340 -950 1380 -950 {
lab=VSS}
N 1380 -950 1380 -930 {
lab=VSS}
N 1640 -990 1680 -990 {
lab=di_D5}
N 1640 -950 1680 -950 {
lab=VSS}
N 1680 -950 1680 -930 {
lab=VSS}
N 1940 -990 1980 -990 {
lab=di_D6}
N 1940 -950 1980 -950 {
lab=VSS}
N 1980 -950 1980 -930 {
lab=VSS}
N 2240 -990 2280 -990 {
lab=di_D7}
N 2240 -950 2280 -950 {
lab=VSS}
N 2280 -950 2280 -930 {
lab=VSS}
N 400 -940 400 -780 {
lab=#net1}
N 700 -940 700 -780 {
lab=#net1}
N 1000 -940 1000 -780 {
lab=#net1}
N 1300 -940 1300 -780 {
lab=#net1}
N 2200 -940 2200 -780 {
lab=#net1}
N 1900 -940 1900 -780 {
lab=#net1}
N 1600 -940 1600 -780 {
lab=#net1}
N 2160 -620 2160 -420 {lab=VSS}
N 1900 -780 1900 -640 {lab=#net1}
N 2240 -640 2320 -640 {lab=vdac_out}
N 2000 -640 2080 -640 {lab=#net1}
N 2000 -640 2000 -540 {lab=#net1}
N 1900 -640 2000 -640 {lab=#net1}
N 2000 -480 2000 -420 {lab=VSS}
C {devices/title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/opin.sym} 2320 -640 0 0 {name=p3 lab=vdac_out}
C {devices/ipin.sym} 200 -990 2 0 {name=p1 lab=di_D0}
C {devices/res.sym} 2000 -510 0 0 {name=R1
value=3925
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 2000 -420 1 0 {name=p5 lab=VSS}
C {devices/iopin.sym} 2320 -1200 0 0 {name=p6 lab=VDD}
C {devices/lab_pin.sym} 200 -930 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 120 -970 0 1 {name=G1 value=1u}
C {devices/ipin.sym} 480 -990 2 0 {name=p2 lab=di_D1}
C {devices/lab_pin.sym} 480 -930 3 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 400 -970 0 1 {name=G2 value=2u}
C {devices/ipin.sym} 780 -990 2 0 {name=p8 lab=di_D2}
C {devices/lab_pin.sym} 780 -930 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 700 -970 0 1 {name=G3 value=4u}
C {devices/ipin.sym} 1080 -990 2 0 {name=p10 lab=di_D3}
C {devices/lab_pin.sym} 1080 -930 3 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 1000 -970 0 1 {name=G4 value=8u}
C {devices/ipin.sym} 1380 -990 2 0 {name=p12 lab=di_D4}
C {devices/lab_pin.sym} 1380 -930 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 1300 -970 0 1 {name=G5 value=16u}
C {devices/ipin.sym} 1680 -990 2 0 {name=p14 lab=di_D5}
C {devices/lab_pin.sym} 1680 -930 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 1600 -970 0 1 {name=G6 value=32u}
C {devices/ipin.sym} 1980 -990 2 0 {name=p16 lab=di_D6}
C {devices/lab_pin.sym} 1980 -930 3 0 {name=p17 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 1900 -970 0 1 {name=G7 value=64u}
C {devices/ipin.sym} 2280 -990 2 0 {name=p18 lab=di_D7}
C {devices/lab_pin.sym} 2280 -930 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/vccs.sym} 2200 -970 0 1 {name=G8 value=128u}
C {devices/lab_pin.sym} 2160 -420 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {ngspice_analog_delay.sym} 2160 -630 0 0 {name=A1 del=tsettle
format="@name @pinlist del_subckt
.model del_subckt delay(delay=@del buffer_size=8192)"}
