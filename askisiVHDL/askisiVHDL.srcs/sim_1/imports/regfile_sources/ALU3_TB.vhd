--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:45:44 06/10/2014
-- Design Name:   
-- Module Name:   C:/Xilinx_Projects/PMSmodules/ALU3_TB.vhd
-- Project Name:  PMSmodules
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY ALU3_TB IS
END ALU3_TB;
 
ARCHITECTURE behavior OF ALU3_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU3
    PORT(
         ALUop : IN  std_logic_vector(3 downto 0);
         shamt : IN  std_logic_vector(4 downto 0);
         Bus_A : IN  std_logic_vector(31 downto 0);
         Bus_B : IN  std_logic_vector(31 downto 0);
         Bus_S : OUT  std_logic_vector(31 downto 0);
         Zero : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ALUop : std_logic_vector(3 downto 0) := (others => '0');
   signal shamt : std_logic_vector(4 downto 0) := (others => '0');
   signal Bus_A : std_logic_vector(31 downto 0) := (others => '0');
   signal Bus_B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Bus_S : std_logic_vector(31 downto 0);
   signal Zero : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU3 PORT MAP (
          ALUop => ALUop,
          shamt => shamt,
          Bus_A => Bus_A,
          Bus_B => Bus_B,
          Bus_S => Bus_S,
          Zero => Zero
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

      -- insert stimulus here 

		-- SHIFTER-mux tests
		ALUop <= "0000"; shamt <= "00001"; Bus_A <= X"0000001F"; Bus_B <= X"00000001";
		wait for 50 ns;
		ALUop <= "0000";  shamt <= "11110"; Bus_A <= X"00000000"; Bus_B <= X"00000001";
		wait for 50 ns;
		ALUop <= "0010";  shamt <= "00100"; Bus_A <= X"00000000"; Bus_B <= X"8000000F";
		wait for 50 ns;
		ALUop <= "0011";  shamt <= "00100"; Bus_A <= X"00000000"; Bus_B <= X"8000000F";
		wait for 50 ns;
		
		-- SLT tests
		ALUop <= "0110";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		ALUop <= "0110";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"00000000";
		wait for 50 ns;
		
		-- ADDSUB tests		
		ALUop <= "1001";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1001";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1001";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		ALUop <= "1001";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		
		
		ALUop <= "1011";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1011";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1011";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		ALUop <= "1011";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		
		-- LOGICU tests
		ALUop <= "1100";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1100";  shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"00000000";
		wait for 50 ns;
		ALUop <= "1100"; shamt <= "00000"; Bus_A <= X"FFFFFFFF"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
		ALUop <= "1100";  shamt <= "00000"; Bus_A <= X"00000000"; Bus_B <= X"FFFFFFFF";
		wait for 50 ns;
      wait;
   end process;

END;
