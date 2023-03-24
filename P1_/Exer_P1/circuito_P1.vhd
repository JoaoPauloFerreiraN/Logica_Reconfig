library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_P1 is
  port (a, b: in std_logic_vector (2 downto 0);
           y: out std_logic_vector (6 downto 0)) ;
end circuito_P1;

architecture arq of circuito_P1 is
    signal ia, ib: integer range 0 to 2;
    begin
        ia <= to_integer (unsigned(a));
        ib <= to_integer (unsigned(b));
        y <= std_logic_vector (to_signed(2*ia-ib**2, 7));

end arq ; -- arq