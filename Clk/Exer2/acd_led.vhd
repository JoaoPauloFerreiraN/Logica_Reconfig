library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity acd_led is 
	port (clk,reset: in std_logic;
			led: out std_logic_vector (3 downto 0));
end entity;

architecture arq of acd_led is 
	begin 
		process (clk,reset)
			variable cont: integer range 0 to 16;
			begin
				if(reset = '0') then
					cont := 0;
				elsif (clk'event and clk = '1') then 
					cont := cont + 1;
					if (cont > 15) then
						cont:= 0;
					end if;
				end if;
		led <= std_logic_vector(to_signed(cont,4));
	end process;
end architecture;