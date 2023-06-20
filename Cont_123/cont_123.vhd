Library ieee;
use ieee.std_logic_1164.all;

entity cont_123 is
	port (clck, rst:  in std_logic;
					  x:  in std_logic_vector (1 downto 0);
					  y: out std_logic_vector (1 downto 0));

end entity;

architecture arq of cont_123 is
	constant segundo: integer := 50000000;
	constant    TMin: integer := 1 * segundo;
	constant    TMax: integer := 3 * segundo;
	constant     Max: integer := 5 * segundo;
	
	type estado is (q0, q1, q2, q3);
	signal pr_st, nx_st: estado;
	
	signal s_rst: std_logic;
	signal s_x: std_logic_vector (1 downto 0);
	signal timer: integer range 0 to Max;
	
	begin
		s_x <= not(x);
		s_rst <= not(rst);
		
		process(clck,s_rst)
		variable count: integer range 0 to Max;
		begin
			if (s_rst = '1') then
				pr_st <= q0;
				count := 0;
			elsif (clck'event and clck = '1') then
				count := count + 1;
				if(count >= timer) then
					pr_st <= nx_st;
					count := 0;
				end if;
			end if;
		end process;
		
		process(pr_st,s_x)
		begin
			case pr_st is
				when q0 =>
					y <= "00";
					timer <= 1;
					if(s_x = "01") then
						nx_st <= q1;
					else
						nx_st <= q0;
					end if;
				when q1 =>  ---------------- no estado 1
					y <= "01"; 
					if(s_x = "10") then     -- se 2, vai para o estado 2
						timer <= TMin;
						nx_st <= q2;					
					elsif (s_x = "01") then -- se 1, matem o estado
						timer <= TMin;
					else                    -- se 3, volta pro estado 0
						timer <= TMax; 
						nx_st <= q0;
					end if;
				when q2 =>   ---------------- no estado 2
					y <= "10";
					if(s_x = "11") then     -- se 3, vai para o estado 3
						timer <= TMin;
						nx_st <= q3;											
					elsif (s_x = "01") then -- se 1, vai pro estado 1
						timer <= TMin;
						nx_st <= q1;
					else							-- se 2, vai pro estado 0
						timer <= TMax;
						nx_st <= q0;
					end if;
				when q3 =>     ---------------- no estado 3
					y <= "11";											
					if (s_x = "01") then -- se 1, vai pro estado 1
						timer <= TMin;
						nx_st <= q1;
					else                 -- se qualquer coisa, volta pro estado 0
						timer <= TMax;
						nx_st <= q0;
					end if;
			end case;
		end process;
end architecture;