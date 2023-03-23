library ieee;
use ieee.std_logic_1164.all;

entity Exer5_mux is
port (a, b, i0, i1, i2, i3: in std_logic;
			x: out std_logic);
end Exer5_mux;

architecture arq of Exer5_mux is
signal s0, s1, s2, s3: std_logic;
begin
		s0 <= not(a) and not(b) and i0;
		s1 <= not(a) and b and i1;
		s2 <= a and not(b) and i2;
		s3 <= a and b and i3;
		x <= s0 or s1 or s2 or s3;
end arq;