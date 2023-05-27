library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all; 

entity cont_7seg is
	port ( mclk, reset: in std_logic;
			seg: out std_logic_vector (0 to 6));
end entity;

architecture arq of cont_7seg is
	signal clk: std_logic;
	signal set_seg: std_logic_vector (0 to 6);
	begin
		map_1: entity work.cloclk(arq)
				port map(mclk, reset, 2, clk);
		map_2: entity work.cont7(arq)
				port map (clk, reset,set_seg);
				
				seg <= set_seg;
				
end architecture;