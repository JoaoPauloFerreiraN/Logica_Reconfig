library ieee;
use ieee.std_logic_1164.all;

entity Porta_and is
port(a, b: in std_logic;
			y: out std_logic);
end entity;

architecture arq of Porta_and is
begin
	y <= a and b;
	end arq;