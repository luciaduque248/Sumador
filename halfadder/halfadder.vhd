library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is
	port
	(
		-- Input ports
		A, B	: in  std_logic;

		-- Output ports
		Sum	: out std_logic;
		Cout	: out std_logic
	);
end halfadder;

architecture arch_halfadder of halfadder is

	
begin

	Sum <= A xor B after 1 ns;
	Cout <= A and B after 1 ns;
	
end arch_halfadder;