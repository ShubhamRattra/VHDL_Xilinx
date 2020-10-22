library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity half_subtractor is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Diff : out  STD_LOGIC;
           BOR : out  STD_LOGIC);
end half_subtractor;

architecture Behavioral of half_subtractor is

begin

 Diff <= A XOR B;
 BOR <= (NOT A) AND B;

end Behavioral;

