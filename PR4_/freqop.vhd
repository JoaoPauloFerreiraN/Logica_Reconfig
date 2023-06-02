library  ieee;
use ieee.std_logic_1164.all;

entity freqop is
	port (freq_op: in std_logic_vector ( 1 downto 0);
				vaul: out integer);
end entity;

architecture arq of freqop is 
	begin
		vaul <= 1 when freq_op = "00" else
				  5 when freq_op = "01" else
				  10 when freq_op = "10" else
				  50;
				  
end architecture;