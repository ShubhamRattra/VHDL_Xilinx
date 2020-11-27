LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY BCD_to_Excess3_vectordataflow IS
END BCD_to_Excess3_vectordataflow;
 
ARCHITECTURE behavior OF BCD_to_Excess3_vectordataflow IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Bcd_to_Excess3_Vector_Dataflow
    PORT(
         b : IN  std_logic_vector(3 downto 0);
         e : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal e : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Bcd_to_Excess3_Vector_Dataflow PORT MAP (
          b => b,
          e => e
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		b <= "0000"; wait for 10 ns;
		b <= "0001"; wait for 10 ns;
		b <= "0010"; wait for 10 ns;
		b <= "0011"; wait for 10 ns;
		b <= "0100"; wait for 10 ns;
		b <= "0101"; wait for 10 ns;
		b <= "0110"; wait for 10 ns;
		b <= "0111"; wait for 10 ns;
		b <= "1000"; wait for 10 ns;
		b <= "1001"; wait for 10 ns;

      wait;
   end process;

END;
