library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Semafor is
    Port ( iCLK    : in  STD_LOGIC;
           inRST   : in  STD_LOGIC;
           iD	    : in  STD_LOGIC;
           iEN	    : in  STD_LOGIC;
			  iSEL    : in STD_LOGIC_VECTOR(1 downto 0);
           oQ      : out STD_LOGIC_VECTOR(4 downto 0)
			  );
end Semafor;

architecture Behavioral of Semafor is
		signal sDATA : std_logic_vector(9 downto 0);
		signal sLIM : std_logic_vector(4 downto 0);
		signal sSHIFT : std_logic_vector(4 downto 0);
		signal sMUX : std_logic_vector(4 downto 0);
		signal sTC : std_logic;
		signal sREG : std_logic_vector(4 downto 0);
		signal sCNT : std_logic_vector(3 downto 0);

begin

		---- SHIFT REGISTAR 
		process(inRST,iCLK) begin
			if(inRST='0') then
				sDATA <= (others => '0');
			elsif(iCLK'event and iCLK= '1') then
				if(iEN= '1') then
					sDATA <= iD & sDATA	(9 downto 1);
				end if;
			end if;
		end process;
		
		---- CNT MODUO 10
		process(inRST,iCLK) begin
			if(inRST='0') then
				sCNT <= (others => '0');
			elsif(iCLK'event and iCLK= '1') then
					if(iEN = '1') then
						if(sCNT = "1001") then
							sCNT <= "0000";
						else
							sCNT <= sCNT + 1;
						end if;
					end if;
			end if;
		end process;
		
		sTC <= '1' when sCNT="1001" else '0';
		
		---- LIMITER
		sLIM <= "11000" when sDATA(4 downto 0)>24 else
					sDATA(4 downto 0);
		
		---- SHIFT RIGHT ARITHMETICAL 2 
		sSHIFT <= sDATA(9) & sDATA(9) & sDATA(9) & sDATA(8 downto 7);
		
		
		---- MUX
		sMUX <= sLIM when iSEL="00" else
              SDATA(4 downto 0) when iSEL="01" else
				  sDATA(9 downto 5) when iSEL="10" else
				  sSHIFT;
		
		---- REGISTAR
		process(inRST,iCLK) begin
			if(inRST='0') then
				sREG <= (others => '0');
			elsif(iCLK'event and iCLK= '1') then
				if(sTC= '1') then
					sREG <= sMUX;
				end if;
			end if;
		end process;
	
		
	oQ <= sMUX;

end Behavioral;