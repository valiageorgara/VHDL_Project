--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:44:24 03/23/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/RF32x3264/CNTR_comb_tb.vhd
-- Project Name:  RF32x3263
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CNTR_comb
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
--USE ieee.numeric_std.ALL;
 
ENTITY CNTR_comb_tb IS
END CNTR_comb_tb;
 
ARCHITECTURE behavior OF CNTR_comb_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CNTR_comb
    PORT(
         OPCODE : in STD_LOGIC_VECTOR (5 downto 0);
            FUNCT : in STD_LOGIC_VECTOR (5 downto 0);
            SorZ : out STD_LOGIC;
            BorI : out STD_LOGIC;
            ALUop : out STD_LOGIC_VECTOR (3 downto 0);
            DMorALU : out STD_LOGIC;
            Link : out STD_LOGIC;
            RorI : out STD_LOGIC;
            Branch : out STD_LOGIC;
            NEorEQ : out STD_LOGIC;
            Jump : out STD_LOGIC);
        
    END COMPONENT;
    

   --Inputs
   signal OPCODE : std_logic_vector(5 downto 0) := (others => '0');
   signal FUNCT : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal SorZ : std_logic;
   signal ALUop : std_logic_vector(3 downto 0);
   signal RorI : std_logic;
   signal BorI : std_logic;
   signal DMorALU : std_logic;
   signal NEorEQ  : std_logic;
   signal Link : std_logic;
   signal Jump : std_logic;
   signal Branch : std_logic;

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut:  CNTR_comb PORT MAP (
          OPCODE => OPCODE,
          FUNCT => FUNCT,
          SorZ => SorZ,
          ALUop => ALUop,
          RorI => RorI,
          BorI => BorI,
          DMorALU => DMorALU,
          Link => Link,
          Jump => Jump,
          Branch => Branch,
          NEorEQ => NEorEQ
        );
-- *** Test Bench - User Defined Section ***
   tb : PROCESS
	BEGIN
	
	OPCODE <= "100011";   --LW
	WAIT FOR 100 NS;
   
	OPCODE <= "101011";  --SW
	WAIT FOR 100 NS;

	OPCODE <= "001100";  --ANDI
	WAIT FOR 100 NS;
		
	OPCODE <= "000100"; --BEQ
	WAIT FOR 100 NS;

	-----------------------------------------------------------------------	
	OPCODE <= "000000";   --RTYPE
		FUNCT <= "100001";    --ADDU
	WAIT FOR 100 NS;

	OPCODE <= "000000";   --RTYPE
		FUNCT <= "100011";    --SUBU
	WAIT FOR 100 NS;

	OPCODE <= "000000";   --RTYPE
		FUNCT <= "000010";    --SRLR
	WAIT FOR 100 NS;

	OPCODE <= "000000";   --RTYPE
		FUNCT <= "101010";    --SLTR
	WAIT FOR 100 NS;

	OPCODE <= "000000";   --RTYPE
		FUNCT <= "001000";    --JR
	WAIT FOR 100 NS;

	OPCODE <= "000000";   --RTYPE
		FUNCT <= "001001";    --JALR
	WAIT FOR 100 NS;
		
		OPCODE <= "111111";   --FAULT
	WAIT FOR 100 NS;
		
		
   end process;

END;
