library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_multiplicador is
		generic (N: integer:=2);
		port (a,b: in std_logic_vector (N-1 downto 0);
				s: out std_logic_vector ((2*N)-1 downto 0));
end circuito_multiplicador;

architecture arq of circuito_multiplicador is
		signal ia, ib: integer range 0 to 2**N-1;
		begin
				 ia <= to_integer(unsigned(a));
				 ib <= to_integer(unsigned(b));
				  s <= std_logic_vector(to_unsigned(ia*ib,2*N));
end arq;
				