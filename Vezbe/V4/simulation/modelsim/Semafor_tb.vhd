LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Semafor_tb IS
END Semafor_tb;
 
ARCHITECTURE behavior OF Semafor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Semafor
    PORT(
         iCLK    : IN  std_logic;
         iRST    : IN  std_logic;
         iOK     : IN  std_logic;
         iHAZ    : IN  std_logic;
         oRED    : out STD_LOGIC;
         oYELLOW : out STD_LOGIC;
			oGREEN  : out STD_LOGIC);
    END COMPONENT;
    
   --Inputs
   signal iCLK : std_logic := '0';
   signal iRST : std_logic := '0';
   signal iOK  : std_logic := '1';
   signal iHAZ : std_logic := '0';
  
 	--Outputs
   signal oRED    : std_logic;
   signal oYELLOW : std_logic;
	signal oGREEN  : std_logic;
	
   -- Clock period definitions
   constant iCLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Semafor PORT MAP (
          iCLK => iCLK,
          iRST => iRST,
          iOK => iOK,
          iHAZ => iHAZ,
          oRED => oRED,
          oYELLOW => oYELLOW,
          oGREEN => oGREEN);

   -- Clock process definitions
   iCLK_process :process
   begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		iRST <= '1';
		wait for 5.25 * iCLK_period;
		iRST <= '0';
		
		--IDLE
		iOK <= '0';
		wait for 2* iCLK_period;
		
		iOK <= '1';
		wait for 5* iCLK_period;
		
		iOK <= '0';
		iHAZ <= '1';
		wait for 5* iCLK_period;
		
		iHAZ <= '0';
		iOK <= '1';
		wait for 30* iCLK_period;


      wait;
   end process;

END;