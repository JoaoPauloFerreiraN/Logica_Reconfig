library ieee;
use ieee.std_logic_1164.all;

package pacote is 
	component somador is 
		generic (N: integer :=3);
		port(a,b: in std_logic_vector(N-1 downto 0);
				y: out integer);
	end component;
	component subtrator is
		generic (N: integer := 3);
		port( a,b: in std_logic_vector (N-1 downto 0);
		       y: out integer);
	end component;
	component mux2x1 is 
		port (op: in std_logic;
				 a: in integer ;
				 b: in integer ;
				 y: out  integer);
	end component;
end package;
	