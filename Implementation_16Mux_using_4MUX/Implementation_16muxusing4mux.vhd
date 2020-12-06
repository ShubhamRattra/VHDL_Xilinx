LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Implementation_16muxusing4mux IS
END Implementation_16muxusing4mux;
 
ARCHITECTURE behavior OF Implementation_16muxusing4mux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux16
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         S : IN  std_logic_vector(3 downto 0);
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal S : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux16 PORT MAP (
          A => A,
          S => S,
          z => z
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		a <= "1000000000000000";
		s <= "1111";

      wait;
   end process;

END;
