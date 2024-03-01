library IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is
   port (A, B, cin : in std_logic;
         sum, cout : out std_logic) ;
		 
end fulladder;

architecture fulladder_arch of fulladder is

 
   component halfadder 
		port (	A, B : in std_logic;
					sum, cout : out std_logic);
	end component;

	signal HAl_sum, HAl_cout, HA2_cout : std_logic;

begin
 
  HA1 : halfadder port map (A, B, HAl_sum, HAl_cout);
  HA2 : halfadder port map (HAl_sum, cin, sum, HA2_cout);
  
  Cout <= HAl_cout or HA2_cout after 1 ns; 
  
end fulladder_arch;

