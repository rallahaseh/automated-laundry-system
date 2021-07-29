onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/CLOCK_50
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/reset
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/nearby_person_sensor
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/washing_machine_done_sensor
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/push_password_button
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/push_address_button
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/coin_in
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/password_in
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/washing_machine_address_in
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/green_led
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/red_led
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/start_button
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_0
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_1
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_2
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_3
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_4
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/hex_5
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/coin_out
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_password_button_last_state
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_address_button_last_state
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_working_washing_machines_count
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_state_choice
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_word_choice
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_paid
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_washing_machine_address_available
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_word_s
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_payment
add wave -noupdate /e_my_automated_laundry_system_vhd_tst/i1/sl_memory_enable
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1024 ns}
