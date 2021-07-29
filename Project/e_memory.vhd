library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_memory is
	generic(n: integer := 8);
	port(
		enable, reset: in std_logic;
		washing_machine_address: in std_logic_vector(n-5 downto 0);
		washing_machine_address_available: out boolean
	);
end e_memory;

architecture a_memory of e_memory is
	
	type ram_type is array (0 to n) of bit;
	
	signal ram: ram_type := (others => '0');
	
	begin
		process(enable, reset) begin
			if(reset = '0') then
				ram <= (others => '0');
			elsif(enable = '0') then
				case ram(to_integer(unsigned(washing_machine_address))) is 
					when '0' =>
						washing_machine_address_available <= true;
						ram(to_integer(unsigned(washing_machine_address))) <= '1';
					when '1' =>
						washing_machine_address_available <= false;
				end case;
			end if;
		end process;
		
end a_memory;