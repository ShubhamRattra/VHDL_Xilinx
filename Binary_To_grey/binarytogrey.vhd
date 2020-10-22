LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY binarytogrey IS
END binarytogrey;
 
ARCHITECTURE behavior OF binarytogrey IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Binary_to_Grey
    PORT(
         G : OUT  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal G : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Binary_to_Grey PORT MAP (
          G => G,
          Bin => Bin
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		-- hold reset state for 100 ns.
        wait for 100 ns;	
		  bin <= "0000";  wait for 10 ns;
        bin <= "0001";  wait for 10 ns;
        bin <= "0010";  wait for 10 ns;
        bin <= "0011";  wait for 10 ns;
        bin <= "0100";  wait for 10 ns;
        bin <= "0101";  wait for 10 ns;
        bin <= "0110";  wait for 10 ns;
        bin <= "0111";  wait for 10 ns;
        bin <= "1000";  wait for 10 ns;
        bin <= "1001";  wait for 10 ns;
        bin <= "1010";  wait for 10 ns;
        bin <= "1011";  wait for 10 ns;
        bin <= "1100";  wait for 10 ns;
        bin <= "1101";  wait for 10 ns;
        bin <= "1110";  wait for 10 ns;
        bin <= "1111";  wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
