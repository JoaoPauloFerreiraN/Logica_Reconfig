library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_sub is
  port (a, b: in std_logic_vector (2 downto 0);
           y: out std_logic_vector (3 downto 0)) ;
end circuito_sub;

architecture arq of circuito_sub is
    signal ia, ib: integer range 0 to 7;
    begin
        ia <= to_integer (unsigned(a));
        ib <= to_integer (unsigned(b));
        y <= std_logic_vector (to_signed(ia-ib, 4));

end arq ; -- arq