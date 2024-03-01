library ieee;
use ieee.std_logic_1164.all;

entity fulladder4Bits is
	port(	A, B : in std_logic_vector (3 downto 0);
			Cin : in std_logic;
			
			Sumador : out std_logic_vector (4 downto 0)
	);
end fulladder4Bits;

architecture arch_fulladder4Bits of fulladder4Bits is
	
	component fulladder
	port(	A, B, cin : in std_logic;
         sum, cout : out std_logic);
	end Component;
	
	signal C1, C2, C3 : std_logic;

begin

	A0 : fulladder port map (A(0), B(0), Cin, Sumador(0), C1);
	A1 : fulladder port map (A(1), B(1), C1, Sumador(1), C2);
	A2 : fulladder port map (A(2), B(2), C2, Sumador(2), C3);
	A3 : fulladder port map (A(3), B(3), C3, Sumador(3), Sumador(4));

end arch_fulladder4Bits;