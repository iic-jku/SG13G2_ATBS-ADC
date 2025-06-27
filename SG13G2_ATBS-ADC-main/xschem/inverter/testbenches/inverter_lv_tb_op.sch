v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Operating Point analysis - Parameterizable LV Inverter} 330 -1710 0 0 1 1 {}
T {x1 LV NMOS M2:} 1680 -870 0 0 0.4 0.4 {}
T {x1 LV PMOS M1:} 1980 -870 0 0 0.4 0.4 {}
N 1440 -720 1440 -680 {
lab=GND}
N 1020 -860 1020 -800 {
lab=vin}
N 1020 -740 1020 -680 {
lab=GND}
N 1240 -820 1240 -680 {
lab=GND}
N 1320 -860 1440 -860 {
lab=vout}
N 1440 -860 1440 -780 {
lab=vout}
N 1020 -860 1180 -860 {
lab=vin}
N 900 -740 900 -680 {
lab=GND}
N 1000 -860 1020 -860 {
lab=vin}
N 1440 -860 1460 -860 {
lab=vout}
N 900 -860 900 -800 {
lab=VDD}
N 1240 -1040 1240 -900 {
lab=VDD}
C {title-3.sym} 0 0 0 0 {name=l1 author="Simon Dorrer" rev=1.0 lock=true}
C {devices/ngspice_get_value.sym} 1960 -800 0 0 {name=r28 
node=v(@n.x1.xm1.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 2040 -800 0 0 {name=r29 
node=i(@n.x1.xm1.nsg13_lv_pmos[ids])
descr="ids ="}
C {devices/ngspice_get_value.sym} 1960 -760 0 0 {name=r30
node=v(@n.x1.xm1.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 2040 -680 0 0 {name=r31 
node=@n.x1.xm1.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 2120 -800 0 0 {name=r32
node=@n.x1.xm1.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 2040 -760 0 0 {name=r33 
node=@n.x1.xm1.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 2040 -720 0 0 {name=r34 
node=@n.x1.xm1.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 1960 -720 0 0 {name=r35
node=v(@n.x1.xm1.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 1960 -680 0 0 {name=r36
node=v(@n.x1.xm1.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/code_shown.sym} 280 -430 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 1720 -1020 0 0 {name=h2
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1720 -960 0 0 {name=h3
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 280 -1330 0 0 {name=NGSPICE
only_toplevel=false
value="
.param temp=27
.options savecurrents
.control
save all

show n.x1.xm1.nsg13_lv_pmos
show n.x1.xm2.nsg13_lv_nmos

* Save transistor parameters
save @n.x1.xm2.nsg13_lv_nmos[vth]
save @n.x1.xm2.nsg13_lv_nmos[vgs]
save @n.x1.xm2.nsg13_lv_nmos[vds]
save @n.x1.xm2.nsg13_lv_nmos[vgt]
save @n.x1.xm2.nsg13_lv_nmos[ids]
save @n.x1.xm2.nsg13_lv_nmos[gm]
save @n.x1.xm2.nsg13_lv_nmos[gds]
save @n.x1.xm2.nsg13_lv_nmos[gmb]
save @n.x1.xm2.nsg13_lv_nmos[cgs]
save @n.x1.xm2.nsg13_lv_nmos[cgd]
save @n.x1.xm2.nsg13_lv_nmos[fug]
save @n.x1.xm2.nsg13_lv_nmos[rg]

save @n.x1.xm1.nsg13_lv_pmos[vth]
save @n.x1.xm1.nsg13_lv_pmos[vgs]
save @n.x1.xm1.nsg13_lv_pmos[vds]
save @n.x1.xm1.nsg13_lv_pmos[vgt]
save @n.x1.xm1.nsg13_lv_pmos[ids]
save @n.x1.xm1.nsg13_lv_pmos[gm]
save @n.x1.xm1.nsg13_lv_pmos[gds]
save @n.x1.xm1.nsg13_lv_pmos[gmb]
save @n.x1.xm1.nsg13_lv_pmos[cgs]
save @n.x1.xm1.nsg13_lv_pmos[cgd]
save @n.x1.xm1.nsg13_lv_pmos[fug]
save @n.x1.xm1.nsg13_lv_pmos[rg]

* Operating Point Analysis
op
remzerovec
write inverter_lv_tb_op.raw
set appendwrite

quit
.endc"}
C {devices/ngspice_get_value.sym} 2120 -720 0 0 {name=r43
node=v(@n.x1.xm1.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 2120 -760 0 0 {name=r44
node=@n.x1.xm1.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 2120 -680 0 0 {name=r46
node=v(@n.x1.xm1.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 1660 -800 0 0 {name=r2 
node=v(@n.x1.xm2.nsg13_lv_nmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 1740 -800 0 0 {name=r3 
node=i(@n.x1.xm2.nsg13_lv_nmos[ids])
descr="ids ="}
C {devices/ngspice_get_value.sym} 1660 -760 0 0 {name=r4
node=v(@n.x1.xm2.nsg13_lv_nmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 1740 -680 0 0 {name=r5 
node=@n.x1.xm2.nsg13_lv_nmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 1820 -800 0 0 {name=r6
node=@n.x1.xm2.nsg13_lv_nmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 1740 -760 0 0 {name=r8 
node=@n.x1.xm2.nsg13_lv_nmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 1740 -720 0 0 {name=r9 
node=@n.x1.xm2.nsg13_lv_nmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 1660 -720 0 0 {name=r18
node=v(@n.x1.xm2.nsg13_lv_nmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 1660 -680 0 0 {name=r19
node=v(@n.x1.xm2.nsg13_lv_nmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 1820 -720 0 0 {name=r37
node=v(@n.x1.xm2.nsg13_lv_nmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 1820 -760 0 0 {name=r47 
node=@n.x1.xm2.nsg13_lv_nmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 1820 -680 0 0 {name=r48
node=v(@n.x1.xm2.nsg13_lv_nmos[rg])
descr="rg ="}
C {devices/gnd.sym} 1440 -680 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 900 -770 0 0 {name=VDD value=1.5}
C {devices/gnd.sym} 900 -680 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 1240 -680 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1000 -860 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/capa.sym} 1440 -750 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1020 -680 0 0 {name=l5 lab=GND}
C {vdd.sym} 1240 -1040 0 0 {name=l6 lab=VDD}
C {lab_pin.sym} 1460 -860 0 1 {name=p1 sig_type=std_logic lab=vout}
C {vdd.sym} 900 -860 0 0 {name=l7 lab=VDD}
C {devices/vsource.sym} 1020 -770 0 0 {name=vin value=0}
C {inverter/inverter_lv.sym} 1240 -860 0 0 {name=x1 W_P=1.0u L_P=0.13u W_N=1.0u L_N=0.13u}
