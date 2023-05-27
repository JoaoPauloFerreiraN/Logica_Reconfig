library ieee;
use ieee.std_logic_1164.all;

package pacote is 

	component cloclk is 
		port(mclk, reset: in std_logic;
				freq: in integer;
			  clk: out std_logic);
	end component;
	
	component acd_led is
			port(clck, reset: in std_logic;
					led: out std_logic_vector (3 downto 0));
		end component;
		
	component cont7 is
			port(clkc, reset: in std_logic;
					set_seg: out std_logic_vector(0 to 6));
	end component;
		
end package;