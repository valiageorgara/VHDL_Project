--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:    12:12:48 01/03/07
-- Design Name:    
-- Module Name:    bufe16 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bufe16 is
    Port ( buf_in : in std_logic_vector(15 downto 0);
           en : in std_logic;
           buf_out : out std_logic_vector(15 downto 0));
end bufe16;

architecture behavioral of bufe16 is

begin

-- buf_out <= buf_in when en ='1' else "ZZZZZZZZZZZZZZZZ";
  buf_mux: process (en, buf_in)
    begin
      buf_out <= (others => '0');
      if (en = '1') then buf_out <= buf_in;
        else null;
      end if;
    end process;
end behavioral;
