library ieee;
use ieee.std_logic_1164.all;

entity Decoder7Saida is 
		generic (N: integer := 3);
		port ( op: in std_logic;
				  a: in integer range -((2**(N+1))-2)/2 to (2**(N+1))-2;
				  SIG: out std_logic_vector(0 to 6);
				  HEX3: out std_logic_vector(0 to 6);
				  HEX4: out std_logic_vector(0 to 6));
end entity;

architecture arq of Decoder7Saida is
	signal controle: std_logic;
	begin
	
	SIG <= "1001110" when op = '0' else
			 "1111110";
	
	 -- SOMA 

	 HEX4 <= "1001111" when a = (0-1) else -- 1
				"0010010" when a = (0-2) else -- 2
				"0000110" when a = (0-3) else -- 3
				"1001100" when a = (0-4) else -- 4
				"0100100" when a = (0-5) else -- 5
				"0100000" when a = (0-6) else -- 6
				"0001111" when a = (0-7) else -- 7
				"0000001" when a = 0 else -- 0
				"1001111" when a = 1 else -- 1
				"0010010" when a = 2 else -- 2
				"0000110" when a = 3 else -- 3
				"1001100" when a = 4 else -- 4
				"0100100" when a = 5 else -- 5
				"0100000" when a = 6 else -- 6
				"0001111" when a = 7 else -- 7
				"0000000" when a = 8 else -- 8
				"0000100" when a = 9 else --9
				"0000001" when a = 10 else -- 10
				"1001111" when a = 11 else -- 11
				"0010010" when a = 12 else -- 12
				"0000110" when a = 13 else -- 13
				"1001100" when a = 14 else -- 14
				"0100100"; -- 15
								
	 HEX3 <= "1001110" when a = (0-1) else -- 1
				"1001110" when a = (0-2) else -- 2
				"1001110" when a = (0-3) else -- 3
				"1001110" when a = (0-4) else -- 4
				"1001110" when a = (0-5) else -- 5
				"1001110" when a = (0-6) else -- 6
				"1001110" when a = (0-7) else -- 7
				"0000001" when a = 0 else
				"0000001" when a = 1 else
				"0000001" when a = 2 else
				"0000001" when a = 3 else
				"0000001" when a = 4 else
				"0000001" when a = 5 else
				"0000001" when a = 6 else
				"0000001" when a = 7 else
				"0000001" when a = 8 else
				"0000001" when a = 9 else
				"1001111" when a = 10 else --10
				"1001111" when a = 11 else --11
				"1001111" when a = 12 else --12
				"1001111" when a = 13 else --13
				"1001111" when a = 14 else -- 14
				"1001111" when a = 15;     -- 15
				
				

--	 HEX4 <= "0000001" when a = "0000" else -- 0
--				"0000001" when a = "1010" else -- 10
--				"1001111" when a = "0001" else -- 1
--				"1001111" when a = "1011" else -- 11
--				"0010010" when a = "0010" else -- 2
--				"0010010" when a = "1100" else -- 12
--				"0000110" when a = "0011" else -- 3
--				"0000110" when a = "1101" else -- 13
--				"1001100" when a = "0100" else -- 4
--				"1001100" when a = "1110" else -- 14
--				"0100100" when a = "0101" else -- 5
--				"0100100" when a = "1111" else -- 15
--				"0100000" when a = "0110" else -- 6
--				"0001111" when a = "0111" else -- 7
--				"0000000" when a = "1000" else -- 8
--				"0000100" when a = "1001";-- 9
--								
--	 HEX3 <= "0000001" when a = "0000" else
--				"0000001" when a = "0001" else
--				"0000001" when a = "0010" else
--				"0000001" when a = "0011" else
--				"0000001" when a = "0100" else
--				"0000001" when a = "0101" else
--				"0000001" when a = "0110" else
--				"0000001" when a = "0111" else
--				"0000001" when a = "1000" else
--				"0000001" when a = "1001" else
--				"1001111" when a = "1010" else --10
--				"1001111" when a = "1011" else --11
--				"1001111" when a = "1100" else --12
--				"1001111" when a = "1101" else --13
--				"1001111" when a = "1110" else -- 14
--				"1001111" when a = "1111";     -- 15
						

--	 HEX4 <= "0000001" when op and a = "0000" else -- 0
--				"0000001" when op and a = "1010" else -- 10
--				"1001111" when op and a = "0001" else -- 1
--				"1001111" when op and a = "1011" else -- 11
--				"0010010" when op and a = "0010" else -- 2
--				"0010010" when op and a = "1100" else -- 12
--				"0000110" when op and a = "0011" else -- 3
--				"0000110" when op and a = "1101" else -- 13
--				"1001100" when op and a = "0100" else -- 4
--				"1001100" when op and a = "1110" else -- 14
--				"0100100" when op and a = "0101" else -- 5
--				"0100100" when op and a = "1111" else -- 15
--				"0100000" when op and a = "0110" else -- 6
--				"0001111" when op and a = "0111" else -- 7
--				"0000000" when op and a = "1000" else -- 8
--				"0000100" when op and a = "1001";-- 9
--								
--	 HEX3 <= "0000001" when op and a = "0000" else
--				"0000001" when op and a = "0001" else
--				"0000001" when op and a = "0010" else
--				"0000001" when op and a = "0011" else
--				"0000001" when op and a = "0100" else
--				"0000001" when op and a = "0101" else
--				"0000001" when op and a = "0110" else
--				"0000001" when op and a = "0111" else
--				"0000001" when op and a = "1000" else
--				"0000001" when op and a = "1001" else
--				"1001111" when op and a = "1010" else --10
--				"1001111" when op and a = "1011" else --11
--				"1001111" when op and a = "1100" else --12
--				"1001111" when op and a = "1101" else --13
--				"1001111" when op and a = "1110" else -- 14
--				"1001111" when op and a = "1111";     -- 15
--						
	 
	
end architecture;
	