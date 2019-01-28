
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

entity EXTsz is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           SIGN : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end EXTsz;

architecture Behavioral of EXTsz is

begin
process(A, SIGN)
begin

for i in 0 to 15 loop
O(i)<= A(i);
end loop;

if (SIGN= '1') then 
for i in 0 to 15 loop
O(i+16)<= A(15);
end loop;

elsif (SIGN= '0') then 
for i in 0 to 15 loop
O(i+16)<= '0';
end loop;

else null;

end if;

end process;
end Behavioral;

