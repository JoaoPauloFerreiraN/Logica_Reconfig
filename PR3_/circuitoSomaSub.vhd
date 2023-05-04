library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pacote.all;

entity circuitoSomaSub is
	generic (N: integer :=3);
	port (a,b: in std_logic_vector (N-1 downto 0);
			 op: in std_logic; -- 0 somador e 1 subtrator
			  y: out std_logic_vector (N downto 0);
		  Hex1: out std_logic_vector(0 to 6); 
		  Hex2: out std_logic_vector(0 to 6);
		  Hex3: out std_logic_vector(0 to 6); 
		  Hex4: out std_logic_vector(0 to 6);
			SIG: out std_logic_vector(0 to 6));
end entity;


architecture arq  of circuitoSomaSub is 
	signal resp: integer range -((2**(N+1))-2)/2  to (2**(N+1))-2;
	signal respSoma: integer range 0 to (2**(N+1))-2;
	signal respSub: integer range -((2**(N+1))-2)/2 to ((2**(N+1))-2)/2;
	
	begin
			map_1: entity work.somador(arq)
				generic map (N)
				port map (a, b, respSoma);
			map_2: entity work.subtrator(arq)
				generic map (N)
				port map (a, b, respSub);
			map_3: entity work.mux2x1(arq)
				generic map (N)
				port map (op, respSoma, respSub, resp);
			map_4: entity work.Decoder7Entrada(arq)
				generic map (N)
				port map (a,Hex1);
			map_5: entity work.Decoder7Entrada(arq)
				generic map (N)
				port map (b,Hex2);
			map_6: entity work.Decoder7Saida(arq)
				generic map (N)
				port map (op,resp,SIG,Hex3,Hex4);
			
			y <= std_logic_vector(to_signed(resp,N+1));
end arq;