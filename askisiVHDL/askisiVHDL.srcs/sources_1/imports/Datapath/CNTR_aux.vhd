
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

entity CNTR_aux is
    Port ( OPIN  : in   STD_LOGIC_VECTOR (5 downto 0);
           FIN   : in   STD_LOGIC_VECTOR (5 downto 0);
			  OPOUT : out  STD_LOGIC_VECTOR (5 downto 0);
           FOUT  : out  STD_LOGIC_VECTOR (5 downto 0));
end CNTR_aux;

architecture Structural of CNTR_aux is

begin

OPOUT(5 downto 0) <= OPIN(5 downto 0);

FOUT(5 downto 0) <= FIN(5 downto 0);

end Structural;

