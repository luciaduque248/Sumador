library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity testSumador is
    port
    (    A, B : in std_logic_vector (3 downto 0);
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
        port(    sum : in integer range 0 to 31;
                D : out integer range 0 to 9;
                U : out integer range 0 to 9);
    end component;
    
    
    signal Sum_4Bits : std_logic_vector (4 downto 0);
    signal dec : std_logic_vector (3 downto 0);
    signal uni : std_logic_vector (3 downto 0);
    signal BCD_U : integer range 0 to 9;
    signal BCD_D : integer range 0 to 9; 
    
    
begin

    A4 : fulladder4Bits port map (A, B, Cin, Sum_4Bits);
    A5 : tablasum port map (To_integer(unsigned(Sum_4Bits)), BCD_U, BCD_D); 
    uni <= std_logic_vector(To_unsigned(BCD_U, 4));
    dec <= std_logic_vector(To_unsigned(BCD_D, 4));
    A6 : decodificador port map (uni(3),uni(2),uni(1),uni(0), UN);
    A7 : decodificador port map (dec(3),dec(2),dec(1),dec(0), DC);
    
     
end arch_testSumador;