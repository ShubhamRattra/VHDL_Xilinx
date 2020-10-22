LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY halfsubtractor IS
END halfsubtractor;
 
ARCHITECTURE behavior OF halfsubtractor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT half_subtractor
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Diff : OUT  std_logic;
         BOR : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal Diff : std_logic;
   signal BOR : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_subtractor PORT MAP (
          A => A,
          B => B,
          Diff => Diff,
          BOR => BOR
        );


   -- Stimulus process
   stim_proc: process
   begin		
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		A <= '0' ; B <= '0';
		wait for 100 ns;	
		A <= '0' ; B <= '1';
		wait for 100 ns;	
		A <= '1' ; B <= '0';
		wait for 100 ns;	
		A <= '1' ; B <= '1';

   end process;

END;
