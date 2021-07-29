vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_7seg_display.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_7seg_bcd_decoder.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_laundry_fsm.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_memory.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_payment_fsm.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/e_my_automated_laundry_system.vhd
vcom -reportprogress 300 -work work C:/intelFPGA_lite/18.1/FPGA_Excercises/project/simulation/modelsim/e_my_automated_laundry_system.vht
vsim work.e_my_automated_laundry_system_vhd_tst
do wave.do
run -all
