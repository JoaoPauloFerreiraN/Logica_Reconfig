library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity modulador is 
	port(clk,reset: in std_logic;
			Hex2, Hex1, Hex0: out integer);
end entity;

architecture arq of modulador is
	begin 
		process (clk, reset)
			variable cont, aux: integer range 0 to 1000;
			begin
				if (reset = '0') then 
					cont := 0;
				elsif (clk'event and clk ='1') then
					cont := cont + 1;
				if (cont > 999) then
						cont := 0;
					end if;
				end if;
				Hex2 <= cont/100;
				Hex1 <= (cont mod 100 )/ 10;
				Hex0 <= (cont mod 100 ) mod 10;
--				aux := cont/100;		
--				Hex2 <= aux;
--				Hex1 <= (aux mod 100)/ 10;
--				Hex0 <= (aux mod 100) mod 10;
			end process;				
end architecture;