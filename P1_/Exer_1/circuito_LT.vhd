library ieee;
use ieee.std_logic_1164.all;

entity circuito_LT is
  port (a, b: in std_logic_vector (1 downto 0);
           y: out std_logic) ;
end circuito_LT;

architecture arq of circuito_LT is
    signal s0, s1, s2: std_logic;
    begin
        s0 <= not (a(1)) and b(1);
        s1 <= not (a(0)) and b(1) and b(0);
        s2 <= not (a(1)) and not (a(0)) and b(0);
        y <= s0 or s1 or s2; 
end arq ; -- arq