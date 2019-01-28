
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CNTR_fsm is
	Port (
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
end CNTR_fsm;

architecture Behavioral of CNTR_fsm is

-- state definition
type control_states is
(S0, S1, S2A, S2B, S3, S4A, S4B, S4C);
signal current_state, next_state : control_states;

-- OPCODE definition as constants
constant RTYPE : std_logic_vector (5 downto 0) := "000000"; -- 0x00
constant LW : std_logic_vector (5 downto 0) := "100011"; -- 0x23
constant SW : std_logic_vector (5 downto 0) := "101011"; -- 0x2B
constant ANDI : std_logic_vector (5 downto 0) := "001100"; -- 0x0C
constant BEQ : std_logic_vector (5 downto 0) := "000100"; -- 0x04


-- FUNCT definition as constants
constant ADDRU : std_logic_vector (5 downto 0) := "100001"; -- 0x21
constant SUBRU : std_logic_vector (5 downto 0) := "100011"; -- 0x23
constant SLTR : std_logic_vector (5 downto 0) := "101010"; -- 0x2A
constant SRLR : std_logic_vector (5 downto 0) := "000010"; -- 0x02
constant JR : std_logic_vector (5 downto 0) := "001000"; -- 0x08
constant JALR : std_logic_vector (5 downto 0) := "001001"; -- 0x09


begin

-- common synchronous process for all FSMs
SYNCHR: process (clock, RESET)
begin
if (RESET = '1') then
current_state <= S0; -- initial state
elsif (clock'event and clock = '1') then
current_state <= next_state;
end if;
end process;

-- asynchronous process to create output logic and next state logic

ASYNCHR: process (current_state, OPCODE, FUNCT)
begin
-- next state and output initialization
                                next_state <= S0; -- initial state
                                IR_write <= '0';
                                MAR_write <= '0';
                                DMEM_write <= '0';
                                RF_write <= '0';
                                PC_write <= '0';
                                IMEM_write <= '0';

    case current_state is
    when S0                 =>  next_state <= S1;
                                IR_write <= '1';

            when S1 =>
                case OPCODE is
                    when LW => next_state <= S2A;
                    when SW => next_state <= S2A;
                    when ANDI => next_state <= S2B;
                    when BEQ => next_state <= S2B;
                    when RTYPE =>
                        case FUNCT is
                            when ADDRU => next_state <= S2B;
                            when SUBRU => next_state <= S2B;
                            when SLTR => next_state <= S2B;
                            when SRLR => next_state <= S2B;
                            when JR => next_state <= S2B;
                            when JALR => next_state <= S2B;
                            when others => null;
                        end case;
                    when others => null;
                end case;
            
            when S2A => MAR_write <= '1';
                case OPCODE is
                    when LW => next_state <= S3;
                    when SW => next_state <= S4C;
                    when others => null;
                end case;
                
            when S2B => MAR_write <= '0';
                case OPCODE is
                    when ANDI => next_state <= S3;
                    when BEQ => next_state <= S3;
                    when RTYPE =>
                        case FUNCT is
                            when ADDRU => next_state <= S3;
                            when SUBRU => next_state <= S3;
                            when SLTR => next_state <= S3;
                            when SRLR => next_state <= S3;
                            when JR => next_state <= S3;
                            when JALR => next_state <= S3;
                            when others => null;
                        end case;
                    when others => null;
                end case;
                
            when S3 => DMEM_write <= '0';
                case OPCODE is
                    when LW => next_state <= S4A;
                    when ANDI => next_state <= S4A;
                    when BEQ => next_state <= S4B;
                    when RTYPE =>
                        case FUNCT is
                            when ADDRU => next_state <= S4A;
                            when SUBRU => next_state <= S4A;
                            when SLTR => next_state <= S4A;
                            when SRLR => next_state <= S4A;
                            when JR => next_state <= S4B;
                            when JALR => next_state <= S4A;
                            when others => null;
                        end case;
                    when others => null;
                end case;
                
            when S4A => DMEM_write <= '0';
                        RF_write <= '1';
                        PC_write <= '1';
                        next_state <= S0;
                        
            when S4B => DMEM_write <= '0';
                        RF_write <= '0';
                        PC_write <= '1';
                        next_state <= S0;
                            
            when S4C => DMEM_write <= '1';
                        RF_write <= '0';
                        PC_write <= '1';
                        next_state <= S0;
                                        
            when others => null;
        end case;
    end process;
end Behavioral;