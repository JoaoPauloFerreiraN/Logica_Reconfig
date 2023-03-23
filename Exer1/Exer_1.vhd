library ieee;
use ieee.std_logic_1164.all;

entity Exer_1 is
port (a, b: in std_logic;
			x: out std_logic);
end Exer_1;

architecture arq of Exer_1 is 
signal s0, s1, s2, s3: std_logic;
begin
		s0 <= not a; s1 <= not b; s2 <= s0 and s1; s3<= a and b; x <= s2 or s3;
end arq;