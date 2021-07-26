library ieee;
use ieee.std_logic_1164.all;

entity e_7seg_display is
	generic(n: integer := 8);
	port(
		CLOCK_50, word_s: in std_logic;
		word_choice: in integer range 0 to 6;
		payment: in integer range 0 to 290;
		hex_1, hex_2, hex_3, hex_4, hex_5: out std_logic_vector(n-2 downto 0)
	);
end e_7seg_display;

architecture a_7seg_display of e_7seg_display is

	constant c_7seg_off: std_logic_vector := "1111111";
	
	-- the word Procs
	constant c_letter_P: std_logic_vector := "1100111";
	constant c_letter_r: std_logic_vector := "0000101";
	constant c_letter_o: std_logic_vector := "0011101";
	constant c_letter_c: std_logic_vector := "0001101";
	constant c_letter_s: std_logic_vector := "1011011";
	
	-- the word Hold
	constant c_letter_H: std_logic_vector := "1110110";
	constant c_letter_l: std_logic_vector := "0000110";
	constant c_letter_d: std_logic_vector := "1011110";
	
	-- the word Full
	constant c_letter_f: std_logic_vector := "1110001";
	constant c_letter_u: std_logic_vector := "0011100";
	
	-- the word Addr (address)
	constant c_letter_A: std_logic_vector := "1110111";
	
	-- the word Pay
	constant c_letter_y: std_logic_vector := "1101110";
	
	-- the word Start
	constant c_letter_t: std_logic_vector := "1111000";
	
	-- decimal digits
	constant c_number_0: std_logic_vector := "0111111";
	constant c_number_1: std_logic_vector := "0000110";
	constant c_number_2: std_logic_vector := "1011011";
	constant c_number_3: std_logic_vector := "1001111";
	constant c_number_4: std_logic_vector := "1100110";
	constant c_number_5: std_logic_vector := "1101101";
	constant c_number_6: std_logic_vector := "1111101";
	constant c_number_7: std_logic_vector := "0000111";
	constant c_number_8: std_logic_vector := "1111111";
	constant c_number_9: std_logic_vector := "1101111";
	
	------------------------------------- architecture begins -------------------------------------
	
	begin
	
	process(CLOCK_50, word_s) begin
		if(rising_edge(CLOCK_50)) then
			if(word_s = '0') then
			
				-- 0 => turned off
				-- 1 => addr
				-- 2 => pay
				-- 3 => procs
				-- 4 => hold
				-- 5 => full
				
				case word_choice is
					when 0 => -- turned off
						hex_5 <= c_7seg_off;
						hex_4 <= c_7seg_off;
						hex_3 <= c_7seg_off;
						hex_2 <= c_7seg_off;
						hex_1 <= c_7seg_off;
					
					when 1 => -- Addr
						hex_5 <= c_letter_A;
						hex_4 <= c_letter_d;
						hex_3 <= c_letter_d;
						hex_2 <= c_letter_r;
						hex_1 <= c_7seg_off;
					
					when 2 => -- pay
						hex_5 <= c_letter_P;
						hex_4 <= c_letter_a;
						hex_3 <= c_letter_y;
						hex_2 <= c_7seg_off;
						hex_1 <= c_7seg_off;
					
					when 3 => -- Procs
						hex_5 <= c_letter_P;
						hex_4 <= c_letter_r;
						hex_3 <= c_letter_o;
						hex_2 <= c_letter_c;
						hex_1 <= c_letter_s;
					
					when 4 => -- Hold
						hex_5 <= c_letter_H;
						hex_4 <= c_letter_o;
						hex_3 <= c_letter_l;
						hex_2 <= c_letter_d;
						hex_1 <= c_7seg_off;
						
					when 5 => -- Full
						hex_5 <= c_letter_F;
						hex_4 <= c_letter_u;
						hex_3 <= c_letter_l;
						hex_2 <= c_letter_l;
						hex_1 <= c_7seg_off;
						
					when 6 => -- Start
						hex_5 <= c_letter_S;
						hex_4 <= c_letter_t;
						hex_3 <= c_letter_A;
						hex_2 <= c_letter_r;
						hex_1 <= c_letter_t;
						
				end case;
				
			elsif(word_s = '1') then
				hex_1 <= c_7seg_off;
				hex_2 <= c_7seg_off;
				hex_3 <= c_number_0;
				case payment is
					when 0   => hex_5 <= c_number_0; hex_4 <= c_number_0;
					when 10  => hex_5 <= c_number_0; hex_4 <= c_number_1;
					when 20  => hex_5 <= c_number_0; hex_4 <= c_number_2;
					when 30  => hex_5 <= c_number_0; hex_4 <= c_number_3;
					when 40  => hex_5 <= c_number_0; hex_4 <= c_number_4;
					when 50  => hex_5 <= c_number_0; hex_4 <= c_number_5;
					when 60  => hex_5 <= c_number_0; hex_4 <= c_number_6;
					when 70  => hex_5 <= c_number_0; hex_4 <= c_number_7;
					when 80  => hex_5 <= c_number_0; hex_4 <= c_number_8;
					when 90  => hex_5 <= c_number_0; hex_4 <= c_number_9;
					when 100 => hex_5 <= c_number_1; hex_4 <= c_number_0;
					when 110 => hex_5 <= c_number_1; hex_4 <= c_number_1;
					when 120 => hex_5 <= c_number_1; hex_4 <= c_number_2;
					when 130 => hex_5 <= c_number_1; hex_4 <= c_number_3;
					when 140 => hex_5 <= c_number_1; hex_4 <= c_number_4;
					when 150 => hex_5 <= c_number_1; hex_4 <= c_number_5;
					when 160 => hex_5 <= c_number_1; hex_4 <= c_number_6;
					when 170 => hex_5 <= c_number_1; hex_4 <= c_number_7;
					when 180 => hex_5 <= c_number_1; hex_4 <= c_number_8;
					when 190 => hex_5 <= c_number_1; hex_4 <= c_number_9;
					when 200 => hex_5 <= c_number_2; hex_4 <= c_number_0;
					when 210 => hex_5 <= c_number_2; hex_4 <= c_number_1;
					when 220 => hex_5 <= c_number_2; hex_4 <= c_number_2;
					when 230 => hex_5 <= c_number_2; hex_4 <= c_number_3;
					when 240 => hex_5 <= c_number_2; hex_4 <= c_number_4;
					when 250 => hex_5 <= c_number_2; hex_4 <= c_number_5;
					when 260 => hex_5 <= c_number_2; hex_4 <= c_number_6;
					when 270 => hex_5 <= c_number_2; hex_4 <= c_number_7;
					when 280 => hex_5 <= c_number_2; hex_4 <= c_number_8;
					when 290 => hex_5 <= c_number_2; hex_4 <= c_number_9;
					when others =>hex_5 <= c_7seg_off; hex_4 <= c_7seg_off;
				end case;
			end if;
		end if;
	end process;
end a_7seg_display;