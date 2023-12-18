library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity addressmaker is
port(
			row,col: in std_logic_vector(9 downto 0);
			address : out std_logic_vector(16 downto 0)
);
end entity;

architecture x of addressmaker is

signal temp : std_logic_vector(17 downto 0);

begin

temp <= row(9 downto 1)*"101000000" + col(9 downto 1);

address <= temp(16 downto 0);

end architecture;