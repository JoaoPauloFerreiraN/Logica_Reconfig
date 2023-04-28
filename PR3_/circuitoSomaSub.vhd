library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pacote.all;

entity circuitoSomaSub is
	generic (N: integer :=3);
	port (a,b: in std_logic_vector (N-1 downto 0);
			  op: in std_logic; -- 0 somador e 1 subtrator
			  y: out std_logic_vector (N downto 0));
end entity;


architecture arq  of circuitoSomaSub is 
	signal resp, respSoma, respSub: integer range 0 to N;
	begin
			map_1: entity work.somador(arq)
					 port map (a, b, respSoma);
			map_2: entity work.subtrator(arq)
					 port map (a, b, respSub);
			map_3: entity work.mux2x1(arq)
					 port map (op, respSoma, respSub, resp);
			y <= std_logic_vector(to_signed(resp,N+1));
end arq;