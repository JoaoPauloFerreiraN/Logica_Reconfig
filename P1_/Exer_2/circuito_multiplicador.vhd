library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_multiplicador is
  port (a, b: in std_logic_vector (1 downto 0);
           y: out std_logic_vector (3 downto 0));
end circuito_multiplicador;


architecture arq of circuito_multiplicador is
    signal ia, ib: integer range 0 to 3;
    begin
        ia <= to_integer(unsigned(a));
        ib <= to_integer(unsigned(b));

        y <= std_logic_vector (to_unsigned (ia*ib, 4));
end arq ; 