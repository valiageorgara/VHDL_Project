
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADD is
    Port ( NPC : in  STD_LOGIC_VECTOR (31 downto 0);
           IM : in  STD_LOGIC_VECTOR (31 downto 0);
           M : out  STD_LOGIC_VECTOR (31 downto 0));
end ADD;

architecture Behavioral of ADD is
SIGNAL Au,Bu,Su : UNSIGNED (32 downto 0);
SIGNAL Sin : STD_LOGIC_VECTOR(32 downto 0) ;
begin
Au <= unsigned ('0' & NPC);
Bu <= unsigned ('0' & IM);
Su<= Au + Bu;
Sin<= std_logic_vector(Su);
M<=Sin(31 downto 0);

end Behavioral;

