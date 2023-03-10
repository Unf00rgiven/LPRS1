library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Slozeni is port (
		iCLK   : in  std_logic;
      iRST   : in  std_logic;
      iEN    : in  std_logic;
		oCNT   : out std_logic_vector (7 downto 0);
      oSHREG : out  std_logic_vector (7 downto 0)
		);
end entity;

architecture Behavioral of Slozeni is

		signal sCNT : std_logic_vector (7 downto 0);
		signal sSHREG : std_logic_vector (7 downto 0);
		signal sLOAD : std_logic ;
		signal sARITH : std_logic ;

begin
	
		------- BROJAC -------------
		process (iCLK, iRST) begin
				if (iRST = '1') then
					sCNT <= "00000000";
					
				elsif (iCLK'event and iCLK = '1') then
					if(iEN = '1') then
						sCNT <= sCNT + 1;
						
					end if;
				end if;
		end process;
		
		--------- SHIFT registar 8bits ---------------
		process (iCLK,iRST) begin
			if(iRST='1') then
				sSHREG <= "00000000";
			elsif (iCLK'event and iCLK='1') then
				if (sLOAD='1') then
					sSHREG <= sCNT ;
				else
					if(sARITH='1') then
						sSHREG <= sSHREG(7) & sSHREG(7 downto 1);
					else
						sSHREG <= sSHREG(6 downto 0) & '0';
					end if;
				end if;	
			end if;
		end process;
		
		-------- SHIFT AND COUNT RULES --------
		
		sLOAD <= '1' when (sCNT=8 or sCNT=128) else
					'0';
					
		sARITH <= '1' when sCNT>128 else
					 '0';
					 
		oSHREG <= sSHREG ;
		oCNT <= sCNT ;
		
		
		


end architecture;
