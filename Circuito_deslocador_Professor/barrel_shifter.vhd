library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity barrel_shifter is
   port(x: in std_logic_vector(2 downto 0);   --vetor de entrada x
        d: in std_logic;						    --direção '0' esq '1' direita
        m: in std_logic_vector(1 downto 0);   --movimento 00..11 <--> 0..3 deslocamentos
        y: out std_logic_vector(2 downto 0)); --vetor de saída y
end entity;

architecture arq of barrel_shifter is
   signal im: integer range 0 to 3;
	signal ux, uy: unsigned(2 downto 0);
begin
   im <= to_integer(unsigned(m));
	ux <= unsigned(x);
   uy <= ux sll im when d='0' else ux srl im;
	y <= std_logic_vector(uy);
end arq;