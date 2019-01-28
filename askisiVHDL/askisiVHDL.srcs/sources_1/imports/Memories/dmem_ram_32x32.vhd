library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Only XST supports RAM inference
-- Infers Single Port Block Ram

entity DMEM_blockram32x32 is 
 port (
   di  : in std_logic_vector(31 downto 0); 
	a   : in std_logic_vector(4 downto 0); 
	we  : in std_logic; 
	clock : in std_logic; 
 	do  : out std_logic_vector(31 downto 0));
 end DMEM_blockram32x32; 
 
 architecture syn of DMEM_blockram32x32 is 
 
 type ram_type is array (31 downto 0) of std_logic_vector (31 downto 0); 
 signal RAM : ram_type; 
 
  --- 32 X 32 RAM
 
 begin 
 
 
process (clock) 
 begin 
 	if (clock'event and clock = '1') then
 	   	if (we = '1') then 
 			RAM(conv_integer(a)) <= di; 
 		else										--
 			 do <= RAM(conv_integer(a)); 	-- implementation Block RAM
 		end if;	  
 	end if; 
 end process; 
 
-- do <= RAM(conv_integer(a));  			   implementation Distributed RAM
 
 end syn;
