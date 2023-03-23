library ieee;
use ieee.std_logic_1164.all;

entity tb_Exer5_mux is
end entity;

architecture tb_arq of tb_Exer5_mux is
		signal ta, tb, ti0, ti1, ti2, ti3, tx: std_logic;
begin 
		uut: entity work.Exer5_mux(arq)
			 port map (ta, tb, ti0, ti1, ti2, ti3, tx);
			
			process
			begin
				ti0 <= '1'; ti1 <= '1'; ti2 <= '1'; ti3 <= '1'; 
				ta <= '0'; tb <= '0'; wait for 10 ns;
				ta <= '0'; tb <= '1'; wait for 10 ns;
				ta <= '1'; tb <= '0'; wait for 10 ns;
				ta <= '1'; tb <= '1'; wait for 10 ns;
			end process;
			
end tb_arq;