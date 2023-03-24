library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_circuito_multiplicador is
end tb_circuito_multiplicador;

architecture tb_arq of tb_circuito_multiplicador is
    signal ta, tb: std_logic_vector(1 downto 0);
    signal ty: std_logic_vector (3 downto 0);
    begin
        uut: entity work.circuito_multiplicador(arq)
             port map (ta, tb, ty);
        process
            variable i, j: integer range 0 to 3;
        begin
            for i in 0 to 3 loop
                for j in 0 to 3 loop
                    ta <= std_logic_vector(to_unsigned(i,2));
                    tb <= std_logic_vector(to_unsigned(j,2));
                    wait for 10 ns;
                end loop;
            end loop;
        end process;
end tb_arq;