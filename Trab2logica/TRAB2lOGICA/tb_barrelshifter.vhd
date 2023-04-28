library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_barrelshifter is
	generic(M : integer := 3);
end entity;

architecture tb_arq of tb_barrelshifter is
	signal tx,ty: std_logic_vector(M-1 downto 0);
	signal tled_entrada:  std_logic_vector((M - 1) downto 0);
	signal taux7segm1 :  std_logic_vector(0 to 6);
  signal taux7segm2 :  std_logic_vector(0 to 6);
	
begin
	
	uut: entity work.barrelshifter(arq)
		generic map(M)
		port map(tx,tled_entrada,ty,taux7segm1,taux7segm2);

	process
		variable i: integer range 0 to 2**M-1;
	begin
		for i in 0 to 2**M-1 loop
			tx <= std_logic_vector(to_unsigned(i, M));
			wait for 10 ns;
		end loop;
		
	end process;

end tb_arq;