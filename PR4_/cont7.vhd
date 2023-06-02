library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont7 is
	port (clk, reset: in std_logic;
				set_seg: out std_logic_vector ( 0 to 6));
end entity;

architecture arq of cont7 is
	signal buff: std_logic_vector (0 to 3);
	begin
	process(clk, reset)
		variable cont: integer range 0 to 16;
		begin
			if (reset = '0') then
				cont := 0;
			elsif (clk'event and clk = '1') then
				cont := cont + 1;
				if (cont > 15) then
						cont := 0;
				end if;
			end if;
			buff <= std_logic_vector(to_signed(cont,4));
		end process;
		
		set_seg <=  "0000001" when buff = "0000" else
						"1001111" when buff = "0001" else
			         "0010010" when buff = "0010" else
			         "0000110" when buff = "0011" else
			         "1001100" when buff = "0100" else
			         "0100100" when buff = "0101" else
			         "1100000" when buff = "0110" else
			         "0001111" when buff = "0111" else
			         "0000000" when buff = "1000" else
			         "0001100" when buff = "1001" else
			         "0001000" when buff = "1010" else
			         "1100000" when buff = "1011" else
			         "0110001" when buff = "1100" else
			         "1000010" when buff = "1101" else
			         "0110000" when buff = "1110" else
			         "0111000" when buff = "1111" else						
			         "0000111";
end architecture;