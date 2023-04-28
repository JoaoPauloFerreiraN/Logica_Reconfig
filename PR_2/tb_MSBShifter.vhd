library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_MSBShifter is
    generic (M: integer :=4);
end entity;

architecture tb_arq of tb_MSBShifter is
    signal ta, ts: std_logic_vector(M-1 downto 0);
    signal tcatodosEntrada: std_logic_vector (0 to 6);
	 signal tcatodosSaida: std_logic_vector (0 to 6);
    signal tledEntrada: std_logic_vector (M-1 downto 0 );
	 
    begin
        uut: entity work.MSBShifter(arq)
            generic map (M)
            port map (ta,tcatodosEntrada, tcatodosSaida, ts, tledEntrada);				
				
        process
            variable i: integer range 0 to 2**M-1;
        begin
            for i in 0 to 2**M-1 loop
                ta <= std_logic_vector(to_unsigned(i,M));
                wait for 10 ns;
				end loop;	
        end process;    
end architecture tb_arq;