library ieee;
use ieee.std_logic_1164.all;

entity e_7seg_display is
	generic(n: integer := 8);
	port(
		CLOCK_50, word_s: in std_logic;
		word_choice: in integer range 0 to 7;
		payment: in integer range 0 to 290;
		hex_1, hex_2, hex_3, hex_4, hex_5: out std_logic_vector(n-2 downto 0)
	);
end e_7seg_display;

architecture a_7seg_display of e_7seg_display is

	constant c_blank: std_logic_vector := "1111111";
	
	-- the word Procs
	constant c_P: std_logic_vector := "0011000";
	constant c_r: std_logic_vector := "1111010";
	constant c_o: std_logic_vector := "1100010";
	constant c_c: std_logic_vector := "1110010";
	constant c_s: std_logic_vector := "0100100";
	
	-- the word Hold
	constant c_H: std_logic_vector := "1001000";
	constant c_l: std_logic_vector := "1111001";
	constant c_d: std_logic_vector := "1000010";
	
	-- the word Full
	constant c_f: std_logic_vector := "0111000";
	constant c_u: std_logic_vector := "1100011";
	
	-- the word Addr (address)
	constant c_A: std_logic_vector := "0001000";
	
	-- the word Pay
	constant c_y: std_logic_vector := "1000100";
	
	-- the word Start
	constant c_t: std_logic_vector := "1110000";
	
	-- decimal digits
	constant c_0:		std_logic_vector := "0000001";
	constant c_1:		std_logic_vector := "1001111";
	constant c_2:		std_logic_vector := "0010010";
	constant c_3:		std_logic_vector := "0000110";
	constant c_4:		std_logic_vector := "1001100";
	constant c_5:		std_logic_vector := "0100100";
	constant c_6:		std_logic_vector := "0100000";
	constant c_7:		std_logic_vector := "0001111";
	constant c_8:		std_logic_vector := "0000000";
	constant c_9:		std_logic_vector := "0000100";

	
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
						hex_5 <= c_blank;
						hex_4 <= c_blank;
						hex_3 <= c_blank;
						hex_2 <= c_blank;
						hex_1 <= c_blank;
					
					when 1 => -- Pass
						hex_5 <= c_P;
						hex_4 <= c_a;
						hex_3 <= c_s;
						hex_2 <= c_s;
						hex_1 <= c_blank;
						
					when 2 => -- Addr
						hex_5 <= c_A;
						hex_4 <= c_d;
						hex_3 <= c_d;
						hex_2 <= c_r;
						hex_1 <= c_blank;
					
					when 3 => -- pay
						hex_5 <= c_P;
						hex_4 <= c_a;
						hex_3 <= c_y;
						hex_2 <= c_blank;
						hex_1 <= c_blank;
					
					when 4 => -- Procs
						hex_5 <= c_P;
						hex_4 <= c_r;
						hex_3 <= c_o;
						hex_2 <= c_c;
						hex_1 <= c_s;
					
					when 5 => -- Hold
						hex_5 <= c_H;
						hex_4 <= c_o;
						hex_3 <= c_l;
						hex_2 <= c_d;
						hex_1 <= c_blank;
						
					when 6 => -- Full
						hex_5 <= c_F;
						hex_4 <= c_u;
						hex_3 <= c_l;
						hex_2 <= c_l;
						hex_1 <= c_blank;
						
					when 7 => -- Start
						hex_5 <= c_S;
						hex_4 <= c_t;
						hex_3 <= c_A;
						hex_2 <= c_r;
						hex_1 <= c_t;
						
				end case;
				
			elsif(word_s = '1') then
				hex_1 <= c_blank;
				hex_2 <= c_blank;
				hex_3 <= c_0;
				case payment is
					when 0   => hex_5 <= c_0; hex_4 <= c_0;
					when 10  => hex_5 <= c_0; hex_4 <= c_1;
					when 20  => hex_5 <= c_0; hex_4 <= c_2;
					when 30  => hex_5 <= c_0; hex_4 <= c_3;
					when 40  => hex_5 <= c_0; hex_4 <= c_4;
					when 50  => hex_5 <= c_0; hex_4 <= c_5;
					when 60  => hex_5 <= c_0; hex_4 <= c_6;
					when 70  => hex_5 <= c_0; hex_4 <= c_7;
					when 80  => hex_5 <= c_0; hex_4 <= c_8;
					when 90  => hex_5 <= c_0; hex_4 <= c_9;
					when 100 => hex_5 <= c_1; hex_4 <= c_0;
					when 110 => hex_5 <= c_1; hex_4 <= c_1;
					when 120 => hex_5 <= c_1; hex_4 <= c_2;
					when 130 => hex_5 <= c_1; hex_4 <= c_3;
					when 140 => hex_5 <= c_1; hex_4 <= c_4;
					when 150 => hex_5 <= c_1; hex_4 <= c_5;
					when 160 => hex_5 <= c_1; hex_4 <= c_6;
					when 170 => hex_5 <= c_1; hex_4 <= c_7;
					when 180 => hex_5 <= c_1; hex_4 <= c_8;
					when 190 => hex_5 <= c_1; hex_4 <= c_9;
					when 200 => hex_5 <= c_2; hex_4 <= c_0;
					when 210 => hex_5 <= c_2; hex_4 <= c_1;
					when 220 => hex_5 <= c_2; hex_4 <= c_2;
					when 230 => hex_5 <= c_2; hex_4 <= c_3;
					when 240 => hex_5 <= c_2; hex_4 <= c_4;
					when 250 => hex_5 <= c_2; hex_4 <= c_5;
					when 260 => hex_5 <= c_2; hex_4 <= c_6;
					when 270 => hex_5 <= c_2; hex_4 <= c_7;
					when 280 => hex_5 <= c_2; hex_4 <= c_8;
					when 290 => hex_5 <= c_2; hex_4 <= c_9;
					when others =>hex_5 <= c_blank; hex_4 <= c_blank;
				end case;
			end if;
		end if;
	end process;
end a_7seg_display;