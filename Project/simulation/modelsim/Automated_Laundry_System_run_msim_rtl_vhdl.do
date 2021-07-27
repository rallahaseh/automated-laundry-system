transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Project/e_7seg_display.vhd}
vcom -93 -work work {C:/Project/e_7seg_bcd_decoder.vhd}
vcom -93 -work work {C:/Project/e_automated_laundry_system.vhd}
vcom -93 -work work {C:/Project/e_laundry_fsm.vhd}
vcom -93 -work work {C:/Project/e_payment_fsm.vhd}
vcom -93 -work work {C:/Project/e_memory.vhd}

