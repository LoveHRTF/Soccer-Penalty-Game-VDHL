library IEEE;
use IEEE.std_logic_1164.all;

entity colormap is
port (
			code: in std_logic_vector(1 downto 0);
			R,G,B : out std_logic_vector(3 downto 0)
);
end entity;
architecture x of colormap is
begin

R <= "1111" when code(1)='1' else "0000";

G <= "1111" when code(0)='1' else "0000";

B <= "1111" when code(0)='1' else "0000";

end architecture;