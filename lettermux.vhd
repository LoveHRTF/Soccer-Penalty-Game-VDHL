library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lettermux is
port(
			row_of_pix : in std_logic_vector(7 downto 0);
			current_col : in std_logic_vector(2 downto 0);
			pixel : out std_logic_vector(3 downto 0)
);
end entity;
architecture x of lettermux is
signal onoff : std_logic;
begin

		onoff <= row_of_pix(to_integer(unsigned(current_col))-2);
		
		pixel <= "1111" when onoff='1' else "0000";

end architecture;

