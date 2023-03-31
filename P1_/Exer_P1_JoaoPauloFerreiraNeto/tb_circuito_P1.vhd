library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_circuito_P1 is
end tb_circuito_P1;

architecture tb_arq of tb_circuito_P1 is
    signal ta, tb: std_logic_vector(2 downto 0); 
    signal ty: std_logic_vector(6 downto 0);
    begin
        uut: entity work.circuito_P1(arq)
            port map (ta, tb, ty);
        process
            variable i, j: integer range 0 to 7;
        begin 
            for i in 0 to 7 loop
                for j in 0 to 7 loop
                    ta <= std_logic_vector(to_unsigned(i,3));
                    tb <= std_logic_vector(to_unsigned(j,3));
                    wait for 10 ns;
                end loop;
            end loop;
        end process;
end tb_arq ; -- tb_arq