
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

entity mux_2in1_5bit is
    Port ( I0 : in  STD_LOGIC_VECTOR (4 downto 0);
           I1 : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (4 downto 0));
end mux_2in1_5bit;

architecture Behavioral of mux_2in1_5bit is

begin
	Process(SEL,I0,I1)
begin 
		case SEL is 
			WHEN '0'=> S<=I0;
			WHEN '1'=> S<=I1;
			WHEN others => S <= (others => '-');
		end case;
	end process;
end Behavioral;

