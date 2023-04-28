library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
	port(op: in std_logic;
	      a: in integer;
			b: in integer;
			y: out integer);
end entity;
architecture arq of mux2x1 is 
	begin
		y <= a when op = '0' else
			  b;
end arq;
		