library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tbcircuitoSomaSub is
		generic (M: integer := 2);
end entity;
architecture tbarq of tbcircuitoSomaSub is 
		signal ta,tb: std_logic_vector (M-1 downto 0);
		signal top: std_logic;
		signal ty: std_logic_vector (M downto 0);
		signal tHex1: std_logic_vector (0 to 6);
		signal tHex2: std_logic_vector (0 to 6);
		signal tHex3: std_logic_vector (0 to 6);
		signal tHex4: std_logic_vector (0 to 6);
		signal tSIG:  std_logic_vector (0 to 6);
		
		begin
			uut: entity work.circuitoSomaSub(arq)
			generic map (M)
			port map(ta, tb, top, ty, tHex1, tHex2, tHex3, tHex4, tSIG);
			process
					variable i, j: integer range 0 to 2**M-1;
			begin
					top <= '0';
					for i in 0 to 2**M-1 loop
						for j in 0 to 2**M-1 loop
							ta <= std_logic_vector(to_unsigned(i,M));
							tb <= std_logic_vector(to_unsigned(j,M));
							wait for 10 ns;
						end loop;
					end loop;
				end process;
end architecture;