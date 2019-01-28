--------------------------------------------------------------------------------------
-- OR_tree_32x.vhdl  A multiplexer 2 to 1 for 32 bit words
--------------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;


 entity OR_tree_32x32 is
      port(IN00    : in  std_logic_vector (31 downto 0);
           IN01    : in  std_logic_vector (31 downto 0);
			  IN02    : in  std_logic_vector (31 downto 0);
			  IN03    : in  std_logic_vector (31 downto 0);
			  IN04    : in  std_logic_vector (31 downto 0);
			  IN05    : in  std_logic_vector (31 downto 0);
			  IN06    : in  std_logic_vector (31 downto 0);
			  IN07    : in  std_logic_vector (31 downto 0);
			  IN08    : in  std_logic_vector (31 downto 0);
			  IN09    : in  std_logic_vector (31 downto 0);
			  IN10    : in  std_logic_vector (31 downto 0);
			  IN11    : in  std_logic_vector (31 downto 0);
			  IN12    : in  std_logic_vector (31 downto 0);
			  IN13    : in  std_logic_vector (31 downto 0);
			  IN14    : in  std_logic_vector (31 downto 0);
			  IN15    : in  std_logic_vector (31 downto 0);
			  IN16    : in  std_logic_vector (31 downto 0);
			  IN17    : in  std_logic_vector (31 downto 0);
			  IN18    : in  std_logic_vector (31 downto 0);
			  IN19    : in  std_logic_vector (31 downto 0);
			  IN20    : in  std_logic_vector (31 downto 0);
			  IN21    : in  std_logic_vector (31 downto 0);
			  IN22    : in  std_logic_vector (31 downto 0);
			  IN23    : in  std_logic_vector (31 downto 0);
			  IN24    : in  std_logic_vector (31 downto 0);
			  IN25    : in  std_logic_vector (31 downto 0);
			  IN26    : in  std_logic_vector (31 downto 0);
			  IN27    : in  std_logic_vector (31 downto 0);
			  IN28    : in  std_logic_vector (31 downto 0);
			  IN29    : in  std_logic_vector (31 downto 0);
			  IN30    : in  std_logic_vector (31 downto 0);
			  IN31    : in  std_logic_vector (31 downto 0);
           O       : out std_logic_vector (31 downto 0));
  end entity OR_tree_32x32;


architecture structural of OR_tree_32x32 is

Begin

O <= IN00 or IN01 or IN02 or IN03 or IN04 or IN05 or IN06 or IN07 or IN08 or IN09 or
     IN10 or IN11 or IN12 or IN13 or IN14 or IN15 or IN16 or IN17 or IN18 or IN19 or
     IN20 or IN21 or IN22 or IN23 or IN24 or IN25 or IN26 or IN27 or IN28 or IN29 or
     IN30 or IN31;

end structural;


