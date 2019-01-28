--------------------------------------------------------------------------------------
-- mux_3to1_32x.vhdl  A multiplexer 2 to 1 for 32 bit words
--------------------------------------------------------------------------------------



library IEEE;
use IEEE.std_logic_1164.all;


 entity mux_3to1_32x is
      port(IN0    : in  std_logic_vector (31 downto 0);
           IN1    : in  std_logic_vector (31 downto 0);
			  IN2    : in  std_logic_vector (31 downto 0);
           S0     : in  std_logic;
			  S1     : in  std_logic;
           O      : out std_logic_vector (31 downto 0));
  end entity mux_3to1_32x;


architecture structural of mux_3to1_32x is
signal IN0or1 : std_logic_vector (31 downto 0);
Begin

	IN0or1 <= IN1 WHEN S0 ='1' ELSE IN0 ; 
	
	O <= IN2 WHEN S1 ='1' ELSE IN0or1 ; 

end structural;


