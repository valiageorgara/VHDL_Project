
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

entity CNTR_comb is
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
end CNTR_comb;


architecture Behavioral of CNTR_comb is
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

    CNTR_COMB: process (OPCODE, FUNCT)
    begin
        -- OUTPUT initialization
                        SorZ <= '0';
                        BorI <= '0';
                        ALUop <= "0000";
                        DMorALU <= '0';
                        Link <= '0';
                        RorI <= '0';
                        Branch <= '0';
                        NEorEQ <= '0';
                        Jump <= '0';
    case OPCODE is
        when LW =>
            SorZ <= '1';
            BorI <= '0';
            ALUop <= "1001";
            DMorALU <= '1';
            Link <= '0';
            RorI <= '0';
            Branch <= '0';
            NEorEQ <= '-';
            Jump <= '0';
               
        when SW =>
            SorZ <= '1';
            BorI <= '-';
            ALUop <= "1001";
            DMorALU <= '-';
            Link <= '-';
            RorI <= '0';
            Branch <= '0';
            NEorEQ <= '-';
            Jump <= '0';
            
        when ANDI =>
            SorZ <= '0';
            BorI <= '0';
            ALUop <= "1100";
            DMorALU <= '0';
            Link <= '0';
            RorI <= '0';
            Branch <= '0';
            NEorEQ <= '-';
            Jump <= '0';
            
            
        when BEQ =>
            SorZ <= '1';
            BorI <= '-';
            ALUop <= "1011";
            DMorALU <= '-';
            Link <= '0';
            RorI <= '1';
            Branch <= '1';
            NEorEQ <= '0';
            Jump <= '0';


        when RTYPE =>
    
    
            case FUNCT is
                when ADDRU =>
                    SorZ <= '-';
                    BorI <= '1';
                    ALUop <= "1001";
                    DMorALU <= '0';
                    Link <= '0';
                    RorI <= '1';
                    Branch <= '0';
                    NEorEQ <= '-';
                    Jump <= '0';
                    
                when SUBRU =>
                    SorZ <= '-';
                    BorI <= '1';
                    ALUop <= "1011";
                    DMorALU <= '0';
                    Link <= '0';
                    RorI <= '1';
                    Branch <= '0';
                    NEorEQ <= '-';
                    Jump <= '0';
                
                when SLTR =>
                    SorZ <= '1';
                    BorI <= '0';
                    ALUop <= "0110";
                    DMorALU <= '0';
                    Link <= '0';
                    RorI <= '0';
                    Branch <= '0';
                    NEorEQ <= '-';
                    Jump <= '0';
                    
                when SRLR =>
                    SorZ <= '-';
                    BorI <= '1';
                    ALUop <= "0010";
                    DMorALU <= '0';
                    Link <= '0';
                    RorI <= '1';
                    Branch <= '0';
                    NEorEQ <= '-';
                    Jump <= '0';

                when JR =>
                    SorZ <= '-';
                    BorI <= '-';
                    ALUop <= "----";
                    DMorALU <= '-';
                    Link <= '-';
                    RorI <= '-';
                    Branch <= '-';
                    NEorEQ <= '-';
                    Jump <= '1';

                when JALR =>
                    SorZ <= '-';
                    BorI <= '1';
                    ALUop <= "----";
                    DMorALU <= '-';
                    Link <= '1';
                    RorI <= '-';
                    Branch <= '-';
                    NEorEQ <= '-';
                    Jump <= '1';

                when others =>
                    SorZ <= '-';
      
            end case;
            when others =>
                SorZ <= '-';

        end case;
    end process;
end Behavioral;

