set_global_assignment -entity "pll_8MHz" -library "lib_pll_8MHz" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_8MHz" -library "lib_pll_8MHz" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "pll_8MHz" -library "lib_pll_8MHz" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_8MHz" -name SPD_FILE [file join $::quartus(sip_path) "pll_8MHz.spd"]

set_global_assignment -library "lib_pll_8MHz" -name MISC_FILE [file join $::quartus(sip_path) "pll_8MHz_sim/pll_8MHz.vho"]
