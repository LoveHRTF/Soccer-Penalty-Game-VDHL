library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity char_ram is
port(
			clock: in std_logic;
			address : in std_logic_vector(7 downto 0);
			pixels : out std_logic_vector(7 downto 0)
);
end entity;
architecture x of char_ram is

type my_memory is array(0 to 255) of std_logic_vector(7 downto 0);

signal actual_memory : my_memory;
attribute ram_init_file : string;
attribute ram_init_file of actual_memory :
	signal is "romtest1.mif";

signal address_integer : integer range 0 to 255;

begin

address_integer <= to_integer(unsigned(address));

process(clock)
begin
		if clock'event and clock='1' then
			pixels <= actual_memory(address_integer);
		end if;
end process;

end architecture;