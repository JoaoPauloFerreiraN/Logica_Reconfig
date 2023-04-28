library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_barrel_shifter is
end entity;

architecture tb_arq of tb_barrel_shifter is
   signal tx, ty: std_logic_vector(2 downto 0);
   signal td: std_logic;
   signal tm: std_logic_vector(1 downto 0);
begin
  
  uut: entity work.barrel_shifter(arq) 
              port map(tx, td, tm, ty);
  
  process
     variable i: integer range 0 to 7;
     variable j: integer range 0 to 3;
  begin
     td <= '0';
     for i in 0 to 7 loop
        for j in 0 to 3 loop
           tx <= std_logic_vector(to_unsigned(i, 3));
           tm <= std_logic_vector(to_unsigned(j, 2));
           wait for 10 ns;
        end loop;
     end loop;
     
     td <= '1';
     for i in 0 to 7 loop
        for j in 0 to 3 loop
           tx <= std_logic_vector(to_unsigned(i, 3));
           tm <= std_logic_vector(to_unsigned(j, 2));
           wait for 10 ns;
        end loop;
     end loop;
     
  end process;
end tb_arq;