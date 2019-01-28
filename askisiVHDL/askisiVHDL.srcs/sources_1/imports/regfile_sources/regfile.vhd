library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity regfile is
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
end regfile;

architecture RTL of regfile is
    type ram_type is array (31 downto 0) of std_logic_vector (31 downto 0);
    signal RAM: ram_type 	:= ((others=> (others=>'0')));
	signal addr_in			: std_logic_vector(4 downto 0);
begin

	-- Write Address MUX
   	--addr_in <= rd WHEN Reg_Imm_Not ='1' ELSE  rt; 
	process ( Reg_Imm_Not, rd, rt )
	begin
	if (Reg_Imm_Not ='1') then
		addr_in <= rd; 
	else
		addr_in <= rt;
	end if;
	end process;
	
	addr_in <= rd WHEN Reg_Imm_Not ='1' ELSE  rt;		
	-- Register file RAM    
	process (clock)
    begin
		if (clock'event and clock = '1') then
			if (Reg_Write = '1' and Addr_in /= "00000") then
				RAM(to_integer(unsigned(addr_in))) <= Bus_W;
			end if;
			Bus_A	<= RAM(to_integer(unsigned(rs))) ;	-- Synchronous READ -> BRAM
			Bus_B	<= RAM(to_integer(unsigned(rt))) ;	-- Synchronous READ -> BRAM
		end if;
			--Bus_A	<= RAM(to_integer(unsigned(rs))) ;	-- Asynchronous READ -> Distributed RAM
			--Bus_B	<= RAM(to_integer(unsigned(rt))) ;  -- Asynchronous READ -> Distributed RAM
	end process;

end RTL;
