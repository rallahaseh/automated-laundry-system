library ieee;
use ieee.std_logic_1164.all;

entity e_payment_fsm is
	generic(n:integer:= 16);
	port(
		coin_in: in std_logic_vector(n-13 downto 0);  -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
		coin_out: out std_logic_vector(n-13 downto 0); -- "1 Euro, 50cents, 20cents, 10cents" -- "1111"
		payment: out integer range 0 to 290;
		paid: out boolean
	);
end e_payment_fsm;

architecture a_payment_fsm of e_payment_fsm is

	type payment_states is (zero_cent, ten_cents, twenty_cents, thirty_cents, fourty_cents, fifty_cents, sixty_cents, 
									seventy_cents, eighty_cents, ninety_cents, one_euro, one_euro_ten_cents,
									one_euro_twenty_cents, one_euro_thirty_cents, one_euro_fourty_cents, one_euro_fifty_cents, one_euro_sixty_cents, 
									one_euro_seventy_cents, one_euro_eighty_cents, one_euro_ninety_cents,two_euro, two_euro_ten_cents, two_euro_twenty_cents,
								   two_euro_thirty_cents, two_euro_fourty_cents, two_euro_fifty_cents, two_euro_sixty_cents, two_euro_seventy_cents,
									two_euro_eighty_cents, two_euro_ninety_cents);
	
	signal sl_coin_state: payment_states := zero_cent;
	
	------------------------------------- architecture begins -------------------------------------
	begin
	
	process(coin_in) begin
		case sl_coin_state is 
			when zero_cent =>
				if   (coin_in = "0001") then sl_coin_state <= ten_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= twenty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= fifty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro; --+100
				else 				   		    sl_coin_state <= zero_cent;-- +0
				end if;
				coin_out <= "0000";
				payment <= 0;
								
			when ten_cents =>
				if   (coin_in = "0001") then sl_coin_state <= twenty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= thirty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= sixty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_ten_cents; --+100
				else 							    sl_coin_state <= ten_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 10;
							
			when twenty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= thirty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= fourty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= seventy_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_twenty_cents; --+100
				else 							    sl_coin_state <= twenty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 20;
							
			when thirty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= fourty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= fifty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= eighty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_thirty_cents; --+100
				else 							    sl_coin_state <= thirty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 30;
								
			when fourty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= fifty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= sixty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= ninety_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_fourty_cents; --+100
				else 							    sl_coin_state <= fourty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 40;
								
			when fifty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= sixty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= seventy_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_fifty_cents; --+100
				else 							    sl_coin_state <= fifty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 50;
								
			when sixty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= seventy_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= eighty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_ten_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_sixty_cents; --+100
				else 							    sl_coin_state <= sixty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 60;
								
			when seventy_cents =>
				if   (coin_in = "0001") then sl_coin_state <= eighty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= ninety_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_twenty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_seventy_cents; --+100
				else 							    sl_coin_state <= seventy_cents;-- +0
			   end if;
				coin_out <= "0000";
				payment <= 70;
								
			when eighty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= ninety_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_thirty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_eighty_cents; --+100
				else 							    sl_coin_state <= eighty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 80;
								
			when ninety_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_ten_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_fourty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= one_euro_ninety_cents; --+100
				else 							    sl_coin_state <= ninety_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 90;
			
			when one_euro =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_ten_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_twenty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_fifty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro; --+100
				else 				   		    sl_coin_state <= one_euro;-- +0
				end if;
				coin_out <= "0000";
				payment <= 100;
								
			when one_euro_ten_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_twenty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_thirty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_sixty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_ten_cents; --+100
				else 							    sl_coin_state <= one_euro_ten_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 110;
							
			when one_euro_twenty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_thirty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_fourty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_seventy_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_twenty_cents; --+100
				else 							    sl_coin_state <= one_euro_twenty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 120;
							
			when one_euro_thirty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_fourty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_fifty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_eighty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_thirty_cents; --+100
				else 							    sl_coin_state <= one_euro_thirty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 130;
								
			when one_euro_fourty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_fifty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_sixty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= one_euro_ninety_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_fourty_cents; --+100
				else 							    sl_coin_state <= one_euro_fourty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 140;
								
			when one_euro_fifty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_sixty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_seventy_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= two_euro;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_fifty_cents; --+100
				else 							    sl_coin_state <= one_euro_fifty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 150;
								
			when one_euro_sixty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_seventy_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_eighty_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= two_euro_ten_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_sixty_cents; --+100
				else 							    sl_coin_state <= one_euro_sixty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 160;
								
			when one_euro_seventy_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_eighty_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= one_euro_ninety_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= two_euro_twenty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_seventy_cents; --+100
				else 							    sl_coin_state <= seventy_cents;-- +0
			   end if;
				coin_out <= "0000";
				payment <= 170;
								
			when one_euro_eighty_cents =>
				if   (coin_in = "0001") then sl_coin_state <= one_euro_ninety_cents;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= two_euro;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= two_euro_thirty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_eighty_cents; --+100
				else 							    sl_coin_state <= one_euro_eighty_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 180;
								
			when one_euro_ninety_cents =>
				if   (coin_in = "0001") then sl_coin_state <= two_euro;-- +10
				elsif(coin_in = "0010") then sl_coin_state <= two_euro_ten_cents;-- +20
				elsif(coin_in = "0100") then sl_coin_state <= two_euro_fourty_cents;-- +50
				elsif(coin_in = "1000") then sl_coin_state <= two_euro_ninety_cents; --+100
				else 							    sl_coin_state <= one_euro_ninety_cents;-- +0
				end if;
				coin_out <= "0000";
				payment <= 190;
							
			when two_euro =>
				coin_out <= "0000";
				paid <= true;
				payment <= 200;
						
			when two_euro_ten_cents => 
				coin_out <= "0001"; -- give back 10
				paid <= true;
				payment <= 210;
								
			when two_euro_twenty_cents => 
				coin_out <= "0010"; -- give back 20
				paid <= true;
				payment <= 220;
								
			when two_euro_thirty_cents => 
				coin_out <= "0011"; -- give back 10, 20
				paid <= true;
				payment <= 230;
								
			when two_euro_fourty_cents => 
				coin_out <= "0011"; -- give back 10, 20
				sl_coin_state <= two_euro_ten_cents; -- to give back the remaining 10 cents
				payment <= 240;
			
			when two_euro_fifty_cents => 
				coin_out <= "0100"; -- give back 50
				paid <= true;
				payment <= 250;
				
			when two_euro_sixty_cents => 
				coin_out <= "0101"; -- give back 50, 10
				paid <= true;
				payment <= 260;
				
			when two_euro_seventy_cents => 
				coin_out <= "0110"; -- give back 50, 20
				paid <= true;
				payment <= 270;
				
			when two_euro_eighty_cents => 
				coin_out <= "0111"; -- give back 50, 20, 10
				paid <= true;
				payment <= 280;
			
			when two_euro_ninety_cents => 
				coin_out <= "0111"; -- give back 50, 20, 10
				sl_coin_state <= two_euro_ten_cents; -- to give back the remaining 10 cents
				payment <= 290;
				
		end case;
	end process;
end architecture;