library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.pacote.all;

entity pisc_led is
	port ( mclk, reset: in std_logic;
	       clk1, clk2: out std_logic);
end entity;

architecture arq of pisc_led is
	
	begin
		map_1: entity work.cloclk(arq)
				port map(mclk, reset, 1 ,clk1);
		map_2: entity work.cloclk(arq)
				port map(mclk, reset, 2 ,clk2);
	
end architecture;