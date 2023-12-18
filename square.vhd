library IEEE;
use ieee.std_logic_1164.all;

entity square is
port(
			row,col: in std_logic_vector(9 downto 0);
			red,green,blue : out std_logic_vector(3 downto 0)

);
end entity;
architecture donuts of square is

begin

red <= "1111" when col < "0110100000" and col > "0101000000" 
					and row < "0011000000" and row > "0001100000"
					else "0111";
green <= "0111";
blue <= "0000" when col < "0110100000" and col > "0101000000" 
					and row < "0011000000" and row > "0001100000"
					else "1111";
end architecture;