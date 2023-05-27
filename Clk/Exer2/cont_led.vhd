library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all;

entity cont_led is 
	port (mclk, reset: in std_logic;
			led: out std_logic_vector (3 downto 0));
end entity;

architecture arq of cont_led is 
	signal clk: std_logic;
	signal led2: std_logic_vector (3 downto 0);
	begin
	map_1: entity work.cloclk(arq)
		port map(mclk, reset, 2, clk);
	map_2: entity work.acd_led(arq)
		port map(clk,reset,led2);
		led<=led2;
end architecture; 