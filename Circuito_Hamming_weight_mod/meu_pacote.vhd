library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package meu_pacote is
	
	component int2stdv is
		generic (N: integer :=2);
		port (x: in integer range 0 to N;
				s: out std_logic_vector(integer(ceil(los2(real(N))+0.001))-1 downto 0))
		end component;
	

end package;
