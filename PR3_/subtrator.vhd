library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is 
	generic (N: integer := 3);
	port (a,b: in  std_logic_vector (N-1 downto 0);
			y: out integer);
end subtrator; 
architecture arq of subtrator is 
	signal ia, ib: integer range 0 to 2**N-1;
	begin
			ia <= to_integer(unsigned(a));
			ib <= to_integer(unsigned(b));
			y<= ia-ib;
end arq;