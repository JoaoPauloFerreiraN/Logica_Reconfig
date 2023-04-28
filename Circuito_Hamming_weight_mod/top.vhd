library ieee.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use work.meu_pacote.all;

entity top is
	generic (N: integer := 3);
	port (a: in std_logic_vector (N-1 downto 0);
			s: out std_logic_vector(integer(ceil(log2(real(N))+0.001))-1 downto 0);
end entity;

architecture arq_top of top is
	constant nbits: natural := integer (ceil(log2(real(N))+0.001));
	begin
		map_1: entity work.int2stdv(arq)
				 generic map (N)
				 port map(x, y);
			
end architecture; 