v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1420 2440 -1020 {flags=graph
y1=0
y2=0.01
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
color=4
node=i(VDD)}
B 2 1640 -1000 2440 -600 {flags=graph
y1=0.67
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vinp
vinn
voutp
voutn"
color="4 18 21 12"
dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
autoload=0}
B 2 1640 -580 2440 -180 {flags=graph
y1=-9.2e-05
y2=1.6
ypos1=-9.2e-05
ypos2=1.6
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
linewidth_mult=3
digital=1
color="4 4 18 18 12 12 21 21 21"
node="phi_cmfb_1
phi_cmfb_2
phi_bias_1
phi_bias_2
phi_R_1
phi_R_2
en_cap_1
en_cap_2
en_cap_3"
legend=1}
P 4 5 1360 -720 1360 -620 1560 -620 1560 -720 1360 -720 {dash = 8}
T {Testbench for looped transient analysis - Bio-signal Amplifier} 460 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1340 -550 0 0 0.25 0.25 {}
N 1020 -1020 1020 -1000 {lab=VDD}
N 1040 -600 1040 -580 {lab=GND}
N 820 -840 840 -840 {lab=vinp}
N 820 -800 840 -800 {lab=Vcm}
N 820 -760 840 -760 {lab=vinn}
N 880 -1020 880 -1000 {lab=phi_cmfb_1}
N 920 -1020 920 -1000 {lab=phi_cmfb_2}
N 1060 -1020 1060 -1000 {lab=bio_amp_en}
N 1160 -1020 1160 -1000 {lab=phi_bias_1}
N 1200 -1020 1200 -1000 {lab=phi_bias_2}
N 1200 -600 1200 -580 {lab=phi_R_2}
N 1160 -600 1160 -580 {lab=phi_R_1}
N 870 -600 870 -580 {lab=en_cap_1}
N 910 -600 910 -580 {lab=en_cap_2}
N 950 -600 950 -580 {lab=en_cap_3}
N 1400 -780 1540 -780 {lab=voutn}
N 1500 -820 1540 -820 {lab=voutp}
N 1400 -640 1400 -580 {lab=GND}
N 1500 -640 1500 -580 {lab=GND}
N 1400 -780 1400 -700 {lab=voutn}
N 1240 -780 1400 -780 {lab=voutn}
N 1500 -820 1500 -700 {lab=voutp}
N 1240 -820 1500 -820 {lab=voutp}
N 760 -260 760 -220 {lab=GND}
N 760 -220 800 -220 {lab=GND}
N 800 -250 800 -220 {
lab=GND}
N 1000 -280 1000 -240 {lab=Vcm}
N 1000 -420 1000 -380 {lab=vinp}
N 880 -230 960 -230 {lab=#net1}
N 880 -370 960 -370 {lab=#net1}
N 800 -370 800 -310 {lab=#net1}
N 920 -190 960 -190 {lab=GND}
N 800 -220 800 -190 {
lab=GND}
N 920 -330 960 -330 {lab=GND}
N 920 -330 920 -190 {lab=GND}
N 800 -190 920 -190 {lab=GND}
N 880 -370 880 -230 {lab=#net1}
N 800 -370 880 -370 {lab=#net1}
N 1000 -180 1000 -140 {lab=vinn}
N 1080 -180 1080 -140 {lab=GND}
N 800 -190 800 -140 {lab=GND}
N 1180 -360 1180 -320 {lab=VDD}
N 1180 -260 1180 -220 {lab=GND}
N 1320 -360 1320 -320 {lab=bio_amp_en}
N 1320 -260 1320 -220 {lab=GND}
N 1300 -1040 1300 -1000 {lab=en_cap_1}
N 1300 -940 1300 -900 {lab=GND}
N 1420 -1040 1420 -1000 {lab=en_cap_2}
N 1420 -940 1420 -900 {lab=GND}
N 1540 -1040 1540 -1000 {lab=en_cap_3}
N 1540 -940 1540 -900 {lab=GND}
N 700 -300 760 -300 {lab=vind}
N 1540 -320 1540 -300 {
lab=vout}
N 1470 -290 1500 -290 {
lab=voutp}
N 1470 -250 1500 -250 {
lab=voutn}
N 1540 -240 1540 -220 {lab=GND}
N 1080 -300 1080 -280 {lab=Vcm}
N 1000 -280 1080 -280 {lab=Vcm}
N 1000 -320 1000 -280 {lab=Vcm}
N 1080 -280 1080 -240 {lab=Vcm}
N 700 -300 700 -240 {lab=vind}
N 700 -320 700 -300 {lab=vind}
N 700 -180 700 -140 {lab=GND}
N 800 -1600 800 -1580 {lab=phi_cmfb_1}
N 800 -1520 800 -1500 {lab=GND}
N 1200 -1600 1200 -1580 {lab=phi_cmfb_2}
N 1200 -1520 1200 -1500 {lab=GND}
N 800 -1440 800 -1420 {lab=phi_bias_1}
N 800 -1360 800 -1340 {lab=GND}
N 1200 -1440 1200 -1420 {lab=phi_bias_2}
N 1200 -1360 1200 -1340 {lab=GND}
N 800 -1280 800 -1260 {lab=phi_R_1}
N 800 -1200 800 -1180 {lab=GND}
N 1200 -1280 1200 -1260 {lab=phi_R_2}
N 1200 -1200 1200 -1180 {lab=GND}
C {devices/code_shown.sym} 20 -1730 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
.param fclk=8000000
.csparam fclk=fclk
.param fphi_cmfb=62500
.param fphi_bias=62500
.param fphi_R=7810
* 227.56fF DAC
.param Cload=227.56f
.options savecurrents reltol=1e-2 abstol=1e-12 gmin=1e-12
.control

* optran 0 0 0 1u 1m 0
* save all
save vind vinp vinn voutp voutn vout x1.x1.Vbias x1.x1.Vbiasc
save phi_cmfb_1 phi_cmfb_2 phi_bias_1 phi_bias_2 phi_R_1 phi_R_2 en_cap_1 en_cap_2 en_cap_3
setplot const
set wr_vecnames
set wr_singlescale

* User constants
let fstart = 1k
let fstop = 100k
let amount_of_periods = 2
let points_per_period = 5
let points_per_dec = 1
let vamp = 0.001

* Generate a logarithmic frequency vector
compose freq_vec dec=$&const.points_per_dec start=$&const.fstart stop=$&const.fstop

* Generate gain and phase vectors
let Acl_dB_vec = freq_vec
let phase_vec = freq_vec

* Loop index
let idx = 0

* For-Loop
foreach freq_val $&freq_vec
  * 10 data points per period
  * let tstep = 1/($&const.points_per_period*$freq_val)
  let tstep = 1/fclk

  * 2 periods long
  let tstop = $&const.amount_of_periods * 1/$freq_val
  
  * Alter input sine frequency
  alter @VIN[SIN] = [ 0 $&const.vamp $freq_val 0 0 0 ]   

  * Transient Analysis
  tran $&tstep $&tstop
  write bio_amplifier_tb_looped_tran_cl.raw
  set appendwrite

  * Measure maximum voltage of input
  meas tran vind_peak_peak PP v(vind)
  let vind_peak = vind_peak_peak / 2

  * Measure time at maximum voltage of input
  meas tran t_vind_peak MAX_AT v(vind)

  * Measure maximum voltage of output
  meas tran vout_peak_peak PP v(vout)
  let vout_peak = vout_peak_peak / 2

  * Measure time at maximum voltage of output
  meas tran t_vout_peak MAX_AT v(vout)

  * Calculate gain
  let Acl = vout_peak / vind_peak
  let Acl_dB = vdb(Acl)

  * Calculate phase
  let phase = (t_vout_peak - t_vind_peak) * $freq_val * 360
 
  * Append to vector  
  let const.Acl_dB_vec[const.idx] = Acl_dB
  let const.phase_vec[const.idx] = phase

  * Update index
  let const.idx = const.idx + 1
  echo ======================================================
end

print const.Acl_dB_vec
print const.phase_vec

* Setscale for plot against frequency
setscale const.Acl_dB_vec const.freq_vec
setscale const.phase_vec const.freq_vec

* Plot closed-loop gain and phase vs. frequency
plot xlog const.Acl_dB_vec title 'Closed-loop gain' ylabel 'dB'
plot xlog const.phase_vec title 'Phase' ylabel 'deg'

* Write Data
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_tb_looped_tran_cl.txt v(const.Acl_dB_vec) v(const.phase_vec)

*quit
.endc
"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/code_shown.sym} 2140 -1530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/gnd.sym} 1400 -580 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1180 -220 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1700 -1500 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 1400 -670 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/launcher.sym} 1700 -1450 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/bio_amplifier_tb_looped_tran_cl.raw tran"
}
C {vdd.sym} 1180 -360 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1020 -1020 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1040 -580 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1540 -820 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1540 -780 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1000 -420 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1000 -140 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 820 -800 0 0 {name=l4 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 820 -840 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 820 -760 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 880 -1020 1 0 {name=l20 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_pin.sym} 920 -1020 1 0 {name=l21 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_pin.sym} 1160 -1020 1 0 {name=l22 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_pin.sym} 1200 -1020 1 0 {name=l23 sig_type=std_logic lab=phi_bias_2}
C {devices/lab_pin.sym} 1060 -1020 1 0 {name=l24 sig_type=std_logic lab=bio_amp_en}
C {devices/lab_pin.sym} 1200 -580 3 0 {name=l26 sig_type=std_logic lab=phi_R_2}
C {devices/lab_pin.sym} 1160 -580 3 0 {name=l25 sig_type=std_logic lab=phi_R_1}
C {devices/lab_pin.sym} 870 -580 3 0 {name=l27 sig_type=std_logic lab=en_cap_1}
C {devices/lab_pin.sym} 910 -580 3 0 {name=l28 sig_type=std_logic lab=en_cap_2}
C {devices/lab_pin.sym} 950 -580 3 0 {name=l29 sig_type=std_logic lab=en_cap_3}
C {devices/capa.sym} 1500 -670 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1500 -580 0 0 {name=l30 lab=GND}
C {devices/gnd.sym} 1320 -220 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1320 -360 1 0 {name=l35 sig_type=std_logic lab=bio_amp_en}
C {devices/vsource.sym} 1080 -210 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1000 -210 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1000 -350 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1080 -300 1 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1080 -140 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 800 -280 0 0 {name=E6 value=1}
C {devices/gnd.sym} 800 -140 0 0 {name=l41 lab=GND}
C {devices/gnd.sym} 1300 -900 0 0 {name=l44 lab=GND}
C {devices/gnd.sym} 1420 -900 0 0 {name=l46 lab=GND}
C {devices/lab_pin.sym} 1420 -1040 1 0 {name=l47 sig_type=std_logic lab=en_cap_2}
C {devices/lab_pin.sym} 1300 -1040 1 0 {name=l45 sig_type=std_logic lab=en_cap_1}
C {devices/gnd.sym} 1540 -900 0 0 {name=l48 lab=GND}
C {devices/lab_pin.sym} 1540 -1040 1 0 {name=l49 sig_type=std_logic lab=en_cap_3}
C {devices/vsource.sym} 1320 -290 0 0 {name=V7 value="1.5"}
C {devices/vsource.sym} 1300 -970 0 0 {name=V8 value="1.5"}
C {devices/vsource.sym} 1420 -970 0 0 {name=V9 value=1.5}
C {devices/vsource.sym} 1540 -970 0 0 {name=V10 value=1.5}
C {devices/lab_pin.sym} 700 -320 1 0 {name=l18 sig_type=std_logic lab=vind}
C {devices/vsource.sym} 700 -210 0 0 {name=VIN spice_ignore=false value="sin(0 10m 10)"
}
C {devices/gnd.sym} 700 -140 0 0 {name=l51 lab=GND}
C {devices/lab_pin.sym} 1540 -320 0 1 {name=l17 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1540 -270 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1540 -220 0 0 {name=l13 lab=GND}
C {devices/lab_pin.sym} 1470 -250 2 1 {name=l39 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1470 -290 0 0 {name=l50 sig_type=std_logic lab=voutp
}
C {bio_amplifier/bio_amplifier.sym} 1040 -800 0 0 {name=x1}
C {devices/vsource.sym} 1180 -290 0 0 {name=VDD value="pwl(0 0 100n 1.5)"}
C {devices/vsource.sym} 800 -1550 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 800 -1500 0 0 {name=l31 lab=GND}
C {devices/lab_pin.sym} 800 -1600 2 0 {name=l12 sig_type=std_logic lab=phi_cmfb_1}
C {devices/vsource.sym} 1200 -1550 0 0 {name=V2 value="pulse(0 1.5 \{0.50/fphi_cmfb\} 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 1200 -1500 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1200 -1600 2 0 {name=l15 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 800 -1390 0 0 {name=V3 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 800 -1340 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 800 -1440 2 0 {name=l32 sig_type=std_logic lab=phi_bias_1}
C {devices/vsource.sym} 1200 -1390 0 0 {name=V4 value="pulse(0 1.5 \{0.50/fphi_bias\} 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 1200 -1340 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 1200 -1440 2 0 {name=l34 sig_type=std_logic lab=phi_bias_2}
C {devices/vsource.sym} 800 -1230 0 0 {name=V5 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_R - 1/fclk\} \{1/fphi_R\})"}
C {devices/gnd.sym} 800 -1180 0 0 {name=l36 lab=GND}
C {devices/lab_pin.sym} 800 -1280 2 0 {name=l37 sig_type=std_logic lab=phi_R_1}
C {devices/vsource.sym} 1200 -1230 0 0 {name=V6 value="pulse(0 1.5 \{0.50/fphi_R\} 10p 10p \{0.5/fphi_R - 1/fclk\} \{1/fphi_R\})"}
C {devices/gnd.sym} 1200 -1180 0 0 {name=l42 lab=GND}
C {devices/lab_pin.sym} 1200 -1280 2 0 {name=l43 sig_type=std_logic lab=phi_R_2}
