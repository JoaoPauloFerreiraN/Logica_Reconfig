library  IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity circuito_deslocador is
    generic (N: integer := 3);
    port ( a: in std_logic_vector (N-1 downto 0);
           b: in std_logic;
           c: in std_logic_vector (1 downto 0);
           s: out std_logic_vector (N-1 downto 0));
end entity circuito_deslocador;

architecture arq of circuito_deslocador is
    signal ia: integer range 0 to 2**N-1;
    signal ic: integer range 0 to 4;
    begin
            with b select -- escolhe oq ele vai comparar
        s <= std_logic_vector(shift_left(unsigned(ia),to_integer(unsigned(ic)))) when 0,
             std_logic_vector(shift_right(unsigned(ia),to_integer(unsigned(ic)))) when others;
    
    
    
end architecture arq;