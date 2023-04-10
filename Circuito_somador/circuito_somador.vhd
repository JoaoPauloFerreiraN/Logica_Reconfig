library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_somador is
	generic (N: integer := 2); --cria componente generico
	port (a,b: in std_logic_vector(N-1 downto 0); --declara portas de n tamanho, lembrar que 0 é uma unidade tambem
			s: out std_logic_vector(N downto 0));
end circuito_somador;

architecture arq of circuito_somador is
	signal ia, ib :integer range 0 to 2**N-1;
	begin
		ia <=to_integer(unsigned(a));
		ib <=to_integer(unsigned(b));
		s<= std_logic_vector(to_unsigned(ia+ib,N+1));
end arq;

