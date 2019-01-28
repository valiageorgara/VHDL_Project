----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:04:25 06/06/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU3 is
    Port ( --sv : in  STD_LOGIC;
           ALUop : in  STD_LOGIC_VECTOR (3 downto 0);
           shamt : in  STD_LOGIC_VECTOR (4 downto 0);
           Bus_A : in  STD_LOGIC_VECTOR (31 downto 0);
           Bus_B : in  STD_LOGIC_VECTOR (31 downto 0);
           Bus_S : out  STD_LOGIC_VECTOR (31 downto 0);
           Zero : out  STD_LOGIC);
           -- Ne : out  STD_LOGIC;
           --ov : out  STD_LOGIC);
end ALU3;

architecture Behavioral of ALU3 is

signal L_out, A_out, Sh_out, SLT_out, MUX_out: std_logic_vector(31 downto 0);
signal shamt_in: std_logic_vector(4 downto 0);

begin

--	mux: process (shamt, Bus_A(4 downto 0), sv)
--	begin
--		if (sv = '1') 
--			then shamt_in <= Bus_A(4 downto 0); 
--			else 
    shamt_in <= shamt; --gia variable
--		end if;
--	end process;
	
    SHIFTER: process (shamt_in, Bus_B, ALUop(1 downto 0))
	variable shamt_n : natural range 0 to 31;
	variable Bus_B_s : signed (31 downto 0);
	variable Bus_B_u : unsigned (31 downto 0);
	begin
		--Bus_B_s := signed(Bus_B);
		Bus_B_u := unsigned(Bus_B);
		shamt_n := to_integer(unsigned(shamt_in));
		case ALUop(1 downto 0) is
			--when "00" =>   sh_out <= std_logic_vector(SHIFT_LEFT (Bus_B_u, shamt_n));
			when "10" =>   sh_out <= std_logic_vector(SHIFT_RIGHT(Bus_B_u, shamt_n));
			--when "11" =>  sh_out <= std_logic_vector(SHIFT_RIGHT(Bus_B_s, shamt_n));
			when others => sh_out <= Bus_B;
		end case;
	end process;
		
	ADDSUB_SLTUNT: process(Bus_A,Bus_B,ALUop)
    variable Bus_A_s, Bus_B_s, A_out_s: SIGNED(32 downto 0);
	variable Ext_A, Ext_B: STD_LOGIC;
	begin
		-- initial values to avoid unexpected latches
		--ov <= '0';
		SLT_out <= (others=>'0');
		A_out 	<= (others=>'0');

		--if (ALUop(0) = '0')
			--then Ext_A := Bus_A(31);	Ext_B := Bus_B(31); 	-- signed
			--else 
			Ext_A := '0';			Ext_B := '0';			-- unsigned
		--end if;
		
		Bus_A_s := signed(Ext_A & Bus_A);
		Bus_B_s := signed(Ext_B & Bus_B);
		
		if (ALUop(1) = '0')
			then A_out_s := signed(Bus_A_s + Bus_B_s); 	-- ADDU
			else A_out_s := signed(Bus_A_s - Bus_B_s);	-- SUBU
		end if;
		
		A_out <= std_logic_vector(A_out_s(31 downto 0));

		--if (ALUop(0) = '0')
			--then ov <= (A_out_s(32) xor A_out_s(31)); -- signed overflow
			--else null;
		--end if;

		SLT_out <= "000" & X"0000000" & A_out_s(32); -- It is always right independently of overflow

		--Ne <= A_out_s(32); den to xreiazomaste me ta proshma
	
	end process;
	
	LOGICU: process(Bus_A,Bus_B,ALUop)
	begin
		-- initial values to avoid unexpected latches
		L_out	<= (others=>'0');
		case ALUop(1 downto 0) is
			when "00" =>
				L_out <= Bus_A and Bus_B;
			--when "01" =>
				--L_out <= Bus_A or Bus_B;				
			--when "10" =>
				--L_out <= Bus_A xor Bus_B;
			--when "11" =>
				--L_out <= Bus_A nor Bus_B;
			when others =>	 
				null;
		end case;
	end process;
	
	MUX4to1: process(Sh_out,SLT_out,A_out,L_out,ALUop(3 downto 2))
	begin
		-- initial values to avoid unexpected latches
		MUX_out	<= (others=>'0'); 
		case ALUop(3 downto 2) is
			when "00" => -- Shift
				MUX_out <= Sh_out;
			when "01" => -- SLT
				MUX_out <= SLT_out;
			when "10" => -- Arithmetic
				MUX_out <= A_out;
			when "11" => -- Logical
				MUX_out <= L_out;
			when others =>	 
				null;
		end case;
	end process;

	ORtree: process (A_out)
	begin
		if (A_out = X"00000000") 
			then Zero <= '1'; 
			else Zero <= '0'; 
		end if;
	end process;
	
	Bus_S <= MUX_out;
	
end Behavioral;

