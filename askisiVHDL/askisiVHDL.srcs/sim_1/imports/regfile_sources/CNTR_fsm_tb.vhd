--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:49:27 3/23/2016
-- Design Name:   
-- Module Name:   C:/Xilinx/RF32x3264/CNTR_fsm_tb.vhd
-- Project Name:  RF32x3263
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CNTR_fsm
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
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY CNTR_fsm_tb IS
END CNTR_fsm_tb;
 
ARCHITECTURE behavior OF CNTR_fsm_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CNTR_fsm
    PORT(
         OPCODE : in STD_LOGIC_VECTOR (5 downto 0);
            FUNCT : in STD_LOGIC_VECTOR (5 downto 0);
            RESET : in STD_LOGIC;
            clock : in STD_LOGIC;
            PC_write : out STD_LOGIC;
            IR_write : out STD_LOGIC;
            MAR_write : out STD_LOGIC;
            DMEM_write : out STD_LOGIC;
            IMEM_write : out STD_LOGIC;
            RF_write : out STD_LOGIC);
        
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal RESET : std_logic := '0';
   signal OPCODE : std_logic_vector(5 downto 0) := (others => '0');
   signal FUNCT : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal PC_write : std_logic;
   signal IMEM_write : std_logic;
   signal IR_write : std_logic;
   signal MAR_write : std_logic;
   signal DMEM_write : std_logic;
   signal RF_write : std_logic;
	
	CONSTANT CLK_period : time := 100 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CNTR_fsm PORT MAP (
          clock => clock,
          RESET => RESET,
          OPCODE => OPCODE,
          FUNCT => FUNCT,
          PC_write => PC_write,
          IMEM_write => IMEM_write,
          IR_write => IR_write,
          MAR_write => MAR_write,
          DMEM_write => DMEM_write,
          RF_write => RF_write
        );
		  
-- *** Independent clock generation ***
	CLK_gen: PROCESS
	BEGIN
		clock <= '1'; WAIT FOR CLK_period / 2;
		clock <= '0'; WAIT FOR CLK_period - CLK_period / 2;
	END PROCESS;

-- *** Independent reset generation ***
	Reset <= '1', '0' after CLK_period / 2;
	
	
	
-- *** Test Bench - User Defined Section ***
  test_patterns : PROCESS
  BEGIN
WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '1';
OPCODE <= "000000";
FUNCT <= "000000";    --START

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "100011";  -- LW

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "101011"; --SW

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";
FUNCT <= "001000"; --JR

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";
FUNCT <= "001001";  --JALR

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000"; 
FUNCT <= "100001"; --ADDRU

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";
FUNCT <=  "100011";  --SUBU

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "001100";  --ANDI

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";
FUNCT <=  "000010";  --SRLR

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000100"; --BEQ

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "001010";  
FUNCT <= "101010"; --SLT

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "101010";  --CHECK FOR FAULT-SAFE FUNCTION

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "001111";  --CHECK FOR FAULT-SAFE FUNCTION

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";  --CHECK FOR FAULT-SAFE FUNCTION
FUNCT <=  "111111";

WAIT UNTIL (clock'event AND clock = '1'); 
WAIT FOR CLK_period / 10; -- the test patterns change after clock edge
RESET <= '0';
OPCODE <= "000000";  --CHECK FOR FAULT-SAFE FUNCTION
FUNCT <=  "110001";

WAIT FOR CLK_period;
	
end process;

END;
