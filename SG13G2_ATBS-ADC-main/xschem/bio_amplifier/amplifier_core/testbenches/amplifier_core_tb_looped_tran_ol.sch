v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1640 -1000 2440 -600 {flags=graph
y1=-1.3
y2=0.0001
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00050002484
x2=0.0007
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vind
vout"
color="4 18"
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
x1=0.00050002484
x2=0.0007
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
color="4 4 18 18 21"
node="phi_cmfb_1
phi_cmfb_2
phi_bias_1
phi_bias_2
amp_core_en"
legend=1}
B 2 1640 -1420 2440 -1020 {flags=graph
y1=0.098
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.00050002484
x2=0.0007
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
P 4 5 1320 -800 1320 -700 1520 -700 1520 -800 1320 -800 {dash = 8}
T {Testbench for looped transient analysis - Amplifier Core} 460 -1720 0 0 1 1 {}
T {Capacitive Load (Comparator, DAC, etc.)} 1300 -630 0 0 0.25 0.25 {}
N 1080 -780 1080 -760 {lab=GND}
N 1120 -780 1120 -720 {lab=phi_cmfb_1}
N 1160 -780 1160 -720 {lab=phi_cmfb_2}
N 1000 -780 1000 -720 {lab=phi_bias_1}
N 1040 -780 1040 -720 {lab=phi_bias_2}
N 1360 -860 1500 -860 {lab=voutp}
N 1460 -900 1500 -900 {lab=voutn}
N 1360 -720 1360 -660 {lab=GND}
N 1460 -720 1460 -660 {lab=GND}
N 1360 -860 1360 -780 {lab=voutp}
N 1460 -900 1460 -780 {lab=voutn}
N 880 -340 880 -300 {lab=GND}
N 880 -300 920 -300 {lab=GND}
N 920 -330 920 -300 {
lab=GND}
N 1220 -360 1240 -360 {
lab=Vcm}
N 1120 -400 1120 -360 {lab=Vcm}
N 1120 -500 1120 -460 {lab=vinp}
N 1000 -310 1080 -310 {lab=#net1}
N 1000 -450 1080 -450 {lab=#net1}
N 920 -450 920 -390 {lab=#net1}
N 1040 -270 1080 -270 {lab=GND}
N 920 -300 920 -270 {
lab=GND}
N 1040 -410 1080 -410 {lab=GND}
N 1040 -410 1040 -270 {lab=GND}
N 920 -270 1040 -270 {lab=GND}
N 1000 -450 1000 -310 {lab=#net1}
N 920 -450 1000 -450 {lab=#net1}
N 1120 -360 1120 -320 {lab=Vcm}
N 1120 -260 1120 -220 {lab=vinn}
N 1220 -360 1220 -320 {lab=Vcm}
N 1120 -360 1220 -360 {
lab=Vcm}
N 1220 -260 1220 -220 {lab=GND}
N 920 -270 920 -220 {lab=GND}
N 780 -1600 780 -1580 {lab=phi_cmfb_1}
N 780 -1520 780 -1500 {lab=GND}
N 1180 -1600 1180 -1580 {lab=phi_cmfb_2}
N 1180 -1520 1180 -1500 {lab=GND}
N 780 -1440 780 -1420 {lab=phi_bias_1}
N 780 -1360 780 -1340 {lab=GND}
N 1180 -1440 1180 -1420 {lab=phi_bias_2}
N 1180 -1360 1180 -1340 {lab=GND}
N 1300 -1160 1300 -1120 {lab=VDD}
N 1300 -1060 1300 -1020 {lab=GND}
N 1460 -1160 1460 -1120 {lab=amp_core_en}
N 1460 -1060 1460 -1020 {lab=GND}
N 780 -260 780 -220 {lab=GND}
N 780 -380 780 -320 {lab=vind}
N 1060 -1020 1060 -980 {lab=VDD}
N 1100 -1000 1100 -980 {lab=amp_core_en}
N 780 -380 880 -380 {lab=vind}
N 1460 -320 1460 -300 {
lab=vout}
N 1390 -290 1420 -290 {
lab=voutp}
N 1390 -250 1420 -250 {
lab=voutn}
N 1460 -240 1460 -220 {lab=GND}
N 780 -400 780 -380 {lab=vind}
N 920 -920 960 -920 {lab=vinp}
N 920 -880 960 -880 {lab=Vcm}
N 920 -840 960 -840 {lab=vinn}
N 1200 -900 1460 -900 {lab=voutn}
N 1200 -860 1360 -860 {lab=voutp}
C {devices/code_shown.sym} 2140 -1530 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 40 -1730 0 0 {name=NGSPICE
only_toplevel=true 
value="
.param temp=27
* 228fF DAC + (1 - beta) * 3.3pF
.param Cload=3.49p
.param fclk=8000000
.csparam fclk=fclk
.param fphi_cmfb=62500
.param fphi_bias=62500
.options klu method=gear reltol=1e-2 abstol=1e-15 gmin=1e-15
.control

save vind vinp vinn voutp voutn vout
setplot const
set wr_vecnames
set wr_singlescale

* User constants
let tstart = 500u
let fstart = 10k
let fstop = 10k
let amount_of_periods = 2
let points_per_period = 10
let points_per_dec = 1
let vamp = 1m

* Generate a logarithmic frequency vector
compose freq_vec dec=$&const.points_per_dec start=$&const.fstart stop=$&const.fstop

* Generate gain and phase vectors
let Aol_dB_vec = freq_vec
let phase_vec = freq_vec

* Loop index
let idx = 0

* For-Loop
foreach freq_val $&freq_vec
  * 10 data points per period
  * let tstep = 1/($&const.points_per_period*$freq_val)
  let tstep = 1/fclk

  * 2 periods long
  let tstop = ($&const.amount_of_periods * 1/$freq_val) + $&const.tstart
  
  * Alter input sine frequency
  alter @VIN[SIN] = [ 0 $&const.vamp $freq_val 0 0 0 ]   

  * Transient Analysis
  tran $&tstep $&tstop $&tstart
  write amplifier_core_tb_looped_tran_ol.raw
  set appendwrite

  * Measure maximum voltage of input
  meas tran vind_peak_peak PP v(vind) from=$&tstart to=$&tstop
  let vind_peak = vind_peak_peak / 2

  * Measure time at maximum voltage of input
  meas tran t_vind_peak MAX_AT v(vind) from=$&tstart to=$&tstop

  * Measure maximum voltage of output
  meas tran vout_peak_peak PP v(vout) from=$&tstart to=$&tstop
  let vout_peak = vout_peak_peak / 2

  * Measure time at maximum voltage of output
  meas tran t_vout_peak MAX_AT v(vout) from=$&tstart to=$&tstop

  * Calculate gain
  let Aol = vout_peak / vind_peak
  let Aol_dB = vdb(Aol)

  * Calculate phase
  let phase = (t_vout_peak - t_vind_peak) * $freq_val * 360
 
  * Append to vector  
  let const.Aol_dB_vec[const.idx] = Aol_dB
  let const.phase_vec[const.idx] = phase

  * Update index
  let const.idx = const.idx + 1
  echo ======================================================
end

print const.Aol_dB_vec
print const.phase_vec

* Setscale for plot against frequency
setscale const.Aol_dB_vec const.freq_vec
setscale const.phase_vec const.freq_vec

* Plot open-loop gain and phase vs. frequency
plot xlog const.Aol_dB_vec title 'Open-loop gain' ylabel 'dB'
plot xlog const.phase_vec title 'Phase' ylabel 'deg'

* Write Data
wrdata /foss/designs/SG13G2_ATBS-ADC-main/python/plot_simulations/data/bio_amplifier_tb_looped_tran_cl.txt const.freq_vec const.Aol_dB_vec const.phase_vec

*quit
.endc
"}
C {devices/gnd.sym} 1360 -660 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1300 -1020 0 0 {name=l3 lab=GND}
C {devices/launcher.sym} 1700 -1520 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/capa.sym} 1360 -750 0 0 {name=C1
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {title-3.sym} 0 0 0 0 {name=l2 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/launcher.sym} 1700 -1470 0 0 {name=h1
descr="Load waves" 
tclcommand="xschem raw_read $netlist_dir/amplifier_core_tb_looped_tran_ol.raw tran"
}
C {vdd.sym} 1300 -1160 0 0 {name=l7 lab=VDD}
C {vdd.sym} 1060 -1020 0 0 {name=l8 lab=VDD}
C {devices/gnd.sym} 1080 -760 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1500 -860 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1500 -900 0 1 {name=p4 sig_type=std_logic lab=voutn}
C {devices/lab_pin.sym} 1120 -500 0 0 {name=l10 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 1120 -220 0 0 {name=l11 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 920 -880 0 0 {name=l4 sig_type=std_logic lab=Vcm}
C {devices/lab_pin.sym} 920 -920 0 0 {name=l5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 920 -840 0 0 {name=l19 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 1120 -720 1 1 {name=l20 sig_type=std_logic lab=phi_cmfb_1}
C {devices/lab_pin.sym} 1160 -720 1 1 {name=l21 sig_type=std_logic lab=phi_cmfb_2}
C {devices/lab_pin.sym} 1000 -720 1 1 {name=l22 sig_type=std_logic lab=phi_bias_1}
C {devices/lab_pin.sym} 1040 -720 1 1 {name=l23 sig_type=std_logic lab=phi_bias_2}
C {devices/capa.sym} 1460 -750 0 0 {name=C2
m=1
value=\{Cload\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1460 -660 0 0 {name=l30 lab=GND}
C {devices/vsource.sym} 780 -1550 0 0 {name=V1 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 780 -1500 0 0 {name=l31 lab=GND}
C {devices/gnd.sym} 1460 -1020 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1460 -1160 2 0 {name=l35 sig_type=std_logic lab=amp_core_en}
C {devices/vsource.sym} 1220 -290 0 0 {name=Vcm value=0.75
}
C {devices/vcvs.sym} 1120 -290 0 0 {name=E4 value=0.5}
C {devices/vcvs.sym} 1120 -430 0 0 {name=E5 value=0.5}
C {devices/lab_pin.sym} 1240 -360 2 0 {name=l38 sig_type=std_logic lab=Vcm}
C {devices/gnd.sym} 1220 -220 0 0 {name=l40 lab=GND}
C {devices/vcvs.sym} 920 -360 0 0 {name=E6 value=1}
C {devices/gnd.sym} 920 -220 0 0 {name=l41 lab=GND}
C {devices/lab_pin.sym} 780 -1600 2 0 {name=l12 sig_type=std_logic lab=phi_cmfb_1}
C {devices/vsource.sym} 1180 -1550 0 0 {name=V2 value="pulse(0 1.5 \{0.5/fphi_cmfb\} 10p 10p \{0.5/fphi_cmfb - 1/fclk\} \{1/fphi_cmfb\})"}
C {devices/gnd.sym} 1180 -1500 0 0 {name=l14 lab=GND}
C {devices/lab_pin.sym} 1180 -1600 2 0 {name=l15 sig_type=std_logic lab=phi_cmfb_2}
C {devices/vsource.sym} 780 -1390 0 0 {name=V3 value="pulse(0 1.5 0 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 780 -1340 0 0 {name=l16 lab=GND}
C {devices/lab_pin.sym} 780 -1440 2 0 {name=l32 sig_type=std_logic lab=phi_bias_1}
C {devices/vsource.sym} 1180 -1390 0 0 {name=V4 value="pulse(0 1.5 \{0.5/fphi_bias\} 10p 10p \{0.5/fphi_bias - 1/fclk\} \{1/fphi_bias\})"}
C {devices/gnd.sym} 1180 -1340 0 0 {name=l33 lab=GND}
C {devices/lab_pin.sym} 1180 -1440 2 0 {name=l34 sig_type=std_logic lab=phi_bias_2}
C {devices/vsource.sym} 1460 -1090 0 0 {name=V5 value="1.5"}
C {devices/vsource.sym} 780 -290 0 0 {name=VIN spice_ignore=false value="sin(0 10m 1)"
}
C {devices/gnd.sym} 780 -220 0 0 {name=l51 lab=GND}
C {devices/lab_pin.sym} 1100 -1000 2 0 {name=l13 sig_type=std_logic lab=amp_core_en}
C {devices/lab_pin.sym} 1460 -320 0 1 {name=l17 sig_type=std_logic lab=vout}
C {devices/vcvs.sym} 1460 -270 0 0 {name=E1 value=1}
C {devices/gnd.sym} 1460 -220 0 0 {name=l18 lab=GND}
C {devices/lab_pin.sym} 1390 -250 2 1 {name=l24 sig_type=std_logic lab=voutn
}
C {devices/lab_pin.sym} 1390 -290 0 0 {name=l25 sig_type=std_logic lab=voutp
}
C {devices/lab_pin.sym} 780 -400 3 1 {name=l26 sig_type=std_logic lab=vind}
C {bio_amplifier/amplifier_core/amplifier_core.sym} 1080 -880 0 0 {name=x1}
C {devices/vsource.sym} 1300 -1090 0 0 {name=VDD value="pwl(0 0 100n 1.5)"}
