transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_payment_fsm.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_my_automated_laundry_system.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_memory.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_laundry_fsm.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_7seg_display.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/FPGA_Excercises/sampleProject/automated_laundry_system/e_7seg_bcd_decoder.vhd}

