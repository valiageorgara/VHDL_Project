-- IMEM for test program "Simple_Example_1"

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IMEM_rom64x32 is
    Port ( ADDR : in std_logic_vector(5 downto 0);
           DOUT : out std_logic_vector(31 downto 0));
end IMEM_rom64x32;

architecture Behavioral of IMEM_rom64x32 is

subtype Imem_word is bit_vector(31 downto 0);
type    Imem_array is array (0 to 63)of Imem_word;

constant Imem : Imem_array := (

X"34011111", X"34022222", X"00411821", X"ac000000", X"8c110000", X"00002027",
X"ac040004", X"8c120004", X"24080010", X"00084900", X"0022802a", X"10100001",
X"14100000", X"24130040", X"0260f809", X"25080010", X"03e00008", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000");


Begin

DOUT <= To_X01(Imem(conv_integer(ADDR)));

End Behavioral;
