library ieee;
use ieee.std_logic_1164.all;

entity e_laundry_fsm is
	generic(n:integer:= 8);
	port(
		CLOCK_50, reset: in std_logic;
		nearby_person_sensor, washing_machine_done_sensor: in std_logic;
		start_button,push_password_button, push_address_button: in std_logic;
		washing_machine_available, paid: in boolean;
		password_in, washing_machine_address_in: in std_logic_vector(n-5 downto 0);
		working_washing_machines_count: out integer range 0 to 9;
		state_choice: out integer range 0 to 9
	);
end e_laundry_fsm;

architecture a_laundry_fsm of e_laundry_fsm is 
	
	constant c_password: std_logic_vector(3 downto 0) := "0000";
	constant c_laundry_room_capacity: integer := 9;
	
	type laundry_states is (no_action_state, user_detect_state, verification_state,
									availability_state, payment_state, process_state,
									finished_processing_state, full_state, hold_state,
									start_state);
	
	signal sl_present_state: laundry_states := no_action_state;
	signal sl_password_button_last_state: std_logic := '0';
	signal sl_address_button_last_state: std_logic := '0';
	signal sl_used_washing_machines_count: integer range 0 to 9 := 0;
	signal sl_state_choice: integer range 0 to 9;
	 
	------------------------------------- architecture begins -------------------------------------
	begin 
		process(CLOCK_50, reset, nearby_person_sensor, push_password_button, push_address_button)
		begin
			if(reset = '0') then -- active low reset
				sl_present_state <= no_action_state;
				
			elsif(rising_edge(CLOCK_50)) then
				case sl_present_state is
					
					when no_action_state =>
						if(nearby_person_sensor = '1') then
							sl_present_state <= user_detect_state;
						else
							sl_present_state <= no_action_state;
						end if;
					
					when user_detect_state =>
						-- the user has to enter the password through the 4 switches and pushes the button
						if(push_password_button='1' and sl_password_button_last_state = '0') then -- push button pushed
							if(password_in = c_password) then -- correct password => change state
								sl_present_state <= verification_state;
							end if;
						else
							sl_present_state <= user_detect_state;
						end if;
						sl_password_button_last_state <= push_password_button; -- debouncing the push button
						
					when verification_state => 
						if(push_address_button = '1' and sl_address_button_last_state = '0') then -- push button pushed
							sl_present_state <= availability_state;
						else 
							sl_present_state <= verification_state;
						end if;
						sl_address_button_last_state <= push_address_button; -- debouncing the push button
					
					when availability_state =>
						if(washing_machine_available) then -- checking if the place is available
							sl_present_state <= payment_state;
						end if;
					
					when payment_state =>
						if(paid) then 
							sl_present_state <= process_state;
						else
							sl_present_state <= payment_state;
						end if;
						
					when process_state =>
						-- checking if the washing machine finished the work
						if(washing_machine_done_sensor = '1') then
							sl_present_state <= finished_processing_state;
	
						else -- still did not finished => HOLD
							sl_present_state <= hold_state;
						end if;
						
					when finished_processing_state => 
						if(start_button = '1') then
								sl_present_state <= start_state;
						end if;
						
					when hold_state =>
						if(washing_machine_done_sensor ='1') then
							sl_present_state <= process_state;
						else
							sl_present_state <= hold_state;
						end if;
						
					when start_state =>
						-- increment the count of used washing machines
						sl_used_washing_machines_count <= sl_used_washing_machines_count + 1;
						if(sl_used_washing_machines_count = c_laundry_room_capacity) then -- full park
							sl_present_state <= full_state; 
						else
							sl_present_state <= no_action_state; -- full loop
						end if;
					
					when full_state =>
						sl_present_state <= full_state; -- deadlock will happen
				end case;
			end if;
		end process;
		
		working_washing_machines_count <= sl_used_washing_machines_count;
		
		with sl_present_state select
			sl_state_choice <= 0 when no_action_state, 
									 1 when user_detect_state,
									 2 when verification_state, 
									 3 when availability_state, 
									 4 when payment_state,
									 5 when process_state, 
									 6 when finished_processing_state, 
									 7 when hold_state, 
									 8 when start_state, 
									 9 when full_state;
		state_choice <= sl_state_choice;
end a_laundry_fsm;