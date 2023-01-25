library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity Slozeni_tb is
end entity;
 
architecture Test of Slozeni_tb is

	--Inputs and outputs
   signal sCLK   : std_logic := '0';
   signal sRST   : std_logic := '0';
   signal sEN    : std_logic := '0';
	signal sCNT : std_logic_vector(7 downto 0);
   signal sSHREG : std_logic_vector(7 downto 0);
 
   component Slozeni is port(
		iCLK   : in  std_logic;
      iRST   : in  std_logic;
      iEN    : in  std_logic;
		oCNT   : out std_logic_vector (7 downto 0);
      oSHREG : out std_logic_vector(7 downto 0)
      );
   end component;
	
	constant iCLK_period : time := 10ns;

begin

   uut: Slozeni port map (
          iCLK => sCLK,
          iRST => sRST,
          iEN => sEN,
			 oCNT => sCNT,
          oSHREG => sSHREG
        );
		  
	-- Clock process
	iCLK_process: process
	begin
	sCLK <= '0';
	wait for iCLK_period / 2;
	sCLK <= '1';
	wait for iCLK_period / 2;
	end process;

   -- Stimulus process
   stim_proc: process
   begin
	
		sRST <='1';
		wait for 5.25 * iCLK_period;
		sRST <= '0';
		
		sEN <= '1';
		wait for 260 * iCLK_period;
		
		sEN <= '0';
		wait for 5 * iCLK_period;
		
		sRST <= '1';
	
		wait;
   end process;

END;
