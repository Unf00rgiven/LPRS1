----------------------------------------------------------------------------------
-- Logicko projektovanje racunarskih sistema 1
-- 2011/2012,2020
--
-- Register
--
-- author:
-- Ivan Kastelan (ivan.kastelan@rt-rk.com)
-- Milos Subotic (milos.subotic@uns.ac.rs)
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity reg is
	generic(
		WIDTH : integer := 16
	);
	port(
		iCLK  : in  std_logic;
		inRST : in  std_logic;
		iD    : in  std_logic_vector(WIDTH-1 downto 0);
		iWE   : in  std_logic;
		oQ    : out std_logic_vector(WIDTH-1 downto 0)
	);
end entity reg;

architecture Behavioral of reg is

	signal sREG : std_logic_vector(WIDTH-1 downto 0);

begin

	process(iCLK, inRST)
	begin
		if inRST = '0' then
			sREG <= (others => '0');
		elsif rising_edge(iCLK) then
			if iWE = '1' then
				sREG <= iD;
			end if;
		end if;
	end process;
	
	oQ <= sREG;

end architecture;
