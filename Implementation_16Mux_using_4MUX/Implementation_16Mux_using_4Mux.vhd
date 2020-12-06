library IEEE;
use IEEE.std_logic_1164.all;

entity mux4 is
port(a,b,c,d : in std_logic;
s0,s1 : in std_logic;
q : out std_logic);
end mux4;

architecture struct of mux4 is
begin
process(a,b,c,d,s0,s1)
begin

if s1 ='0' and s0 ='0' then q <= a;
elsif s1 ='0' and s0 ='1' then q <= b;
elsif s1 ='1' and s0='0' then q <= c;
else q <=d;
end if;

end process;
end struct;


library IEEE;
use IEEE.std_logic_1164.all;

entity mux16 is
port(A : in std_logic_vector(15 downto 0);
  	 S : in std_logic_vector(3 downto 0);
	 z : out std_logic);
end mux16;

architecture structural of mux16 is
signal z1,z2,z3,z4 : std_logic;

component mux4 is
port(a,b,c,d,s0,s1 : in std_logic;
	 q : out std_logic);
end component;

begin

m1: mux4 port map(A(0),A(1),A(2),A(3),S(0),S(1),z1);
m2: mux4 port map(A(4),A(5),A(6),A(7),S(0),S(1),z2);
m3: mux4 port map(A(8),A(9),A(10),A(11),S(0),S(1),z3);
m4: mux4 port map(A(12),A(13),A(14),A(15),S(0),S(1),z4);
m5: mux4 port map(z1,z2,z3,z4,S(2),S(3),z);

end structural;