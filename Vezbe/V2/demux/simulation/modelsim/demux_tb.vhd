library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
end entity;

architecture Behavioral of demux_tb is
	
	signal sX : std_logic;
	signal sSEL : std_logic_vector(1 downto 0);
	signal sY0 : std_logic;
	signal sY1 : std_logic;
	signal sY2 : std_logic;
	signal sY3 : std_logic;

	component demux is
		port(
			iX : in std_logic;
			iSEL : in std_logic_vector(1 downto 0);
			oY0 : out std_logic;
			oY1 : out std_logic;
			oY2 : out std_logic;
			oY3 : out std_logic
		);
	end component;

begin

	uut : demux port map(
		iX => sX,
		iSEL => sSEL,
		oY0 => sY0,
		oY1 => sY1,
		oY2 => sY2,
		oY3 => sY3
	);
	
	stimulus: process
	begin
		sX <= '1';
		
		sSEL <= "00";
		wait for 100ns;
		
		sSEL <= "01";
		wait for 100ns;
		
		sSEL <= "10";
		wait for 100ns;
		
		sSEL <= "11";		
		wait;
	end process stimulus;

end architecture;