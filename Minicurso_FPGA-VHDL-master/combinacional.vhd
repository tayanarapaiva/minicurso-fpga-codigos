--AUTORES: MARCOS MEIRA E JOÃO VICTOR
--MODIFICADO POR: EDMILA MACEDO
--DATA: 10/12/2018

library IEEE;
use IEEE.std_logic_1164.all;
 
entity combinacional is
 
port (
     	a: in  std_logic;
     	b: in  std_logic;
     	c: in  std_logic;
     	s: out std_logic
  	);
  	
end combinacional;
  	
 
architecture xupitilha of combinacional is
signal  x1,x2,x3 : std_logic;
begin
 
x1<= (not a) and(not b);
x2<=  (not b) and ( not c);
x3 <= a and (not c);
s<= (x1 or x2 or x3);	-- SAIDA APOS BEGIN NAO ALTERA O RESULTADO
                     	-- ARQUITETURA ATUA EM PARALELO
end xupitilha;
