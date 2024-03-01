library ieee;
use ieee.std_logic_1164.all;

entity sumador is

 port
	(-- Input ports
		A, B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		
		-- Output ports
	   unidades : out std_logic_vector (6 downto 0);
		decenas : out std_logic_vector (6 downto 0));
	
end sumador;


architecture arch_sumador of sumador is

	component fulladder4Bits 

		port
		(  -- Input ports
			A, B : in std_logic_vector (3 downto 0);
			-- Output ports
			Sum : out std_logic_vector (3 downto 0);
			Cout : out std_logic );
			
	end component;

	component decodificador 

		Port
		(  BCD : in STD_LOGIC_VECTOR (3 downto 0);
			SEG : out STD_LOGIC_VECTOR (6 downto 0));
					
	end component;

begin
	
end arch_sumador;
