library ieee;
use ieee.std_logic_1164.all;

entity demux is
	port(
		iX : in std_logic;
		iSEL : in std_logic_vector(1 downto 0);
		oY0 : out std_logic;
		oY1 : out std_logic;
		oY2 : out std_logic;
		oY3 : out std_logic
	);
end entity;

architecture Behavioral of demux is
	
begin

		process (iX,iSEL) begin
			if (iSEL="00") then
				oY0 <= iX;
				oY1 <= '0';
				oY2 <= '0';
				oY3 <= '0';
			elsif (iSEL="01") then
				oY0 <= '0';
				oY1 <= iX;
				oY2 <= '0';
				oY3 <= '0';
			elsif (iSEL="10") then
				oY0 <= '0';
				oY1 <= '0';
				oY2 <= iX;
				oY3 <= '0';
			else
				oY0 <= '0';
				oY1 <= '0';
				oY2 <= '0';
				oY3 <= iX;
			
			end if;
		end process;


end architecture;