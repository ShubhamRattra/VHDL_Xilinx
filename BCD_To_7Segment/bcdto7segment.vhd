LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY bcdto7segment IS
END bcdto7segment;
 
ARCHITECTURE behavior OF bcdto7segment IS 
  
    COMPONENT Bcd_To_7Segment
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         a1 : OUT  std_logic;
         b1 : OUT  std_logic;
         c1 : OUT  std_logic;
         d1 : OUT  std_logic;
         e1 : OUT  std_logic;
         f1 : OUT  std_logic;
         g1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal a1 : std_logic;
   signal b1 : std_logic;
   signal c1 : std_logic;
   signal d1 : std_logic;
   signal e1 : std_logic;
   signal f1 : std_logic;
   signal g1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Bcd_To_7Segment PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          a1 => a1,
          b1 => b1,
          c1 => c1,
          d1 => d1,
          e1 => e1,
          f1 => f1,
          g1 => g1
        );

   -- Stimulus process
   stim_proc: process
	
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= '0' ;
		B <= '0' ;
		C <= '0' ;
		D <= '1' ;
		wait for 100 ns;	
		A <= '0' ;
		B <= '0'  ;
		C <= '1' ;
		D <= '0' ;
		wait for 100 ns;	
		A <= '0' ;
		B <= '0' ;
		C <= '1' ;
		D <= '1' ;
	   wait for 100 ns;	
		A <= '0' ;
		B <= '1' ;
		C <= '0' ;
		D <= '0' ;
	   wait for 100 ns;	
		A <= '1' ;
		B <= '1' ;
		C <= '0' ;
		D <= '1' ;
		wait for 100 ns;	
		A <= '1' ;
		B <= '1' ;
		C <= '1' ;
		D <= '1' ;
		wait for 100 ns;	
		A <= '1' ;
		B <= '0' ;
		C <= '1' ;
		D <= '0' ;

      -- insert stimulus here 

      wait;
   end process;

END;