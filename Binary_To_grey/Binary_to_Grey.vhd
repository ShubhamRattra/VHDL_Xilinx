library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Binary_to_Grey is
    Port ( G : out  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0));
end Binary_to_Grey;

architecture Behavioral of Binary_to_Grey is

begin

	G(3) <= Bin(3);
   G(2) <= Bin(3) xor Bin(2);
   G(1) <= Bin(2) xor Bin(1);
   G(0) <= Bin(1) xor Bin(0);

end Behavioral;