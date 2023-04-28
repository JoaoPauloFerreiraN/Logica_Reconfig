library ieee;
use ieee.std_logic_1164.all;

entity barrelshifter is
	generic(N : integer := 4);
	port(x: in std_logic_vector(N-1 downto 0);
		  led_entrada: out std_logic_vector((N - 1) downto 0);
		  y: out std_logic_vector(N-1 downto 0);
		  aux7segm1 : out std_logic_vector(0 to 6);
		  aux7segm2 : out std_logic_vector(0 to 6));
end entity;

architecture arq of barrelshifter is
type vet_int is array (N-1 downto 0) of integer range 0 to N;
signal vet_1, vet_s: vet_int;
signal rds: integer range 0 to N;
signal auxbuffer: std_logic_vector (N-1 downto 0);
begin
	
	gen_1: for i in N-1 downto 0 generate
				vet_1(i) <= 1 when x(i) = '1' else 0;
		end generate;
		
	vet_s(0) <= vet_1(0);
	gen_2 : for i in 1 to N-1 generate
			vet_s(i) <= vet_s(i-1) + vet_1(i);
			end generate;
			
	rds <= vet_s(N-1);
	
	gen_3 : for i in N-1 downto 0 generate
		y(i) <= '1' when i >= N-rds else '0';
		auxbuffer(i) <= '1' when i >= N-rds else '0';
	end generate;

	led_entrada <= x;
	
	aux7segm1 <= not("1111110") when x = "0000" else
			not("0110000") when x = "0001" else
			not("1101101") when x = "0010" else
			not("1111001") when x = "0011" else
			not("0110011") when x = "0100" else
			not("1011011") when x = "0101" else
			not("1011111") when x = "0110" else
			not("1110000") when x = "0111" else
			not("1111111") when x = "1000" else
			not("1111011") when x = "1001" else
			not("1110111") when x = "1010" else
			not("0011111") when x = "1011" else
			not("1001110") when x = "1100" else
			not("0111101") when x = "1001" else
			not("1001111") when x = "1101" else
			not("1000111") when x = "1100" else
			not("0000001");

			
	aux7segm2 <= "0000001" when auxbuffer = "0000" else
			       "0000000" when auxbuffer = "1000" else
		          "0110001" when auxbuffer = "1100" else
		          "0110000" when auxbuffer = "1110" else
			       "0111000";

end arq;