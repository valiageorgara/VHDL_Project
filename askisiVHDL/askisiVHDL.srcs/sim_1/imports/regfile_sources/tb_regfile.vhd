LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.env.all;
  
ENTITY tb_regfile IS
END tb_regfile;
 
ARCHITECTURE behavior OF tb_regfile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT regfile
    PORT(
    	clock 		: in std_logic;
		Reg_Write 	: in std_logic;
		Reg_Imm_not : in std_logic;
		rs 			: in std_logic_vector(4 downto 0);
		rt 			: in std_logic_vector(4 downto 0);
		rd 			: in std_logic_vector(4 downto 0);
		Bus_W 		: in std_logic_vector(31 downto 0);
		Bus_A 		: out std_logic_vector(31 downto 0);
		Bus_B 		: out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal Reg_Write : std_logic := '0';
   signal Reg_Imm_not : std_logic := '0';
   signal rs : std_logic_vector(4 downto 0) := (others => '0');
   signal rt : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal Bus_W : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Bus_A : std_logic_vector(31 downto 0);
   signal Bus_B : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: regfile PORT MAP (
          clock => clock,
          Reg_Write => Reg_Write,
          Reg_Imm_not => Reg_Imm_not,
          rs => rs,
          rt => rt,
          rd => rd,
          Bus_W => Bus_W,
          Bus_A => Bus_A,
          Bus_B => Bus_B
        );

   -- Clock process definitions
   CLK_process :process
   begin
		clock <= '0';
		wait for clk_period/2;
		clock <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 100*clk_period;    
		
		-- The following loop writes to all registers R(i)<=i+100
		-- Write register = rd (Reg_Imm_not=1)
		for i in 0 to 31 loop
			rs			<=std_logic_vector(to_unsigned(i,rs'length));
			rt			<=std_logic_vector(to_unsigned(i,rt'length));
			rd			<=std_logic_vector(to_unsigned(i,rd'length));
			Bus_W		<=std_logic_vector(to_unsigned(i+100,Bus_W'length));	
			Reg_Write 	<='1';
			Reg_Imm_not	<='1';				
			wait for CLK_period;
			Reg_Write 	<='0';
			wait for CLK_period;
			wait for CLK_period;
		end loop;
		
		Reg_Write	<='0';
		wait for CLK_period*10;
		
		-- The following loop reads all registers R(i) through rs and rt ports 
		for i in 0 to 31 loop
			rs			<=std_logic_vector(to_unsigned(i,rs'length));
			rt			<=std_logic_vector(to_unsigned(i,rt'length));
			rd			<=(others => 'X');
			Bus_W		<=(others => 'X');
			Reg_Write 	<='0';
			Reg_Imm_not	<='1';				
			wait for CLK_period;
		end loop;
		
		wait for CLK_period*10;


		-- The following loop writes to all registers R(i)<=i+200
		-- Write register = rt (Reg_Imm_not=1)
		for i in 0 to 31 loop
			rs			<=std_logic_vector(to_unsigned(i,rs'length));
			rt			<=std_logic_vector(to_unsigned(i,rt'length));
			rd			<=(others => 'X');
			Bus_W		<=std_logic_vector(to_unsigned(i+200,Bus_W'length));	
			Reg_Write 	<='1';
			Reg_Imm_not	<='0';				
			wait for CLK_period;
			Reg_Write 	<='0';
			wait for CLK_period;
			wait for CLK_period;
		end loop;
		
		Reg_Write	<='0';
		wait for CLK_period*10;
		
		-- The following loop reads all registers R(i) through rs and rt ports 
		for i in 0 to 31 loop
			rs			<=std_logic_vector(to_unsigned(i,rs'length));
			rt			<=std_logic_vector(to_unsigned(i,rt'length));
			rd			<=(others => 'X');
			Bus_W		<=(others => 'X');
			Reg_Write 	<='0';
			Reg_Imm_not	<='1';				
			wait for CLK_period;
		end loop;
		
			
		wait for CLK_period*10;
		report "All patterns applied";
		report "Simulation finished";
	
		--finish(2);
		stop(2);		
      wait;
   end process;

END;
