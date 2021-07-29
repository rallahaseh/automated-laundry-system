-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/29/2021 13:49:46"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	e_my_automated_laundry_system IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	nearby_person_sensor : IN std_logic;
	washing_machine_done_sensor : IN std_logic;
	push_password_button : IN std_logic;
	push_address_button : IN std_logic;
	coin_in : IN std_logic_vector(3 DOWNTO 0);
	password_in : IN std_logic_vector(3 DOWNTO 0);
	washing_machine_address_in : IN std_logic_vector(3 DOWNTO 0);
	green_led : OUT std_logic;
	red_led : OUT std_logic;
	start_button : IN std_logic;
	hex_0 : OUT std_logic_vector(6 DOWNTO 0);
	hex_1 : OUT std_logic_vector(6 DOWNTO 0);
	hex_2 : OUT std_logic_vector(6 DOWNTO 0);
	hex_3 : OUT std_logic_vector(6 DOWNTO 0);
	hex_4 : OUT std_logic_vector(6 DOWNTO 0);
	hex_5 : OUT std_logic_vector(6 DOWNTO 0);
	coin_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END e_my_automated_laundry_system;

-- Design Ports Information
-- green_led	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[2]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[4]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[5]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[6]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[0]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[2]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[3]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[4]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[6]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[0]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[1]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[2]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[3]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[5]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[6]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[1]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[4]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[5]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[6]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[0]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[2]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[4]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[6]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[0]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[4]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[5]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[1]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[2]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[3]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[3]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[2]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[3]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_button	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_done_sensor	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_password_button	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[1]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[2]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[3]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_address_button	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nearby_person_sensor	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[2]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[1]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF e_my_automated_laundry_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_nearby_person_sensor : std_logic;
SIGNAL ww_washing_machine_done_sensor : std_logic;
SIGNAL ww_push_password_button : std_logic;
SIGNAL ww_push_address_button : std_logic;
SIGNAL ww_coin_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_password_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_washing_machine_address_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_green_led : std_logic;
SIGNAL ww_red_led : std_logic;
SIGNAL ww_start_button : std_logic;
SIGNAL ww_hex_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex_5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_coin_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[0]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[1]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[2]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[3]~input_o\ : std_logic;
SIGNAL \i_e_memory|Decoder0~0_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~2_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~1_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~4_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~5_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~6_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~8_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~7_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~5_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~3_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~0_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~4_combout\ : std_logic;
SIGNAL \i_e_memory|washing_machine_address_available~combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \password_in[1]~input_o\ : std_logic;
SIGNAL \password_in[0]~input_o\ : std_logic;
SIGNAL \password_in[2]~input_o\ : std_logic;
SIGNAL \password_in[3]~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \push_password_button~input_o\ : std_logic;
SIGNAL \push_address_button~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_address_button_last_state~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_address_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \nearby_person_sensor~input_o\ : std_logic;
SIGNAL \washing_machine_done_sensor~input_o\ : std_logic;
SIGNAL \start_button~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.hold_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~3_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~2_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~4_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.availability_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.payment_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.process_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.start_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.no_action_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_password_button_last_state~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_password_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.verification_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|WideOr10~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|WideOr9~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|WideOr11~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \red_led$latch~combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.full_state~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.full_state~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_1~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_1~2_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~2_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~4_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~5_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2~6_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~2_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~4_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~5_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_3~6_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux10~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[0]~19_q\ : std_logic;
SIGNAL \coin_in[0]~input_o\ : std_logic;
SIGNAL \coin_in[1]~input_o\ : std_logic;
SIGNAL \coin_in[3]~input_o\ : std_logic;
SIGNAL \coin_in[2]~input_o\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector44~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector56~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Equal1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector54~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector44~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector52~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector42~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector42~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector50~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector40~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~4_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~3_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~5_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector48~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector48~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector46~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector46~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector15~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector15~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector35~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector33~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector31~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector27~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector21~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector21~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector29~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector23~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector23~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector25~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr34~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr41~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr40~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr39~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr38~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr32~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr38~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr37~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr37~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr36~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr36~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr35~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr34~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr34~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr30~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5[5]~2_q\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~21_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux9~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[1]~16_q\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~22_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux8~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5[1]~7_q\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~23_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux7~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[3]~10_q\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~24_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \i_e_7seg_display|Mux6~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[4]~7_q\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~25_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux5~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[5]~4_q\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~26_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \i_e_7seg_display|Mux4~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4[6]~1_q\ : std_logic;
SIGNAL \i_e_7seg_display|hex_4~27_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~12_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~13_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~20_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux26~4_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux26~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux26~2_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux26~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux26~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~16_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_1~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~17_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \i_e_7seg_display|Mux2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5[4]~4_q\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~14_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5[5]~1_q\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~15_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~18_combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_5~19_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr32~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr31~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr30~combout\ : std_logic;
SIGNAL \i_e_7seg_display|hex_2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL sl_word_choice : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_e_7seg_display|hex_1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_e_laundry_fsm|state_choice\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_e_7seg_display|hex_3\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_e_7seg_display|hex_5\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \i_e_memory|ram\ : std_logic_vector(0 TO 8);
SIGNAL \ALT_INV_washing_machine_address_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_nearby_person_sensor~input_o\ : std_logic;
SIGNAL \ALT_INV_push_address_button~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_push_password_button~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_done_sensor~input_o\ : std_logic;
SIGNAL \ALT_INV_start_button~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_ram\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\ : std_logic;
SIGNAL ALT_INV_sl_word_choice : std_logic_vector(2 DOWNTO 0);
SIGNAL \i_e_memory|ALT_INV_washing_machine_address_available~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\ : std_logic;
SIGNAL \ALT_INV_red_led$latch~combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5~20_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector40~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector48~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~5_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~4_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~3_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector42~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr41~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5~18_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_1~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr30~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr34~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr34~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr35~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr34~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr36~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr36~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr37~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr37~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr38~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr38~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr32~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr39~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr40~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_state_choice\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.full_state~q\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_WideOr11~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_WideOr9~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5[5]~1_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5[4]~4_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[6]~1_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[5]~4_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[4]~7_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[3]~10_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5[1]~7_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[1]~16_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_4[0]~19_q\ : std_logic;
SIGNAL \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_e_memory|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a8\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a9\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a10\ : std_logic;
SIGNAL \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
ww_nearby_person_sensor <= nearby_person_sensor;
ww_washing_machine_done_sensor <= washing_machine_done_sensor;
ww_push_password_button <= push_password_button;
ww_push_address_button <= push_address_button;
ww_coin_in <= coin_in;
ww_password_in <= password_in;
ww_washing_machine_address_in <= washing_machine_address_in;
green_led <= ww_green_led;
red_led <= ww_red_led;
ww_start_button <= start_button;
hex_0 <= ww_hex_0;
hex_1 <= ww_hex_1;
hex_2 <= ww_hex_2;
hex_3 <= ww_hex_3;
hex_4 <= ww_hex_4;
hex_5 <= ww_hex_5;
coin_out <= ww_coin_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\i_e_payment_fsm|WideOr30~0_combout\ & \i_e_payment_fsm|WideOr34~combout\ & \i_e_payment_fsm|WideOr35~combout\ & \i_e_payment_fsm|WideOr36~combout\ & 
\i_e_payment_fsm|WideOr37~combout\ & \i_e_payment_fsm|WideOr38~combout\ & \i_e_payment_fsm|WideOr39~combout\ & \i_e_payment_fsm|WideOr40~combout\);

\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a1\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a2\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a3\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a4\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a5\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a6\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a7\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a8\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a10\ <= \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\ALT_INV_washing_machine_address_in[0]~input_o\ <= NOT \washing_machine_address_in[0]~input_o\;
\ALT_INV_washing_machine_address_in[1]~input_o\ <= NOT \washing_machine_address_in[1]~input_o\;
\ALT_INV_washing_machine_address_in[2]~input_o\ <= NOT \washing_machine_address_in[2]~input_o\;
\ALT_INV_nearby_person_sensor~input_o\ <= NOT \nearby_person_sensor~input_o\;
\ALT_INV_push_address_button~input_o\ <= NOT \push_address_button~input_o\;
\ALT_INV_password_in[3]~input_o\ <= NOT \password_in[3]~input_o\;
\ALT_INV_password_in[2]~input_o\ <= NOT \password_in[2]~input_o\;
\ALT_INV_password_in[1]~input_o\ <= NOT \password_in[1]~input_o\;
\ALT_INV_password_in[0]~input_o\ <= NOT \password_in[0]~input_o\;
\ALT_INV_push_password_button~input_o\ <= NOT \push_password_button~input_o\;
\ALT_INV_washing_machine_done_sensor~input_o\ <= NOT \washing_machine_done_sensor~input_o\;
\ALT_INV_start_button~input_o\ <= NOT \start_button~input_o\;
\ALT_INV_washing_machine_address_in[3]~input_o\ <= NOT \washing_machine_address_in[3]~input_o\;
\ALT_INV_coin_in[2]~input_o\ <= NOT \coin_in[2]~input_o\;
\ALT_INV_coin_in[0]~input_o\ <= NOT \coin_in[0]~input_o\;
\ALT_INV_coin_in[3]~input_o\ <= NOT \coin_in[3]~input_o\;
\ALT_INV_coin_in[1]~input_o\ <= NOT \coin_in[1]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\i_e_memory|ALT_INV_ram\(2) <= NOT \i_e_memory|ram\(2);
\i_e_memory|ALT_INV_ram\(0) <= NOT \i_e_memory|ram\(0);
\i_e_memory|ALT_INV_ram\(3) <= NOT \i_e_memory|ram\(3);
\i_e_memory|ALT_INV_ram\(1) <= NOT \i_e_memory|ram\(1);
\i_e_memory|ALT_INV_ram\(6) <= NOT \i_e_memory|ram\(6);
\i_e_memory|ALT_INV_ram\(4) <= NOT \i_e_memory|ram\(4);
\i_e_memory|ALT_INV_ram\(7) <= NOT \i_e_memory|ram\(7);
\i_e_memory|ALT_INV_ram\(5) <= NOT \i_e_memory|ram\(5);
\i_e_memory|ALT_INV_ram\(8) <= NOT \i_e_memory|ram\(8);
\i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\;
ALT_INV_sl_word_choice(1) <= NOT sl_word_choice(1);
ALT_INV_sl_word_choice(0) <= NOT sl_word_choice(0);
ALT_INV_sl_word_choice(2) <= NOT sl_word_choice(2);
\i_e_memory|ALT_INV_washing_machine_address_available~combout\ <= NOT \i_e_memory|washing_machine_address_available~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\;
\ALT_INV_red_led$latch~combout\ <= NOT \red_led$latch~combout\;
\i_e_7seg_display|ALT_INV_Mux26~4_combout\ <= NOT \i_e_7seg_display|Mux26~4_combout\;
\i_e_7seg_display|ALT_INV_hex_5~20_combout\ <= NOT \i_e_7seg_display|hex_5~20_combout\;
\i_e_memory|ALT_INV_Decoder0~8_combout\ <= NOT \i_e_memory|Decoder0~8_combout\;
\i_e_memory|ALT_INV_Decoder0~7_combout\ <= NOT \i_e_memory|Decoder0~7_combout\;
\i_e_memory|ALT_INV_Decoder0~6_combout\ <= NOT \i_e_memory|Decoder0~6_combout\;
\i_e_memory|ALT_INV_Decoder0~5_combout\ <= NOT \i_e_memory|Decoder0~5_combout\;
\i_e_memory|ALT_INV_Decoder0~4_combout\ <= NOT \i_e_memory|Decoder0~4_combout\;
\i_e_memory|ALT_INV_Decoder0~3_combout\ <= NOT \i_e_memory|Decoder0~3_combout\;
\i_e_memory|ALT_INV_Decoder0~2_combout\ <= NOT \i_e_memory|Decoder0~2_combout\;
\i_e_memory|ALT_INV_Decoder0~1_combout\ <= NOT \i_e_memory|Decoder0~1_combout\;
\i_e_memory|ALT_INV_Decoder0~0_combout\ <= NOT \i_e_memory|Decoder0~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector40~1_combout\ <= NOT \i_e_payment_fsm|Selector40~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector40~0_combout\ <= NOT \i_e_payment_fsm|Selector40~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector56~0_combout\ <= NOT \i_e_payment_fsm|Selector56~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector15~1_combout\ <= NOT \i_e_payment_fsm|Selector15~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector15~0_combout\ <= NOT \i_e_payment_fsm|Selector15~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector48~1_combout\ <= NOT \i_e_payment_fsm|Selector48~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector48~0_combout\ <= NOT \i_e_payment_fsm|Selector48~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~2_combout\ <= NOT \i_e_payment_fsm|Selector7~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~1_combout\ <= NOT \i_e_payment_fsm|Selector7~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~0_combout\ <= NOT \i_e_payment_fsm|Selector7~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector52~0_combout\ <= NOT \i_e_payment_fsm|Selector52~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector44~1_combout\ <= NOT \i_e_payment_fsm|Selector44~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector44~0_combout\ <= NOT \i_e_payment_fsm|Selector44~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~2_combout\ <= NOT \i_e_payment_fsm|Selector19~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~1_combout\ <= NOT \i_e_payment_fsm|Selector19~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~0_combout\ <= NOT \i_e_payment_fsm|Selector19~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector11~2_combout\ <= NOT \i_e_payment_fsm|Selector11~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector11~1_combout\ <= NOT \i_e_payment_fsm|Selector11~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector11~0_combout\ <= NOT \i_e_payment_fsm|Selector11~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~2_combout\ <= NOT \i_e_payment_fsm|Selector3~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~1_combout\ <= NOT \i_e_payment_fsm|Selector3~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~0_combout\ <= NOT \i_e_payment_fsm|Selector3~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~5_combout\ <= NOT \i_e_payment_fsm|Selector58~5_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~4_combout\ <= NOT \i_e_payment_fsm|Selector58~4_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~3_combout\ <= NOT \i_e_payment_fsm|Selector58~3_combout\;
\i_e_payment_fsm|ALT_INV_Selector21~1_combout\ <= NOT \i_e_payment_fsm|Selector21~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector21~0_combout\ <= NOT \i_e_payment_fsm|Selector21~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~2_combout\ <= NOT \i_e_payment_fsm|Selector9~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~1_combout\ <= NOT \i_e_payment_fsm|Selector9~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~0_combout\ <= NOT \i_e_payment_fsm|Selector9~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector46~1_combout\ <= NOT \i_e_payment_fsm|Selector46~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector46~0_combout\ <= NOT \i_e_payment_fsm|Selector46~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~2_combout\ <= NOT \i_e_payment_fsm|Selector17~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~1_combout\ <= NOT \i_e_payment_fsm|Selector17~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~0_combout\ <= NOT \i_e_payment_fsm|Selector17~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector50~0_combout\ <= NOT \i_e_payment_fsm|Selector50~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~2_combout\ <= NOT \i_e_payment_fsm|Selector13~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~1_combout\ <= NOT \i_e_payment_fsm|Selector13~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~0_combout\ <= NOT \i_e_payment_fsm|Selector13~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~2_combout\ <= NOT \i_e_payment_fsm|Selector1~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~1_combout\ <= NOT \i_e_payment_fsm|Selector1~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~0_combout\ <= NOT \i_e_payment_fsm|Selector1~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~2_combout\ <= NOT \i_e_payment_fsm|Selector5~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~1_combout\ <= NOT \i_e_payment_fsm|Selector5~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~0_combout\ <= NOT \i_e_payment_fsm|Selector5~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector54~0_combout\ <= NOT \i_e_payment_fsm|Selector54~0_combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\ <= NOT \i_e_payment_fsm|sl_coin_state~1_combout\;
\i_e_payment_fsm|ALT_INV_Equal1~0_combout\ <= NOT \i_e_payment_fsm|Equal1~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector42~1_combout\ <= NOT \i_e_payment_fsm|Selector42~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector42~0_combout\ <= NOT \i_e_payment_fsm|Selector42~0_combout\;
\i_e_payment_fsm|ALT_INV_Equal0~0_combout\ <= NOT \i_e_payment_fsm|Equal0~0_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\i_e_laundry_fsm|ALT_INV_Selector3~3_combout\ <= NOT \i_e_laundry_fsm|Selector3~3_combout\;
\i_e_laundry_fsm|ALT_INV_Selector3~2_combout\ <= NOT \i_e_laundry_fsm|Selector3~2_combout\;
\i_e_laundry_fsm|ALT_INV_Selector3~1_combout\ <= NOT \i_e_laundry_fsm|Selector3~1_combout\;
\i_e_laundry_fsm|ALT_INV_Selector7~0_combout\ <= NOT \i_e_laundry_fsm|Selector7~0_combout\;
\i_e_laundry_fsm|ALT_INV_Selector3~0_combout\ <= NOT \i_e_laundry_fsm|Selector3~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\ <= NOT \i_e_laundry_fsm|sl_address_button_last_state~q\;
\i_e_laundry_fsm|ALT_INV_Equal0~0_combout\ <= NOT \i_e_laundry_fsm|Equal0~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\ <= NOT \i_e_laundry_fsm|sl_password_button_last_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.user_detect_state~q\;
\i_e_memory|ALT_INV_Mux0~4_combout\ <= NOT \i_e_memory|Mux0~4_combout\;
\i_e_payment_fsm|ALT_INV_Selector31~0_combout\ <= NOT \i_e_payment_fsm|Selector31~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector25~0_combout\ <= NOT \i_e_payment_fsm|Selector25~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector35~0_combout\ <= NOT \i_e_payment_fsm|Selector35~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector39~0_combout\ <= NOT \i_e_payment_fsm|Selector39~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector33~0_combout\ <= NOT \i_e_payment_fsm|Selector33~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector27~0_combout\ <= NOT \i_e_payment_fsm|Selector27~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector37~0_combout\ <= NOT \i_e_payment_fsm|Selector37~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector29~0_combout\ <= NOT \i_e_payment_fsm|Selector29~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr41~combout\ <= NOT \i_e_payment_fsm|WideOr41~combout\;
\i_e_payment_fsm|ALT_INV_Selector23~1_combout\ <= NOT \i_e_payment_fsm|Selector23~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector23~0_combout\ <= NOT \i_e_payment_fsm|Selector23~0_combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\ <= NOT \i_e_payment_fsm|sl_coin_state~0_combout\;
\i_e_7seg_display|ALT_INV_hex_5~18_combout\ <= NOT \i_e_7seg_display|hex_5~18_combout\;
\i_e_7seg_display|ALT_INV_hex_1~3_combout\ <= NOT \i_e_7seg_display|hex_1~3_combout\;
\i_e_7seg_display|ALT_INV_Mux26~3_combout\ <= NOT \i_e_7seg_display|Mux26~3_combout\;
\i_e_7seg_display|ALT_INV_Mux26~2_combout\ <= NOT \i_e_7seg_display|Mux26~2_combout\;
\i_e_7seg_display|ALT_INV_Mux26~1_combout\ <= NOT \i_e_7seg_display|Mux26~1_combout\;
\i_e_7seg_display|ALT_INV_Mux26~0_combout\ <= NOT \i_e_7seg_display|Mux26~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr30~0_combout\ <= NOT \i_e_payment_fsm|WideOr30~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr34~combout\ <= NOT \i_e_payment_fsm|WideOr34~combout\;
\i_e_payment_fsm|ALT_INV_WideOr34~1_combout\ <= NOT \i_e_payment_fsm|WideOr34~1_combout\;
\i_e_payment_fsm|ALT_INV_WideOr35~combout\ <= NOT \i_e_payment_fsm|WideOr35~combout\;
\i_e_payment_fsm|ALT_INV_WideOr34~0_combout\ <= NOT \i_e_payment_fsm|WideOr34~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr36~combout\ <= NOT \i_e_payment_fsm|WideOr36~combout\;
\i_e_payment_fsm|ALT_INV_WideOr36~0_combout\ <= NOT \i_e_payment_fsm|WideOr36~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr37~combout\ <= NOT \i_e_payment_fsm|WideOr37~combout\;
\i_e_payment_fsm|ALT_INV_WideOr37~1_combout\ <= NOT \i_e_payment_fsm|WideOr37~1_combout\;
\i_e_payment_fsm|ALT_INV_WideOr38~combout\ <= NOT \i_e_payment_fsm|WideOr38~combout\;
\i_e_payment_fsm|ALT_INV_WideOr38~0_combout\ <= NOT \i_e_payment_fsm|WideOr38~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr37~0_combout\ <= NOT \i_e_payment_fsm|WideOr37~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr32~0_combout\ <= NOT \i_e_payment_fsm|WideOr32~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr39~combout\ <= NOT \i_e_payment_fsm|WideOr39~combout\;
\i_e_payment_fsm|ALT_INV_WideOr39~0_combout\ <= NOT \i_e_payment_fsm|WideOr39~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~2_combout\ <= NOT \i_e_payment_fsm|Selector58~2_combout\;
\i_e_payment_fsm|ALT_INV_WideOr40~combout\ <= NOT \i_e_payment_fsm|WideOr40~combout\;
\i_e_payment_fsm|ALT_INV_WideOr40~0_combout\ <= NOT \i_e_payment_fsm|WideOr40~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~1_combout\ <= NOT \i_e_payment_fsm|Selector58~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~0_combout\ <= NOT \i_e_payment_fsm|Selector58~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\i_e_laundry_fsm|ALT_INV_state_choice\(3) <= NOT \i_e_laundry_fsm|state_choice\(3);
\i_e_laundry_fsm|ALT_INV_sl_present_state.full_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.full_state~q\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\i_e_laundry_fsm|ALT_INV_WideOr10~combout\ <= NOT \i_e_laundry_fsm|WideOr10~combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.availability_state~q\;
\i_e_laundry_fsm|ALT_INV_WideOr11~combout\ <= NOT \i_e_laundry_fsm|WideOr11~combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.start_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.no_action_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.verification_state~q\;
\i_e_laundry_fsm|ALT_INV_WideOr9~combout\ <= NOT \i_e_laundry_fsm|WideOr9~combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.hold_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.process_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.payment_state~q\;
\i_e_7seg_display|ALT_INV_hex_5[5]~1_q\ <= NOT \i_e_7seg_display|hex_5[5]~1_q\;
\i_e_7seg_display|ALT_INV_hex_5[4]~4_q\ <= NOT \i_e_7seg_display|hex_5[4]~4_q\;
\i_e_7seg_display|ALT_INV_hex_4[6]~1_q\ <= NOT \i_e_7seg_display|hex_4[6]~1_q\;
\i_e_7seg_display|ALT_INV_hex_4[5]~4_q\ <= NOT \i_e_7seg_display|hex_4[5]~4_q\;
\i_e_7seg_display|ALT_INV_hex_4[4]~7_q\ <= NOT \i_e_7seg_display|hex_4[4]~7_q\;
\i_e_7seg_display|ALT_INV_hex_4[3]~10_q\ <= NOT \i_e_7seg_display|hex_4[3]~10_q\;
\i_e_7seg_display|ALT_INV_hex_5[1]~7_q\ <= NOT \i_e_7seg_display|hex_5[1]~7_q\;
\i_e_7seg_display|ALT_INV_hex_4[1]~16_q\ <= NOT \i_e_7seg_display|hex_4[1]~16_q\;
\i_e_7seg_display|ALT_INV_hex_4[0]~19_q\ <= NOT \i_e_7seg_display|hex_4[0]~19_q\;
\i_e_7seg_display|ALT_INV_hex_5[5]~2_q\ <= NOT \i_e_7seg_display|hex_5[5]~2_q\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux1~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux1~0_combout\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux2~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux2~0_combout\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux3~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux3~0_combout\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux4~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux4~0_combout\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux5~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux5~0_combout\;
\i_e_7seg_bcd_decoder|ALT_INV_Mux6~0_combout\ <= NOT \i_e_7seg_bcd_decoder|Mux6~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3) <= NOT \i_e_laundry_fsm|sl_used_washing_machines_count\(3);
\i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2) <= NOT \i_e_laundry_fsm|sl_used_washing_machines_count\(2);
\i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1) <= NOT \i_e_laundry_fsm|sl_used_washing_machines_count\(1);
\i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0) <= NOT \i_e_laundry_fsm|sl_used_washing_machines_count\(0);
\i_e_memory|ALT_INV_Mux0~5_combout\ <= NOT \i_e_memory|Mux0~5_combout\;
\i_e_memory|ALT_INV_Mux0~0_combout\ <= NOT \i_e_memory|Mux0~0_combout\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a1\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a1\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a2\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a2\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a3\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a3\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a4\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a4\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a5\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a5\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a6\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a6\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a7\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a7\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a8\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a8\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a9\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a10\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a10\;
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\ <= NOT \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0~portadataout\;

-- Location: IOOBUF_X32_Y81_N2
\green_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_green_led);

-- Location: IOOBUF_X6_Y0_N36
\red_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \red_led$latch~combout\,
	devoe => ww_devoe,
	o => ww_red_led);

-- Location: IOOBUF_X28_Y0_N19
\hex_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(0));

-- Location: IOOBUF_X30_Y0_N2
\hex_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(1));

-- Location: IOOBUF_X30_Y0_N36
\hex_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(2));

-- Location: IOOBUF_X24_Y0_N53
\hex_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(3));

-- Location: IOOBUF_X28_Y0_N53
\hex_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(4));

-- Location: IOOBUF_X22_Y0_N2
\hex_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(5));

-- Location: IOOBUF_X28_Y0_N36
\hex_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_bcd_decoder|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex_0(6));

-- Location: IOOBUF_X20_Y0_N53
\hex_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(0),
	devoe => ww_devoe,
	o => ww_hex_1(0));

-- Location: IOOBUF_X20_Y0_N19
\hex_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(1),
	devoe => ww_devoe,
	o => ww_hex_1(1));

-- Location: IOOBUF_X32_Y0_N36
\hex_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(2),
	devoe => ww_devoe,
	o => ww_hex_1(2));

-- Location: IOOBUF_X18_Y0_N93
\hex_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(3),
	devoe => ww_devoe,
	o => ww_hex_1(3));

-- Location: IOOBUF_X20_Y0_N36
\hex_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(4),
	devoe => ww_devoe,
	o => ww_hex_1(4));

-- Location: IOOBUF_X14_Y81_N53
\hex_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(5));

-- Location: IOOBUF_X38_Y0_N36
\hex_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_1\(6),
	devoe => ww_devoe,
	o => ww_hex_1(6));

-- Location: IOOBUF_X30_Y0_N53
\hex_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(0),
	devoe => ww_devoe,
	o => ww_hex_2(0));

-- Location: IOOBUF_X38_Y0_N19
\hex_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(1),
	devoe => ww_devoe,
	o => ww_hex_2(1));

-- Location: IOOBUF_X32_Y0_N2
\hex_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(2),
	devoe => ww_devoe,
	o => ww_hex_2(2));

-- Location: IOOBUF_X30_Y0_N19
\hex_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(3),
	devoe => ww_devoe,
	o => ww_hex_2(3));

-- Location: IOOBUF_X28_Y0_N2
\hex_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(4),
	devoe => ww_devoe,
	o => ww_hex_2(4));

-- Location: IOOBUF_X38_Y0_N53
\hex_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(5),
	devoe => ww_devoe,
	o => ww_hex_2(5));

-- Location: IOOBUF_X34_Y0_N42
\hex_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_2\(6),
	devoe => ww_devoe,
	o => ww_hex_2(6));

-- Location: IOOBUF_X32_Y0_N19
\hex_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(0),
	devoe => ww_devoe,
	o => ww_hex_3(0));

-- Location: IOOBUF_X26_Y0_N93
\hex_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(1),
	devoe => ww_devoe,
	o => ww_hex_3(1));

-- Location: IOOBUF_X26_Y0_N42
\hex_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(2),
	devoe => ww_devoe,
	o => ww_hex_3(2));

-- Location: IOOBUF_X32_Y0_N53
\hex_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(3),
	devoe => ww_devoe,
	o => ww_hex_3(3));

-- Location: IOOBUF_X22_Y0_N36
\hex_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(4),
	devoe => ww_devoe,
	o => ww_hex_3(4));

-- Location: IOOBUF_X36_Y0_N36
\hex_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(5),
	devoe => ww_devoe,
	o => ww_hex_3(5));

-- Location: IOOBUF_X34_Y0_N76
\hex_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_3\(6),
	devoe => ww_devoe,
	o => ww_hex_3(6));

-- Location: IOOBUF_X14_Y0_N2
\hex_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~21_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(0));

-- Location: IOOBUF_X8_Y0_N53
\hex_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~22_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(1));

-- Location: IOOBUF_X10_Y0_N42
\hex_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~23_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(2));

-- Location: IOOBUF_X12_Y0_N19
\hex_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~24_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(3));

-- Location: IOOBUF_X6_Y0_N2
\hex_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~25_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(4));

-- Location: IOOBUF_X10_Y0_N76
\hex_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~26_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(5));

-- Location: IOOBUF_X12_Y0_N36
\hex_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_4~27_combout\,
	devoe => ww_devoe,
	o => ww_hex_4(6));

-- Location: IOOBUF_X10_Y0_N59
\hex_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5~12_combout\,
	devoe => ww_devoe,
	o => ww_hex_5(0));

-- Location: IOOBUF_X8_Y0_N2
\hex_5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5~13_combout\,
	devoe => ww_devoe,
	o => ww_hex_5(1));

-- Location: IOOBUF_X36_Y0_N2
\hex_5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5\(2),
	devoe => ww_devoe,
	o => ww_hex_5(2));

-- Location: IOOBUF_X24_Y0_N2
\hex_5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5\(3),
	devoe => ww_devoe,
	o => ww_hex_5(3));

-- Location: IOOBUF_X10_Y0_N93
\hex_5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5~14_combout\,
	devoe => ww_devoe,
	o => ww_hex_5(4));

-- Location: IOOBUF_X8_Y0_N19
\hex_5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5~15_combout\,
	devoe => ww_devoe,
	o => ww_hex_5(5));

-- Location: IOOBUF_X36_Y0_N19
\hex_5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_7seg_display|hex_5\(6),
	devoe => ww_devoe,
	o => ww_hex_5(6));

-- Location: IOOBUF_X12_Y0_N2
\coin_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_payment_fsm|WideOr32~combout\,
	devoe => ww_devoe,
	o => ww_coin_out(0));

-- Location: IOOBUF_X4_Y0_N36
\coin_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_payment_fsm|WideOr31~combout\,
	devoe => ww_devoe,
	o => ww_coin_out(1));

-- Location: IOOBUF_X14_Y0_N36
\coin_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_e_payment_fsm|WideOr30~combout\,
	devoe => ww_devoe,
	o => ww_coin_out(2));

-- Location: IOOBUF_X58_Y0_N42
\coin_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_coin_out(3));

-- Location: IOIBUF_X18_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X24_Y0_N18
\washing_machine_address_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(0),
	o => \washing_machine_address_in[0]~input_o\);

-- Location: IOIBUF_X18_Y81_N75
\washing_machine_address_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(1),
	o => \washing_machine_address_in[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\washing_machine_address_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(2),
	o => \washing_machine_address_in[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\washing_machine_address_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(3),
	o => \washing_machine_address_in[3]~input_o\);

-- Location: LABCELL_X18_Y1_N12
\i_e_memory|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~0_combout\ = ( !\i_e_memory|ram\(8) & ( (!\washing_machine_address_in[0]~input_o\ & (!\washing_machine_address_in[1]~input_o\ & (!\washing_machine_address_in[2]~input_o\ & \washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(8),
	combout => \i_e_memory|Decoder0~0_combout\);

-- Location: LABCELL_X19_Y1_N18
\i_e_memory|ram[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(8) = ( \i_e_memory|Decoder0~0_combout\ & ( \i_e_memory|ram\(8) & ( \reset~input_o\ ) ) ) # ( !\i_e_memory|Decoder0~0_combout\ & ( \i_e_memory|ram\(8) & ( \reset~input_o\ ) ) ) # ( \i_e_memory|Decoder0~0_combout\ & ( !\i_e_memory|ram\(8) & 
-- ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datae => \i_e_memory|ALT_INV_Decoder0~0_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(8),
	combout => \i_e_memory|ram\(8));

-- Location: LABCELL_X18_Y1_N27
\i_e_memory|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~2_combout\ = ( \washing_machine_address_in[2]~input_o\ & ( (\washing_machine_address_in[0]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & (\washing_machine_address_in[1]~input_o\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~2_combout\);

-- Location: LABCELL_X18_Y1_N51
\i_e_memory|ram[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(7) = ( \i_e_memory|ram\(7) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(7) & ( (\reset~input_o\ & \i_e_memory|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~2_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(7),
	combout => \i_e_memory|ram\(7));

-- Location: LABCELL_X18_Y1_N48
\i_e_memory|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~1_combout\ = ( \washing_machine_address_in[2]~input_o\ & ( (!\i_e_memory|Mux0~0_combout\ & (!\washing_machine_address_in[3]~input_o\ & (\washing_machine_address_in[0]~input_o\ & !\washing_machine_address_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_washing_machine_address_in[3]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~1_combout\);

-- Location: LABCELL_X18_Y1_N45
\i_e_memory|ram[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(5) = ( \i_e_memory|Decoder0~1_combout\ & ( \reset~input_o\ ) ) # ( !\i_e_memory|Decoder0~1_combout\ & ( (\reset~input_o\ & \i_e_memory|ram\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_ram\(5),
	dataf => \i_e_memory|ALT_INV_Decoder0~1_combout\,
	combout => \i_e_memory|ram\(5));

-- Location: LABCELL_X18_Y1_N9
\i_e_memory|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~4_combout\ = ( \washing_machine_address_in[2]~input_o\ & ( (!\washing_machine_address_in[0]~input_o\ & (\washing_machine_address_in[1]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~4_combout\);

-- Location: LABCELL_X18_Y1_N15
\i_e_memory|ram[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(6) = ( \i_e_memory|ram\(6) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(6) & ( (\i_e_memory|Decoder0~4_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Decoder0~4_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(6),
	combout => \i_e_memory|ram\(6));

-- Location: LABCELL_X18_Y1_N42
\i_e_memory|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~5_combout\ = ( !\washing_machine_address_in[2]~input_o\ & ( (!\i_e_memory|Mux0~0_combout\ & (!\washing_machine_address_in[1]~input_o\ & (\washing_machine_address_in[0]~input_o\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~5_combout\);

-- Location: LABCELL_X18_Y1_N18
\i_e_memory|ram[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(1) = ( \i_e_memory|ram\(1) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(1) & ( (\reset~input_o\ & \i_e_memory|Decoder0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~5_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(1),
	combout => \i_e_memory|ram\(1));

-- Location: LABCELL_X18_Y1_N21
\i_e_memory|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~6_combout\ = ( !\washing_machine_address_in[2]~input_o\ & ( (\washing_machine_address_in[0]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & (\washing_machine_address_in[1]~input_o\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~6_combout\);

-- Location: LABCELL_X19_Y1_N57
\i_e_memory|ram[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(3) = ( \i_e_memory|Decoder0~6_combout\ & ( \i_e_memory|ram\(3) & ( \reset~input_o\ ) ) ) # ( !\i_e_memory|Decoder0~6_combout\ & ( \i_e_memory|ram\(3) & ( \reset~input_o\ ) ) ) # ( \i_e_memory|Decoder0~6_combout\ & ( !\i_e_memory|ram\(3) & 
-- ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datae => \i_e_memory|ALT_INV_Decoder0~6_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(3),
	combout => \i_e_memory|ram\(3));

-- Location: LABCELL_X18_Y1_N57
\i_e_memory|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~8_combout\ = ( !\washing_machine_address_in[2]~input_o\ & ( (!\washing_machine_address_in[0]~input_o\ & (\washing_machine_address_in[1]~input_o\ & (!\washing_machine_address_in[3]~input_o\ & !\i_e_memory|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[3]~input_o\,
	datad => \i_e_memory|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~8_combout\);

-- Location: LABCELL_X18_Y1_N33
\i_e_memory|ram[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(2) = ( \i_e_memory|ram\(2) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(2) & ( (\i_e_memory|Decoder0~8_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Decoder0~8_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(2),
	combout => \i_e_memory|ram\(2));

-- Location: LABCELL_X18_Y1_N54
\i_e_memory|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~7_combout\ = ( !\washing_machine_address_in[2]~input_o\ & ( (!\washing_machine_address_in[0]~input_o\ & (!\washing_machine_address_in[1]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~7_combout\);

-- Location: LABCELL_X18_Y1_N6
\i_e_memory|ram[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(0) = ( \i_e_memory|ram\(0) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(0) & ( (\reset~input_o\ & \i_e_memory|Decoder0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~7_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(0),
	combout => \i_e_memory|ram\(0));

-- Location: LABCELL_X18_Y1_N39
\i_e_memory|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Mux0~5_combout\ = ( !\washing_machine_address_in[1]~input_o\ & ( ((!\washing_machine_address_in[0]~input_o\ & (((\i_e_memory|ram\(0) & !\washing_machine_address_in[2]~input_o\)))) # (\washing_machine_address_in[0]~input_o\ & 
-- (((\washing_machine_address_in[2]~input_o\)) # (\i_e_memory|ram\(1))))) ) ) # ( \washing_machine_address_in[1]~input_o\ & ( ((!\washing_machine_address_in[0]~input_o\ & (((\i_e_memory|ram\(2) & !\washing_machine_address_in[2]~input_o\)))) # 
-- (\washing_machine_address_in[0]~input_o\ & (((\washing_machine_address_in[2]~input_o\)) # (\i_e_memory|ram\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(1),
	datab => \i_e_memory|ALT_INV_ram\(3),
	datac => \i_e_memory|ALT_INV_ram\(2),
	datad => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datae => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datag => \i_e_memory|ALT_INV_ram\(0),
	combout => \i_e_memory|Mux0~5_combout\);

-- Location: LABCELL_X18_Y1_N30
\i_e_memory|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~3_combout\ = ( \washing_machine_address_in[2]~input_o\ & ( (!\i_e_memory|Mux0~0_combout\ & (!\washing_machine_address_in[1]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & !\washing_machine_address_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[3]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	combout => \i_e_memory|Decoder0~3_combout\);

-- Location: LABCELL_X18_Y1_N24
\i_e_memory|ram[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(4) = ( \i_e_memory|ram\(4) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(4) & ( (\reset~input_o\ & \i_e_memory|Decoder0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~3_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(4),
	combout => \i_e_memory|ram\(4));

-- Location: LABCELL_X18_Y1_N0
\i_e_memory|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Mux0~0_combout\ = ( !\washing_machine_address_in[1]~input_o\ & ( ((!\i_e_memory|Mux0~5_combout\ & (((\i_e_memory|ram\(4) & \washing_machine_address_in[2]~input_o\)))) # (\i_e_memory|Mux0~5_combout\ & 
-- (((!\washing_machine_address_in[2]~input_o\)) # (\i_e_memory|ram\(5))))) ) ) # ( \washing_machine_address_in[1]~input_o\ & ( ((!\i_e_memory|Mux0~5_combout\ & (((\i_e_memory|ram\(6) & \washing_machine_address_in[2]~input_o\)))) # 
-- (\i_e_memory|Mux0~5_combout\ & (((!\washing_machine_address_in[2]~input_o\)) # (\i_e_memory|ram\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(7),
	datab => \i_e_memory|ALT_INV_ram\(5),
	datac => \i_e_memory|ALT_INV_ram\(6),
	datad => \i_e_memory|ALT_INV_Mux0~5_combout\,
	datae => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datag => \i_e_memory|ALT_INV_ram\(4),
	combout => \i_e_memory|Mux0~0_combout\);

-- Location: LABCELL_X19_Y1_N33
\i_e_memory|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Mux0~4_combout\ = ( \washing_machine_address_in[3]~input_o\ & ( \i_e_memory|ram\(8) ) ) # ( !\washing_machine_address_in[3]~input_o\ & ( \i_e_memory|Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(8),
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Mux0~4_combout\);

-- Location: LABCELL_X19_Y1_N12
\i_e_memory|washing_machine_address_available\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|washing_machine_address_available~combout\ = ( \reset~input_o\ & ( !\i_e_memory|Mux0~4_combout\ ) ) # ( !\reset~input_o\ & ( \i_e_memory|washing_machine_address_available~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Mux0~4_combout\,
	datad => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_memory|washing_machine_address_available~combout\);

-- Location: IOIBUF_X89_Y25_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X14_Y0_N52
\password_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(1),
	o => \password_in[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\password_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(0),
	o => \password_in[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N35
\password_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(2),
	o => \password_in[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\password_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(3),
	o => \password_in[3]~input_o\);

-- Location: LABCELL_X17_Y2_N6
\i_e_laundry_fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Equal0~0_combout\ = ( !\password_in[3]~input_o\ & ( (!\password_in[1]~input_o\ & (!\password_in[0]~input_o\ & !\password_in[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_password_in[1]~input_o\,
	datac => \ALT_INV_password_in[0]~input_o\,
	datad => \ALT_INV_password_in[2]~input_o\,
	dataf => \ALT_INV_password_in[3]~input_o\,
	combout => \i_e_laundry_fsm|Equal0~0_combout\);

-- Location: IOIBUF_X18_Y0_N58
\push_password_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_password_button,
	o => \push_password_button~input_o\);

-- Location: IOIBUF_X22_Y0_N18
\push_address_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_address_button,
	o => \push_address_button~input_o\);

-- Location: LABCELL_X17_Y2_N15
\i_e_laundry_fsm|sl_address_button_last_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_address_button_last_state~0_combout\ = ( \reset~input_o\ & ( (!\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ((\i_e_laundry_fsm|sl_address_button_last_state~q\))) # (\i_e_laundry_fsm|sl_present_state.verification_state~q\ & 
-- (\push_address_button~input_o\)) ) ) # ( !\reset~input_o\ & ( \i_e_laundry_fsm|sl_address_button_last_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_push_address_button~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_address_button_last_state~0_combout\);

-- Location: FF_X17_Y2_N17
\i_e_laundry_fsm|sl_address_button_last_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_address_button_last_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_address_button_last_state~q\);

-- Location: LABCELL_X17_Y2_N9
\i_e_laundry_fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~0_combout\ = ( !\i_e_laundry_fsm|sl_address_button_last_state~q\ & ( \push_address_button~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_push_address_button~input_o\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\,
	combout => \i_e_laundry_fsm|Selector3~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\nearby_person_sensor~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nearby_person_sensor,
	o => \nearby_person_sensor~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\washing_machine_done_sensor~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_done_sensor,
	o => \washing_machine_done_sensor~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\start_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_button,
	o => \start_button~input_o\);

-- Location: LABCELL_X18_Y2_N33
\i_e_laundry_fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector8~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.process_state~q\ & ( !\washing_machine_done_sensor~input_o\ ) ) # ( !\i_e_laundry_fsm|sl_present_state.process_state~q\ & ( (!\washing_machine_done_sensor~input_o\ & 
-- \i_e_laundry_fsm|sl_present_state.hold_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_washing_machine_done_sensor~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	combout => \i_e_laundry_fsm|Selector8~0_combout\);

-- Location: FF_X18_Y2_N35
\i_e_laundry_fsm|sl_present_state.hold_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector8~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.hold_state~q\);

-- Location: LABCELL_X17_Y2_N18
\i_e_laundry_fsm|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~3_combout\ = ( \password_in[2]~input_o\ & ( !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( \push_password_button~input_o\ ) ) ) # ( !\password_in[2]~input_o\ & ( !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( 
-- (\push_password_button~input_o\ & (((\password_in[0]~input_o\) # (\password_in[1]~input_o\)) # (\password_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_password_in[3]~input_o\,
	datab => \ALT_INV_password_in[1]~input_o\,
	datac => \ALT_INV_password_in[0]~input_o\,
	datad => \ALT_INV_push_password_button~input_o\,
	datae => \ALT_INV_password_in[2]~input_o\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	combout => \i_e_laundry_fsm|Selector3~3_combout\);

-- Location: LABCELL_X18_Y2_N30
\i_e_laundry_fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~2_combout\ = ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.availability_state~q\ & ((!\start_button~input_o\) # 
-- (!\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start_button~input_o\,
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	combout => \i_e_laundry_fsm|Selector3~2_combout\);

-- Location: LABCELL_X18_Y2_N27
\i_e_laundry_fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~1_combout\ = ( \i_e_memory|washing_machine_address_available~combout\ & ( (\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ & (!\start_button~input_o\ & \i_e_laundry_fsm|sl_present_state.availability_state~q\)) ) ) 
-- # ( !\i_e_memory|washing_machine_address_available~combout\ & ( (\i_e_laundry_fsm|sl_present_state.availability_state~q\ & ((!\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\) # (!\start_button~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	datac => \ALT_INV_start_button~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	dataf => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	combout => \i_e_laundry_fsm|Selector3~1_combout\);

-- Location: LABCELL_X18_Y2_N0
\i_e_laundry_fsm|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~4_combout\ = ( \i_e_laundry_fsm|Selector3~1_combout\ & ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (\i_e_laundry_fsm|Selector3~0_combout\ & ((!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\) # 
-- (\i_e_laundry_fsm|Selector3~3_combout\))) ) ) ) # ( !\i_e_laundry_fsm|Selector3~1_combout\ & ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (\i_e_laundry_fsm|Selector3~0_combout\ & (\i_e_laundry_fsm|Selector3~2_combout\ & 
-- ((!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\) # (\i_e_laundry_fsm|Selector3~3_combout\)))) ) ) ) # ( \i_e_laundry_fsm|Selector3~1_combout\ & ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( 
-- (!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\) # (\i_e_laundry_fsm|Selector3~3_combout\) ) ) ) # ( !\i_e_laundry_fsm|Selector3~1_combout\ & ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (\i_e_laundry_fsm|Selector3~0_combout\ & 
-- (\i_e_laundry_fsm|Selector3~2_combout\ & ((!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\) # (\i_e_laundry_fsm|Selector3~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101110111011101110100000000000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_Selector3~3_combout\,
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\,
	datad => \i_e_laundry_fsm|ALT_INV_Selector3~2_combout\,
	datae => \i_e_laundry_fsm|ALT_INV_Selector3~1_combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	combout => \i_e_laundry_fsm|Selector3~4_combout\);

-- Location: FF_X18_Y2_N2
\i_e_laundry_fsm|sl_present_state.availability_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector3~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.availability_state~q\);

-- Location: LABCELL_X18_Y2_N21
\i_e_laundry_fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector4~0_combout\ = ( \i_e_memory|washing_machine_address_available~combout\ & ( \i_e_laundry_fsm|sl_present_state.availability_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	dataf => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	combout => \i_e_laundry_fsm|Selector4~0_combout\);

-- Location: FF_X18_Y2_N23
\i_e_laundry_fsm|sl_present_state.payment_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector4~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.payment_state~q\);

-- Location: LABCELL_X18_Y2_N51
\i_e_laundry_fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector5~0_combout\ = ( \washing_machine_done_sensor~input_o\ & ( (\i_e_laundry_fsm|sl_present_state.payment_state~q\) # (\i_e_laundry_fsm|sl_present_state.hold_state~q\) ) ) # ( !\washing_machine_done_sensor~input_o\ & ( 
-- \i_e_laundry_fsm|sl_present_state.payment_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\,
	dataf => \ALT_INV_washing_machine_done_sensor~input_o\,
	combout => \i_e_laundry_fsm|Selector5~0_combout\);

-- Location: FF_X18_Y2_N53
\i_e_laundry_fsm|sl_present_state.process_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector5~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.process_state~q\);

-- Location: LABCELL_X18_Y2_N18
\i_e_laundry_fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector6~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.process_state~q\ & ( ((!\start_button~input_o\ & \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\)) # (\washing_machine_done_sensor~input_o\) ) ) # ( 
-- !\i_e_laundry_fsm|sl_present_state.process_state~q\ & ( (!\start_button~input_o\ & \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_done_sensor~input_o\,
	datac => \ALT_INV_start_button~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	combout => \i_e_laundry_fsm|Selector6~0_combout\);

-- Location: FF_X18_Y2_N20
\i_e_laundry_fsm|sl_present_state.finished_processing_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector6~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\);

-- Location: LABCELL_X19_Y2_N45
\i_e_laundry_fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector9~0_combout\ = ( \start_button~input_o\ & ( \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	dataf => \ALT_INV_start_button~input_o\,
	combout => \i_e_laundry_fsm|Selector9~0_combout\);

-- Location: FF_X19_Y2_N47
\i_e_laundry_fsm|sl_present_state.start_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector9~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.start_state~q\);

-- Location: LABCELL_X19_Y2_N21
\i_e_laundry_fsm|sl_used_washing_machines_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.start_state~q\ & ( !\reset~input_o\ $ (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)) ) ) # ( !\i_e_laundry_fsm|sl_present_state.start_state~q\ & ( 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\);

-- Location: FF_X19_Y2_N23
\i_e_laundry_fsm|sl_used_washing_machines_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_used_washing_machines_count\(0));

-- Location: LABCELL_X19_Y2_N33
\i_e_laundry_fsm|sl_used_washing_machines_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ (((!\i_e_laundry_fsm|sl_present_state.start_state~q\) # (!\reset~input_o\))) ) 
-- ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( \i_e_laundry_fsm|sl_used_washing_machines_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\);

-- Location: FF_X19_Y2_N35
\i_e_laundry_fsm|sl_used_washing_machines_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_used_washing_machines_count\(1));

-- Location: LABCELL_X19_Y2_N18
\i_e_laundry_fsm|sl_used_washing_machines_count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(2) $ (((!\i_e_laundry_fsm|sl_present_state.start_state~q\) # ((!\reset~input_o\) # 
-- (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1))))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( \i_e_laundry_fsm|sl_used_washing_machines_count\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\);

-- Location: FF_X19_Y2_N20
\i_e_laundry_fsm|sl_used_washing_machines_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_used_washing_machines_count\(2));

-- Location: LABCELL_X19_Y2_N24
\i_e_laundry_fsm|sl_used_washing_machines_count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( \reset~input_o\ & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)) # ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(1)) 
-- # ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(2)) # (!\i_e_laundry_fsm|sl_present_state.start_state~q\))) ) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( \reset~input_o\ & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & \i_e_laundry_fsm|sl_present_state.start_state~q\))) ) ) ) # ( \i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\);

-- Location: FF_X19_Y2_N26
\i_e_laundry_fsm|sl_used_washing_machines_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_used_washing_machines_count\(3));

-- Location: LABCELL_X19_Y2_N6
\i_e_laundry_fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector7~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	combout => \i_e_laundry_fsm|Selector7~0_combout\);

-- Location: LABCELL_X19_Y2_N9
\i_e_laundry_fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector0~0_combout\ = ( \i_e_laundry_fsm|Selector7~0_combout\ & ( (\i_e_laundry_fsm|sl_present_state.no_action_state~q\) # (\nearby_person_sensor~input_o\) ) ) # ( !\i_e_laundry_fsm|Selector7~0_combout\ & ( 
-- (!\i_e_laundry_fsm|sl_present_state.start_state~q\ & ((\i_e_laundry_fsm|sl_present_state.no_action_state~q\) # (\nearby_person_sensor~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nearby_person_sensor~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_Selector7~0_combout\,
	combout => \i_e_laundry_fsm|Selector0~0_combout\);

-- Location: FF_X19_Y2_N11
\i_e_laundry_fsm|sl_present_state.no_action_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.no_action_state~q\);

-- Location: LABCELL_X17_Y2_N54
\i_e_laundry_fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector1~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( \nearby_person_sensor~input_o\ & ( (!\i_e_laundry_fsm|Equal0~0_combout\) # ((!\push_password_button~input_o\) # 
-- ((!\i_e_laundry_fsm|sl_present_state.no_action_state~q\) # (\i_e_laundry_fsm|sl_password_button_last_state~q\))) ) ) ) # ( !\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( \nearby_person_sensor~input_o\ & ( 
-- !\i_e_laundry_fsm|sl_present_state.no_action_state~q\ ) ) ) # ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( !\nearby_person_sensor~input_o\ & ( (!\i_e_laundry_fsm|Equal0~0_combout\) # ((!\push_password_button~input_o\) # 
-- (\i_e_laundry_fsm|sl_password_button_last_state~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011111110111111111111000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_push_password_button~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	dataf => \ALT_INV_nearby_person_sensor~input_o\,
	combout => \i_e_laundry_fsm|Selector1~0_combout\);

-- Location: FF_X17_Y2_N56
\i_e_laundry_fsm|sl_present_state.user_detect_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.user_detect_state~q\);

-- Location: LABCELL_X18_Y2_N45
\i_e_laundry_fsm|sl_password_button_last_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_password_button_last_state~0_combout\ = ( \reset~input_o\ & ( (!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ((\i_e_laundry_fsm|sl_password_button_last_state~q\))) # (\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & 
-- (\push_password_button~input_o\)) ) ) # ( !\reset~input_o\ & ( \i_e_laundry_fsm|sl_password_button_last_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	datac => \ALT_INV_push_password_button~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_password_button_last_state~0_combout\);

-- Location: FF_X18_Y2_N47
\i_e_laundry_fsm|sl_password_button_last_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_password_button_last_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_password_button_last_state~q\);

-- Location: LABCELL_X18_Y2_N12
\i_e_laundry_fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector2~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( !\i_e_laundry_fsm|Selector3~0_combout\ ) ) ) # ( 
-- !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( (\i_e_laundry_fsm|Equal0~0_combout\ & (\push_password_button~input_o\ & !\i_e_laundry_fsm|sl_password_button_last_state~q\)) ) ) ) # ( 
-- \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( !\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( !\i_e_laundry_fsm|Selector3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000010001000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_push_password_button~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	combout => \i_e_laundry_fsm|Selector2~0_combout\);

-- Location: FF_X18_Y2_N14
\i_e_laundry_fsm|sl_present_state.verification_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector2~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.verification_state~q\);

-- Location: LABCELL_X18_Y2_N24
\i_e_laundry_fsm|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|WideOr10~combout\ = ( !\i_e_laundry_fsm|sl_present_state.hold_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.verification_state~q\ & (!\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ & 
-- !\i_e_laundry_fsm|sl_present_state.availability_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	combout => \i_e_laundry_fsm|WideOr10~combout\);

-- Location: LABCELL_X18_Y2_N42
\i_e_laundry_fsm|WideOr9\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|WideOr9~combout\ = ( !\i_e_laundry_fsm|sl_present_state.process_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ & (!\i_e_laundry_fsm|sl_present_state.hold_state~q\ & 
-- !\i_e_laundry_fsm|sl_present_state.payment_state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	combout => \i_e_laundry_fsm|WideOr9~combout\);

-- Location: LABCELL_X19_Y2_N48
\i_e_laundry_fsm|WideOr11\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|WideOr11~combout\ = ( \i_e_laundry_fsm|sl_present_state.no_action_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.payment_state~q\ & (!\i_e_laundry_fsm|sl_present_state.start_state~q\ & 
-- (!\i_e_laundry_fsm|sl_present_state.verification_state~q\ & !\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\,
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\,
	combout => \i_e_laundry_fsm|WideOr11~combout\);

-- Location: LABCELL_X17_Y2_N51
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( (!\i_e_laundry_fsm|WideOr10~combout\ & \i_e_laundry_fsm|WideOr9~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_laundry_fsm|ALT_INV_WideOr10~combout\,
	datad => \i_e_laundry_fsm|ALT_INV_WideOr9~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X17_Y2_N12
\red_led$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \red_led$latch~combout\ = ( \red_led$latch~combout\ & ( (!\i_e_memory|washing_machine_address_available~combout\) # (!\Mux4~0_combout\) ) ) # ( !\red_led$latch~combout\ & ( (!\i_e_memory|washing_machine_address_available~combout\ & \Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_red_led$latch~combout\,
	combout => \red_led$latch~combout\);

-- Location: LABCELL_X19_Y2_N0
\i_e_7seg_bcd_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux6~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux6~0_combout\);

-- Location: LABCELL_X19_Y2_N3
\i_e_7seg_bcd_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux5~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ 
-- (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	combout => \i_e_7seg_bcd_decoder|Mux5~0_combout\);

-- Location: LABCELL_X19_Y2_N54
\i_e_7seg_bcd_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux4~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux4~0_combout\);

-- Location: LABCELL_X19_Y2_N57
\i_e_7seg_bcd_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux3~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(0))) # (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ (\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	combout => \i_e_7seg_bcd_decoder|Mux3~0_combout\);

-- Location: LABCELL_X19_Y2_N42
\i_e_7seg_bcd_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux2~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(1) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & \i_e_laundry_fsm|sl_used_washing_machines_count\(0)) ) ) # ( 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ((\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) # (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & 
-- (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	combout => \i_e_7seg_bcd_decoder|Mux2~0_combout\);

-- Location: LABCELL_X19_Y2_N36
\i_e_7seg_bcd_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux1~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(2)) # 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(1)))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux1~0_combout\);

-- Location: LABCELL_X19_Y2_N39
\i_e_7seg_bcd_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux0~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(3) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(1))) # (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(1)) # (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011010010111110101101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	combout => \i_e_7seg_bcd_decoder|Mux0~0_combout\);

-- Location: LABCELL_X19_Y2_N12
\i_e_laundry_fsm|sl_present_state.full_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_present_state.full_state~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.full_state~q\ & ( \i_e_laundry_fsm|sl_used_washing_machines_count\(2) ) ) # ( \i_e_laundry_fsm|sl_present_state.full_state~q\ & ( 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(2) ) ) # ( !\i_e_laundry_fsm|sl_present_state.full_state~q\ & ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- (\i_e_laundry_fsm|sl_present_state.start_state~q\ & (\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & !\i_e_laundry_fsm|sl_used_washing_machines_count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.full_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	combout => \i_e_laundry_fsm|sl_present_state.full_state~0_combout\);

-- Location: FF_X19_Y2_N13
\i_e_laundry_fsm|sl_present_state.full_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|sl_present_state.full_state~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.full_state~q\);

-- Location: LABCELL_X19_Y2_N30
\i_e_laundry_fsm|state_choice[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|state_choice\(3) = ( !\i_e_laundry_fsm|sl_present_state.full_state~q\ & ( !\i_e_laundry_fsm|sl_present_state.start_state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.full_state~q\,
	combout => \i_e_laundry_fsm|state_choice\(3));

-- Location: LABCELL_X17_Y2_N45
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \i_e_laundry_fsm|WideOr10~combout\ & ( (\i_e_laundry_fsm|WideOr11~combout\ & (!\i_e_laundry_fsm|state_choice\(3) $ (!\i_e_laundry_fsm|WideOr9~combout\))) ) ) # ( !\i_e_laundry_fsm|WideOr10~combout\ & ( 
-- (\i_e_laundry_fsm|state_choice\(3) & !\i_e_laundry_fsm|WideOr9~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datad => \i_e_laundry_fsm|ALT_INV_WideOr9~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_WideOr10~combout\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X17_Y2_N42
\sl_word_choice[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- sl_word_choice(2) = ( sl_word_choice(2) & ( (\Mux4~0_combout\) # (\Mux10~0_combout\) ) ) # ( !sl_word_choice(2) & ( (\Mux10~0_combout\ & !\Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Mux4~0_combout\,
	dataf => ALT_INV_sl_word_choice(2),
	combout => sl_word_choice(2));

-- Location: LABCELL_X19_Y1_N6
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \i_e_laundry_fsm|WideOr9~combout\ & ( (!\i_e_laundry_fsm|WideOr10~combout\) # ((!\i_e_laundry_fsm|WideOr11~combout\) # (!\i_e_laundry_fsm|state_choice\(3))) ) ) # ( !\i_e_laundry_fsm|WideOr9~combout\ & ( 
-- (!\i_e_laundry_fsm|state_choice\(3)) # ((\i_e_laundry_fsm|WideOr10~combout\ & \i_e_laundry_fsm|WideOr11~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001111111101111111011110001111100011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_WideOr10~combout\,
	datab => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr9~combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X17_Y2_N39
\sl_word_choice[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- sl_word_choice(0) = ( \Mux4~0_combout\ & ( sl_word_choice(0) ) ) # ( !\Mux4~0_combout\ & ( sl_word_choice(0) & ( !\Mux7~0_combout\ ) ) ) # ( !\Mux4~0_combout\ & ( !sl_word_choice(0) & ( !\Mux7~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => ALT_INV_sl_word_choice(0),
	combout => sl_word_choice(0));

-- Location: LABCELL_X17_Y2_N48
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \i_e_laundry_fsm|WideOr10~combout\ & ( (!\i_e_laundry_fsm|WideOr11~combout\ & (!\i_e_laundry_fsm|WideOr9~combout\ & \i_e_laundry_fsm|state_choice\(3))) # (\i_e_laundry_fsm|WideOr11~combout\ & (\i_e_laundry_fsm|WideOr9~combout\ & 
-- !\i_e_laundry_fsm|state_choice\(3))) ) ) # ( !\i_e_laundry_fsm|WideOr10~combout\ & ( (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000010001100010000001000110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datab => \i_e_laundry_fsm|ALT_INV_WideOr9~combout\,
	datad => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	dataf => \i_e_laundry_fsm|ALT_INV_WideOr10~combout\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X17_Y2_N33
\sl_word_choice[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- sl_word_choice(1) = ( \Mux4~0_combout\ & ( sl_word_choice(1) ) ) # ( !\Mux4~0_combout\ & ( \Mux9~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(1),
	datac => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => sl_word_choice(1));

-- Location: LABCELL_X18_Y2_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.payment_state~q\ & ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.availability_state~q\ & (!\i_e_laundry_fsm|sl_present_state.hold_state~q\ & 
-- !\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\)) ) ) ) # ( !\i_e_laundry_fsm|sl_present_state.payment_state~q\ & ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.availability_state~q\ & 
-- (!\i_e_laundry_fsm|sl_present_state.hold_state~q\ & (\i_e_laundry_fsm|sl_present_state.process_state~q\ & !\i_e_laundry_fsm|sl_present_state.finished_processing_state~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.finished_processing_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X18_Y2_N54
\i_e_7seg_display|hex_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_1~0_combout\ = ( \Mux0~0_combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # ((!\i_e_laundry_fsm|WideOr11~combout\) # (!sl_word_choice(0) $ (!sl_word_choice(1)))) ) ) ) # ( !\Mux0~0_combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # (!sl_word_choice(0) $ (!sl_word_choice(1))) ) ) ) # ( \Mux0~0_combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # (!sl_word_choice(0) $ (!sl_word_choice(1))) ) ) ) # ( 
-- !\Mux0~0_combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # (!sl_word_choice(0) $ (!sl_word_choice(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111111010101011111111101010101111111110101110111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => ALT_INV_sl_word_choice(0),
	datad => ALT_INV_sl_word_choice(1),
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_1~0_combout\);

-- Location: FF_X17_Y2_N37
\i_e_7seg_display|hex_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \i_e_7seg_display|hex_1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(0));

-- Location: FF_X18_Y2_N40
\i_e_7seg_display|hex_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \i_e_7seg_display|hex_1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(1));

-- Location: MLABCELL_X21_Y2_N30
\i_e_7seg_display|hex_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_1~1_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # ((!sl_word_choice(0)) # (!sl_word_choice(1))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # ((!sl_word_choice(0)) # ((!sl_word_choice(1)) # (\Mux0~0_combout\))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # 
-- ((!sl_word_choice(0)) # (!sl_word_choice(1))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2)) # ((!sl_word_choice(0)) # (!sl_word_choice(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => ALT_INV_sl_word_choice(0),
	datac => \ALT_INV_Mux0~0_combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_1~1_combout\);

-- Location: FF_X21_Y2_N31
\i_e_7seg_display|hex_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(2));

-- Location: FF_X18_Y2_N55
\i_e_7seg_display|hex_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(3));

-- Location: LABCELL_X18_Y2_N9
\i_e_7seg_display|hex_1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_1~2_combout\ = ( \Mux0~0_combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(2)) # ((!\i_e_laundry_fsm|WideOr11~combout\) # (sl_word_choice(1)))) # (sl_word_choice(0)) ) ) ) # ( !\Mux0~0_combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(2)) # (sl_word_choice(1))) # (sl_word_choice(0)) ) ) ) # ( \Mux0~0_combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(2)) # (sl_word_choice(1))) # (sl_word_choice(0)) ) ) ) # ( 
-- !\Mux0~0_combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(2)) # (sl_word_choice(1))) # (sl_word_choice(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111111111110111011111111111011101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(0),
	datab => ALT_INV_sl_word_choice(2),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \ALT_INV_Mux0~0_combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_1~2_combout\);

-- Location: FF_X18_Y2_N7
\i_e_7seg_display|hex_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \i_e_7seg_display|hex_1~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(4));

-- Location: FF_X18_Y2_N11
\i_e_7seg_display|hex_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_1\(6));

-- Location: MLABCELL_X21_Y2_N36
\i_e_7seg_display|hex_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~0_combout\ = ( sl_word_choice(2) & ( sl_word_choice(1) & ( (!sl_word_choice(0)) # ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) ) ) ) # ( !sl_word_choice(2) & ( sl_word_choice(1) & 
-- ( ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) # (sl_word_choice(0)) ) ) ) # ( sl_word_choice(2) & ( !sl_word_choice(1) & ( (\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & 
-- \i_e_laundry_fsm|state_choice\(3))) ) ) ) # ( !sl_word_choice(2) & ( !sl_word_choice(1) & ( (!sl_word_choice(0)) # ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100000001000000010000000100111111111111111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datad => ALT_INV_sl_word_choice(0),
	datae => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|hex_2~0_combout\);

-- Location: FF_X21_Y2_N37
\i_e_7seg_display|hex_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(0));

-- Location: MLABCELL_X21_Y2_N42
\i_e_7seg_display|hex_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~1_combout\ = ( sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(1)) # ((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\))) # (sl_word_choice(0)) ) ) ) # ( !sl_word_choice(2) & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)) # (sl_word_choice(1))) ) ) ) # ( sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(1)) # 
-- (sl_word_choice(0)) ) ) ) # ( !sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111111111110011001111011100111111111111111101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => ALT_INV_sl_word_choice(2),
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_2~1_combout\);

-- Location: FF_X21_Y2_N43
\i_e_7seg_display|hex_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(1));

-- Location: MLABCELL_X21_Y2_N48
\i_e_7seg_display|hex_2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~2_combout\ = ( sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( (\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\) ) ) ) # ( !sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( ((!sl_word_choice(1)) # 
-- ((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\))) # (sl_word_choice(0)) ) ) ) # ( !sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(1)) # (sl_word_choice(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011000000000000000011111111011100110101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => ALT_INV_sl_word_choice(2),
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_2~2_combout\);

-- Location: FF_X21_Y2_N49
\i_e_7seg_display|hex_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(2));

-- Location: MLABCELL_X21_Y2_N54
\i_e_7seg_display|hex_2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~3_combout\ = ( sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( ((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)) # (sl_word_choice(1)) ) ) ) # ( !sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( 
-- (!sl_word_choice(0)) # (((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)) # (sl_word_choice(1))) ) ) ) # ( sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( sl_word_choice(1) ) ) ) # ( !sl_word_choice(2) & ( 
-- !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111000000001111111111011100111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => ALT_INV_sl_word_choice(2),
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_2~3_combout\);

-- Location: FF_X21_Y2_N55
\i_e_7seg_display|hex_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(3));

-- Location: LABCELL_X18_Y3_N3
\i_e_7seg_display|hex_2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~4_combout\ = ( \i_e_laundry_fsm|state_choice\(3) & ( \Mux0~0_combout\ & ( (!\i_e_laundry_fsm|WideOr11~combout\) # ((!sl_word_choice(0)) # (sl_word_choice(1))) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( \Mux0~0_combout\ & ( 
-- (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) ) # ( \i_e_laundry_fsm|state_choice\(3) & ( !\Mux0~0_combout\ & ( (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( !\Mux0~0_combout\ & ( (!sl_word_choice(0)) # 
-- (sl_word_choice(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => ALT_INV_sl_word_choice(0),
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \i_e_7seg_display|hex_2~4_combout\);

-- Location: FF_X18_Y3_N4
\i_e_7seg_display|hex_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(4));

-- Location: MLABCELL_X21_Y2_N0
\i_e_7seg_display|hex_2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~5_combout\ = ( sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)) # (sl_word_choice(1))) ) ) ) # ( !sl_word_choice(2) & ( 
-- \i_e_laundry_fsm|state_choice\(3) ) ) # ( sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) ) # ( !sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001111111111111111111111111101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => ALT_INV_sl_word_choice(2),
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_2~5_combout\);

-- Location: FF_X21_Y2_N1
\i_e_7seg_display|hex_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(5));

-- Location: MLABCELL_X21_Y2_N6
\i_e_7seg_display|hex_2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_2~6_combout\ = ( sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) ) ) # ( !sl_word_choice(2) & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)) # 
-- (sl_word_choice(1))) ) ) ) # ( sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) ) ) # ( !sl_word_choice(2) & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0)) # (sl_word_choice(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111111111111111111111011100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => ALT_INV_sl_word_choice(2),
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_2~6_combout\);

-- Location: FF_X21_Y2_N7
\i_e_7seg_display|hex_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_2\(6));

-- Location: MLABCELL_X21_Y2_N39
\i_e_7seg_display|hex_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~0_combout\ = ( sl_word_choice(1) & ( sl_word_choice(2) & ( (!sl_word_choice(0)) # ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) ) ) ) # ( !sl_word_choice(1) & ( sl_word_choice(2) & 
-- ( ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) # (sl_word_choice(0)) ) ) ) # ( sl_word_choice(1) & ( !sl_word_choice(2) & ( (\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & 
-- \i_e_laundry_fsm|state_choice\(3))) ) ) ) # ( !sl_word_choice(1) & ( !sl_word_choice(2) & ( (!sl_word_choice(0)) # ((\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\ & \i_e_laundry_fsm|state_choice\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110100000000000100010000001111010011111111000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datac => ALT_INV_sl_word_choice(0),
	datad => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datae => ALT_INV_sl_word_choice(1),
	dataf => ALT_INV_sl_word_choice(2),
	combout => \i_e_7seg_display|hex_3~0_combout\);

-- Location: FF_X21_Y2_N40
\i_e_7seg_display|hex_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(0));

-- Location: MLABCELL_X21_Y2_N12
\i_e_7seg_display|hex_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~1_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0) & ((!sl_word_choice(2)) # (!sl_word_choice(1)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0) & (!\Mux0~0_combout\ & ((!sl_word_choice(2)) # (!sl_word_choice(1))))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0) & 
-- ((!sl_word_choice(2)) # (!sl_word_choice(1)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(0) & ((!sl_word_choice(2)) # (!sl_word_choice(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011000000100000001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => ALT_INV_sl_word_choice(0),
	datac => \ALT_INV_Mux0~0_combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_3~1_combout\);

-- Location: FF_X21_Y2_N13
\i_e_7seg_display|hex_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(1));

-- Location: MLABCELL_X21_Y2_N18
\i_e_7seg_display|hex_3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~2_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2) & ((!sl_word_choice(1)) # (sl_word_choice(0)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2) & (!\Mux0~0_combout\ & ((!sl_word_choice(1)) # (sl_word_choice(0))))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2) & 
-- ((!sl_word_choice(1)) # (sl_word_choice(0)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( (!sl_word_choice(2) & ((!sl_word_choice(1)) # (sl_word_choice(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010101010100010001010100000001000001010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => ALT_INV_sl_word_choice(0),
	datac => \ALT_INV_Mux0~0_combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_3~2_combout\);

-- Location: FF_X21_Y2_N19
\i_e_7seg_display|hex_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(2));

-- Location: MLABCELL_X21_Y2_N24
\i_e_7seg_display|hex_3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~3_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \i_e_laundry_fsm|state_choice\(3) & ( !sl_word_choice(2) $ (((sl_word_choice(1)) # (sl_word_choice(0)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( (!\Mux0~0_combout\ & (!sl_word_choice(2) $ (((sl_word_choice(1)) # (sl_word_choice(0)))))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( !sl_word_choice(2) $ 
-- (((sl_word_choice(1)) # (sl_word_choice(0)))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( !\i_e_laundry_fsm|state_choice\(3) & ( !sl_word_choice(2) $ (((sl_word_choice(1)) # (sl_word_choice(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101010101100110010101010110010000010100001001100101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => ALT_INV_sl_word_choice(0),
	datac => \ALT_INV_Mux0~0_combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	combout => \i_e_7seg_display|hex_3~3_combout\);

-- Location: FF_X21_Y2_N25
\i_e_7seg_display|hex_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(3));

-- Location: LABCELL_X18_Y3_N36
\i_e_7seg_display|hex_3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~4_combout\ = ( \i_e_laundry_fsm|state_choice\(3) & ( \Mux0~0_combout\ & ( (\i_e_laundry_fsm|WideOr11~combout\ & ((!sl_word_choice(2) & (!sl_word_choice(0) & !sl_word_choice(1))) # (sl_word_choice(2) & (!sl_word_choice(0) $ 
-- (!sl_word_choice(1)))))) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( \Mux0~0_combout\ & ( (!sl_word_choice(2) & (!sl_word_choice(0) & !sl_word_choice(1))) # (sl_word_choice(2) & (!sl_word_choice(0) $ (!sl_word_choice(1)))) ) ) ) # ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( !\Mux0~0_combout\ & ( (!sl_word_choice(2) & (!sl_word_choice(0) & !sl_word_choice(1))) # (sl_word_choice(2) & (!sl_word_choice(0) $ (!sl_word_choice(1)))) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( 
-- !\Mux0~0_combout\ & ( (!sl_word_choice(2) & (!sl_word_choice(0) & !sl_word_choice(1))) # (sl_word_choice(2) & (!sl_word_choice(0) $ (!sl_word_choice(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101000100100110010100010010011001010001000000100100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => ALT_INV_sl_word_choice(0),
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => ALT_INV_sl_word_choice(1),
	datae => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \i_e_7seg_display|hex_3~4_combout\);

-- Location: FF_X18_Y3_N37
\i_e_7seg_display|hex_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(4));

-- Location: LABCELL_X18_Y3_N12
\i_e_7seg_display|hex_3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~5_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \Mux0~0_combout\ & ( (!sl_word_choice(1)) # ((sl_word_choice(2) & !sl_word_choice(0))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( \Mux0~0_combout\ & ( 
-- (!\i_e_laundry_fsm|state_choice\(3) & ((!sl_word_choice(1)) # ((sl_word_choice(2) & !sl_word_choice(0))))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\Mux0~0_combout\ & ( (!sl_word_choice(1)) # ((sl_word_choice(2) & !sl_word_choice(0))) ) ) ) # ( 
-- !\i_e_laundry_fsm|WideOr11~combout\ & ( !\Mux0~0_combout\ & ( (!sl_word_choice(1)) # ((sl_word_choice(2) & !sl_word_choice(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110000111101011111000011000100110000001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datac => ALT_INV_sl_word_choice(1),
	datad => ALT_INV_sl_word_choice(0),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \i_e_7seg_display|hex_3~5_combout\);

-- Location: FF_X18_Y3_N13
\i_e_7seg_display|hex_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(5));

-- Location: LABCELL_X18_Y3_N18
\i_e_7seg_display|hex_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_3~6_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ & ( \Mux0~0_combout\ & ( (!sl_word_choice(0)) # (!sl_word_choice(2) $ (!sl_word_choice(1))) ) ) ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( \Mux0~0_combout\ & ( 
-- (!\i_e_laundry_fsm|state_choice\(3) & ((!sl_word_choice(0)) # (!sl_word_choice(2) $ (!sl_word_choice(1))))) ) ) ) # ( \i_e_laundry_fsm|WideOr11~combout\ & ( !\Mux0~0_combout\ & ( (!sl_word_choice(0)) # (!sl_word_choice(2) $ (!sl_word_choice(1))) ) ) ) # ( 
-- !\i_e_laundry_fsm|WideOr11~combout\ & ( !\Mux0~0_combout\ & ( (!sl_word_choice(0)) # (!sl_word_choice(2) $ (!sl_word_choice(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011010111111110101101011001100010010001111111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datab => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datac => ALT_INV_sl_word_choice(1),
	datad => ALT_INV_sl_word_choice(0),
	datae => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \i_e_7seg_display|hex_3~6_combout\);

-- Location: FF_X18_Y3_N19
\i_e_7seg_display|hex_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_3\(6));

-- Location: LABCELL_X17_Y2_N27
\i_e_7seg_display|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux10~0_combout\ = ( sl_word_choice(1) & ( (!sl_word_choice(0) & sl_word_choice(2)) ) ) # ( !sl_word_choice(1) & ( (!sl_word_choice(0) & !sl_word_choice(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sl_word_choice(0),
	datac => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux10~0_combout\);

-- Location: FF_X17_Y2_N29
\i_e_7seg_display|hex_4[0]~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[0]~19_q\);

-- Location: IOIBUF_X16_Y0_N18
\coin_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(0),
	o => \coin_in[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N75
\coin_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(1),
	o => \coin_in[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\coin_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(3),
	o => \coin_in[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\coin_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(2),
	o => \coin_in[2]~input_o\);

-- Location: LABCELL_X17_Y4_N9
\i_e_payment_fsm|sl_coin_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state~0_combout\ = ( !\coin_in[1]~input_o\ & ( (!\coin_in[0]~input_o\ & (\coin_in[2]~input_o\ & !\coin_in[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|sl_coin_state~0_combout\);

-- Location: MLABCELL_X15_Y4_N21
\i_e_payment_fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Equal0~0_combout\ = ( !\coin_in[2]~input_o\ & ( (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|Equal0~0_combout\);

-- Location: MLABCELL_X15_Y4_N18
\i_e_payment_fsm|sl_coin_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state~1_combout\ = ( \coin_in[2]~input_o\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\)) ) ) # ( !\coin_in[2]~input_o\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ $ (!\coin_in[1]~input_o\))) 
-- # (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|sl_coin_state~1_combout\);

-- Location: LABCELL_X18_Y4_N21
\i_e_payment_fsm|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector44~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[3]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	combout => \i_e_payment_fsm|Selector44~0_combout\);

-- Location: LABCELL_X19_Y4_N18
\i_e_payment_fsm|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector56~0_combout\ = ( \coin_in[2]~input_o\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & (((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)) # 
-- (\coin_in[0]~input_o\))) ) ) ) # ( !\coin_in[2]~input_o\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\))) # 
-- (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ((!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\)) # (\coin_in[0]~input_o\))) ) ) ) # ( \coin_in[2]~input_o\ & ( !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( 
-- (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & (((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)) # (\coin_in[0]~input_o\))) ) ) ) # ( !\coin_in[2]~input_o\ & ( !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( 
-- (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ((!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100010101000101010101010101110001000101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \ALT_INV_coin_in[2]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	combout => \i_e_payment_fsm|Selector56~0_combout\);

-- Location: LABCELL_X16_Y4_N30
\i_e_payment_fsm|sl_coin_state.ten_cents_842\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector56~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector56~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\);

-- Location: MLABCELL_X15_Y4_N9
\i_e_payment_fsm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Equal1~0_combout\ = ( !\coin_in[2]~input_o\ & ( (\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[1]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|Equal1~0_combout\);

-- Location: MLABCELL_X15_Y4_N54
\i_e_payment_fsm|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector54~0_combout\ = ( \i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state~1_combout\ & ( (\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & \i_e_payment_fsm|Equal1~0_combout\) ) ) ) # ( 
-- \i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state~1_combout\ & ( (((\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111011101110111111100000000000011110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	combout => \i_e_payment_fsm|Selector54~0_combout\);

-- Location: LABCELL_X17_Y4_N57
\i_e_payment_fsm|sl_coin_state.twenty_cents_834\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ = ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( (\i_e_payment_fsm|Selector54~0_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector54~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector54~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\);

-- Location: LABCELL_X17_Y4_N48
\i_e_payment_fsm|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector44~1_combout\ = ( \i_e_payment_fsm|Selector44~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) # ( !\i_e_payment_fsm|Selector44~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- ((!\i_e_payment_fsm|sl_coin_state~1_combout\ & ((\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\) # (\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\)))) # (\i_e_payment_fsm|sl_coin_state~0_combout\) ) ) ) # ( 
-- \i_e_payment_fsm|Selector44~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) # ( !\i_e_payment_fsm|Selector44~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- (!\i_e_payment_fsm|sl_coin_state~1_combout\ & ((\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\) # (\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100111111111111111101001100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector44~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	combout => \i_e_payment_fsm|Selector44~1_combout\);

-- Location: LABCELL_X18_Y4_N54
\i_e_payment_fsm|sl_coin_state.seventy_cents_794\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector44~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector44~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\);

-- Location: MLABCELL_X15_Y4_N24
\i_e_payment_fsm|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector52~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # 
-- ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\))) # (\i_e_payment_fsm|Equal0~0_combout\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) ) ) ) # ( 
-- \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) # 
-- (\i_e_payment_fsm|Equal0~0_combout\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & 
-- \i_e_payment_fsm|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111111111111000100011111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datab => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector52~0_combout\);

-- Location: LABCELL_X17_Y4_N54
\i_e_payment_fsm|sl_coin_state.thirty_cents_826\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector52~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector52~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\);

-- Location: LABCELL_X19_Y4_N9
\i_e_payment_fsm|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector42~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[0]~input_o\)))) # (\coin_in[1]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( (!\coin_in[2]~input_o\ 
-- & ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)) # 
-- (\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & (\coin_in[1]~input_o\ & !\coin_in[3]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000010010111011111111001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	combout => \i_e_payment_fsm|Selector42~0_combout\);

-- Location: LABCELL_X19_Y4_N42
\i_e_payment_fsm|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector42~1_combout\ = ( \i_e_payment_fsm|Selector42~0_combout\ ) # ( !\i_e_payment_fsm|Selector42~0_combout\ & ( (!\i_e_payment_fsm|Equal0~0_combout\ & (((\i_e_payment_fsm|sl_coin_state~0_combout\ & 
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\)))) # (\i_e_payment_fsm|Equal0~0_combout\ & (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector42~0_combout\,
	combout => \i_e_payment_fsm|Selector42~1_combout\);

-- Location: LABCELL_X18_Y4_N57
\i_e_payment_fsm|sl_coin_state.eighty_cents_786\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ = ( \i_e_payment_fsm|Selector42~1_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\) ) ) # ( !\i_e_payment_fsm|Selector42~1_combout\ & ( 
-- (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector42~1_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\);

-- Location: LABCELL_X16_Y4_N12
\i_e_payment_fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[2]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	combout => \i_e_payment_fsm|Selector5~0_combout\);

-- Location: LABCELL_X17_Y4_N3
\i_e_payment_fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (!\coin_in[0]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & 
-- \coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector5~1_combout\);

-- Location: LABCELL_X16_Y4_N21
\i_e_payment_fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~2_combout\ = ( \i_e_payment_fsm|sl_coin_state~0_combout\ & ( ((\i_e_payment_fsm|Selector5~1_combout\) # (\i_e_payment_fsm|Selector5~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state~0_combout\ & ( (\i_e_payment_fsm|Selector5~1_combout\) # (\i_e_payment_fsm|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector5~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector5~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	combout => \i_e_payment_fsm|Selector5~2_combout\);

-- Location: LABCELL_X16_Y4_N54
\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ = ( \i_e_payment_fsm|Selector5~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector5~2_combout\ & ( (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector5~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\);

-- Location: LABCELL_X17_Y4_N36
\i_e_payment_fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[0]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- \coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000001000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector7~1_combout\);

-- Location: LABCELL_X17_Y4_N45
\i_e_payment_fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[0]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[0]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[0]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[0]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[0]~input_o\) # 
-- (\coin_in[1]~input_o\)) # (\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector7~0_combout\);

-- Location: LABCELL_X16_Y4_N48
\i_e_payment_fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~2_combout\ = ( \i_e_payment_fsm|Selector7~0_combout\ ) # ( !\i_e_payment_fsm|Selector7~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # 
-- (\i_e_payment_fsm|Selector7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector7~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector7~0_combout\,
	combout => \i_e_payment_fsm|Selector7~2_combout\);

-- Location: LABCELL_X17_Y4_N33
\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector7~2_combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (\i_e_payment_fsm|Selector7~2_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector7~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\);

-- Location: MLABCELL_X15_Y4_N36
\i_e_payment_fsm|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector50~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (((!\i_e_payment_fsm|sl_coin_state~1_combout\ & 
-- \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\)) # (\i_e_payment_fsm|Equal1~0_combout\)) # (\i_e_payment_fsm|Equal0~0_combout\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\i_e_payment_fsm|sl_coin_state~1_combout\ & \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\)) # (\i_e_payment_fsm|Equal0~0_combout\) ) ) ) # ( 
-- \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\i_e_payment_fsm|sl_coin_state~1_combout\ & \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\)) # 
-- (\i_e_payment_fsm|Equal1~0_combout\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\i_e_payment_fsm|sl_coin_state~1_combout\ & 
-- \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000101111111100101111001011110010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector50~0_combout\);

-- Location: LABCELL_X16_Y4_N39
\i_e_payment_fsm|sl_coin_state.fourty_cents_818\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector50~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector50~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\);

-- Location: LABCELL_X19_Y4_N6
\i_e_payment_fsm|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector40~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[0]~input_o\)))) # (\coin_in[1]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( 
-- (!\coin_in[2]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[3]~input_o\)) # (\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- (!\coin_in[3]~input_o\ & \coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000010010111011111111001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector40~0_combout\);

-- Location: LABCELL_X19_Y4_N27
\i_e_payment_fsm|Selector40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector40~1_combout\ = ( \i_e_payment_fsm|Selector40~0_combout\ ) # ( !\i_e_payment_fsm|Selector40~0_combout\ & ( (!\i_e_payment_fsm|sl_coin_state~0_combout\ & (((\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & 
-- \i_e_payment_fsm|Equal0~0_combout\)))) # (\i_e_payment_fsm|sl_coin_state~0_combout\ & (((\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & \i_e_payment_fsm|Equal0~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector40~0_combout\,
	combout => \i_e_payment_fsm|Selector40~1_combout\);

-- Location: LABCELL_X18_Y4_N3
\i_e_payment_fsm|sl_coin_state.ninety_cents_778\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector40~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector40~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\);

-- Location: LABCELL_X18_Y4_N33
\i_e_payment_fsm|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ 
-- $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector9~1_combout\);

-- Location: LABCELL_X19_Y4_N30
\i_e_payment_fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[2]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector9~0_combout\);

-- Location: LABCELL_X19_Y4_N39
\i_e_payment_fsm|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~2_combout\ = ( \i_e_payment_fsm|Selector9~0_combout\ ) # ( !\i_e_payment_fsm|Selector9~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\)) # 
-- (\i_e_payment_fsm|Selector9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector9~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector9~0_combout\,
	combout => \i_e_payment_fsm|Selector9~2_combout\);

-- Location: LABCELL_X19_Y4_N45
\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ = ( \i_e_payment_fsm|Selector9~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector9~2_combout\ & ( (\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & \i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector9~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\);

-- Location: LABCELL_X18_Y4_N27
\i_e_payment_fsm|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ 
-- $ (!\coin_in[0]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & 
-- \coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector11~1_combout\);

-- Location: LABCELL_X19_Y4_N33
\i_e_payment_fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[2]~input_o\) # 
-- (\coin_in[1]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	combout => \i_e_payment_fsm|Selector11~0_combout\);

-- Location: LABCELL_X19_Y4_N15
\i_e_payment_fsm|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~2_combout\ = ( \i_e_payment_fsm|Selector11~0_combout\ ) # ( !\i_e_payment_fsm|Selector11~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # 
-- (\i_e_payment_fsm|Selector11~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector11~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector11~0_combout\,
	combout => \i_e_payment_fsm|Selector11~2_combout\);

-- Location: LABCELL_X18_Y4_N45
\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector11~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector11~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\);

-- Location: LABCELL_X18_Y4_N12
\i_e_payment_fsm|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[0]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[0]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( 
-- (!\coin_in[2]~input_o\ & ((!\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[0]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[3]~input_o\) # 
-- (\coin_in[0]~input_o\)) # (\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- (!\coin_in[0]~input_o\ & \coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000010010111011111111001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	combout => \i_e_payment_fsm|Selector19~0_combout\);

-- Location: LABCELL_X18_Y4_N24
\i_e_payment_fsm|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ 
-- $ (!\coin_in[0]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & (\coin_in[0]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000001000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	combout => \i_e_payment_fsm|Selector17~1_combout\);

-- Location: LABCELL_X16_Y4_N15
\i_e_payment_fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[2]~input_o\) # 
-- (\coin_in[1]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	combout => \i_e_payment_fsm|Selector17~0_combout\);

-- Location: LABCELL_X16_Y4_N36
\i_e_payment_fsm|Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~2_combout\ = ( \i_e_payment_fsm|Selector17~0_combout\ ) # ( !\i_e_payment_fsm|Selector17~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # 
-- (\i_e_payment_fsm|Selector17~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector17~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector17~0_combout\,
	combout => \i_e_payment_fsm|Selector17~2_combout\);

-- Location: LABCELL_X16_Y4_N51
\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( (\i_e_payment_fsm|Selector17~2_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector17~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector17~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\);

-- Location: LABCELL_X18_Y4_N30
\i_e_payment_fsm|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (!\coin_in[0]~input_o\ $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & 
-- (!\coin_in[3]~input_o\ & \coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & 
-- (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	combout => \i_e_payment_fsm|Selector19~1_combout\);

-- Location: LABCELL_X18_Y4_N9
\i_e_payment_fsm|Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~2_combout\ = ( \i_e_payment_fsm|Selector19~1_combout\ ) # ( !\i_e_payment_fsm|Selector19~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\)) # 
-- (\i_e_payment_fsm|Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector19~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector19~1_combout\,
	combout => \i_e_payment_fsm|Selector19~2_combout\);

-- Location: LABCELL_X18_Y4_N48
\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ = ( \i_e_payment_fsm|Selector19~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector19~2_combout\ & ( (\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & \i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector19~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\);

-- Location: LABCELL_X17_Y4_N30
\i_e_payment_fsm|Selector58~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~2_combout\ = ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	combout => \i_e_payment_fsm|Selector58~2_combout\);

-- Location: LABCELL_X17_Y4_N6
\i_e_payment_fsm|Selector58~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~4_combout\ = ( !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & 
-- !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	combout => \i_e_payment_fsm|Selector58~4_combout\);

-- Location: LABCELL_X16_Y4_N9
\i_e_payment_fsm|Selector58~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~1_combout\ = ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & 
-- !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector58~1_combout\);

-- Location: LABCELL_X17_Y4_N27
\i_e_payment_fsm|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector39~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	combout => \i_e_payment_fsm|Selector39~0_combout\);

-- Location: LABCELL_X16_Y3_N9
\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (\i_e_payment_fsm|Selector39~0_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector39~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector39~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\);

-- Location: LABCELL_X16_Y4_N3
\i_e_payment_fsm|Selector58~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~3_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (\i_e_payment_fsm|Selector58~0_combout\ & (!\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & (\i_e_payment_fsm|Selector58~1_combout\ 
-- & !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector58~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|Selector58~3_combout\);

-- Location: LABCELL_X16_Y4_N42
\i_e_payment_fsm|Selector58~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~5_combout\ = ( \i_e_payment_fsm|Selector58~3_combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( (\i_e_payment_fsm|Selector58~2_combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & (\i_e_payment_fsm|Selector58~4_combout\ & !\i_e_payment_fsm|sl_coin_state~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector58~2_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector58~4_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector58~3_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	combout => \i_e_payment_fsm|Selector58~5_combout\);

-- Location: LABCELL_X16_Y4_N6
\i_e_payment_fsm|sl_coin_state.zero_cent_850\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ = ( \i_e_payment_fsm|Selector58~5_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\) ) ) # ( !\i_e_payment_fsm|Selector58~5_combout\ & ( 
-- (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector58~5_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\);

-- Location: LABCELL_X19_Y4_N48
\i_e_payment_fsm|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector48~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[2]~input_o\))) # 
-- (\coin_in[3]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[0]~input_o\)))) # (\coin_in[1]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\coin_in[3]~input_o\ 
-- & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & \coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\coin_in[3]~input_o\ & 
-- ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)) # 
-- (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111100000000100000001001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector48~0_combout\);

-- Location: LABCELL_X19_Y4_N57
\i_e_payment_fsm|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector48~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\)) # (\i_e_payment_fsm|Selector48~0_combout\)) # 
-- (\i_e_payment_fsm|Equal0~0_combout\) ) ) # ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( ((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\)) # (\i_e_payment_fsm|Selector48~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector48~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector48~1_combout\);

-- Location: LABCELL_X19_Y4_N24
\i_e_payment_fsm|sl_coin_state.fifty_cents_810\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector48~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector48~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\);

-- Location: LABCELL_X19_Y4_N51
\i_e_payment_fsm|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector46~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( ((!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[2]~input_o\))) # 
-- (\coin_in[3]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[0]~input_o\)))) # (\coin_in[1]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (!\coin_in[3]~input_o\ 
-- & (!\coin_in[0]~input_o\ & (\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (!\coin_in[3]~input_o\ & 
-- ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)) # 
-- (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111100001000000000001001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector46~0_combout\);

-- Location: LABCELL_X19_Y4_N54
\i_e_payment_fsm|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector46~1_combout\ = ( \i_e_payment_fsm|Selector46~0_combout\ ) # ( !\i_e_payment_fsm|Selector46~0_combout\ & ( (!\i_e_payment_fsm|Equal0~0_combout\ & (\i_e_payment_fsm|sl_coin_state~0_combout\ & 
-- ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\)))) # (\i_e_payment_fsm|Equal0~0_combout\ & (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector46~0_combout\,
	combout => \i_e_payment_fsm|Selector46~1_combout\);

-- Location: LABCELL_X17_Y4_N24
\i_e_payment_fsm|sl_coin_state.sixty_cents_802\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ = ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (\i_e_payment_fsm|Selector46~1_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector46~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector46~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\);

-- Location: LABCELL_X17_Y4_N42
\i_e_payment_fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[0]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[0]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[0]~input_o\)) # (\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	combout => \i_e_payment_fsm|Selector3~0_combout\);

-- Location: LABCELL_X17_Y4_N0
\i_e_payment_fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (!\coin_in[0]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[2]~input_o\))) 
-- ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & (\coin_in[0]~input_o\ & !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000100000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector3~1_combout\);

-- Location: LABCELL_X18_Y4_N6
\i_e_payment_fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~2_combout\ = ( \i_e_payment_fsm|Selector3~1_combout\ ) # ( !\i_e_payment_fsm|Selector3~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\)) # 
-- (\i_e_payment_fsm|Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector3~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector3~1_combout\,
	combout => \i_e_payment_fsm|Selector3~2_combout\);

-- Location: LABCELL_X17_Y4_N21
\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector3~2_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector3~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\);

-- Location: LABCELL_X18_Y4_N18
\i_e_payment_fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ 
-- $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & 
-- \coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector13~1_combout\);

-- Location: LABCELL_X16_Y4_N24
\i_e_payment_fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( 
-- (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( 
-- (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[2]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	combout => \i_e_payment_fsm|Selector13~0_combout\);

-- Location: MLABCELL_X15_Y4_N33
\i_e_payment_fsm|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~2_combout\ = ( \i_e_payment_fsm|Selector13~1_combout\ & ( \i_e_payment_fsm|Selector13~0_combout\ ) ) # ( !\i_e_payment_fsm|Selector13~1_combout\ & ( \i_e_payment_fsm|Selector13~0_combout\ ) ) # ( 
-- \i_e_payment_fsm|Selector13~1_combout\ & ( !\i_e_payment_fsm|Selector13~0_combout\ ) ) # ( !\i_e_payment_fsm|Selector13~1_combout\ & ( !\i_e_payment_fsm|Selector13~0_combout\ & ( (\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & 
-- \i_e_payment_fsm|sl_coin_state~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector13~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector13~0_combout\,
	combout => \i_e_payment_fsm|Selector13~2_combout\);

-- Location: MLABCELL_X15_Y4_N3
\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ = ( \i_e_payment_fsm|Selector13~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector13~2_combout\ & ( (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector13~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\);

-- Location: LABCELL_X18_Y4_N36
\i_e_payment_fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector15~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[3]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000001000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	combout => \i_e_payment_fsm|Selector15~0_combout\);

-- Location: LABCELL_X18_Y4_N51
\i_e_payment_fsm|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector15~1_combout\ = ( \i_e_payment_fsm|Equal1~0_combout\ & ( (((\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & \i_e_payment_fsm|Equal0~0_combout\)) # (\i_e_payment_fsm|Selector15~0_combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\) ) ) # ( !\i_e_payment_fsm|Equal1~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & \i_e_payment_fsm|Equal0~0_combout\)) # 
-- (\i_e_payment_fsm|Selector15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector15~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	combout => \i_e_payment_fsm|Selector15~1_combout\);

-- Location: LABCELL_X19_Y4_N12
\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector15~1_combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (\i_e_payment_fsm|Selector15~1_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector15~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\);

-- Location: LABCELL_X18_Y4_N42
\i_e_payment_fsm|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector35~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & !\coin_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	combout => \i_e_payment_fsm|Selector35~0_combout\);

-- Location: LABCELL_X16_Y3_N27
\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector35~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector35~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\);

-- Location: MLABCELL_X15_Y4_N6
\i_e_payment_fsm|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector33~0_combout\ = ( !\coin_in[2]~input_o\ & ( (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[1]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|Selector33~0_combout\);

-- Location: LABCELL_X16_Y3_N54
\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector33~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector33~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\);

-- Location: MLABCELL_X15_Y4_N0
\i_e_payment_fsm|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector37~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	combout => \i_e_payment_fsm|Selector37~0_combout\);

-- Location: LABCELL_X16_Y3_N15
\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector37~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\);

-- Location: LABCELL_X16_Y3_N0
\i_e_payment_fsm|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector31~0_combout\ = ( !\coin_in[2]~input_o\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|Selector31~0_combout\);

-- Location: LABCELL_X16_Y3_N36
\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector31~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\);

-- Location: LABCELL_X16_Y3_N51
\i_e_payment_fsm|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector27~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ 
-- $ (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & 
-- \coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	combout => \i_e_payment_fsm|Selector27~0_combout\);

-- Location: LABCELL_X16_Y3_N3
\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ = ( \i_e_payment_fsm|Selector27~0_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector27~0_combout\ & ( (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector27~0_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\);

-- Location: MLABCELL_X15_Y4_N12
\i_e_payment_fsm|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector21~0_combout\ = ( !\coin_in[1]~input_o\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[0]~input_o\ & ((!\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\))) # (\coin_in[2]~input_o\ & 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & !\coin_in[3]~input_o\)))) ) ) ) # ( !\coin_in[1]~input_o\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[0]~input_o\ & 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & (\coin_in[2]~input_o\ & !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \ALT_INV_coin_in[1]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector21~0_combout\);

-- Location: MLABCELL_X15_Y4_N48
\i_e_payment_fsm|Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector21~1_combout\ = ( \i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( ((\i_e_payment_fsm|Equal1~0_combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\)) # (\i_e_payment_fsm|Selector21~0_combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( 
-- (\i_e_payment_fsm|Equal1~0_combout\) # (\i_e_payment_fsm|Selector21~0_combout\) ) ) ) # ( \i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\) # (\i_e_payment_fsm|Selector21~0_combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( 
-- \i_e_payment_fsm|Selector21~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100110011111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_Selector21~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	combout => \i_e_payment_fsm|Selector21~1_combout\);

-- Location: LABCELL_X17_Y3_N3
\i_e_payment_fsm|sl_coin_state.two_euro_690\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector21~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector21~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\);

-- Location: LABCELL_X18_Y4_N39
\i_e_payment_fsm|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector29~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ 
-- $ (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- \coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector29~0_combout\);

-- Location: LABCELL_X16_Y4_N57
\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector29~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\);

-- Location: LABCELL_X17_Y4_N12
\i_e_payment_fsm|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector23~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000100000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	combout => \i_e_payment_fsm|Selector23~0_combout\);

-- Location: LABCELL_X17_Y4_N18
\i_e_payment_fsm|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector23~1_combout\ = ( \i_e_payment_fsm|Selector23~0_combout\ ) # ( !\i_e_payment_fsm|Selector23~0_combout\ & ( (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111010101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector23~0_combout\,
	combout => \i_e_payment_fsm|Selector23~1_combout\);

-- Location: LABCELL_X19_Y4_N36
\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector23~1_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector23~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\);

-- Location: MLABCELL_X15_Y4_N42
\i_e_payment_fsm|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector25~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ & 
-- (!\coin_in[3]~input_o\ $ (!\coin_in[2]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & 
-- (!\coin_in[0]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (!\coin_in[0]~input_o\ & \coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[1]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector25~0_combout\);

-- Location: LABCELL_X16_Y3_N45
\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector25~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector25~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\);

-- Location: LABCELL_X17_Y3_N18
\i_e_payment_fsm|WideOr34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr34~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ & (!\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ & !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	combout => \i_e_payment_fsm|WideOr34~0_combout\);

-- Location: LABCELL_X16_Y3_N24
\i_e_payment_fsm|WideOr41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr41~combout\ = ( \i_e_payment_fsm|WideOr34~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\) # (\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\) ) ) # ( !\i_e_payment_fsm|WideOr34~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr34~0_combout\,
	combout => \i_e_payment_fsm|WideOr41~combout\);

-- Location: LABCELL_X17_Y4_N39
\i_e_payment_fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (!\coin_in[0]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- \coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & !\coin_in[0]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector1~1_combout\);

-- Location: LABCELL_X16_Y4_N27
\i_e_payment_fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # 
-- (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[3]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (\coin_in[3]~input_o\ & 
-- (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (!\coin_in[3]~input_o\ & ((!\coin_in[0]~input_o\ & 
-- (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[3]~input_o\ & (((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	combout => \i_e_payment_fsm|Selector1~0_combout\);

-- Location: LABCELL_X16_Y4_N33
\i_e_payment_fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~2_combout\ = ( \i_e_payment_fsm|Selector1~0_combout\ ) # ( !\i_e_payment_fsm|Selector1~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # 
-- (\i_e_payment_fsm|Selector1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector1~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector1~0_combout\,
	combout => \i_e_payment_fsm|Selector1~2_combout\);

-- Location: LABCELL_X16_Y4_N18
\i_e_payment_fsm|sl_coin_state.one_euro_770\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ = ( \i_e_payment_fsm|Selector1~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\) ) ) # ( !\i_e_payment_fsm|Selector1~2_combout\ & ( 
-- (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector1~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\);

-- Location: LABCELL_X16_Y4_N0
\i_e_payment_fsm|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & !\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector58~0_combout\);

-- Location: LABCELL_X16_Y3_N18
\i_e_payment_fsm|WideOr40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr40~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & (!\i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ & !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	combout => \i_e_payment_fsm|WideOr40~0_combout\);

-- Location: MLABCELL_X15_Y3_N39
\i_e_payment_fsm|WideOr40\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr40~combout\ = ( \i_e_payment_fsm|WideOr40~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) # ( !\i_e_payment_fsm|WideOr40~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) # ( 
-- \i_e_payment_fsm|WideOr40~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( (!\i_e_payment_fsm|Selector58~0_combout\) # ((!\i_e_payment_fsm|Selector58~1_combout\) # (\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\)) ) ) 
-- ) # ( !\i_e_payment_fsm|WideOr40~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011111110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_Selector58~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr40~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	combout => \i_e_payment_fsm|WideOr40~combout\);

-- Location: LABCELL_X17_Y3_N0
\i_e_payment_fsm|WideOr39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr39~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & (!\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ & !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	combout => \i_e_payment_fsm|WideOr39~0_combout\);

-- Location: LABCELL_X17_Y3_N42
\i_e_payment_fsm|WideOr39\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr39~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\i_e_payment_fsm|WideOr39~0_combout\) # (((!\i_e_payment_fsm|Selector58~2_combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\)) # (\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr39~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector58~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|WideOr39~combout\);

-- Location: LABCELL_X17_Y3_N30
\i_e_payment_fsm|WideOr37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr37~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	combout => \i_e_payment_fsm|WideOr37~0_combout\);

-- Location: LABCELL_X19_Y4_N3
\i_e_payment_fsm|WideOr38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr38~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & 
-- !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	combout => \i_e_payment_fsm|WideOr38~0_combout\);

-- Location: LABCELL_X16_Y3_N57
\i_e_payment_fsm|WideOr32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr32~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	combout => \i_e_payment_fsm|WideOr32~0_combout\);

-- Location: LABCELL_X17_Y3_N12
\i_e_payment_fsm|WideOr38\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr38~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|WideOr32~0_combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( 
-- \i_e_payment_fsm|WideOr32~0_combout\ & ( ((!\i_e_payment_fsm|WideOr37~0_combout\) # ((!\i_e_payment_fsm|WideOr38~0_combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\))) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|WideOr32~0_combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|WideOr32~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr37~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr38~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr32~0_combout\,
	combout => \i_e_payment_fsm|WideOr38~combout\);

-- Location: LABCELL_X16_Y3_N42
\i_e_payment_fsm|WideOr37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr37~1_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	combout => \i_e_payment_fsm|WideOr37~1_combout\);

-- Location: LABCELL_X16_Y3_N6
\i_e_payment_fsm|WideOr37\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr37~combout\ = ( \i_e_payment_fsm|WideOr32~0_combout\ & ( ((!\i_e_payment_fsm|WideOr37~0_combout\) # ((!\i_e_payment_fsm|WideOr37~1_combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\))) # 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\) ) ) # ( !\i_e_payment_fsm|WideOr32~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr37~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr37~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr32~0_combout\,
	combout => \i_e_payment_fsm|WideOr37~combout\);

-- Location: LABCELL_X17_Y3_N21
\i_e_payment_fsm|WideOr36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr36~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	combout => \i_e_payment_fsm|WideOr36~0_combout\);

-- Location: LABCELL_X17_Y3_N48
\i_e_payment_fsm|WideOr36\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr36~combout\ = ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (!\i_e_payment_fsm|Selector58~0_combout\) # ((!\i_e_payment_fsm|WideOr36~0_combout\) # 
-- ((!\i_e_payment_fsm|Selector58~1_combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr36~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector58~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|WideOr36~combout\);

-- Location: LABCELL_X17_Y3_N54
\i_e_payment_fsm|WideOr35\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr35~combout\ = ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|Selector58~0_combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|Selector58~0_combout\ & ( 
-- ((!\i_e_payment_fsm|WideOr34~0_combout\) # ((\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\) # (\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\))) # (\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\) ) ) ) # ( 
-- \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|Selector58~0_combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|Selector58~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr34~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	combout => \i_e_payment_fsm|WideOr35~combout\);

-- Location: LABCELL_X18_Y4_N0
\i_e_payment_fsm|WideOr34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr34~1_combout\ = ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|WideOr34~1_combout\);

-- Location: LABCELL_X17_Y3_N36
\i_e_payment_fsm|WideOr34\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr34~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( ((!\i_e_payment_fsm|WideOr34~0_combout\) # 
-- ((!\i_e_payment_fsm|WideOr34~1_combout\) # (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\))) # (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr34~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr34~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	combout => \i_e_payment_fsm|WideOr34~combout\);

-- Location: LABCELL_X16_Y3_N12
\i_e_payment_fsm|WideOr30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr30~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & ( ((\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	combout => \i_e_payment_fsm|WideOr30~0_combout\);

-- Location: M10K_X14_Y3_N0
\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF0",
	mem_init1 => "07FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF00106007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF007FF00026007FF007FF007FF007FF00786007FF007FF007FF007FF007FF007FF007FF007FF00006007FF007FF00306007FF007FF007FF007FF007FF007FF007FF007FF00196007FF007FF007FF007FF00126007FF007FF007FF007FF007FF007FF00406007FF007FF007",
	mem_init0 => "FF007FF0079600246007FF007FF007FF007FF007FF0002C007FF007FF007FF007FF0078C0000C007FF007FF007FF007FF0010C007FF007FF007FF007FF007FF0030C0019C007FF007FF007FF007FF0012C007FF007FF007FF007FF007FF007FF0040C007FF007FF007FF007FF0079C007FF007FF007FF007FF007FF007FF007FF007FF0024C007FF007FF00788007FF007FF007FF007FF007FF007FF007FF007FF00008007FF007FF007FF007FF00108007FF007FF007FF007FF007FF007FF00198007FF007FF007FF007FF0012800028007FF007FF007FF007FF007FF00408007FF007FF007FF007FF0079800248007FF007FF007FF007FF00308007FF007FF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Automated_Laundry_System.e_my_automated_laundry_system0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "e_7seg_display:i_e_7seg_display|altsyncram:Mux27_rtl_0|altsyncram_6v91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 11,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portaaddr => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X19_Y2_N51
\Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \i_e_laundry_fsm|WideOr11~combout\ ) # ( !\i_e_laundry_fsm|WideOr11~combout\ & ( (!\i_e_laundry_fsm|state_choice\(3)) # (!\Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X19_Y2_N52
\i_e_7seg_display|hex_5[5]~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5[5]~2_q\);

-- Location: LABCELL_X17_Y2_N24
\i_e_7seg_display|hex_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~21_combout\ = ( \i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|hex_4[0]~19_q\ ) ) # ( !\i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a10\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_4[0]~19_q\,
	datac => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a10\,
	dataf => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_4~21_combout\);

-- Location: LABCELL_X17_Y2_N30
\i_e_7seg_display|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux9~0_combout\ = ( sl_word_choice(0) & ( (!sl_word_choice(1) & sl_word_choice(2)) ) ) # ( !sl_word_choice(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(1),
	datab => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(0),
	combout => \i_e_7seg_display|Mux9~0_combout\);

-- Location: FF_X17_Y2_N31
\i_e_7seg_display|hex_4[1]~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[1]~16_q\);

-- Location: LABCELL_X13_Y3_N3
\i_e_7seg_display|hex_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~22_combout\ = ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\ & ( \i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|hex_4[1]~16_q\ ) ) ) # ( !\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\ & ( 
-- \i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|hex_4[1]~16_q\ ) ) ) # ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a9\ & ( !\i_e_7seg_display|hex_5[5]~2_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_4[1]~16_q\,
	datae => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a9\,
	dataf => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_4~22_combout\);

-- Location: LABCELL_X13_Y3_N6
\i_e_7seg_display|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux8~0_combout\ = ( !sl_word_choice(0) & ( !sl_word_choice(1) & ( !sl_word_choice(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sl_word_choice(2),
	datae => ALT_INV_sl_word_choice(0),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux8~0_combout\);

-- Location: FF_X13_Y3_N8
\i_e_7seg_display|hex_5[1]~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5[1]~7_q\);

-- Location: LABCELL_X13_Y3_N42
\i_e_7seg_display|hex_4~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~23_combout\ = (!\i_e_7seg_display|hex_5[5]~2_q\ & ((\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a8\))) # (\i_e_7seg_display|hex_5[5]~2_q\ & (\i_e_7seg_display|hex_5[1]~7_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	datab => \i_e_7seg_display|ALT_INV_hex_5[1]~7_q\,
	datac => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a8\,
	combout => \i_e_7seg_display|hex_4~23_combout\);

-- Location: LABCELL_X13_Y3_N18
\i_e_7seg_display|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux7~0_combout\ = ( sl_word_choice(1) & ( (sl_word_choice(0) & !sl_word_choice(2)) ) ) # ( !sl_word_choice(1) & ( (!sl_word_choice(0)) # (!sl_word_choice(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(0),
	datac => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux7~0_combout\);

-- Location: FF_X13_Y3_N20
\i_e_7seg_display|hex_4[3]~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[3]~10_q\);

-- Location: LABCELL_X13_Y3_N57
\i_e_7seg_display|hex_4~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~24_combout\ = ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a7\ & ( (!\i_e_7seg_display|hex_5[5]~2_q\) # (\i_e_7seg_display|hex_4[3]~10_q\) ) ) # ( !\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a7\ & ( 
-- (\i_e_7seg_display|hex_4[3]~10_q\ & \i_e_7seg_display|hex_5[5]~2_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_4[3]~10_q\,
	datad => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	datae => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a7\,
	combout => \i_e_7seg_display|hex_4~24_combout\);

-- Location: LABCELL_X13_Y3_N30
\i_e_7seg_display|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux6~0_combout\ = ( sl_word_choice(1) & ( (sl_word_choice(0) & sl_word_choice(2)) ) ) # ( !sl_word_choice(1) & ( !sl_word_choice(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(0),
	datac => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux6~0_combout\);

-- Location: FF_X13_Y3_N32
\i_e_7seg_display|hex_4[4]~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[4]~7_q\);

-- Location: LABCELL_X13_Y3_N33
\i_e_7seg_display|hex_4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~25_combout\ = (!\i_e_7seg_display|hex_5[5]~2_q\ & (\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a6\)) # (\i_e_7seg_display|hex_5[5]~2_q\ & ((\i_e_7seg_display|hex_4[4]~7_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a6\,
	datac => \i_e_7seg_display|ALT_INV_hex_4[4]~7_q\,
	datad => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_4~25_combout\);

-- Location: LABCELL_X13_Y3_N39
\i_e_7seg_display|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux5~0_combout\ = ( sl_word_choice(1) & ( sl_word_choice(2) ) ) # ( !sl_word_choice(1) & ( (!sl_word_choice(0)) # (sl_word_choice(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datad => ALT_INV_sl_word_choice(0),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux5~0_combout\);

-- Location: FF_X13_Y3_N41
\i_e_7seg_display|hex_4[5]~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[5]~4_q\);

-- Location: LABCELL_X13_Y3_N36
\i_e_7seg_display|hex_4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~26_combout\ = ( \i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|hex_4[5]~4_q\ ) ) # ( !\i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a5\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_7seg_display|ALT_INV_hex_4[5]~4_q\,
	datac => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a5\,
	dataf => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_4~26_combout\);

-- Location: LABCELL_X17_Y2_N0
\i_e_7seg_display|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux4~0_combout\ = ( sl_word_choice(0) & ( sl_word_choice(2) ) ) # ( !sl_word_choice(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(0),
	combout => \i_e_7seg_display|Mux4~0_combout\);

-- Location: FF_X17_Y2_N1
\i_e_7seg_display|hex_4[6]~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_4[6]~1_q\);

-- Location: LABCELL_X13_Y3_N21
\i_e_7seg_display|hex_4~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_4~27_combout\ = ( \i_e_7seg_display|hex_4[6]~1_q\ & ( (\i_e_7seg_display|hex_5[5]~2_q\) # (\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a4\) ) ) # ( !\i_e_7seg_display|hex_4[6]~1_q\ & ( 
-- (\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a4\ & !\i_e_7seg_display|hex_5[5]~2_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a4\,
	datad => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	dataf => \i_e_7seg_display|ALT_INV_hex_4[6]~1_q\,
	combout => \i_e_7seg_display|hex_4~27_combout\);

-- Location: LABCELL_X13_Y3_N15
\i_e_7seg_display|hex_5~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~12_combout\ = ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a3\ & ( (!\i_e_7seg_display|hex_5[5]~2_q\) # (\i_e_7seg_display|hex_5[1]~7_q\) ) ) # ( !\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a3\ & ( 
-- (\i_e_7seg_display|hex_5[5]~2_q\ & \i_e_7seg_display|hex_5[1]~7_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	datac => \i_e_7seg_display|ALT_INV_hex_5[1]~7_q\,
	datae => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a3\,
	combout => \i_e_7seg_display|hex_5~12_combout\);

-- Location: LABCELL_X13_Y3_N45
\i_e_7seg_display|hex_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~13_combout\ = (!\i_e_7seg_display|hex_5[5]~2_q\ & ((\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a2\))) # (\i_e_7seg_display|hex_5[5]~2_q\ & (\i_e_7seg_display|hex_5[1]~7_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	datab => \i_e_7seg_display|ALT_INV_hex_5[1]~7_q\,
	datad => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a2\,
	combout => \i_e_7seg_display|hex_5~13_combout\);

-- Location: LABCELL_X18_Y2_N48
\i_e_7seg_display|hex_5~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~20_combout\ = ( sl_word_choice(0) & ( (sl_word_choice(1) & sl_word_choice(2)) ) ) # ( !sl_word_choice(0) & ( (!sl_word_choice(1) & !sl_word_choice(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_sl_word_choice(1),
	datad => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(0),
	combout => \i_e_7seg_display|hex_5~20_combout\);

-- Location: LABCELL_X17_Y3_N6
\i_e_7seg_display|Mux26~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux26~4_combout\ = ( \i_e_payment_fsm|WideOr34~combout\ & ( \i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr39~combout\ & (!\i_e_payment_fsm|WideOr36~combout\ & 
-- !\i_e_payment_fsm|WideOr38~combout\))) ) ) ) # ( !\i_e_payment_fsm|WideOr34~combout\ & ( \i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr36~combout\ & !\i_e_payment_fsm|WideOr38~combout\)) ) ) ) # ( 
-- \i_e_payment_fsm|WideOr34~combout\ & ( !\i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr39~combout\ & (!\i_e_payment_fsm|WideOr36~combout\ & !\i_e_payment_fsm|WideOr38~combout\)) ) ) ) # ( !\i_e_payment_fsm|WideOr34~combout\ & ( 
-- !\i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr39~combout\ & (!\i_e_payment_fsm|WideOr30~0_combout\ & ((!\i_e_payment_fsm|WideOr36~combout\) # (!\i_e_payment_fsm|WideOr38~combout\)))) # (\i_e_payment_fsm|WideOr39~combout\ & 
-- (!\i_e_payment_fsm|WideOr36~combout\ & (!\i_e_payment_fsm|WideOr30~0_combout\ $ (\i_e_payment_fsm|WideOr38~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010010000110000000000000010100000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr30~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr39~combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr36~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr38~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr34~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr35~combout\,
	combout => \i_e_7seg_display|Mux26~4_combout\);

-- Location: LABCELL_X18_Y3_N48
\i_e_7seg_display|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux26~1_combout\ = ( \i_e_payment_fsm|WideOr36~combout\ & ( \i_e_payment_fsm|WideOr34~combout\ & ( (!\i_e_payment_fsm|WideOr39~combout\ & (((!\i_e_payment_fsm|WideOr30~0_combout\) # (\i_e_payment_fsm|WideOr38~combout\)))) # 
-- (\i_e_payment_fsm|WideOr39~combout\ & ((!\i_e_payment_fsm|WideOr35~combout\) # ((!\i_e_payment_fsm|WideOr38~combout\) # (\i_e_payment_fsm|WideOr30~0_combout\)))) ) ) ) # ( !\i_e_payment_fsm|WideOr36~combout\ & ( \i_e_payment_fsm|WideOr34~combout\ & ( 
-- (\i_e_payment_fsm|WideOr38~combout\ & ((!\i_e_payment_fsm|WideOr30~0_combout\) # (\i_e_payment_fsm|WideOr39~combout\))) ) ) ) # ( \i_e_payment_fsm|WideOr36~combout\ & ( !\i_e_payment_fsm|WideOr34~combout\ & ( (!\i_e_payment_fsm|WideOr39~combout\ & 
-- (((\i_e_payment_fsm|WideOr38~combout\ & !\i_e_payment_fsm|WideOr30~0_combout\)))) # (\i_e_payment_fsm|WideOr39~combout\ & (((\i_e_payment_fsm|WideOr38~combout\)) # (\i_e_payment_fsm|WideOr35~combout\))) ) ) ) # ( !\i_e_payment_fsm|WideOr36~combout\ & ( 
-- !\i_e_payment_fsm|WideOr34~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr38~combout\ & ((\i_e_payment_fsm|WideOr39~combout\) # (\i_e_payment_fsm|WideOr35~combout\)))) # (\i_e_payment_fsm|WideOr30~0_combout\ & 
-- (\i_e_payment_fsm|WideOr35~combout\ & (\i_e_payment_fsm|WideOr39~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010001000111110001001100001111000000111111111000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr35~combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr39~combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr38~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr30~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr36~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr34~combout\,
	combout => \i_e_7seg_display|Mux26~1_combout\);

-- Location: LABCELL_X17_Y3_N24
\i_e_7seg_display|Mux26~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux26~2_combout\ = ( \i_e_payment_fsm|WideOr35~combout\ & ( \i_e_payment_fsm|WideOr34~combout\ & ( (!\i_e_payment_fsm|WideOr36~combout\ & (!\i_e_payment_fsm|WideOr38~combout\ & ((!\i_e_payment_fsm|WideOr30~0_combout\) # 
-- (!\i_e_payment_fsm|WideOr39~combout\)))) # (\i_e_payment_fsm|WideOr36~combout\ & (!\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr39~combout\ & \i_e_payment_fsm|WideOr38~combout\))) ) ) ) # ( !\i_e_payment_fsm|WideOr35~combout\ & ( 
-- \i_e_payment_fsm|WideOr34~combout\ & ( (!\i_e_payment_fsm|WideOr39~combout\) # ((!\i_e_payment_fsm|WideOr36~combout\ & !\i_e_payment_fsm|WideOr38~combout\)) ) ) ) # ( \i_e_payment_fsm|WideOr35~combout\ & ( !\i_e_payment_fsm|WideOr34~combout\ & ( 
-- (!\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr36~combout\ & ((!\i_e_payment_fsm|WideOr39~combout\) # (!\i_e_payment_fsm|WideOr38~combout\)))) ) ) ) # ( !\i_e_payment_fsm|WideOr35~combout\ & ( !\i_e_payment_fsm|WideOr34~combout\ & ( 
-- (!\i_e_payment_fsm|WideOr30~0_combout\ & ((!\i_e_payment_fsm|WideOr39~combout\) # ((!\i_e_payment_fsm|WideOr36~combout\) # (!\i_e_payment_fsm|WideOr38~combout\)))) # (\i_e_payment_fsm|WideOr30~0_combout\ & (!\i_e_payment_fsm|WideOr39~combout\ & 
-- ((!\i_e_payment_fsm|WideOr36~combout\) # (!\i_e_payment_fsm|WideOr38~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000101000001000000011111100110011001110000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr30~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr39~combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr36~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr38~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr35~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr34~combout\,
	combout => \i_e_7seg_display|Mux26~2_combout\);

-- Location: LABCELL_X18_Y3_N42
\i_e_7seg_display|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux26~0_combout\ = ( \i_e_payment_fsm|WideOr34~combout\ & ( \i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & ((!\i_e_payment_fsm|WideOr36~combout\ & (\i_e_payment_fsm|WideOr38~combout\ & 
-- \i_e_payment_fsm|WideOr39~combout\)) # (\i_e_payment_fsm|WideOr36~combout\ & ((\i_e_payment_fsm|WideOr39~combout\) # (\i_e_payment_fsm|WideOr38~combout\))))) ) ) ) # ( !\i_e_payment_fsm|WideOr34~combout\ & ( \i_e_payment_fsm|WideOr35~combout\ & ( 
-- (!\i_e_payment_fsm|WideOr30~0_combout\ & ((!\i_e_payment_fsm|WideOr36~combout\ & (!\i_e_payment_fsm|WideOr38~combout\ & \i_e_payment_fsm|WideOr39~combout\)) # (\i_e_payment_fsm|WideOr36~combout\ & (\i_e_payment_fsm|WideOr38~combout\)))) ) ) ) # ( 
-- \i_e_payment_fsm|WideOr34~combout\ & ( !\i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & (\i_e_payment_fsm|WideOr39~combout\ & ((\i_e_payment_fsm|WideOr38~combout\) # (\i_e_payment_fsm|WideOr36~combout\)))) ) ) ) # ( 
-- !\i_e_payment_fsm|WideOr34~combout\ & ( !\i_e_payment_fsm|WideOr35~combout\ & ( (!\i_e_payment_fsm|WideOr30~0_combout\ & ((!\i_e_payment_fsm|WideOr36~combout\ & (!\i_e_payment_fsm|WideOr38~combout\ & !\i_e_payment_fsm|WideOr39~combout\)) # 
-- (\i_e_payment_fsm|WideOr36~combout\ & (\i_e_payment_fsm|WideOr38~combout\ & \i_e_payment_fsm|WideOr39~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000010000000000010101000000010100000100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr30~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_WideOr36~combout\,
	datac => \i_e_payment_fsm|ALT_INV_WideOr38~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr39~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr34~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr35~combout\,
	combout => \i_e_7seg_display|Mux26~0_combout\);

-- Location: LABCELL_X18_Y3_N24
\i_e_7seg_display|Mux26~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux26~3_combout\ = ( \i_e_7seg_display|Mux26~2_combout\ & ( \i_e_7seg_display|Mux26~0_combout\ & ( (!\i_e_payment_fsm|WideOr40~combout\ & (((!\i_e_payment_fsm|WideOr37~combout\) # (\i_e_7seg_display|Mux26~1_combout\)))) # 
-- (\i_e_payment_fsm|WideOr40~combout\ & (!\i_e_7seg_display|Mux26~4_combout\ & ((\i_e_payment_fsm|WideOr37~combout\)))) ) ) ) # ( !\i_e_7seg_display|Mux26~2_combout\ & ( \i_e_7seg_display|Mux26~0_combout\ & ( (!\i_e_payment_fsm|WideOr37~combout\) # 
-- ((!\i_e_payment_fsm|WideOr40~combout\ & ((\i_e_7seg_display|Mux26~1_combout\))) # (\i_e_payment_fsm|WideOr40~combout\ & (!\i_e_7seg_display|Mux26~4_combout\))) ) ) ) # ( \i_e_7seg_display|Mux26~2_combout\ & ( !\i_e_7seg_display|Mux26~0_combout\ & ( 
-- (\i_e_payment_fsm|WideOr37~combout\ & ((!\i_e_payment_fsm|WideOr40~combout\ & ((\i_e_7seg_display|Mux26~1_combout\))) # (\i_e_payment_fsm|WideOr40~combout\ & (!\i_e_7seg_display|Mux26~4_combout\)))) ) ) ) # ( !\i_e_7seg_display|Mux26~2_combout\ & ( 
-- !\i_e_7seg_display|Mux26~0_combout\ & ( (!\i_e_payment_fsm|WideOr40~combout\ & (((\i_e_7seg_display|Mux26~1_combout\ & \i_e_payment_fsm|WideOr37~combout\)))) # (\i_e_payment_fsm|WideOr40~combout\ & ((!\i_e_7seg_display|Mux26~4_combout\) # 
-- ((!\i_e_payment_fsm|WideOr37~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101001110000000000100111011111111010011101010101001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_WideOr40~combout\,
	datab => \i_e_7seg_display|ALT_INV_Mux26~4_combout\,
	datac => \i_e_7seg_display|ALT_INV_Mux26~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr37~combout\,
	datae => \i_e_7seg_display|ALT_INV_Mux26~2_combout\,
	dataf => \i_e_7seg_display|ALT_INV_Mux26~0_combout\,
	combout => \i_e_7seg_display|Mux26~3_combout\);

-- Location: LABCELL_X18_Y3_N54
\i_e_7seg_display|hex_5~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~16_combout\ = ( \i_e_7seg_display|Mux26~3_combout\ & ( ((\i_e_laundry_fsm|state_choice\(3) & (\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\))) # (\i_e_7seg_display|hex_5~20_combout\) ) ) # ( 
-- !\i_e_7seg_display|Mux26~3_combout\ & ( (\i_e_7seg_display|hex_5~20_combout\ & ((!\i_e_laundry_fsm|state_choice\(3)) # ((!\Mux0~0_combout\) # (\i_e_laundry_fsm|WideOr11~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010101010101000101010101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_5~20_combout\,
	datab => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datac => \ALT_INV_Mux0~0_combout\,
	datad => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_7seg_display|ALT_INV_Mux26~3_combout\,
	combout => \i_e_7seg_display|hex_5~16_combout\);

-- Location: FF_X18_Y3_N55
\i_e_7seg_display|hex_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_5~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5\(2));

-- Location: LABCELL_X18_Y3_N57
\i_e_7seg_display|hex_1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_1~3_combout\ = ( sl_word_choice(1) & ( (sl_word_choice(0) & sl_word_choice(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sl_word_choice(0),
	datad => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|hex_1~3_combout\);

-- Location: LABCELL_X18_Y3_N33
\i_e_7seg_display|hex_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~17_combout\ = ( \i_e_7seg_display|Mux26~3_combout\ & ( (!\i_e_7seg_display|hex_1~3_combout\) # ((\Mux0~0_combout\ & (\i_e_laundry_fsm|state_choice\(3) & !\i_e_laundry_fsm|WideOr11~combout\))) ) ) # ( 
-- !\i_e_7seg_display|Mux26~3_combout\ & ( (!\i_e_7seg_display|hex_1~3_combout\ & ((!\Mux0~0_combout\) # ((!\i_e_laundry_fsm|state_choice\(3)) # (\i_e_laundry_fsm|WideOr11~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001100110010001100110011001101110011001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \i_e_7seg_display|ALT_INV_hex_1~3_combout\,
	datac => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	datad => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	dataf => \i_e_7seg_display|ALT_INV_Mux26~3_combout\,
	combout => \i_e_7seg_display|hex_5~17_combout\);

-- Location: FF_X18_Y3_N34
\i_e_7seg_display|hex_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_5~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5\(3));

-- Location: LABCELL_X13_Y3_N51
\i_e_7seg_display|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux2~0_combout\ = ( sl_word_choice(1) & ( !sl_word_choice(2) $ (!sl_word_choice(0)) ) ) # ( !sl_word_choice(1) & ( (!sl_word_choice(2)) # (!sl_word_choice(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(2),
	datad => ALT_INV_sl_word_choice(0),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux2~0_combout\);

-- Location: FF_X13_Y3_N53
\i_e_7seg_display|hex_5[4]~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5[4]~4_q\);

-- Location: LABCELL_X13_Y3_N48
\i_e_7seg_display|hex_5~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~14_combout\ = (!\i_e_7seg_display|hex_5[5]~2_q\ & (\i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a1\)) # (\i_e_7seg_display|hex_5[5]~2_q\ & ((\i_e_7seg_display|hex_5[4]~4_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a1\,
	datac => \i_e_7seg_display|ALT_INV_hex_5[4]~4_q\,
	datad => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_5~14_combout\);

-- Location: LABCELL_X13_Y3_N24
\i_e_7seg_display|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|Mux1~0_combout\ = ( sl_word_choice(1) & ( sl_word_choice(2) ) ) # ( !sl_word_choice(1) & ( (!sl_word_choice(2) & !sl_word_choice(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sl_word_choice(2),
	datad => ALT_INV_sl_word_choice(0),
	dataf => ALT_INV_sl_word_choice(1),
	combout => \i_e_7seg_display|Mux1~0_combout\);

-- Location: FF_X13_Y3_N26
\i_e_7seg_display|hex_5[5]~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5[5]~1_q\);

-- Location: LABCELL_X13_Y3_N27
\i_e_7seg_display|hex_5~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~15_combout\ = ( \i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|hex_5[5]~1_q\ ) ) # ( !\i_e_7seg_display|hex_5[5]~2_q\ & ( \i_e_7seg_display|Mux27_rtl_0|auto_generated|ram_block1a0~portadataout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_7seg_display|ALT_INV_hex_5[5]~1_q\,
	datad => \i_e_7seg_display|Mux27_rtl_0|auto_generated|ALT_INV_ram_block1a0~portadataout\,
	dataf => \i_e_7seg_display|ALT_INV_hex_5[5]~2_q\,
	combout => \i_e_7seg_display|hex_5~15_combout\);

-- Location: LABCELL_X18_Y3_N30
\i_e_7seg_display|hex_5~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~18_combout\ = ( sl_word_choice(0) & ( !sl_word_choice(2) ) ) # ( !sl_word_choice(0) & ( sl_word_choice(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_sl_word_choice(2),
	dataf => ALT_INV_sl_word_choice(0),
	combout => \i_e_7seg_display|hex_5~18_combout\);

-- Location: LABCELL_X18_Y3_N6
\i_e_7seg_display|hex_5~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_display|hex_5~19_combout\ = ( \i_e_laundry_fsm|state_choice\(3) & ( \i_e_7seg_display|Mux26~3_combout\ & ( (!sl_word_choice(1) & ((!\i_e_7seg_display|hex_5~18_combout\) # ((\Mux0~0_combout\ & !\i_e_laundry_fsm|WideOr11~combout\)))) # 
-- (sl_word_choice(1) & (\Mux0~0_combout\ & (!\i_e_laundry_fsm|WideOr11~combout\))) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( \i_e_7seg_display|Mux26~3_combout\ & ( (!sl_word_choice(1) & !\i_e_7seg_display|hex_5~18_combout\) ) ) ) # ( 
-- \i_e_laundry_fsm|state_choice\(3) & ( !\i_e_7seg_display|Mux26~3_combout\ & ( (!sl_word_choice(1) & (!\i_e_7seg_display|hex_5~18_combout\ & ((!\Mux0~0_combout\) # (\i_e_laundry_fsm|WideOr11~combout\)))) ) ) ) # ( !\i_e_laundry_fsm|state_choice\(3) & ( 
-- !\i_e_7seg_display|Mux26~3_combout\ & ( (!sl_word_choice(1) & !\i_e_7seg_display|hex_5~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000100010100000000010101010000000001011101000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sl_word_choice(1),
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \i_e_laundry_fsm|ALT_INV_WideOr11~combout\,
	datad => \i_e_7seg_display|ALT_INV_hex_5~18_combout\,
	datae => \i_e_laundry_fsm|ALT_INV_state_choice\(3),
	dataf => \i_e_7seg_display|ALT_INV_Mux26~3_combout\,
	combout => \i_e_7seg_display|hex_5~19_combout\);

-- Location: FF_X18_Y3_N7
\i_e_7seg_display|hex_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_7seg_display|hex_5~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_7seg_display|hex_5\(6));

-- Location: MLABCELL_X15_Y3_N3
\i_e_payment_fsm|WideOr32\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr32~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|WideOr32~combout\);

-- Location: LABCELL_X16_Y3_N30
\i_e_payment_fsm|WideOr31\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr31~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	combout => \i_e_payment_fsm|WideOr31~combout\);

-- Location: LABCELL_X16_Y3_N39
\i_e_payment_fsm|WideOr30\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr30~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|WideOr30~combout\);

-- Location: LABCELL_X42_Y53_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


