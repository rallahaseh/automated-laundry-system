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

-- DATE "07/27/2021 19:02:31"

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
	green_led : BUFFER std_logic;
	red_led : BUFFER std_logic;
	start_button : BUFFER std_logic;
	hex_0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex_1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex_2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex_3 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex_4 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex_5 : BUFFER std_logic_vector(6 DOWNTO 0);
	coin_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END e_my_automated_laundry_system;

-- Design Ports Information
-- green_led	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_led	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_button	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[2]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[3]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[4]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_0[6]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[1]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_1[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[1]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[3]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[4]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[5]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_2[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[3]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[4]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[5]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_3[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[1]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_4[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[1]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[3]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[5]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex_5[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_out[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[0]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_in[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_done_sensor	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[3]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_address_button	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[0]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[1]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[2]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- password_in[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push_password_button	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[2]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[1]	=>  Location: PIN_AK21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- washing_machine_address_in[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nearby_person_sensor	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \washing_machine_done_sensor~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector8~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.hold_state~q\ : std_logic;
SIGNAL \washing_machine_address_in[2]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[0]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[1]~input_o\ : std_logic;
SIGNAL \washing_machine_address_in[3]~input_o\ : std_logic;
SIGNAL \i_e_memory|Decoder0~0_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~1_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~2_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~4_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~5_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~8_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~6_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~7_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~5_combout\ : std_logic;
SIGNAL \i_e_memory|Decoder0~3_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~0_combout\ : std_logic;
SIGNAL \i_e_memory|Mux0~4_combout\ : std_logic;
SIGNAL \i_e_memory|washing_machine_address_available~combout\ : std_logic;
SIGNAL \password_in[0]~input_o\ : std_logic;
SIGNAL \password_in[2]~input_o\ : std_logic;
SIGNAL \password_in[3]~input_o\ : std_logic;
SIGNAL \password_in[1]~input_o\ : std_logic;
SIGNAL \push_password_button~input_o\ : std_logic;
SIGNAL \nearby_person_sensor~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector0~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.no_action_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_password_button_last_state~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_password_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \push_address_button~input_o\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector2~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.verification_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_address_button_last_state~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_address_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector3~2_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.availability_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.payment_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.process_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_present_state.start_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \coin_in[0]~input_o\ : std_logic;
SIGNAL \coin_in[3]~input_o\ : std_logic;
SIGNAL \coin_in[1]~input_o\ : std_logic;
SIGNAL \coin_in[2]~input_o\ : std_logic;
SIGNAL \i_e_payment_fsm|Equal1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector56~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector52~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector50~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~4_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector46~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector46~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector44~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Equal3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector13~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector15~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector15~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector44~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector42~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector42~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector40~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector1~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector3~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector7~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector17~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector19~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~3_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector58~5_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector48~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector48~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector11~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector31~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector35~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector25~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector23~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector23~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector33~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector27~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr32~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector21~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector21~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr41~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector54~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector5~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector9~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|Selector29~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr32~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr31~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|WideOr30~combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|sl_used_washing_machines_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_e_memory|ram\ : std_logic_vector(0 TO 8);
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector48~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector48~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector54~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector50~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector52~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector42~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector40~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector56~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector15~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector21~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector37~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr41~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_WideOr32~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector23~1_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \i_e_7seg_bcd_decoder|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_e_memory|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_nearby_person_sensor~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_push_password_button~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_password_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_push_address_button~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_address_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_washing_machine_done_sensor~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_coin_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_ram\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_e_memory|ALT_INV_washing_machine_address_available~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\ : std_logic;
SIGNAL \i_e_memory|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~5_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~4_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~3_combout\ : std_logic;
SIGNAL \i_e_payment_fsm|ALT_INV_Selector58~2_combout\ : std_logic;
SIGNAL \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\ : std_logic;

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
start_button <= ww_start_button;
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
\i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.payment_state~q\;
\i_e_payment_fsm|ALT_INV_Selector48~1_combout\ <= NOT \i_e_payment_fsm|Selector48~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector48~0_combout\ <= NOT \i_e_payment_fsm|Selector48~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector54~0_combout\ <= NOT \i_e_payment_fsm|Selector54~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector44~1_combout\ <= NOT \i_e_payment_fsm|Selector44~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector44~0_combout\ <= NOT \i_e_payment_fsm|Selector44~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~1_combout\ <= NOT \i_e_payment_fsm|Selector58~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector50~0_combout\ <= NOT \i_e_payment_fsm|Selector50~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector52~0_combout\ <= NOT \i_e_payment_fsm|Selector52~0_combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\ <= NOT \i_e_payment_fsm|sl_coin_state~1_combout\;
\i_e_payment_fsm|ALT_INV_Equal0~0_combout\ <= NOT \i_e_payment_fsm|Equal0~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector42~1_combout\ <= NOT \i_e_payment_fsm|Selector42~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector42~0_combout\ <= NOT \i_e_payment_fsm|Selector42~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector46~1_combout\ <= NOT \i_e_payment_fsm|Selector46~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector46~0_combout\ <= NOT \i_e_payment_fsm|Selector46~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector40~1_combout\ <= NOT \i_e_payment_fsm|Selector40~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector40~0_combout\ <= NOT \i_e_payment_fsm|Selector40~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~2_combout\ <= NOT \i_e_payment_fsm|Selector1~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~1_combout\ <= NOT \i_e_payment_fsm|Selector1~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector1~0_combout\ <= NOT \i_e_payment_fsm|Selector1~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector56~0_combout\ <= NOT \i_e_payment_fsm|Selector56~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.process_state~q\;
\i_e_payment_fsm|ALT_INV_Selector11~2_combout\ <= NOT \i_e_payment_fsm|Selector11~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector11~1_combout\ <= NOT \i_e_payment_fsm|Selector11~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector11~0_combout\ <= NOT \i_e_payment_fsm|Selector11~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~2_combout\ <= NOT \i_e_payment_fsm|Selector5~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~1_combout\ <= NOT \i_e_payment_fsm|Selector5~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector5~0_combout\ <= NOT \i_e_payment_fsm|Selector5~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector15~1_combout\ <= NOT \i_e_payment_fsm|Selector15~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector15~0_combout\ <= NOT \i_e_payment_fsm|Selector15~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~2_combout\ <= NOT \i_e_payment_fsm|Selector9~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~1_combout\ <= NOT \i_e_payment_fsm|Selector9~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector9~0_combout\ <= NOT \i_e_payment_fsm|Selector9~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~2_combout\ <= NOT \i_e_payment_fsm|Selector7~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~1_combout\ <= NOT \i_e_payment_fsm|Selector7~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector7~0_combout\ <= NOT \i_e_payment_fsm|Selector7~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~2_combout\ <= NOT \i_e_payment_fsm|Selector17~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~1_combout\ <= NOT \i_e_payment_fsm|Selector17~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector17~0_combout\ <= NOT \i_e_payment_fsm|Selector17~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector21~1_combout\ <= NOT \i_e_payment_fsm|Selector21~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector21~0_combout\ <= NOT \i_e_payment_fsm|Selector21~0_combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\ <= NOT \i_e_payment_fsm|sl_coin_state~0_combout\;
\i_e_payment_fsm|ALT_INV_Equal1~0_combout\ <= NOT \i_e_payment_fsm|Equal1~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~2_combout\ <= NOT \i_e_payment_fsm|Selector13~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~1_combout\ <= NOT \i_e_payment_fsm|Selector13~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector13~0_combout\ <= NOT \i_e_payment_fsm|Selector13~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~2_combout\ <= NOT \i_e_payment_fsm|Selector19~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~1_combout\ <= NOT \i_e_payment_fsm|Selector19~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector19~0_combout\ <= NOT \i_e_payment_fsm|Selector19~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~2_combout\ <= NOT \i_e_payment_fsm|Selector3~2_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~1_combout\ <= NOT \i_e_payment_fsm|Selector3~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector3~0_combout\ <= NOT \i_e_payment_fsm|Selector3~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector31~0_combout\ <= NOT \i_e_payment_fsm|Selector31~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector35~0_combout\ <= NOT \i_e_payment_fsm|Selector35~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector25~0_combout\ <= NOT \i_e_payment_fsm|Selector25~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector39~0_combout\ <= NOT \i_e_payment_fsm|Selector39~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector29~0_combout\ <= NOT \i_e_payment_fsm|Selector29~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector37~0_combout\ <= NOT \i_e_payment_fsm|Selector37~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector27~0_combout\ <= NOT \i_e_payment_fsm|Selector27~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector33~0_combout\ <= NOT \i_e_payment_fsm|Selector33~0_combout\;
\i_e_payment_fsm|ALT_INV_WideOr41~combout\ <= NOT \i_e_payment_fsm|WideOr41~combout\;
\i_e_payment_fsm|ALT_INV_WideOr32~0_combout\ <= NOT \i_e_payment_fsm|WideOr32~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector23~1_combout\ <= NOT \i_e_payment_fsm|Selector23~1_combout\;
\i_e_payment_fsm|ALT_INV_Selector23~0_combout\ <= NOT \i_e_payment_fsm|Selector23~0_combout\;
\i_e_payment_fsm|ALT_INV_Equal3~0_combout\ <= NOT \i_e_payment_fsm|Equal3~0_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~0_combout\ <= NOT \i_e_payment_fsm|Selector58~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.start_state~q\;
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
\ALT_INV_nearby_person_sensor~input_o\ <= NOT \nearby_person_sensor~input_o\;
\ALT_INV_washing_machine_address_in[0]~input_o\ <= NOT \washing_machine_address_in[0]~input_o\;
\ALT_INV_washing_machine_address_in[1]~input_o\ <= NOT \washing_machine_address_in[1]~input_o\;
\ALT_INV_washing_machine_address_in[2]~input_o\ <= NOT \washing_machine_address_in[2]~input_o\;
\ALT_INV_push_password_button~input_o\ <= NOT \push_password_button~input_o\;
\ALT_INV_password_in[3]~input_o\ <= NOT \password_in[3]~input_o\;
\ALT_INV_password_in[2]~input_o\ <= NOT \password_in[2]~input_o\;
\ALT_INV_password_in[1]~input_o\ <= NOT \password_in[1]~input_o\;
\ALT_INV_password_in[0]~input_o\ <= NOT \password_in[0]~input_o\;
\ALT_INV_push_address_button~input_o\ <= NOT \push_address_button~input_o\;
\ALT_INV_washing_machine_address_in[3]~input_o\ <= NOT \washing_machine_address_in[3]~input_o\;
\ALT_INV_washing_machine_done_sensor~input_o\ <= NOT \washing_machine_done_sensor~input_o\;
\ALT_INV_coin_in[3]~input_o\ <= NOT \coin_in[3]~input_o\;
\ALT_INV_coin_in[0]~input_o\ <= NOT \coin_in[0]~input_o\;
\ALT_INV_coin_in[2]~input_o\ <= NOT \coin_in[2]~input_o\;
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
\i_e_memory|ALT_INV_washing_machine_address_available~combout\ <= NOT \i_e_memory|washing_machine_address_available~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\;
\i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\ <= NOT \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\;
\i_e_memory|ALT_INV_Decoder0~8_combout\ <= NOT \i_e_memory|Decoder0~8_combout\;
\i_e_memory|ALT_INV_Decoder0~7_combout\ <= NOT \i_e_memory|Decoder0~7_combout\;
\i_e_memory|ALT_INV_Decoder0~6_combout\ <= NOT \i_e_memory|Decoder0~6_combout\;
\i_e_memory|ALT_INV_Decoder0~5_combout\ <= NOT \i_e_memory|Decoder0~5_combout\;
\i_e_laundry_fsm|ALT_INV_Selector0~0_combout\ <= NOT \i_e_laundry_fsm|Selector0~0_combout\;
\i_e_memory|ALT_INV_Decoder0~4_combout\ <= NOT \i_e_memory|Decoder0~4_combout\;
\i_e_memory|ALT_INV_Decoder0~3_combout\ <= NOT \i_e_memory|Decoder0~3_combout\;
\i_e_memory|ALT_INV_Decoder0~2_combout\ <= NOT \i_e_memory|Decoder0~2_combout\;
\i_e_memory|ALT_INV_Decoder0~1_combout\ <= NOT \i_e_memory|Decoder0~1_combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.no_action_state~q\;
\i_e_laundry_fsm|ALT_INV_Equal0~0_combout\ <= NOT \i_e_laundry_fsm|Equal0~0_combout\;
\i_e_laundry_fsm|ALT_INV_Selector2~0_combout\ <= NOT \i_e_laundry_fsm|Selector2~0_combout\;
\i_e_memory|ALT_INV_Decoder0~0_combout\ <= NOT \i_e_memory|Decoder0~0_combout\;
\i_e_laundry_fsm|ALT_INV_Selector3~1_combout\ <= NOT \i_e_laundry_fsm|Selector3~1_combout\;
\i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\ <= NOT \i_e_laundry_fsm|sl_password_button_last_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.user_detect_state~q\;
\i_e_laundry_fsm|ALT_INV_Selector3~0_combout\ <= NOT \i_e_laundry_fsm|Selector3~0_combout\;
\i_e_laundry_fsm|ALT_INV_sl_address_button_last_state~q\ <= NOT \i_e_laundry_fsm|sl_address_button_last_state~q\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.verification_state~q\;
\i_e_memory|ALT_INV_Mux0~4_combout\ <= NOT \i_e_memory|Mux0~4_combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.availability_state~q\;
\i_e_payment_fsm|ALT_INV_Selector58~5_combout\ <= NOT \i_e_payment_fsm|Selector58~5_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~4_combout\ <= NOT \i_e_payment_fsm|Selector58~4_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~3_combout\ <= NOT \i_e_payment_fsm|Selector58~3_combout\;
\i_e_payment_fsm|ALT_INV_Selector58~2_combout\ <= NOT \i_e_payment_fsm|Selector58~2_combout\;
\i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\ <= NOT \i_e_laundry_fsm|sl_present_state.hold_state~q\;

-- Location: IOOBUF_X89_Y15_N56
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

-- Location: IOOBUF_X34_Y81_N93
\red_led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red_led);

-- Location: IOOBUF_X89_Y16_N39
\start_button~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_start_button);

-- Location: IOOBUF_X68_Y0_N2
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

-- Location: IOOBUF_X76_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N19
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

-- Location: IOOBUF_X70_Y0_N53
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

-- Location: IOOBUF_X76_Y0_N36
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

-- Location: IOOBUF_X74_Y0_N42
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

-- Location: IOOBUF_X74_Y0_N59
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

-- Location: IOOBUF_X8_Y0_N2
\hex_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(0));

-- Location: IOOBUF_X40_Y0_N36
\hex_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(1));

-- Location: IOOBUF_X52_Y0_N36
\hex_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(2));

-- Location: IOOBUF_X16_Y0_N2
\hex_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(3));

-- Location: IOOBUF_X89_Y9_N5
\hex_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(4));

-- Location: IOOBUF_X6_Y81_N2
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

-- Location: IOOBUF_X32_Y0_N19
\hex_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_1(6));

-- Location: IOOBUF_X52_Y0_N2
\hex_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(0));

-- Location: IOOBUF_X89_Y6_N22
\hex_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(1));

-- Location: IOOBUF_X20_Y81_N53
\hex_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(2));

-- Location: IOOBUF_X2_Y81_N93
\hex_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(3));

-- Location: IOOBUF_X26_Y0_N76
\hex_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(4));

-- Location: IOOBUF_X58_Y0_N42
\hex_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(5));

-- Location: IOOBUF_X30_Y81_N36
\hex_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_2(6));

-- Location: IOOBUF_X14_Y81_N19
\hex_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(0));

-- Location: IOOBUF_X52_Y0_N53
\hex_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(1));

-- Location: IOOBUF_X14_Y81_N2
\hex_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(2));

-- Location: IOOBUF_X62_Y0_N19
\hex_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(3));

-- Location: IOOBUF_X28_Y0_N36
\hex_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(4));

-- Location: IOOBUF_X16_Y0_N53
\hex_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(5));

-- Location: IOOBUF_X2_Y81_N59
\hex_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_3(6));

-- Location: IOOBUF_X24_Y81_N36
\hex_4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(0));

-- Location: IOOBUF_X68_Y0_N53
\hex_4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(1));

-- Location: IOOBUF_X38_Y81_N2
\hex_4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(2));

-- Location: IOOBUF_X18_Y81_N42
\hex_4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(3));

-- Location: IOOBUF_X22_Y0_N19
\hex_4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(4));

-- Location: IOOBUF_X34_Y81_N42
\hex_4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(5));

-- Location: IOOBUF_X8_Y81_N53
\hex_4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_4(6));

-- Location: IOOBUF_X22_Y0_N36
\hex_5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(0));

-- Location: IOOBUF_X6_Y0_N36
\hex_5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(1));

-- Location: IOOBUF_X20_Y81_N36
\hex_5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(2));

-- Location: IOOBUF_X14_Y0_N53
\hex_5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(3));

-- Location: IOOBUF_X89_Y15_N39
\hex_5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(4));

-- Location: IOOBUF_X89_Y9_N39
\hex_5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(5));

-- Location: IOOBUF_X38_Y81_N19
\hex_5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_hex_5(6));

-- Location: IOOBUF_X89_Y21_N39
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

-- Location: IOOBUF_X89_Y21_N22
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

-- Location: IOOBUF_X89_Y23_N56
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

-- Location: IOOBUF_X32_Y0_N53
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

-- Location: IOIBUF_X74_Y0_N75
\washing_machine_done_sensor~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_done_sensor,
	o => \washing_machine_done_sensor~input_o\);

-- Location: LABCELL_X73_Y1_N21
\i_e_laundry_fsm|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector8~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.process_state~q\ & ( \washing_machine_done_sensor~input_o\ ) ) # ( !\i_e_laundry_fsm|sl_present_state.process_state~q\ & ( (\washing_machine_done_sensor~input_o\ & 
-- \i_e_laundry_fsm|sl_present_state.hold_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_done_sensor~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	combout => \i_e_laundry_fsm|Selector8~0_combout\);

-- Location: IOIBUF_X72_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X73_Y1_N23
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

-- Location: IOIBUF_X70_Y0_N1
\washing_machine_address_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(2),
	o => \washing_machine_address_in[2]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\washing_machine_address_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(0),
	o => \washing_machine_address_in[0]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\washing_machine_address_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(1),
	o => \washing_machine_address_in[1]~input_o\);

-- Location: IOIBUF_X74_Y0_N92
\washing_machine_address_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_washing_machine_address_in(3),
	o => \washing_machine_address_in[3]~input_o\);

-- Location: MLABCELL_X72_Y1_N21
\i_e_memory|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~0_combout\ = ( \washing_machine_address_in[3]~input_o\ & ( (!\i_e_memory|ram\(8) & (!\washing_machine_address_in[2]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & !\washing_machine_address_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(8),
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~0_combout\);

-- Location: MLABCELL_X72_Y1_N18
\i_e_memory|ram[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(8) = ( \i_e_memory|ram\(8) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(8) & ( (\reset~input_o\ & \i_e_memory|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~0_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(8),
	combout => \i_e_memory|ram\(8));

-- Location: LABCELL_X71_Y1_N42
\i_e_memory|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~1_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (!\washing_machine_address_in[1]~input_o\ & (\washing_machine_address_in[0]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & \washing_machine_address_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_washing_machine_address_in[2]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~1_combout\);

-- Location: LABCELL_X71_Y1_N57
\i_e_memory|ram[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(5) = ( \i_e_memory|ram\(5) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(5) & ( (\i_e_memory|Decoder0~1_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Decoder0~1_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(5),
	combout => \i_e_memory|ram\(5));

-- Location: LABCELL_X71_Y1_N51
\i_e_memory|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~2_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (\washing_machine_address_in[1]~input_o\ & (\washing_machine_address_in[0]~input_o\ & (\washing_machine_address_in[2]~input_o\ & !\i_e_memory|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datad => \i_e_memory|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~2_combout\);

-- Location: LABCELL_X71_Y1_N12
\i_e_memory|ram[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(7) = ( \i_e_memory|ram\(7) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(7) & ( (\i_e_memory|Decoder0~2_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Decoder0~2_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(7),
	combout => \i_e_memory|ram\(7));

-- Location: LABCELL_X71_Y1_N33
\i_e_memory|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~4_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (\washing_machine_address_in[1]~input_o\ & (\washing_machine_address_in[2]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & !\i_e_memory|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \i_e_memory|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~4_combout\);

-- Location: LABCELL_X71_Y1_N9
\i_e_memory|ram[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(6) = ( \i_e_memory|ram\(6) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(6) & ( (\reset~input_o\ & \i_e_memory|Decoder0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \i_e_memory|ALT_INV_Decoder0~4_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(6),
	combout => \i_e_memory|ram\(6));

-- Location: LABCELL_X71_Y1_N6
\i_e_memory|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~5_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (!\washing_machine_address_in[1]~input_o\ & (\washing_machine_address_in[0]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & !\washing_machine_address_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_washing_machine_address_in[2]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~5_combout\);

-- Location: LABCELL_X71_Y1_N48
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

-- Location: LABCELL_X71_Y1_N21
\i_e_memory|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~8_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (!\i_e_memory|Mux0~0_combout\ & (!\washing_machine_address_in[2]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & \washing_machine_address_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~8_combout\);

-- Location: LABCELL_X71_Y1_N27
\i_e_memory|ram[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(2) = ( \i_e_memory|Decoder0~8_combout\ & ( \i_e_memory|ram\(2) & ( \reset~input_o\ ) ) ) # ( !\i_e_memory|Decoder0~8_combout\ & ( \i_e_memory|ram\(2) & ( \reset~input_o\ ) ) ) # ( \i_e_memory|Decoder0~8_combout\ & ( !\i_e_memory|ram\(2) & 
-- ( \reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datae => \i_e_memory|ALT_INV_Decoder0~8_combout\,
	dataf => \i_e_memory|ALT_INV_ram\(2),
	combout => \i_e_memory|ram\(2));

-- Location: LABCELL_X71_Y1_N15
\i_e_memory|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~6_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (\washing_machine_address_in[1]~input_o\ & (!\washing_machine_address_in[2]~input_o\ & (\washing_machine_address_in[0]~input_o\ & !\i_e_memory|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \i_e_memory|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~6_combout\);

-- Location: LABCELL_X71_Y1_N45
\i_e_memory|ram[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(3) = ( \i_e_memory|ram\(3) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(3) & ( (\i_e_memory|Decoder0~6_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_memory|ALT_INV_Decoder0~6_combout\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(3),
	combout => \i_e_memory|ram\(3));

-- Location: LABCELL_X71_Y1_N18
\i_e_memory|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~7_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (!\i_e_memory|Mux0~0_combout\ & (!\washing_machine_address_in[2]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & !\washing_machine_address_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datad => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~7_combout\);

-- Location: LABCELL_X70_Y1_N33
\i_e_memory|ram[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|ram\(0) = ( \i_e_memory|ram\(0) & ( \reset~input_o\ ) ) # ( !\i_e_memory|ram\(0) & ( (\i_e_memory|Decoder0~7_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_memory|ALT_INV_Decoder0~7_combout\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_ram\(0),
	combout => \i_e_memory|ram\(0));

-- Location: LABCELL_X71_Y1_N39
\i_e_memory|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Mux0~5_combout\ = ( !\washing_machine_address_in[1]~input_o\ & ( (!\washing_machine_address_in[2]~input_o\ & (((!\washing_machine_address_in[0]~input_o\ & ((\i_e_memory|ram\(0)))) # (\washing_machine_address_in[0]~input_o\ & 
-- (\i_e_memory|ram\(1)))))) # (\washing_machine_address_in[2]~input_o\ & ((((\washing_machine_address_in[0]~input_o\))))) ) ) # ( \washing_machine_address_in[1]~input_o\ & ( ((!\washing_machine_address_in[2]~input_o\ & 
-- ((!\washing_machine_address_in[0]~input_o\ & (\i_e_memory|ram\(2))) # (\washing_machine_address_in[0]~input_o\ & ((\i_e_memory|ram\(3)))))) # (\washing_machine_address_in[2]~input_o\ & (((\washing_machine_address_in[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110001110111011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(1),
	datab => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datac => \i_e_memory|ALT_INV_ram\(2),
	datad => \i_e_memory|ALT_INV_ram\(3),
	datae => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datag => \i_e_memory|ALT_INV_ram\(0),
	combout => \i_e_memory|Mux0~5_combout\);

-- Location: LABCELL_X71_Y1_N54
\i_e_memory|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Decoder0~3_combout\ = ( !\washing_machine_address_in[3]~input_o\ & ( (!\washing_machine_address_in[1]~input_o\ & (!\washing_machine_address_in[0]~input_o\ & (!\i_e_memory|Mux0~0_combout\ & \washing_machine_address_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_address_in[1]~input_o\,
	datab => \ALT_INV_washing_machine_address_in[0]~input_o\,
	datac => \i_e_memory|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_washing_machine_address_in[2]~input_o\,
	dataf => \ALT_INV_washing_machine_address_in[3]~input_o\,
	combout => \i_e_memory|Decoder0~3_combout\);

-- Location: LABCELL_X71_Y1_N30
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

-- Location: LABCELL_X71_Y1_N0
\i_e_memory|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|Mux0~0_combout\ = ( !\washing_machine_address_in[1]~input_o\ & ( ((!\washing_machine_address_in[2]~input_o\ & (((\i_e_memory|Mux0~5_combout\)))) # (\washing_machine_address_in[2]~input_o\ & ((!\i_e_memory|Mux0~5_combout\ & 
-- ((\i_e_memory|ram\(4)))) # (\i_e_memory|Mux0~5_combout\ & (\i_e_memory|ram\(5)))))) ) ) # ( \washing_machine_address_in[1]~input_o\ & ( ((!\washing_machine_address_in[2]~input_o\ & (((\i_e_memory|Mux0~5_combout\)))) # 
-- (\washing_machine_address_in[2]~input_o\ & ((!\i_e_memory|Mux0~5_combout\ & ((\i_e_memory|ram\(6)))) # (\i_e_memory|Mux0~5_combout\ & (\i_e_memory|ram\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_memory|ALT_INV_ram\(5),
	datab => \i_e_memory|ALT_INV_ram\(7),
	datac => \i_e_memory|ALT_INV_ram\(6),
	datad => \ALT_INV_washing_machine_address_in[2]~input_o\,
	datae => \ALT_INV_washing_machine_address_in[1]~input_o\,
	dataf => \i_e_memory|ALT_INV_Mux0~5_combout\,
	datag => \i_e_memory|ALT_INV_ram\(4),
	combout => \i_e_memory|Mux0~0_combout\);

-- Location: MLABCELL_X72_Y1_N15
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

-- Location: MLABCELL_X72_Y1_N12
\i_e_memory|washing_machine_address_available\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_memory|washing_machine_address_available~combout\ = ( \i_e_memory|washing_machine_address_available~combout\ & ( (!\i_e_memory|Mux0~4_combout\) # (!\reset~input_o\) ) ) # ( !\i_e_memory|washing_machine_address_available~combout\ & ( 
-- (!\i_e_memory|Mux0~4_combout\ & \reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_memory|ALT_INV_Mux0~4_combout\,
	datac => \ALT_INV_reset~input_o\,
	dataf => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	combout => \i_e_memory|washing_machine_address_available~combout\);

-- Location: IOIBUF_X76_Y0_N52
\password_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(0),
	o => \password_in[0]~input_o\);

-- Location: IOIBUF_X66_Y0_N58
\password_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(2),
	o => \password_in[2]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\password_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(3),
	o => \password_in[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\password_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_password_in(1),
	o => \password_in[1]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\push_password_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_password_button,
	o => \push_password_button~input_o\);

-- Location: IOIBUF_X70_Y0_N35
\nearby_person_sensor~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nearby_person_sensor,
	o => \nearby_person_sensor~input_o\);

-- Location: LABCELL_X73_Y1_N30
\i_e_laundry_fsm|sl_used_washing_machines_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\ = ( \reset~input_o\ & ( !\i_e_laundry_fsm|sl_present_state.start_state~q\ $ (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)) ) ) # ( !\reset~input_o\ & ( 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[0]~0_combout\);

-- Location: FF_X73_Y1_N32
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

-- Location: LABCELL_X73_Y1_N33
\i_e_laundry_fsm|sl_used_washing_machines_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\ = ( \reset~input_o\ & ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ (((!\i_e_laundry_fsm|sl_present_state.start_state~q\) # (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) 
-- ) # ( !\reset~input_o\ & ( \i_e_laundry_fsm|sl_used_washing_machines_count\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[1]~1_combout\);

-- Location: FF_X73_Y1_N35
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

-- Location: LABCELL_X73_Y1_N42
\i_e_laundry_fsm|sl_used_washing_machines_count[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( \reset~input_o\ & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1)) # ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(2)) 
-- # ((!\i_e_laundry_fsm|sl_present_state.start_state~q\) # (!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( \reset~input_o\ & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (\i_e_laundry_fsm|sl_present_state.start_state~q\ & \i_e_laundry_fsm|sl_used_washing_machines_count\(0)))) ) ) ) # ( \i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datae => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[3]~3_combout\);

-- Location: FF_X73_Y1_N44
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

-- Location: LABCELL_X73_Y1_N27
\i_e_laundry_fsm|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector0~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & (\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	combout => \i_e_laundry_fsm|Selector0~0_combout\);

-- Location: LABCELL_X73_Y1_N24
\i_e_laundry_fsm|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector0~1_combout\ = ( \i_e_laundry_fsm|sl_present_state.start_state~q\ & ( (\i_e_laundry_fsm|Selector0~0_combout\ & ((\i_e_laundry_fsm|sl_present_state.no_action_state~q\) # (\nearby_person_sensor~input_o\))) ) ) # ( 
-- !\i_e_laundry_fsm|sl_present_state.start_state~q\ & ( (\i_e_laundry_fsm|sl_present_state.no_action_state~q\) # (\nearby_person_sensor~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nearby_person_sensor~input_o\,
	datac => \i_e_laundry_fsm|ALT_INV_Selector0~0_combout\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	combout => \i_e_laundry_fsm|Selector0~1_combout\);

-- Location: FF_X73_Y1_N25
\i_e_laundry_fsm|sl_present_state.no_action_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.no_action_state~q\);

-- Location: MLABCELL_X72_Y1_N9
\i_e_laundry_fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Equal0~0_combout\ = ( !\password_in[3]~input_o\ & ( (!\password_in[0]~input_o\ & (!\password_in[2]~input_o\ & !\password_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_password_in[0]~input_o\,
	datac => \ALT_INV_password_in[2]~input_o\,
	datad => \ALT_INV_password_in[1]~input_o\,
	dataf => \ALT_INV_password_in[3]~input_o\,
	combout => \i_e_laundry_fsm|Equal0~0_combout\);

-- Location: MLABCELL_X72_Y1_N30
\i_e_laundry_fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector1~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( \i_e_laundry_fsm|sl_password_button_last_state~q\ ) ) # ( !\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( 
-- \i_e_laundry_fsm|sl_password_button_last_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.no_action_state~q\ & \nearby_person_sensor~input_o\) ) ) ) # ( \i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( 
-- !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( (!\push_password_button~input_o\) # ((!\i_e_laundry_fsm|Equal0~0_combout\) # ((!\i_e_laundry_fsm|sl_present_state.no_action_state~q\ & \nearby_person_sensor~input_o\))) ) ) ) # ( 
-- !\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ( !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( (!\i_e_laundry_fsm|sl_present_state.no_action_state~q\ & \nearby_person_sensor~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010111111111100111000001010000010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.no_action_state~q\,
	datab => \ALT_INV_push_password_button~input_o\,
	datac => \ALT_INV_nearby_person_sensor~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_Equal0~0_combout\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	combout => \i_e_laundry_fsm|Selector1~0_combout\);

-- Location: FF_X72_Y1_N32
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

-- Location: MLABCELL_X72_Y1_N6
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

-- Location: FF_X72_Y1_N8
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

-- Location: MLABCELL_X72_Y1_N42
\i_e_laundry_fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~1_combout\ = ( \push_password_button~input_o\ & ( !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( (((\password_in[1]~input_o\) # (\password_in[3]~input_o\)) # (\password_in[2]~input_o\)) # (\password_in[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_password_in[0]~input_o\,
	datab => \ALT_INV_password_in[2]~input_o\,
	datac => \ALT_INV_password_in[3]~input_o\,
	datad => \ALT_INV_password_in[1]~input_o\,
	datae => \ALT_INV_push_password_button~input_o\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	combout => \i_e_laundry_fsm|Selector3~1_combout\);

-- Location: IOIBUF_X72_Y0_N1
\push_address_button~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push_address_button,
	o => \push_address_button~input_o\);

-- Location: MLABCELL_X72_Y1_N54
\i_e_laundry_fsm|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector2~0_combout\ = ( \push_password_button~input_o\ & ( !\i_e_laundry_fsm|sl_password_button_last_state~q\ & ( (!\password_in[0]~input_o\ & (!\password_in[2]~input_o\ & (!\password_in[3]~input_o\ & !\password_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_password_in[0]~input_o\,
	datab => \ALT_INV_password_in[2]~input_o\,
	datac => \ALT_INV_password_in[3]~input_o\,
	datad => \ALT_INV_password_in[1]~input_o\,
	datae => \ALT_INV_push_password_button~input_o\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_password_button_last_state~q\,
	combout => \i_e_laundry_fsm|Selector2~0_combout\);

-- Location: MLABCELL_X72_Y1_N48
\i_e_laundry_fsm|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector2~1_combout\ = ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( \i_e_laundry_fsm|Selector3~0_combout\ & ( (\i_e_laundry_fsm|Selector2~0_combout\ & (\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & 
-- ((!\i_e_memory|washing_machine_address_available~combout\) # (!\i_e_laundry_fsm|sl_present_state.availability_state~q\)))) ) ) ) # ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( !\i_e_laundry_fsm|Selector3~0_combout\ & ( 
-- (!\i_e_memory|washing_machine_address_available~combout\) # (!\i_e_laundry_fsm|sl_present_state.availability_state~q\) ) ) ) # ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( !\i_e_laundry_fsm|Selector3~0_combout\ & ( 
-- (\i_e_laundry_fsm|Selector2~0_combout\ & (\i_e_laundry_fsm|sl_present_state.user_detect_state~q\ & ((!\i_e_memory|washing_machine_address_available~combout\) # (!\i_e_laundry_fsm|sl_present_state.availability_state~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100111111001111110000000000010101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_Selector2~0_combout\,
	datab => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\,
	combout => \i_e_laundry_fsm|Selector2~1_combout\);

-- Location: FF_X72_Y1_N50
\i_e_laundry_fsm|sl_present_state.verification_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector2~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.verification_state~q\);

-- Location: MLABCELL_X72_Y1_N27
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

-- Location: FF_X72_Y1_N28
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

-- Location: MLABCELL_X72_Y1_N24
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

-- Location: MLABCELL_X72_Y1_N36
\i_e_laundry_fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector3~2_combout\ = ( \i_e_laundry_fsm|sl_present_state.availability_state~q\ & ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (!\i_e_memory|washing_machine_address_available~combout\ & 
-- \i_e_laundry_fsm|Selector3~0_combout\) ) ) ) # ( !\i_e_laundry_fsm|sl_present_state.availability_state~q\ & ( \i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( \i_e_laundry_fsm|Selector3~0_combout\ ) ) ) # ( 
-- \i_e_laundry_fsm|sl_present_state.availability_state~q\ & ( !\i_e_laundry_fsm|sl_present_state.verification_state~q\ & ( (!\i_e_memory|washing_machine_address_available~combout\ & ((!\i_e_laundry_fsm|sl_present_state.user_detect_state~q\) # 
-- (\i_e_laundry_fsm|Selector3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000100010000001111000011110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_Selector3~1_combout\,
	datab => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	datac => \i_e_laundry_fsm|ALT_INV_Selector3~0_combout\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.user_detect_state~q\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.verification_state~q\,
	combout => \i_e_laundry_fsm|Selector3~2_combout\);

-- Location: FF_X72_Y1_N38
\i_e_laundry_fsm|sl_present_state.availability_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_e_laundry_fsm|Selector3~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.availability_state~q\);

-- Location: MLABCELL_X72_Y1_N0
\i_e_laundry_fsm|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector4~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.availability_state~q\ & ( \i_e_memory|washing_machine_address_available~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_memory|ALT_INV_washing_machine_address_available~combout\,
	datae => \i_e_laundry_fsm|ALT_INV_sl_present_state.availability_state~q\,
	combout => \i_e_laundry_fsm|Selector4~0_combout\);

-- Location: FF_X72_Y1_N1
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

-- Location: LABCELL_X73_Y1_N18
\i_e_laundry_fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector5~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.payment_state~q\ ) # ( !\i_e_laundry_fsm|sl_present_state.payment_state~q\ & ( (!\washing_machine_done_sensor~input_o\ & \i_e_laundry_fsm|sl_present_state.hold_state~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_washing_machine_done_sensor~input_o\,
	datad => \i_e_laundry_fsm|ALT_INV_sl_present_state.hold_state~q\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.payment_state~q\,
	combout => \i_e_laundry_fsm|Selector5~0_combout\);

-- Location: FF_X73_Y1_N20
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

-- Location: LABCELL_X73_Y1_N12
\i_e_laundry_fsm|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|Selector6~0_combout\ = ( \i_e_laundry_fsm|sl_present_state.process_state~q\ & ( !\washing_machine_done_sensor~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_washing_machine_done_sensor~input_o\,
	dataf => \i_e_laundry_fsm|ALT_INV_sl_present_state.process_state~q\,
	combout => \i_e_laundry_fsm|Selector6~0_combout\);

-- Location: FF_X73_Y1_N13
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

-- Location: FF_X73_Y1_N17
\i_e_laundry_fsm|sl_present_state.start_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \i_e_laundry_fsm|sl_present_state.finished_processing_state~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_e_laundry_fsm|sl_present_state.start_state~q\);

-- Location: LABCELL_X73_Y1_N39
\i_e_laundry_fsm|sl_used_washing_machines_count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ( \reset~input_o\ & ( (!\i_e_laundry_fsm|sl_present_state.start_state~q\) # ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(0)) # 
-- (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1))) ) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ( \reset~input_o\ & ( (\i_e_laundry_fsm|sl_present_state.start_state~q\ & (\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(1))) ) ) ) # ( \i_e_laundry_fsm|sl_used_washing_machines_count\(2) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_present_state.start_state~q\,
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datae => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \ALT_INV_reset~input_o\,
	combout => \i_e_laundry_fsm|sl_used_washing_machines_count[2]~2_combout\);

-- Location: FF_X73_Y1_N41
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

-- Location: LABCELL_X73_Y1_N51
\i_e_7seg_bcd_decoder|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux6~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(1))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(2) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux6~0_combout\);

-- Location: LABCELL_X73_Y1_N54
\i_e_7seg_bcd_decoder|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux5~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux5~0_combout\);

-- Location: LABCELL_X73_Y1_N57
\i_e_7seg_bcd_decoder|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux4~0_combout\ = ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux4~0_combout\);

-- Location: LABCELL_X73_Y1_N0
\i_e_7seg_bcd_decoder|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux3~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(2)))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datad => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux3~0_combout\);

-- Location: LABCELL_X73_Y1_N3
\i_e_7seg_bcd_decoder|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux2~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3)) # ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- \i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux2~0_combout\);

-- Location: LABCELL_X73_Y1_N6
\i_e_7seg_bcd_decoder|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux1~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & ((!\i_e_laundry_fsm|sl_used_washing_machines_count\(2)) # 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(1)))) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (\i_e_laundry_fsm|sl_used_washing_machines_count\(1) & (!\i_e_laundry_fsm|sl_used_washing_machines_count\(3) & 
-- !\i_e_laundry_fsm|sl_used_washing_machines_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux1~0_combout\);

-- Location: LABCELL_X73_Y1_N9
\i_e_7seg_bcd_decoder|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_7seg_bcd_decoder|Mux0~0_combout\ = ( \i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( (!\i_e_laundry_fsm|sl_used_washing_machines_count\(1) $ (!\i_e_laundry_fsm|sl_used_washing_machines_count\(2))) # 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(3)) ) ) # ( !\i_e_laundry_fsm|sl_used_washing_machines_count\(0) & ( ((\i_e_laundry_fsm|sl_used_washing_machines_count\(2)) # (\i_e_laundry_fsm|sl_used_washing_machines_count\(3))) # 
-- (\i_e_laundry_fsm|sl_used_washing_machines_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(1),
	datab => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(3),
	datac => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(2),
	dataf => \i_e_laundry_fsm|ALT_INV_sl_used_washing_machines_count\(0),
	combout => \i_e_7seg_bcd_decoder|Mux0~0_combout\);

-- Location: IOIBUF_X89_Y25_N4
\coin_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(0),
	o => \coin_in[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\coin_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(3),
	o => \coin_in[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\coin_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(1),
	o => \coin_in[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\coin_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_in(2),
	o => \coin_in[2]~input_o\);

-- Location: LABCELL_X88_Y25_N57
\i_e_payment_fsm|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Equal1~0_combout\ = ( \coin_in[1]~input_o\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|Equal1~0_combout\);

-- Location: LABCELL_X88_Y25_N0
\i_e_payment_fsm|sl_coin_state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state~0_combout\ = ( !\coin_in[1]~input_o\ & ( (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & !\coin_in[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|sl_coin_state~0_combout\);

-- Location: LABCELL_X88_Y25_N21
\i_e_payment_fsm|sl_coin_state~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state~1_combout\ = ( \coin_in[1]~input_o\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[3]~input_o\)) ) ) # ( !\coin_in[1]~input_o\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ (!\coin_in[3]~input_o\))) 
-- # (\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100001101000011010000110100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|sl_coin_state~1_combout\);

-- Location: MLABCELL_X87_Y24_N45
\i_e_payment_fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Equal0~0_combout\ = ( \coin_in[0]~input_o\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	dataf => \ALT_INV_coin_in[0]~input_o\,
	combout => \i_e_payment_fsm|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y24_N9
\i_e_payment_fsm|Selector56~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector56~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( (!\coin_in[0]~input_o\ & 
-- ((!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\))))) # (\coin_in[0]~input_o\ & (((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)) # 
-- (\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010010111011111111101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	combout => \i_e_payment_fsm|Selector56~0_combout\);

-- Location: MLABCELL_X87_Y25_N6
\i_e_payment_fsm|sl_coin_state.ten_cents_842\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ = ( \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector56~0_combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & ( (\i_e_payment_fsm|Selector56~0_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector56~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\);

-- Location: MLABCELL_X87_Y25_N0
\i_e_payment_fsm|Selector52~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector52~0_combout\ = ( \i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & 
-- \i_e_payment_fsm|Equal1~0_combout\))) # (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\i_e_payment_fsm|sl_coin_state~1_combout\) 
-- # ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) ) ) ) # ( \i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( 
-- ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( 
-- !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010111011111110000111100111111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector52~0_combout\);

-- Location: MLABCELL_X87_Y25_N12
\i_e_payment_fsm|sl_coin_state.thirty_cents_826\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( \i_e_payment_fsm|Selector52~0_combout\ ) ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( \i_e_payment_fsm|Selector52~0_combout\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector52~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\);

-- Location: MLABCELL_X87_Y25_N36
\i_e_payment_fsm|Selector50~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector50~0_combout\ = ( \i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( 
-- (!\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ((\i_e_payment_fsm|Equal1~0_combout\)))) # (\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & 
-- ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|Equal1~0_combout\)))) ) ) ) # ( \i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ 
-- & ( (!\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ((\i_e_payment_fsm|Equal1~0_combout\)))) # (\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & 
-- ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|Equal1~0_combout\)))) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ 
-- & ( (!\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & ((\i_e_payment_fsm|Equal1~0_combout\)))) # (\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & 
-- ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|Equal1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110011010100000111001101010000011100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector50~0_combout\);

-- Location: MLABCELL_X87_Y25_N51
\i_e_payment_fsm|sl_coin_state.fourty_cents_818\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector50~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ ) ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector50~0_combout\ ) ) # ( \i_e_payment_fsm|WideOr41~combout\ & ( !\i_e_payment_fsm|Selector50~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector50~0_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\);

-- Location: MLABCELL_X87_Y25_N24
\i_e_payment_fsm|Selector58~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~4_combout\ = ( !\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & (!\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & !\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	combout => \i_e_payment_fsm|Selector58~4_combout\);

-- Location: LABCELL_X88_Y25_N36
\i_e_payment_fsm|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector46~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\coin_in[2]~input_o\ 
-- & ((!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[0]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[0]~input_o\) # (\coin_in[3]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[0]~input_o\) # (\coin_in[3]~input_o\)) # 
-- (\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & \coin_in[0]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000010010111011111111001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	combout => \i_e_payment_fsm|Selector46~0_combout\);

-- Location: LABCELL_X88_Y24_N45
\i_e_payment_fsm|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector46~1_combout\ = ( \i_e_payment_fsm|Selector46~0_combout\ ) # ( !\i_e_payment_fsm|Selector46~0_combout\ & ( (!\i_e_payment_fsm|Equal1~0_combout\ & (((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & 
-- \i_e_payment_fsm|sl_coin_state~0_combout\)))) # (\i_e_payment_fsm|Equal1~0_combout\ & (((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector46~0_combout\,
	combout => \i_e_payment_fsm|Selector46~1_combout\);

-- Location: LABCELL_X88_Y24_N54
\i_e_payment_fsm|sl_coin_state.sixty_cents_802\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ = ( \i_e_payment_fsm|Selector46~1_combout\ & ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ ) ) ) # ( !\i_e_payment_fsm|Selector46~1_combout\ & ( 
-- \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ ) ) ) # ( \i_e_payment_fsm|Selector46~1_combout\ & ( !\i_e_payment_fsm|WideOr41~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector46~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\);

-- Location: LABCELL_X88_Y25_N24
\i_e_payment_fsm|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector44~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \coin_in[1]~input_o\ & ( (\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( \coin_in[1]~input_o\ & ( (\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[0]~input_o\))) 
-- ) ) ) # ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( !\coin_in[1]~input_o\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & \coin_in[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|Selector44~0_combout\);

-- Location: LABCELL_X88_Y25_N48
\i_e_payment_fsm|Selector13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector13~1_combout\);

-- Location: MLABCELL_X87_Y24_N33
\i_e_payment_fsm|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Equal3~0_combout\ = ( !\coin_in[0]~input_o\ & ( (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	dataf => \ALT_INV_coin_in[0]~input_o\,
	combout => \i_e_payment_fsm|Equal3~0_combout\);

-- Location: LABCELL_X88_Y23_N30
\i_e_payment_fsm|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ $ 
-- (\coin_in[1]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[2]~input_o\ & ((!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[0]~input_o\))))) # 
-- (\coin_in[2]~input_o\ & (((\coin_in[1]~input_o\) # (\coin_in[0]~input_o\)) # (\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( 
-- (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & (\coin_in[0]~input_o\ & !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000010010111011111111001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	combout => \i_e_payment_fsm|Selector13~0_combout\);

-- Location: LABCELL_X88_Y23_N39
\i_e_payment_fsm|Selector13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector13~2_combout\ = ( \i_e_payment_fsm|Equal3~0_combout\ & ( \i_e_payment_fsm|Selector13~0_combout\ ) ) # ( !\i_e_payment_fsm|Equal3~0_combout\ & ( \i_e_payment_fsm|Selector13~0_combout\ ) ) # ( \i_e_payment_fsm|Equal3~0_combout\ & ( 
-- !\i_e_payment_fsm|Selector13~0_combout\ & ( (\i_e_payment_fsm|Selector13~1_combout\) # (\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal3~0_combout\ & ( !\i_e_payment_fsm|Selector13~0_combout\ & ( 
-- \i_e_payment_fsm|Selector13~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector13~1_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector13~0_combout\,
	combout => \i_e_payment_fsm|Selector13~2_combout\);

-- Location: LABCELL_X88_Y23_N3
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

-- Location: LABCELL_X88_Y23_N42
\i_e_payment_fsm|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector15~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ $ 
-- (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000001000000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	combout => \i_e_payment_fsm|Selector15~0_combout\);

-- Location: LABCELL_X88_Y23_N18
\i_e_payment_fsm|Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector15~1_combout\ = ( \i_e_payment_fsm|Selector15~0_combout\ ) # ( !\i_e_payment_fsm|Selector15~0_combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & (\i_e_payment_fsm|Equal1~0_combout\))) # (\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & (((\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & 
-- \i_e_payment_fsm|Equal1~0_combout\)) # (\i_e_payment_fsm|sl_coin_state~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector15~0_combout\,
	combout => \i_e_payment_fsm|Selector15~1_combout\);

-- Location: LABCELL_X88_Y23_N57
\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ = ( \i_e_payment_fsm|Selector15~1_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector15~1_combout\ & ( (\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector15~1_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\);

-- Location: LABCELL_X88_Y25_N18
\i_e_payment_fsm|Selector58~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~1_combout\ = ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	combout => \i_e_payment_fsm|Selector58~1_combout\);

-- Location: LABCELL_X88_Y25_N45
\i_e_payment_fsm|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector44~1_combout\ = ( \i_e_payment_fsm|Selector58~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\)) # (\i_e_payment_fsm|Selector44~0_combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector58~1_combout\ & ( ((!\i_e_payment_fsm|sl_coin_state~1_combout\) # ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|sl_coin_state~0_combout\))) # (\i_e_payment_fsm|Selector44~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110111111101011111011101010101011101110101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector44~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector58~1_combout\,
	combout => \i_e_payment_fsm|Selector44~1_combout\);

-- Location: LABCELL_X88_Y25_N3
\i_e_payment_fsm|sl_coin_state.seventy_cents_794\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector44~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector44~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\);

-- Location: LABCELL_X88_Y25_N9
\i_e_payment_fsm|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector42~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( 
-- (!\coin_in[2]~input_o\ & (\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( (!\coin_in[2]~input_o\ 
-- & ((!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)) # 
-- (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111100100000000000001011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	combout => \i_e_payment_fsm|Selector42~0_combout\);

-- Location: LABCELL_X88_Y24_N21
\i_e_payment_fsm|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector42~1_combout\ = ( \i_e_payment_fsm|Selector42~0_combout\ ) # ( !\i_e_payment_fsm|Selector42~0_combout\ & ( (!\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & (\i_e_payment_fsm|sl_coin_state~0_combout\ & 
-- (\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\))) # (\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\)) # 
-- (\i_e_payment_fsm|Equal1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector42~0_combout\,
	combout => \i_e_payment_fsm|Selector42~1_combout\);

-- Location: LABCELL_X88_Y24_N18
\i_e_payment_fsm|sl_coin_state.eighty_cents_786\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector42~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector42~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\);

-- Location: LABCELL_X88_Y24_N27
\i_e_payment_fsm|Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector40~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( ((!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( 
-- (!\coin_in[0]~input_o\ & ((!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[0]~input_o\ & (((\coin_in[3]~input_o\) # 
-- (\coin_in[2]~input_o\)) # (\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ 
-- & !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010010111011111111101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector40~0_combout\);

-- Location: LABCELL_X88_Y24_N36
\i_e_payment_fsm|Selector40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector40~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (((\i_e_payment_fsm|Equal1~0_combout\ & \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\)) # (\i_e_payment_fsm|Selector40~0_combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state~0_combout\) ) ) # ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( ((\i_e_payment_fsm|Equal1~0_combout\ & \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\)) # (\i_e_payment_fsm|Selector40~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector40~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector40~1_combout\);

-- Location: MLABCELL_X87_Y24_N30
\i_e_payment_fsm|sl_coin_state.ninety_cents_778\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ = ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector40~1_combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (\i_e_payment_fsm|Selector40~1_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_Selector40~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\);

-- Location: MLABCELL_X87_Y24_N12
\i_e_payment_fsm|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & !\coin_in[3]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000100000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	combout => \i_e_payment_fsm|Selector3~1_combout\);

-- Location: MLABCELL_X87_Y24_N15
\i_e_payment_fsm|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & \coin_in[1]~input_o\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	combout => \i_e_payment_fsm|Selector1~1_combout\);

-- Location: MLABCELL_X87_Y24_N6
\i_e_payment_fsm|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[0]~input_o\ & 
-- ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\))))) # (\coin_in[0]~input_o\ & (((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)) # 
-- (\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[3]~input_o\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010010111011111111101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector1~0_combout\);

-- Location: MLABCELL_X87_Y24_N42
\i_e_payment_fsm|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector1~2_combout\ = ( \i_e_payment_fsm|Selector1~0_combout\ ) # ( !\i_e_payment_fsm|Selector1~0_combout\ & ( ((\i_e_payment_fsm|Equal3~0_combout\ & \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\)) # 
-- (\i_e_payment_fsm|Selector1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_Selector1~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector1~0_combout\,
	combout => \i_e_payment_fsm|Selector1~2_combout\);

-- Location: LABCELL_X88_Y23_N48
\i_e_payment_fsm|sl_coin_state.one_euro_770\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (\i_e_payment_fsm|Selector1~2_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ 
-- & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector1~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector1~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\);

-- Location: LABCELL_X88_Y25_N6
\i_e_payment_fsm|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # 
-- (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( 
-- (!\coin_in[2]~input_o\ & (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( 
-- (!\coin_in[2]~input_o\ & ((!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[0]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[1]~input_o\) # 
-- (\coin_in[3]~input_o\)) # (\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111100100000000000001011011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector3~0_combout\);

-- Location: LABCELL_X88_Y25_N12
\i_e_payment_fsm|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector3~2_combout\ = ( \i_e_payment_fsm|Selector3~0_combout\ ) # ( !\i_e_payment_fsm|Selector3~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\ & \i_e_payment_fsm|Equal3~0_combout\)) # 
-- (\i_e_payment_fsm|Selector3~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datab => \i_e_payment_fsm|ALT_INV_Selector3~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector3~0_combout\,
	combout => \i_e_payment_fsm|Selector3~2_combout\);

-- Location: LABCELL_X88_Y25_N15
\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ = ( \i_e_payment_fsm|Selector3~2_combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector3~2_combout\ & ( (\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & \i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector3~2_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\);

-- Location: LABCELL_X88_Y24_N12
\i_e_payment_fsm|Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- \coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	combout => \i_e_payment_fsm|Selector7~1_combout\);

-- Location: MLABCELL_X87_Y24_N0
\i_e_payment_fsm|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( ((!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (\coin_in[2]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[0]~input_o\ & ((!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\))))) # 
-- (\coin_in[0]~input_o\ & (((\coin_in[2]~input_o\) # (\coin_in[1]~input_o\)) # (\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector7~0_combout\);

-- Location: LABCELL_X88_Y24_N51
\i_e_payment_fsm|Selector7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector7~2_combout\ = ( \i_e_payment_fsm|Selector7~0_combout\ ) # ( !\i_e_payment_fsm|Selector7~0_combout\ & ( ((\i_e_payment_fsm|Equal3~0_combout\ & \i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\)) # 
-- (\i_e_payment_fsm|Selector7~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector7~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector7~0_combout\,
	combout => \i_e_payment_fsm|Selector7~2_combout\);

-- Location: LABCELL_X88_Y24_N42
\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector7~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector7~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\);

-- Location: MLABCELL_X87_Y25_N18
\i_e_payment_fsm|Selector58~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~2_combout\ = ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & (!\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	combout => \i_e_payment_fsm|Selector58~2_combout\);

-- Location: LABCELL_X88_Y24_N15
\i_e_payment_fsm|Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ 
-- $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000001000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	combout => \i_e_payment_fsm|Selector17~1_combout\);

-- Location: MLABCELL_X87_Y24_N3
\i_e_payment_fsm|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( ((!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (\coin_in[1]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( (!\coin_in[0]~input_o\ & ((!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[1]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\))))) # 
-- (\coin_in[0]~input_o\ & (((\coin_in[1]~input_o\) # (\coin_in[2]~input_o\)) # (\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	combout => \i_e_payment_fsm|Selector17~0_combout\);

-- Location: LABCELL_X88_Y24_N48
\i_e_payment_fsm|Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector17~2_combout\ = ( \i_e_payment_fsm|Selector17~0_combout\ ) # ( !\i_e_payment_fsm|Selector17~0_combout\ & ( ((\i_e_payment_fsm|Equal3~0_combout\ & \i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\)) # 
-- (\i_e_payment_fsm|Selector17~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_Selector17~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector17~0_combout\,
	combout => \i_e_payment_fsm|Selector17~2_combout\);

-- Location: LABCELL_X88_Y24_N30
\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector17~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector17~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\);

-- Location: LABCELL_X88_Y24_N6
\i_e_payment_fsm|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( ((!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ $ 
-- (\coin_in[2]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( (!\coin_in[0]~input_o\ & ((!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\))))) # 
-- (\coin_in[0]~input_o\ & (((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\)) # (\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	combout => \i_e_payment_fsm|Selector19~0_combout\);

-- Location: MLABCELL_X87_Y24_N21
\i_e_payment_fsm|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (!\coin_in[2]~input_o\ $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (\coin_in[2]~input_o\ & !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (!\coin_in[2]~input_o\ & \coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000001000000000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector19~1_combout\);

-- Location: MLABCELL_X87_Y24_N27
\i_e_payment_fsm|Selector19~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector19~2_combout\ = ( \i_e_payment_fsm|Selector19~1_combout\ ) # ( !\i_e_payment_fsm|Selector19~1_combout\ & ( ((\i_e_payment_fsm|Equal3~0_combout\ & \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\)) # 
-- (\i_e_payment_fsm|Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector19~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector19~1_combout\,
	combout => \i_e_payment_fsm|Selector19~2_combout\);

-- Location: MLABCELL_X87_Y24_N57
\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ = ( \i_e_payment_fsm|Selector19~2_combout\ & ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ ) ) ) # ( 
-- !\i_e_payment_fsm|Selector19~2_combout\ & ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ ) ) ) # ( \i_e_payment_fsm|Selector19~2_combout\ & ( !\i_e_payment_fsm|WideOr41~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector19~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\);

-- Location: MLABCELL_X87_Y24_N48
\i_e_payment_fsm|Selector58~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~3_combout\ = ( !\i_e_payment_fsm|sl_coin_state.sixty_cents_802~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & 
-- (!\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & (!\i_e_payment_fsm|sl_coin_state.eighty_cents_786~combout\ & !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.eighty_cents_786~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.sixty_cents_802~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector58~3_combout\);

-- Location: LABCELL_X88_Y23_N15
\i_e_payment_fsm|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector39~0_combout\ = ( !\coin_in[2]~input_o\ & ( (!\coin_in[0]~input_o\ & (\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & (\coin_in[3]~input_o\ & !\coin_in[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	dataf => \ALT_INV_coin_in[2]~input_o\,
	combout => \i_e_payment_fsm|Selector39~0_combout\);

-- Location: MLABCELL_X87_Y23_N18
\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (\i_e_payment_fsm|Selector39~0_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector39~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector39~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\);

-- Location: MLABCELL_X87_Y23_N39
\i_e_payment_fsm|Selector58~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	combout => \i_e_payment_fsm|Selector58~0_combout\);

-- Location: MLABCELL_X87_Y25_N30
\i_e_payment_fsm|Selector58~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector58~5_combout\ = ( \i_e_payment_fsm|Selector58~0_combout\ & ( \i_e_payment_fsm|Selector58~1_combout\ & ( (\i_e_payment_fsm|Selector58~4_combout\ & (!\i_e_payment_fsm|sl_coin_state~1_combout\ & 
-- (\i_e_payment_fsm|Selector58~2_combout\ & \i_e_payment_fsm|Selector58~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector58~4_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector58~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector58~3_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector58~1_combout\,
	combout => \i_e_payment_fsm|Selector58~5_combout\);

-- Location: MLABCELL_X87_Y25_N27
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

-- Location: LABCELL_X88_Y24_N9
\i_e_payment_fsm|Selector48~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector48~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( ((!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[3]~input_o\))) # 
-- (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[2]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( \i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (\coin_in[0]~input_o\ 
-- & (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & !\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\ & ( !\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & ( (!\coin_in[0]~input_o\ & 
-- ((!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[2]~input_o\))))) # (\coin_in[0]~input_o\ & (((\coin_in[3]~input_o\) # (\coin_in[2]~input_o\)) # 
-- (\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100101110111111101000000000000001101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	combout => \i_e_payment_fsm|Selector48~0_combout\);

-- Location: LABCELL_X88_Y24_N39
\i_e_payment_fsm|Selector48~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector48~1_combout\ = ( \i_e_payment_fsm|Selector48~0_combout\ ) # ( !\i_e_payment_fsm|Selector48~0_combout\ & ( (!\i_e_payment_fsm|Equal1~0_combout\ & (\i_e_payment_fsm|sl_coin_state~0_combout\ & 
-- (\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\))) # (\i_e_payment_fsm|Equal1~0_combout\ & (((\i_e_payment_fsm|sl_coin_state~0_combout\ & \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.thirty_cents_826~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.thirty_cents_826~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector48~0_combout\,
	combout => \i_e_payment_fsm|Selector48~1_combout\);

-- Location: LABCELL_X88_Y25_N54
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

-- Location: LABCELL_X88_Y24_N0
\i_e_payment_fsm|Selector11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & 
-- \coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector11~1_combout\);

-- Location: LABCELL_X88_Y23_N33
\i_e_payment_fsm|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ $ 
-- (\coin_in[1]~input_o\))) # (\coin_in[2]~input_o\ & ((\coin_in[1]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( (!\coin_in[2]~input_o\ & ((!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[0]~input_o\))) # (\coin_in[3]~input_o\ & ((\coin_in[0]~input_o\) # (\coin_in[1]~input_o\))))) # 
-- (\coin_in[2]~input_o\ & (((\coin_in[0]~input_o\) # (\coin_in[1]~input_o\)) # (\coin_in[3]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( 
-- (!\coin_in[2]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & \coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000010010111011111111001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	combout => \i_e_payment_fsm|Selector11~0_combout\);

-- Location: LABCELL_X88_Y23_N27
\i_e_payment_fsm|Selector11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector11~2_combout\ = ( \i_e_payment_fsm|Equal3~0_combout\ & ( \i_e_payment_fsm|Selector11~0_combout\ ) ) # ( !\i_e_payment_fsm|Equal3~0_combout\ & ( \i_e_payment_fsm|Selector11~0_combout\ ) ) # ( \i_e_payment_fsm|Equal3~0_combout\ & ( 
-- !\i_e_payment_fsm|Selector11~0_combout\ & ( (\i_e_payment_fsm|Selector11~1_combout\) # (\i_e_payment_fsm|sl_coin_state.fifty_cents_810~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal3~0_combout\ & ( !\i_e_payment_fsm|Selector11~0_combout\ & ( 
-- \i_e_payment_fsm|Selector11~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fifty_cents_810~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector11~1_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector11~0_combout\,
	combout => \i_e_payment_fsm|Selector11~2_combout\);

-- Location: LABCELL_X88_Y23_N12
\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( (\i_e_payment_fsm|Selector11~2_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector11~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector11~2_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\);

-- Location: LABCELL_X88_Y23_N54
\i_e_payment_fsm|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector31~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\ & ( (!\coin_in[1]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[1]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	combout => \i_e_payment_fsm|Selector31~0_combout\);

-- Location: MLABCELL_X87_Y23_N51
\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector31~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\);

-- Location: LABCELL_X88_Y23_N51
\i_e_payment_fsm|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector35~0_combout\ = ( !\coin_in[1]~input_o\ & ( (!\coin_in[2]~input_o\ & (\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & (\coin_in[3]~input_o\ & !\coin_in[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|Selector35~0_combout\);

-- Location: MLABCELL_X87_Y23_N9
\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( (\i_e_payment_fsm|Selector35~0_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector35~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector35~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\);

-- Location: MLABCELL_X87_Y24_N36
\i_e_payment_fsm|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector25~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & 
-- (!\coin_in[3]~input_o\ $ (!\coin_in[2]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & 
-- (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_seventy_cents_714~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & 
-- (!\coin_in[1]~input_o\ & \coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000100000000000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_seventy_cents_714~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector25~0_combout\);

-- Location: MLABCELL_X87_Y23_N54
\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( \i_e_payment_fsm|WideOr41~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( 
-- !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector25~0_combout\ ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector25~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector25~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\);

-- Location: LABCELL_X88_Y24_N3
\i_e_payment_fsm|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector23~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[0]~input_o\ & (!\coin_in[2]~input_o\ 
-- $ (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & ( (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & 
-- !\coin_in[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000100000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[3]~input_o\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[0]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	combout => \i_e_payment_fsm|Selector23~0_combout\);

-- Location: MLABCELL_X87_Y23_N21
\i_e_payment_fsm|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector23~1_combout\ = ( \i_e_payment_fsm|Selector58~0_combout\ & ( ((\i_e_payment_fsm|Equal3~0_combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\)) # (\i_e_payment_fsm|Selector23~0_combout\) ) ) # ( 
-- !\i_e_payment_fsm|Selector58~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector23~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector58~0_combout\,
	combout => \i_e_payment_fsm|Selector23~1_combout\);

-- Location: MLABCELL_X87_Y23_N30
\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector23~1_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector23~1_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\);

-- Location: LABCELL_X88_Y23_N0
\i_e_payment_fsm|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector33~0_combout\ = ( !\coin_in[1]~input_o\ & ( (\i_e_payment_fsm|sl_coin_state.one_euro_sixty_cents_722~combout\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & \coin_in[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_sixty_cents_722~combout\,
	datab => \ALT_INV_coin_in[2]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|Selector33~0_combout\);

-- Location: MLABCELL_X87_Y23_N6
\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & ( (\i_e_payment_fsm|Selector33~0_combout\) # (\i_e_payment_fsm|WideOr41~combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & ( (!\i_e_payment_fsm|WideOr41~combout\ & \i_e_payment_fsm|Selector33~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector33~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\);

-- Location: LABCELL_X88_Y25_N30
\i_e_payment_fsm|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector37~0_combout\ = ( !\coin_in[1]~input_o\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[0]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \ALT_INV_coin_in[1]~input_o\,
	combout => \i_e_payment_fsm|Selector37~0_combout\);

-- Location: MLABCELL_X87_Y23_N3
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

-- Location: MLABCELL_X87_Y24_N39
\i_e_payment_fsm|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector27~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ 
-- $ (!\coin_in[2]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (\coin_in[2]~input_o\ & 
-- !\coin_in[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000100000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[2]~input_o\,
	datad => \ALT_INV_coin_in[1]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	combout => \i_e_payment_fsm|Selector27~0_combout\);

-- Location: MLABCELL_X87_Y23_N42
\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ = ( \i_e_payment_fsm|Selector27~0_combout\ & ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ ) ) ) # ( 
-- !\i_e_payment_fsm|Selector27~0_combout\ & ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ ) ) ) # ( \i_e_payment_fsm|Selector27~0_combout\ & ( !\i_e_payment_fsm|WideOr41~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datae => \i_e_payment_fsm|ALT_INV_Selector27~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\);

-- Location: MLABCELL_X87_Y23_N33
\i_e_payment_fsm|WideOr32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr32~0_combout\ = ( !\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\ & ( (!\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & (!\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	combout => \i_e_payment_fsm|WideOr32~0_combout\);

-- Location: LABCELL_X88_Y23_N45
\i_e_payment_fsm|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector21~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[1]~input_o\ & (!\coin_in[2]~input_o\ & (!\coin_in[0]~input_o\ $ 
-- (!\coin_in[3]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[0]~input_o\ & (\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000001000000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	combout => \i_e_payment_fsm|Selector21~0_combout\);

-- Location: MLABCELL_X87_Y23_N0
\i_e_payment_fsm|Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector21~1_combout\ = ( \i_e_payment_fsm|sl_coin_state~0_combout\ & ( (((\i_e_payment_fsm|Equal1~0_combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\)) # (\i_e_payment_fsm|Selector21~0_combout\)) # 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fifty_cents_730~combout\) ) ) # ( !\i_e_payment_fsm|sl_coin_state~0_combout\ & ( ((\i_e_payment_fsm|Equal1~0_combout\ & \i_e_payment_fsm|sl_coin_state.one_euro_eighty_cents_706~combout\)) # 
-- (\i_e_payment_fsm|Selector21~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fifty_cents_730~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Selector21~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_eighty_cents_706~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state~0_combout\,
	combout => \i_e_payment_fsm|Selector21~1_combout\);

-- Location: MLABCELL_X87_Y23_N12
\i_e_payment_fsm|sl_coin_state.two_euro_690\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector21~1_combout\) ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ 
-- & ( (\i_e_payment_fsm|Selector21~1_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector21~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\);

-- Location: MLABCELL_X87_Y23_N15
\i_e_payment_fsm|WideOr41\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr41~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_690~combout\ & ( (((!\i_e_payment_fsm|WideOr32~0_combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr32~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_690~combout\,
	combout => \i_e_payment_fsm|WideOr41~combout\);

-- Location: MLABCELL_X87_Y25_N42
\i_e_payment_fsm|Selector54~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector54~0_combout\ = ( \i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & !\i_e_payment_fsm|sl_coin_state~1_combout\)) # 
-- (\i_e_payment_fsm|Equal1~0_combout\)) # (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( 
-- ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & !\i_e_payment_fsm|sl_coin_state~1_combout\)) # (\i_e_payment_fsm|Equal1~0_combout\) ) ) ) # ( \i_e_payment_fsm|Equal0~0_combout\ & ( !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( 
-- ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & !\i_e_payment_fsm|sl_coin_state~1_combout\)) # (\i_e_payment_fsm|sl_coin_state.ten_cents_842~combout\) ) ) ) # ( !\i_e_payment_fsm|Equal0~0_combout\ & ( 
-- !\i_e_payment_fsm|sl_coin_state.zero_cent_850~combout\ & ( (\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & !\i_e_payment_fsm|sl_coin_state~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000011100110111001101010000111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.ten_cents_842~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state~1_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal1~0_combout\,
	datae => \i_e_payment_fsm|ALT_INV_Equal0~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.zero_cent_850~combout\,
	combout => \i_e_payment_fsm|Selector54~0_combout\);

-- Location: MLABCELL_X87_Y25_N57
\i_e_payment_fsm|sl_coin_state.twenty_cents_834\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|Selector54~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector54~0_combout\ ) ) # ( \i_e_payment_fsm|WideOr41~combout\ & ( !\i_e_payment_fsm|Selector54~0_combout\ & ( \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datae => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector54~0_combout\,
	combout => \i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\);

-- Location: LABCELL_X88_Y25_N39
\i_e_payment_fsm|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( ((!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ $ (\coin_in[3]~input_o\))) 
-- # (\coin_in[2]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[1]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( 
-- (!\coin_in[2]~input_o\ & ((!\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ $ (\coin_in[3]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[3]~input_o\) # (\coin_in[0]~input_o\))))) # (\coin_in[2]~input_o\ & (((\coin_in[3]~input_o\) # 
-- (\coin_in[0]~input_o\)) # (\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_ten_cents_762~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( (!\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & 
-- (\coin_in[0]~input_o\ & !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000010010111011111111001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ten_cents_762~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	combout => \i_e_payment_fsm|Selector5~0_combout\);

-- Location: LABCELL_X88_Y25_N51
\i_e_payment_fsm|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[2]~input_o\ $ 
-- (!\coin_in[1]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (!\coin_in[2]~input_o\ & (\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[3]~input_o\))) 
-- ) ) ) # ( \i_e_payment_fsm|sl_coin_state.seventy_cents_794~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_770~combout\ & ( (\coin_in[2]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[0]~input_o\ & !\coin_in[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000100000000000000110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[2]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[0]~input_o\,
	datad => \ALT_INV_coin_in[3]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.seventy_cents_794~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_770~combout\,
	combout => \i_e_payment_fsm|Selector5~1_combout\);

-- Location: LABCELL_X88_Y25_N42
\i_e_payment_fsm|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector5~2_combout\ = ( \i_e_payment_fsm|Selector5~1_combout\ ) # ( !\i_e_payment_fsm|Selector5~1_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.twenty_cents_834~combout\ & \i_e_payment_fsm|Equal3~0_combout\)) # 
-- (\i_e_payment_fsm|Selector5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.twenty_cents_834~combout\,
	datac => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_Selector5~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector5~1_combout\,
	combout => \i_e_payment_fsm|Selector5~2_combout\);

-- Location: LABCELL_X88_Y25_N33
\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector5~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector5~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\);

-- Location: MLABCELL_X87_Y24_N18
\i_e_payment_fsm|Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~1_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ $ 
-- (!\coin_in[2]~input_o\)))) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( \i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & 
-- \coin_in[2]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_twenty_cents_754~combout\ & ( !\i_e_payment_fsm|sl_coin_state.ninety_cents_778~combout\ & ( (!\coin_in[0]~input_o\ & (!\coin_in[3]~input_o\ & (\coin_in[1]~input_o\ & 
-- !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_twenty_cents_754~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.ninety_cents_778~combout\,
	combout => \i_e_payment_fsm|Selector9~1_combout\);

-- Location: LABCELL_X88_Y24_N24
\i_e_payment_fsm|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~0_combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( ((!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ $ 
-- (\coin_in[2]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\)))) # (\coin_in[0]~input_o\) ) ) ) # ( !\i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (!\coin_in[0]~input_o\ & ((!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ $ (\coin_in[2]~input_o\))) # (\coin_in[1]~input_o\ & ((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\))))) # 
-- (\coin_in[0]~input_o\ & (((\coin_in[2]~input_o\) # (\coin_in[3]~input_o\)) # (\coin_in[1]~input_o\))) ) ) ) # ( \i_e_payment_fsm|sl_coin_state.one_euro_thirty_cents_746~combout\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( 
-- (\coin_in[0]~input_o\ & (!\coin_in[1]~input_o\ & (!\coin_in[3]~input_o\ & !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000010010111011111111101011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coin_in[0]~input_o\,
	datab => \ALT_INV_coin_in[1]~input_o\,
	datac => \ALT_INV_coin_in[3]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_thirty_cents_746~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|Selector9~0_combout\);

-- Location: LABCELL_X88_Y24_N33
\i_e_payment_fsm|Selector9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector9~2_combout\ = ( \i_e_payment_fsm|Selector9~0_combout\ ) # ( !\i_e_payment_fsm|Selector9~0_combout\ & ( ((\i_e_payment_fsm|sl_coin_state.fourty_cents_818~combout\ & \i_e_payment_fsm|Equal3~0_combout\)) # 
-- (\i_e_payment_fsm|Selector9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101010111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_Selector9~1_combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.fourty_cents_818~combout\,
	datad => \i_e_payment_fsm|ALT_INV_Equal3~0_combout\,
	dataf => \i_e_payment_fsm|ALT_INV_Selector9~0_combout\,
	combout => \i_e_payment_fsm|Selector9~2_combout\);

-- Location: MLABCELL_X87_Y24_N24
\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ = ( \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (\i_e_payment_fsm|WideOr41~combout\) # (\i_e_payment_fsm|Selector9~2_combout\) ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & ( (\i_e_payment_fsm|Selector9~2_combout\ & !\i_e_payment_fsm|WideOr41~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \i_e_payment_fsm|ALT_INV_Selector9~2_combout\,
	datad => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\);

-- Location: LABCELL_X88_Y23_N6
\i_e_payment_fsm|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|Selector29~0_combout\ = ( !\coin_in[0]~input_o\ & ( \i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( (!\coin_in[1]~input_o\ & ((!\coin_in[3]~input_o\ & ((\coin_in[2]~input_o\))) # (\coin_in[3]~input_o\ & 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & !\coin_in[2]~input_o\)))) ) ) ) # ( !\coin_in[0]~input_o\ & ( !\i_e_payment_fsm|sl_coin_state.one_euro_ninety_cents_698~combout\ & ( 
-- (\i_e_payment_fsm|sl_coin_state.one_euro_fourty_cents_738~combout\ & (\coin_in[3]~input_o\ & (!\coin_in[1]~input_o\ & !\coin_in[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000010000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_fourty_cents_738~combout\,
	datab => \ALT_INV_coin_in[3]~input_o\,
	datac => \ALT_INV_coin_in[1]~input_o\,
	datad => \ALT_INV_coin_in[2]~input_o\,
	datae => \ALT_INV_coin_in[0]~input_o\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.one_euro_ninety_cents_698~combout\,
	combout => \i_e_payment_fsm|Selector29~0_combout\);

-- Location: MLABCELL_X87_Y23_N36
\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ = ( \i_e_payment_fsm|WideOr41~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\ ) ) # ( !\i_e_payment_fsm|WideOr41~combout\ & ( 
-- \i_e_payment_fsm|Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_e_payment_fsm|ALT_INV_Selector29~0_combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_WideOr41~combout\,
	combout => \i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\);

-- Location: MLABCELL_X87_Y23_N24
\i_e_payment_fsm|WideOr32\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr32~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_ten_cents_682~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ten_cents_682~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	combout => \i_e_payment_fsm|WideOr32~combout\);

-- Location: MLABCELL_X87_Y23_N27
\i_e_payment_fsm|WideOr31\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr31~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ ) ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( 
-- \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ ) ) # ( \i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ ) ) # ( 
-- !\i_e_payment_fsm|sl_coin_state.two_euro_twenty_cents_674~combout\ & ( !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_thirty_cents_666~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fourty_cents_658~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fourty_cents_658~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_thirty_cents_666~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	datae => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_twenty_cents_674~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	combout => \i_e_payment_fsm|WideOr31~combout\);

-- Location: MLABCELL_X87_Y23_N48
\i_e_payment_fsm|WideOr30\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_e_payment_fsm|WideOr30~combout\ = ( \i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ ) # ( !\i_e_payment_fsm|sl_coin_state.two_euro_seventy_cents_634~combout\ & ( (((\i_e_payment_fsm|sl_coin_state.two_euro_eighty_cents_626~combout\) # 
-- (\i_e_payment_fsm|sl_coin_state.two_euro_ninety_cents_618~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_sixty_cents_642~combout\)) # (\i_e_payment_fsm|sl_coin_state.two_euro_fifty_cents_650~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_fifty_cents_650~combout\,
	datab => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_sixty_cents_642~combout\,
	datac => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_ninety_cents_618~combout\,
	datad => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_eighty_cents_626~combout\,
	dataf => \i_e_payment_fsm|ALT_INV_sl_coin_state.two_euro_seventy_cents_634~combout\,
	combout => \i_e_payment_fsm|WideOr30~combout\);

-- Location: LABCELL_X75_Y4_N0
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


