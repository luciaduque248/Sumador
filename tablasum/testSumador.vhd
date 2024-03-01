library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;

entity testSumador is
	port
	(	A, B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		
		UN : out std_logic_vector (6 downto 0);
		DC : out std_logic_vector (6 downto 0)
	);
end testSumador;

architecture arch_testSumador of testSumador is

	Component fulladder4Bits 
		port( A, B : in std_logic_vector (3 downto 0);
				Cin : in std_logic;
			
				Sumador : out std_logic_vector (4 downto 0));
	end Component;

	Component decodificador
		port( bcdA : in std_logic;
				bcdB : in std_logic;
				bcdC : in std_logic;
				bcdD : in std_logic;
				
				SEG : out std_logic_vector (6 downto 0));
	end component;
	
	Component tablasum
		port(	sum : in integer range 0 to 31;
				
				D : out integer range 0 to 9;
				U : out integer range 0 to 9);
	end component;
	
	
	signal Sum_4Bits : integer range 0 to 31;
	signal Sum : std_logic_vector (3 downto 0);
	signal Cout : std_logic;
	signal BCD_U : integer range 0 to 9;
	signal BCD_D : integer range 0 to 9; 
	
	
begin

	A4 : fulladder4Bits port map (A, B, Cin, std_logic_vector(to_unsigned(Sum_4Bits, 5)));
	--Sum_4Bits <= Cout & Sum;
	
	A5 : tablasum port map (to_integer(Sum_4Bits), BCD_U, BCD_D); 
	BCDD : decodificador port map (std_logic_vector(to_unsigned(BCD_U, 4)), UN);
	BCDU : decodificador port map (std_logic_vector(to_unsigned(BCD_D, 4)), DC);
	
	 
end arch_testSumador;