library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hamming_weight is
    generic (N: integer := 8);
    port (a: in std_logic_vector (N-1 downto 0);
          s: out integer range 0 to N ); -- vetor de inteiro que pode assumir até o valor do N
end hamming_weight; 

architecture arq of hamming_weight is
    type vetor_inteiro is array (N-1 downto 0) of integer range 0 to N; -- criação do tipo de vetor 
    signal vetor_1, vetor_s: vetor_inteiro; --Inicialização dos vetores. 
    begin
        gen_1: for i in N-1 downto 0 generate --primeiro FOR para ler vetor de entrada e atribuir para um vetor numeros inteiros
            vetor_1 (i) <= 1 when a(i) = '1' else 0;
        end generate;
        vetor_s (0) <= vetor_1(0); --o vetor resultado recebe a primeira posicao do vetor de inteiros
        gen_2: for i in 1 to N-1 generate -- segundo FOR para somar os resultados finais, comeca com 1 pq vai somar com a posicao 0.
            vetor_s(i) <= vetor_s(i-1) + vetor_1(i);
        end generate;   
            s <= vetor_s(N-1);
end architecture arq;