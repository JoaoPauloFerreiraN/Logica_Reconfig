library ieee;
use ieee.std_logic_1164.all;

entity Exer2_comparador is
port (a, b: in std_logic;
			x: out std_logic);
end Exer2_comparador;

architecture arq of Exer2_comparador is 
begin
		x <= a XNOR b;
end arq;
