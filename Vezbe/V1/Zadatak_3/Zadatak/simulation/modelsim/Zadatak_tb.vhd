library ieee;
use ieee.std_logic_1164.all;

entity Zadatak_tb is
	
end entity;

architecture Beh of Zadatak_tb is
	
	signal sB0 : std_logic;
	signal sB1 : std_logic;
	signal sB2 : std_logic;
	signal sB3 : std_logic;
	signal sY : std_logic;
	
	component Zadatak
		port (
			iB0 : in std_logic;
			iB1 : in std_logic;
			iB2 : in std_logic;
			iB3 : in std_logic;
			oY  : out std_logic
	);
	end component;
	
begin

	uut : Zadatak port map (
		iB0 => sB0,
		iB1 => sB1,
		iB2 => sB2,
		iB3 => sB3,
		oY => sY
	);
	
	stimulus : process
	begin
	
		sB0 <= '0';
		sB1 <= '0';
		sB2 <= '0';
		sB3 <= '0';
		wait for 100ns;
		
		
		sB0 <= '0';
		sB1 <= '0';
		sB2 <= '0';
		sB3 <= '1';
		wait for 100ns;
	
	end process stimulus;
	
end architecture;