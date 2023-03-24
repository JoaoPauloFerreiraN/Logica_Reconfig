library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuito_SLL is
  port (v: in std_logic_vector (2 downto 0);
        d: in std_logic_vector (1 downto 0);
        y: out std_logic_vector (2 downto 0)) ;
end circuito_SLL;

architecture arq of circuito_SLL is
    signal iv: integer range 0 to 3;
    signal id: integer range 0 to 1; 
    begin 
        iv <= to_integer(unsigned(v));
        id <= to_integer(unsigned(d));
        y <= iv SLL id;
end arq ; -- arq