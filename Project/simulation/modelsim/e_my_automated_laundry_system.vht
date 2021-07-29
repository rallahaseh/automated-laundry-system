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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/28/2021 11:47:06"
                                                            
-- Vhdl Test Bench template for design  :  e_my_automated_laundry_system
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY e_my_automated_laundry_system_vhd_tst IS
END e_my_automated_laundry_system_vhd_tst;
ARCHITECTURE e_my_automated_laundry_system_arch OF e_my_automated_laundry_system_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC :='0';
SIGNAL coin_in : STD_LOGIC_VECTOR(3 DOWNTO 0) :=x"0";
SIGNAL coin_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL green_led : STD_LOGIC;
SIGNAL hex_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex_1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex_2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex_3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex_4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL hex_5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL nearby_person_sensor : STD_LOGIC :='0';
SIGNAL password_in : STD_LOGIC_VECTOR(3 DOWNTO 0) :=x"F";
SIGNAL push_address_button : STD_LOGIC :='0';
SIGNAL push_password_button : STD_LOGIC :='0';
SIGNAL red_led : STD_LOGIC;
SIGNAL reset : STD_LOGIC :='1';
SIGNAL start_button : STD_LOGIC :='0';
SIGNAL washing_machine_address_in : STD_LOGIC_VECTOR(3 DOWNTO 0) :=x"0";
SIGNAL washing_machine_done_sensor : STD_LOGIC :='0';
COMPONENT e_my_automated_laundry_system
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	coin_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	coin_out : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	green_led : BUFFER STD_LOGIC;
	hex_0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex_1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex_2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex_3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex_4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	hex_5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	nearby_person_sensor : IN STD_LOGIC;
	password_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	push_address_button : IN STD_LOGIC;
	push_password_button : IN STD_LOGIC;
	red_led : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	start_button : IN STD_LOGIC;
	washing_machine_address_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	washing_machine_done_sensor : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : e_my_automated_laundry_system
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	coin_in => coin_in,
	coin_out => coin_out,
	green_led => green_led,
	hex_0 => hex_0,
	hex_1 => hex_1,
	hex_2 => hex_2,
	hex_3 => hex_3,
	hex_4 => hex_4,
	hex_5 => hex_5,
	nearby_person_sensor => nearby_person_sensor,
	password_in => password_in,
	push_address_button => push_address_button,
	push_password_button => push_password_button,
	red_led => red_led,
	reset => reset,
	start_button => start_button,
	washing_machine_address_in => washing_machine_address_in,
	washing_machine_done_sensor => washing_machine_done_sensor
	);

--clock
	CLOCK_50 <= not CLOCK_50 after 10 ns;
	
	p_stimulus: process
		-- procedure declarations here

		
		procedure P_sync_app(constant c_loop: integer) is
			variable v_count: integer := 0;
		begin
			loop_cnt: while v_count <= c_loop loop
				wait until rising_edge(CLOCK_50);
					v_count := v_count + 1;
			end loop loop_cnt;
		end procedure P_sync_app;
		

		procedure P_nearby_person (constant c_sensor: STD_LOGIC) is
		begin
			nearby_person_sensor <= c_sensor;
		end procedure P_nearby_person;
		
		procedure P_pay (constant c_coin: STD_LOGIC_VECTOR) is
		begin
			coin_in <= c_coin;
			P_sync_app(1);
			coin_in <= "0000";
		end procedure P_pay;
		
		procedure P_password_button is
		begin
			push_password_button <= '1';
			P_sync_app(1);
			push_password_button <= '0';
		end procedure P_password_button;
		
		procedure P_set_password (constant c_password: STD_LOGIC_VECTOR) is
		begin
			password_in <= c_password;
		end procedure P_set_password;
		
		procedure P_adress_button is
		begin
			push_address_button <= '1';
			P_sync_app(1);
			push_address_button <= '0';
		end procedure P_adress_button;
		
		procedure P_processing_is_done is
		begin
			washing_machine_done_sensor <= '1';
		end procedure P_processing_is_done;
		
		procedure P_start_washing is
		begin
			start_button <= '1';
			P_sync_app(1);
			start_button <= '0';
		end procedure P_start_washing;
		
		
		
	begin
		-- procedure calls here
		
		
		P_sync_app(1);
		P_nearby_person('1'); -- sensor detect a person -> change state to 1, PASS displayed
		P_sync_app(3);
		P_set_password("0110"); -- entering wrong password
		P_sync_app(3);
		P_password_button; -- wrong password -> state does not change
		P_sync_app(3);
		P_set_password("0000"); -- valid password 
		P_sync_app(3);
		P_password_button; -- valid password -> change state to 2, Addr displayed
		P_sync_app(3);
		P_adress_button; --adress button enabled -> change state to 3, PAy displayed. If the machine is available -> change state to 4
		P_sync_app(3);
		P_pay("1000"); -- pay 1 euro, the total payment is displayed 100
		P_sync_app(3);
		P_pay("0100"); -- pay 0.5 euro, the total ayment is displayed 150
		P_sync_app(3);
		P_pay("1000"); -- pay 1 euro, the total ayment is displayed 250, payment is done and coins_out set to 0100 (0.5 euro)
							--	change state to 5, Procs displayed
		P_sync_app(3);
		P_nearby_person('0'); -- no persen detected in front of the system sensor, the person moved to the selected washing machine
		P_sync_app(3); -- processing is not done -> change state to 7, Hold displayed
		P_processing_is_done; -- processing is done -> change state to 6, display start
		P_sync_app(3);
		P_start_washing; --washing started, -> change to state 8, increment the count of working washing machines
		P_sync_app(10); --return to state 0
		
		-- If we run the same simulation code (copying above code multiple times) multiple times, in the 9th time the state will be switched from 8 to 9
		-- 9 represents the full_state, since our system only contains 9 washing machines.
		
		assert false report "--- END OF SIMULATION ---"
			severity failure;
	
	end process p_stimulus;	
END e_my_automated_laundry_system_arch;
