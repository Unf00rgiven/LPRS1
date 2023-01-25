library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Semafor is
    Port ( iCLK    : in  STD_LOGIC;
           iRST    : in  STD_LOGIC;
           iOK     : in  STD_LOGIC;
           iHAZ    : in  STD_LOGIC;
           oRED    : out STD_LOGIC;
           oYELLOW : out STD_LOGIC;
			  oGREEN  : out STD_LOGIC);
end Semafor;

architecture Behavioral of Semafor is
	
	type tSTATE is ( IDLE, RED, RED_YELLOW, YELLOW , GREEN, HAZARD);
	signal sSTATE: tSTATE;
	signal sNEXT_STATE: tSTATE;
	signal sCNT : std_logic_vector (2 downto 0);
	signal sTC : std_logic ;
	
begin

	---- BROJAC moduo 5
	process (iCLK, iRST) begin
		if(iRST= '1') then
			sCNT <= "000";
		elsif (iCLK'event and iCLK = '1') then
			sCNT <= SCNT + 1;
			if(sCNT = "100") then
				sCNT <= "000";
			end if;
		end if;
	end process;

	sTC <= '1' when sCNT = "100" else '0';
	
	
	process (iOK,iHAZ, sTC, sSTATE) begin
	if(sTC = '1') then
		case (sSTATE) is
			when IDLE =>
					if(iOK = '1') then
						sNEXT_STATE <= RED;
					elsif(sTC='1') then
						sNEXT_STATE <= IDLE;
					end if;
					
			when RED =>
					if(iHAZ = '1') then
						sNEXT_STATE <= HAZARD;
					else
						sNEXT_STATE <= RED_YELLOW;
					end if;
					
			when RED_YELLOW =>
					if(iHAZ = '1') then
						sNEXT_STATE <= HAZARD;
					else
						sNEXT_STATE <= GREEN;
					end if;
					
			when GREEN =>		
					if(iHAZ = '1') then
						sNEXT_STATE <= HAZARD;
					else
						sNEXT_STATE <= YELLOW;
					end if;
			
			when YELLOW =>
					if(iHAZ = '1') then
						sNEXT_STATE <= HAZARD;
					else
						sNEXT_STATE <= RED;
					end if;
			
			when HAZARD =>
					if(iOK = '1') then
						sNEXT_STATE <= RED;
					else
						sNEXT_STATE <= HAZARD;
					end if;
			
			when others =>
					sNEXT_STATE <= IDLE; 
		end case;
	else 
		sNEXT_STATE <= sSTATE;
	end if;
	end process;

	process (iCLK, iRST) begin
		if (iRST = '1') then
			sSTATE <= IDLE;
		elsif (iCLK'event and iCLK = '1') then
			sSTATE <= sNEXT_STATE;
		end if;
	end process;

	oRED <= '1' when sSTATE = RED or sSTATE = RED_YELLOW or sSTATE = HAZARD 
			else'0';	
	
	oYELLOW <= '1' when sSTATE = YELLOW or sSTATE = RED_YELLOW or sSTATE = HAZARD 
			else'0';	
			
	oGREEN <= '1' when sSTATE = GREEN or sSTATE = HAZARD 
			else'0';	
	

end Behavioral;