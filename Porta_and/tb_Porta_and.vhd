library ieee;
use ieee.std_logic_1164.all;

entity tb_Porta_and is
end entity;

architecture arq of tb_Porta_and is
	signal ta, tb, ty: std_logic;
begin
		uut: entity work.Porta_and(arq)
		port map (ta, tb, ty);
	process
	begin
		ta<= '0'; tb <= '0'; wait for 10 ns;
		ta<= '0'; tb <= '1'; wait for 10 ns;
		ta<= '1'; tb <= '0'; wait for 10 ns;
		ta<= '1'; tb <= '1'; wait for 10 ns;
	end process;
end arq;