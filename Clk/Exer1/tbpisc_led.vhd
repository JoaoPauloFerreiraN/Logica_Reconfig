library ieee;
use ieee.std_logic_1164.all;

entity tbpisc_led is
end entity;

architecture tb_arq of tbpisc_led is
	signal tbmclk, tbrest, tbclk1, tbclk2: std_logic:= '0';
	constant mclk_period: time := 1000ms;
	begin
		uut: entity work.pisc_led(arq)
		port map (tbmclk, tbrest, tbclk1,tbclk2);
		process 
			begin 
				tbmclk <= '0';
				wait for mclk_period/2;
				tbmclk <= '1';
				wait for mclk_period/2;
		end process;
		tbrest <= '0', '1' after mclk_period/2;
end;	