library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MSBShifter is
    generic (N: integer := 4);
    port (a: in std_logic_vector (N-1 downto 0);
			catodosEntrada: out std_logic_vector (0 to 6);
			catodosSaida: out std_logic_vector (0 to 6);
          s, ledEntrada: out std_logic_vector (N-1 downto 0 )); -- vetor de inteiro que pode assumir até o valor do N
end entity; 

architecture arq of MSBShifter is
    type vetor_inteiro is array (N-1 downto 0) of integer range 0 to N; -- criação do tipo de vetor 
    signal vetor_1, vetor_s: vetor_inteiro; --Inicialização dos vetores. 
	 signal x: integer range 0 to N;
	 signal buff: std_logic_vector (N-1 downto 0 );
    begin
        gen_1: for i in N-1 downto 0 generate --primeiro FOR para ler vetor de entrada e atribuir para um vetor numeros inteiros
            vetor_1 (i) <= 1 when a(i) = '1' else 0;
        end generate;
        vetor_s (0) <= vetor_1(0); --o vetor resultado recebe a primeira posicao do vetor de inteiros
        gen_2: for i in 1 to N-1 generate -- segundo FOR para somar os resultados finais, comeca com 1 pq vai somar com a posicao 0.
            vetor_s(i) <= vetor_s(i-1) + vetor_1(i);
        end generate;
			x <= vetor_s(N-1); -- Recebe o valor da quantidad de uns.
	
		  gen_3: for i in N-1 downto 0 generate
				s(i) <= '1' when i >= N-x else '0';
				buff(i)<= '1' when i >= N-x else '0';
		  end generate;
		  ledEntrada <= a;
		  catodosEntrada <= "0000001" when a = "0000" else
								  "1001111" when a = "0001" else
						        "0010010" when a = "0010" else
						        "0000110" when a = "0011" else
						        "1001100" when a = "0100" else
						        "0100100" when a = "0101" else
						        "0100000" when a = "0110" else
					 	        "0001111" when a = "0111" else
						        "0000000" when a = "1000" else
						        "0000100" when a = "1001" else
						        "0001000" when a = "1010" else
						        "1100000" when a = "1011" else
						        "0110001" when a = "1100" else
						        "1000010" when a = "1101" else
						        "0110000" when a = "1110" else
						        "0111000";
								  
			catodosSaida <=  "0000001" when buff = "0000" else
			                 "0000000" when buff = "1000" else
								  "0110001" when buff = "1100" else
				              "0110000" when buff = "1110" else
								  "0111000";
end architecture arq;