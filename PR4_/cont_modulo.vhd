library ieee;
use ieee.std_logic_1164.all;
use work.pacote.all; 

entity cont_modulo is 
	port (freq_op: in std_logic_vector(1 downto 0);
			mclk, reset: in std_logic;
			Hex2, Hex1, Hex0: out std_logic_vector (0 to 7));
end entity;

architecture arq of cont_modulo is 
	signal clock: std_logic;
	signal freq, numMSB,num,numLSB: integer;
	begin
	
		map_0: entity work.freqop(arq)
				 port map (freq_op, freq);		
		map_1: entity work.cloclk(arq)
				 port map (mclk, reset, freq, clock);				 
		map_2: entity work.modulador(arq)
				 port map (clock, reset, numMSB, num, numLSB);			 
		map_3: entity work.numtoseg(arq)
				 port map(numMSB, Hex2);
		map_4: entity work.numtoseg(arq)
				 port map(num, Hex1);
		map_5: entity work.numtoseg(arq)
				 port map(numLSB, Hex0);
				 
end architecture;
