----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/27/2017 03:56:22 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
    Port ( --input : in STD_LOGIC_VECTOR (31 downto 0);
           clock : in STD_LOGIC;
           clear : in STD_LOGIC;
           bus_pc : inout STD_LOGIC_VECTOR (31 downto 0);
           opcode : inout STD_LOGIC_VECTOR (5 downto 0);
           function_output : inout STD_LOGIC_VECTOR (5 downto 0);
           alu_out : out STD_LOGIC_VECTOR (31 downto 0);
           bus_W_out : out STD_LOGIC_VECTOR (31 downto 0));
end datapath;

architecture Behavioral of datapath is

component R32we
    port ( clock : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (31 downto 0); 
          WE  : in    std_logic; 
          Q   : out   std_logic_vector (31 downto 0));
end component;

component CNTR_aux
    Port ( OPIN  : in   STD_LOGIC_VECTOR (5 downto 0);
           FIN   : in   STD_LOGIC_VECTOR (5 downto 0);
		   OPOUT : out  STD_LOGIC_VECTOR (5 downto 0);
           FOUT  : out  STD_LOGIC_VECTOR (5 downto 0));
end component;

component EXTsz
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           SIGN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component CNTR_comb
    Port ( OPCODE : in STD_LOGIC_VECTOR (5 downto 0); 
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
end component;

component CNTR_fsm
    Port (OPCODE : in STD_LOGIC_VECTOR (5 downto 0); 
        FUNCT : in STD_LOGIC_VECTOR (5 downto 0); 
        RESET : in STD_LOGIC; 
        clock : in STD_LOGIC; 
        PC_write : out STD_LOGIC; 
        IR_write : out STD_LOGIC; 
        MAR_write : out STD_LOGIC; 
        DMEM_write : out STD_LOGIC;
        IMEM_write : out STD_LOGIC; 
        RF_write : out STD_LOGIC); 
end component; 

component regfile
    port (
			clock 		: in std_logic;
			Reg_Write 	: in std_logic;
			Reg_Imm_not : in std_logic;
			rs 			: in std_logic_vector(4 downto 0);
			rt 			: in std_logic_vector(4 downto 0);
			rd 			: in std_logic_vector(4 downto 0);
			Bus_W 		: in std_logic_vector(31 downto 0);
			Bus_A 		: out std_logic_vector(31 downto 0);
			Bus_B 		: out std_logic_vector(31 downto 0)
		 );
end component;

component ADD
    Port ( NPC : in  STD_LOGIC_VECTOR (31 downto 0);
           IM : in  STD_LOGIC_VECTOR (31 downto 0);
           M : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component R32
   port ( clock : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (31 downto 0); 
          Q   : out   std_logic_vector (31 downto 0));
end component;

component mux_2in1_5bit
    Port ( I0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I1 : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component SL2
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           M : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ALU3
    Port ( ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           shamt : in  STD_LOGIC_VECTOR (4 downto 0);
           Bus_A : in  STD_LOGIC_VECTOR (31 downto 0);
           Bus_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Bus_S : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
end component;

component BUS32_aux
    Port ( 
	        BIN   : in   STD_LOGIC_VECTOR (31 downto 0);
			  BOUT  : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component DMEM_blockram32x32
 port (
   di  : in std_logic_vector(31 downto 0); 
	a   : in std_logic_vector(4 downto 0); 
	we  : in std_logic; 
	clock : in std_logic; 
 	do  : out std_logic_vector(31 downto 0));
 end component; 
 
component mux_3to1_32x
       port(IN0    : in  std_logic_vector (31 downto 0);
            IN1    : in  std_logic_vector (31 downto 0);
               IN2    : in  std_logic_vector (31 downto 0);
            S0     : in  std_logic;
               S1     : in  std_logic;
            O      : out std_logic_vector (31 downto 0));
end component;

component IMEM_rom64x32
    Port ( ADDR : in std_logic_vector(5 downto 0);
           DOUT : out std_logic_vector(31 downto 0));
end component;
 
signal IR_write : STD_LOGIC;
signal AluOp : STD_LOGIC_VECTOR (3 downto 0);
signal sorz : STD_LOGIC;
signal bori : STD_LOGIC;
signal dmoralu : STD_LOGIC;
signal link : STD_LOGIC;
signal rori : STD_LOGIC;
signal branch : STD_LOGIC;
signal neoreq : STD_LOGIC;
signal jump : STD_LOGIC;
signal pc : STD_LOGIC;
signal mar : STD_LOGIC;
signal dmem : STD_LOGIC;
signal imem : STD_LOGIC;
signal rf : STD_LOGIC;

signal I : STD_LOGIC_VECTOR (31 downto 0);
signal A : STD_LOGIC_VECTOR (31 downto 0);
signal B : STD_LOGIC_VECTOR (31 downto 0);
signal pc_input : STD_LOGIC_VECTOR (31 downto 0);
signal pc_output : STD_LOGIC_VECTOR (31 downto 0);
signal input : STD_LOGIC_VECTOR (31 downto 0);
signal Q : STD_LOGIC_VECTOR (31 downto 0);
signal C : STD_LOGIC_VECTOR (31 downto 0);
signal M : STD_LOGIC;
signal IR_output : STD_LOGIC_VECTOR (31 downto 0);
signal D : STD_LOGIC_VECTOR (31 downto 0);

signal bus_W : STD_LOGIC_VECTOR (31 downto 0);
signal bus_A : STD_LOGIC_VECTOR (31 downto 0);
signal bus_B : STD_LOGIC_VECTOR (31 downto 0);
signal bus_S : STD_LOGIC_VECTOR (31 downto 0);

begin

input <= "00000000000000000000000000000000";
IR_write <= '1';
bus_W <= "00000000000000000000000000000000";
U0: IMEM_rom64x32 port map (input(5 downto 0), D);
U1: R32we port map (clock, clear, D, IR_write, IR_output);
U2: CNTR_aux port map (IR_output(31 downto 26), IR_output(5 downto 0), opcode, function_output);
U3: CNTR_comb port map (opcode, function_output, sorz, bori, aluOp, dmoralu, link, rori, branch, neoreq, jump);
U4: EXTsz port map (IR_output(15 downto 0), sorz, I);
U5: CNTR_fsm port map (opcode, function_output, clear, clock, pc, IR_write, mar, dmem, imem, rf);
U6: regfile port map (clock, rf, rori, IR_output(25 downto 21), IR_output(20 downto 16), IR_output(15 downto 11), bus_W, bus_A, bus_B);
U7: R32we port map (clock, clear, pc_input, pc, pc_output);
U8: ADD port map (pc_output, "00000000000000000000000000000100", bus_pc);
U9: R32 port map (clock, clear, bus_pc, Q);
U10: R32 port map (clock, clear, bus_A, A);
U11: R32 port map (clock, clear, I, I);
U12: R32 port map (clock, clear, bus_B, B);
U13: mux_2in1_5bit port map (I(4 downto 0), B(4 downto 0), bori, C(4 downto 0));
U14: SL2 port map (I, I);
U15: ADD port map (I, pc_input, D);
U16: R32 port map (clock, clear, D, D);
U17: ALU3 port map (AluOp, IR_output(10 downto 6), A, C, bus_S, IR_write);
U18: R32 port map (clock, clear, bus_S, bus_A);
U19: R32 port map (clock, clear, B, B);
U20: R32we port map (clock, clear, bus_S, mar, bus_B);
U21: BUS32_aux port map (bus_S, alu_out);
U22: DMEM_blockram32x32 port map (B, bus_B(4 downto 0), dmem, clock, B);
M <= IR_write xor neoreq;
M <= M and branch;
U23: mux_3to1_32x port map (Q, D, A, jump, M, pc_input);
U24: BUS32_aux port map (B, B);
U25: mux_3to1_32x port map (bus_A, B, Q, link, dmoralu, bus_W);
U26: BUS32_aux port map (bus_W, bus_W_out);

end Behavioral;
