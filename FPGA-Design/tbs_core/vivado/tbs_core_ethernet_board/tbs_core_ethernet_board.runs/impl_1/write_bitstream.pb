
e
Command: %s
53*	vivadotcl24
2write_bitstream -force tbs_core_ethernet_board.bitZ4-113h px� 
~
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2
xc7s25Z17-347h px� 
n
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2
xc7s25Z17-349h px� 
f
,Running DRC as a precondition to command %s
1349*	planAhead2
write_bitstreamZ12-1349h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
�Unconstrained Logical Port: 1 out of 51 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2
 "
tx_err_otx_err_o2
 DRC|Pin Planning8ZUCIO-1h px� 
�
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC2'
 !DRC|DRC System|Rule limit reached8ZCHECK-3h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[10]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[10]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[6]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[6]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[6]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[6]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[11]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[11]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[7]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[7]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[7]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[7]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[12]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[12]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[8]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[8]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[8]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[8]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[4]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[4]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[0]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[0]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[0]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[0]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[5]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[5]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[1]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[1]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[1]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[1]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[6]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[6]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[2]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[2]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[2]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[2]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[7]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[7]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[3]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[3]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[3]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[8]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[8]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[4]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[4]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[4]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[9]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRARDADDR[9]2�
 "�
?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[5]?tbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/Q[5]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[5]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_a_creator/address_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[10]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[10]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[6]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[6]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[6]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[6]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[11]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[11]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[7]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[7]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[7]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[7]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[12]Rtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[12]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[8]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[8]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[8]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[8]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[4]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[4]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[0]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[0]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[0]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[0]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[5]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[5]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[1]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[1]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[1]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[1]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[6]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[6]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[2]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[2]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[2]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[2]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[7]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[7]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[3]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[3]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[3]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[3]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[8]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[8]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[4]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[4]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[4]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[4]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�	
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[9]Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ADDRBWRADDR[9]2�
 "�
Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[5]Gtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg_0[5]2�
 "�
Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[5]	Qtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/addr_b_creator/address_reg[5]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2�
 "�
Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg	Btbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg2�
 "�
Jtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ENARDENJtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/mem_reg/ENARDEN2�
 "�
Jtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/tx_start_strb_oJtbs_core_0/ethernet_0/ethernet_tx_entity/eth_ram_tx/tx_ram/tx_start_strb_o2^
 "Z
*tbs_core_0/memory2uart_0/tx_start_strb_reg	*tbs_core_0/memory2uart_0/tx_start_strb_reg20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
�
�RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2|
 "x
9tbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/mem_reg	9tbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/mem_reg2�
 "�
Gtbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/mem_reg/RSTREGARSTREGGtbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/mem_reg/RSTREGARSTREG2�
 "�
>tbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/reset_entity>tbs_core_0/spike_memory_0/gen_dual_ram.dual_ram_0/reset_entity2\
 "X
)tbs_core_0/sync_chain_0/[1].buf_reg[1][0]	)tbs_core_0/sync_chain_0/[1].buf_reg[1][0]20
 *DRC|Netlist|Instance|Required Pin|RAMB18E18Z	REQP-1840h px� 
j
DRC finished with %s
1905*	planAhead2,
*0 Errors, 1 Critical Warnings, 21 WarningsZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
W
)Running write_bitstream with %s threads.
1750*designutils2
2Z20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
\
Writing bitstream %s...
11*	bitstream2
./tbs_core_ethernet_board.bitZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1292
342
102
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
write_bitstreamZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_bitstream: 2

00:00:132

00:00:112

2507.2422	
428.340Z17-268h px� 


End Record