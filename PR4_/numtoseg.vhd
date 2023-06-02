library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity numtoseg is 
	port(num: in integer range 0 to 9;
			Hex: out std_logic_vector(0 to 7));
end entity;

architecture arq of numtoseg is 
	begin
		
		Hex <= "00000011" when num = 0 else
				 "10011111" when num = 1 else
			    "00100101" when num = 2 else
			    "00001101" when num = 3 else
			    "10011001" when num = 4 else
			    "01001001" when num = 5 else
			    "11000001" when num = 6 else
			    "00011111" when num = 7 else
			    "00000001" when num = 8 else
			    "00011001";

end architecture;