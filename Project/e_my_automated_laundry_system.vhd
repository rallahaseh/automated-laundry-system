library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_my_automated_laundry_system is
	port(
		CLOCK_50, reset: in std_logic;
		nearby_person_sensor, washing_machine_done_sensor: in std_logic;
		push_password_button, push_address_button: in std_logic;
		coin_in: in std_logic_vector(3 downto 0); -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
		password_in, washing_machine_address_in: in std_logic_vector(3 downto 0);
		green_led, red_led: out std_logic;
		start_button: out std_logic;
		hex_0, hex_1, hex_2, hex_3, hex_4, hex_5: out std_logic_vector(6 downto 0);
		coin_out: out std_logic_vector(3 downto 0) -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
	);
end e_my_automated_laundry_system;

architecture a_my_automated_laundry_system of e_my_automated_laundry_system is 
	
	constant c_password: std_logic_vector(3 downto 0) := "0000";
	constant c_laundry_room_capacity: integer := 9;
	
	signal sl_password_button_last_state: std_logic := '0';
	signal sl_address_button_last_state: std_logic := '0';
	signal sl_working_washing_machines_count: integer range 0 to 9;
	signal sl_state_choice: integer range 0 to 9; 
	signal sl_word_choice: integer range 0 to 6;
	signal sl_paid: boolean := false;
	signal sl_washing_machine_address_available: boolean;
	signal sl_word_s: std_logic;
	signal sl_payment: integer range 0 to 290;
	signal sl_memory_enable: std_logic := '1'; -- active low
	
	------------------------------------- Procedures -----------------------------------------------
	
	procedure procedure_toggle_green_led (signal green_led : out std_logic; signal start_button : out std_logic) is
		begin
			start_button <= '1'; -- enable the start button
			green_led <= '1';-- green light on
			-- wait 1 ns cycles for the process to reset
			start_button <= '0'; -- disable the start button
			green_led <= '0';-- green light off
	end procedure_toggle_green_led;
	
	------------------------------------- Components ----------------------------------------------
	
	component e_laundry_fsm
	generic (n:integer:= 8);
		port(
			CLOCK_50, reset: in std_logic;
			nearby_person_sensor, washing_machine_done_sensor: in std_logic;
			push_password_button, push_address_button: in std_logic;
			washing_machine_available, paid: in boolean;
			password_in, washing_machine_address_in: in std_logic_vector(3 downto 0);
			working_washing_machines_count: out integer range 0 to 9;
			state_choice: out integer range 0 to 9
		);
	end component;
	
	component e_7seg_display 
	generic (n:integer:= 8);
     port(
			CLOCK_50, word_s: in std_logic;
			word_choice: in integer range 0 to 5;
			payment: in integer range 0 to 290;
			hex_1, hex_2, hex_3, hex_4, hex_5: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component e_7seg_bcd_decoder 
	generic (n:integer:= 8);
		port(
			count: in integer range 0 to 9;
			hex_0: out std_logic_vector(6 downto 0)
		);
	end component;
	
	component e_memory is
	generic (n:integer:= 8);
		port( 
			enable, reset: in std_logic;
			washing_machine_address: in std_logic_vector(n-5 downto 0);
			washing_machine_address_available: out boolean
		);
	end component;
	
	component e_payment_fsm is
	generic (n: integer := 16);
		port(
		coin_in: in std_logic_vector(n-13 downto 0);  -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
		coin_out: out std_logic_vector(n-13 downto 0); -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
		payment: out integer range 0 to 290;
		paid: out boolean
	);
	end component;
	 
	------------------------------------- architecture begins -------------------------------------
	begin 
	
		-- state_choice
		-- 0: no_action_state,
		-- 1: user_detect_state
		-- 2: verification_state							 
		-- 3: availability_state
		-- 4: payment_state
		-- 5: process_state
		-- 6: finished_processing_state
		-- 7: hold_state
		-- 8: start_state
		-- 9: full_state
		
		-- word_choice
		-- 0 => turned off
		-- 1 => pass
		-- 2 => addr
		-- 3 => pay
		-- 4 => procs
		-- 5 => hold
		-- 6 => full
		-- 7 => start
		
		i_e_memory: e_memory 
		generic map(n => 8)
		port map(sl_memory_enable, reset, washing_machine_address_in, sl_washing_machine_address_available);
		
		i_e_laundry_fsm: e_laundry_fsm 
		generic map(n => 8)
      port map(CLOCK_50,
					reset, 
					nearby_person_sensor, washing_machine_done_sensor,
					push_password_button, push_address_button,
					sl_washing_machine_address_available, sl_paid,
					password_in, washing_machine_address_in,
					sl_working_washing_machines_count, sl_state_choice);
		
		i_e_payment_fsm: e_payment_fsm 
		generic map(n => 16)
		port map(coin_in, coin_out, sl_payment, sl_paid);
		 
		process(sl_state_choice) begin
			case sl_state_choice is
				when 1 =>
					sl_word_choice <= 1; -- displaying the word 'Pass', so the user can enter the password
					
				when 2 => -- verification_state (password entered correctly, now for the availability)
					sl_word_choice <= 2; -- displaying the word 'Addr', since we can not draw 'Machine Number' through 7seg display
					sl_memory_enable <= '0'; -- enable memory for availability_state (next state)
					
				when 3 => -- availability_state 
					if(sl_washing_machine_address_available) then
						red_led <= '0';
					else
						red_led <= '1';
					end if;
					
				when 4 => -- payment_state
					sl_word_choice <= 3; -- displaying the word 'Pay'
				
				when 5 => -- process_state
					sl_word_choice <= 4; -- displaying the word 'Procs'
					procedure_toggle_green_led(green_led, start_button); -- Enabling start button
					
				when 6 => -- finished_processing_state
					sl_word_choice <= 7; -- displaying the word 'Start'
					procedure_toggle_green_led(green_led, start_button); -- Disabling start button
				
				when 7 => -- hold_state
					sl_word_choice <= 5; -- displaying the word hold
				
				when 9 => -- full_state
					sl_word_choice <= 6; -- displaying the word 'Full'
					
				when others => 
					sl_word_choice <= 0; -- displaying the word 'Turned Off'
				
			end case;
		end process;
		
		with sl_state_choice select
			sl_word_s <= 	'1' when 4, -- displaying coins only in paying_state
								'0' when others;
		
		i_e_7seg_display: e_7seg_display
		generic map(n => 8)
		port map(CLOCK_50, sl_word_s, 
					sl_word_choice, sl_payment, 
					hex_1, hex_2, hex_3, hex_4, hex_5);
		
		i_e_7seg_bcd_decoder: e_7seg_bcd_decoder 
		generic map(n => 8)
		port map(sl_working_washing_machines_count, hex_0);						
			
end a_my_automated_laundry_system;