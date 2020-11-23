LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DecimalToBCDEncoder_Behavioural IS
END DecimalToBCDEncoder_Behavioural;
 
ARCHITECTURE behavior OF DecimalToBCDEncoder_Behavioural IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decimal_to_BcdEncoder_Behavioural
    PORT(
         D : IN  std_logic_vector(9 downto 0);
         A : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic_vector(9 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decimal_to_BcdEncoder_Behavioural PORT MAP (
          D => D,
          A => A
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
	D <= "0000000001"; wait for 10 ns;
	D <= "0000000010"; wait for 10 ns;
	D <= "0000000100"; wait for 10 ns;
	D <= "0000001000"; wait for 10 ns;
	D <= "0000010000"; wait for 10 ns;
	D <= "0000100000"; wait for 10 ns;
	D <= "0001000000"; wait for 10 ns;
	D <= "0010000000"; wait for 10 ns;
	D <= "0100000000"; wait for 10 ns;
	D <= "1000000000"; wait for 10 ns;

      wait;
   end process;

END;
