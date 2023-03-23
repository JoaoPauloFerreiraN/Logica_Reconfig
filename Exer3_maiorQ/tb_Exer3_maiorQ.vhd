library ieee;
use ieee.std_logic_1164.all;

entity tb_Exer3_maiorQ is
end entity;

architecture tb_arq_Exer3_maiorQ of tb_Exer3_maiorQ is
	signal ta, tb, ty: std_logic;
	begin
	
		uut: entity work.Exer3_maiorQ(arq)
						port map (ta, tb, ty);
						
				process
				begin
						ta<= '0'; tb <= '0'; wait for 10 ns;
						ta<= '0'; tb <= '1'; wait for 10 ns;
						ta<= '1'; tb <= '0'; wait for 10 ns;
						ta<= '1'; tb <= '1'; wait for 10 ns;
				end process;
end tb_arq_Exer3_maiorQ;