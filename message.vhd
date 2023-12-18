library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity message is
generic(
			x_offset,y_offset : std_logic_vector(6 downto 0):="0000000"
);

port(
			row, col : in std_logic_vector(9 downto 0);
			address : out std_logic_vector(7 downto 0)
);
end entity;

architecture x of message is
signal letter : std_logic_vector(4 downto 0);
signal row_part : std_logic_vector(2 downto 0);
begin

with col(9 downto 3) select -- col / 8
letter <= "00111" when "0000000"+x_offset,
			 "00100" when "0000001"+x_offset,
			 "01011" when "0000010"+x_offset,
			 "01011" when "0000011"+x_offset,
			 "01110" when "0000100"+x_offset,
			 "11010" when others;

row_part <= row(2 downto 0) when row(9 downto 3) = y_offset else "111";

address <= letter & row_part;

end architecture;			 




