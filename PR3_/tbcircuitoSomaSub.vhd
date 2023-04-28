library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tbcircuitoSomaSub is
		generic (M: integer := 3);
end entity;
architecture tbarq of tbcircuitoSomaSub is 
		signal ta,tb: std_logic_vector (M-1 downto 0);
		signal top: std_logic;
		signal ty: std_logic_vector (M downto 0);
		
		begin
			uut: entity work.circuitoSomaSub(arq)
			port map(ta, tb, top, ty);
			process
					variable i, j: integer range 0 to 2**M-1;
			begin
					for i in 0 to 2**M-1 loop
						for j in 0 to 2**M-1 loop
							ta <= std_logic_vector(to_unsigned(i,M));
							tb <= std_logic_vector(to_unsigned(j,M));
							wait for 10 ns;
						end loop;
					end loop;
				end process;
end architecture;