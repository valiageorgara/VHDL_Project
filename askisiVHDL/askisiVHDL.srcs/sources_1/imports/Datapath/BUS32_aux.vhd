
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

entity BUS32_aux is
    Port ( 
	        BIN   : in   STD_LOGIC_VECTOR (31 downto 0);
			  BOUT  : out  STD_LOGIC_VECTOR (31 downto 0));
end BUS32_aux;

architecture Structural of BUS32_aux is

begin

BOUT(31 downto 0) <= BIN(31 downto 0);


end Structural;

