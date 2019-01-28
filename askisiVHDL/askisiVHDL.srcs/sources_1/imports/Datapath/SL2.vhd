
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SL2 is
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           M : out  STD_LOGIC_VECTOR (31 downto 0));
end SL2;

architecture Structural of SL2 is

begin

M(31 downto 0) <= I(29 downto 0) & "00";

end Structural;

