library ieee;
use ieee.std_logic_1164.all;

entity Exer4_Gray is
port (a, b, c: in std_logic;
			  x_MSB, x_BI, x_LSB: out std_logic);
end Exer4_Gray;

architecture arq of Exer4_Gray is 
begin
		x_MSB <= a;
		x_BI <= ((a and not(b)) or (b and not(a)) or (c and b and not(a)) );
		x_LSB <= ((b and not(C)) or (c and not(b) and not (a)) or ( c and not(b)));
end arq;