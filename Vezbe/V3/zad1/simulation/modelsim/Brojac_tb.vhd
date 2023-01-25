library ieee;
use ieee.std_logic_1164.all;



entity Brojac_tb is
end entity;

architecture Test of Brojac_tb is

	signal sCLK : std_logic := '0';
	signal sRST : std_logic := '0';
	signal sEN : std_logic := '0';
	signal sCNT : std_logic_vector(7 downto 0);

component Brojac is port (
	iRST : in std_logic;
	iCLK : in std_logic;
	iEN : in std_logic;
	oCNT : out std_logic_vector(7 downto 0)
	);
	end component;

	constant iCLK_period : time := 10 ns; -- iCLK_period je konstanta



begin



	uut: Brojac port map (
	iCLK => sCLK,
	iRST => sRST,
	iEN => sEN,
	oCNT => sCNT
	);


	iCLK_process: process
	begin
	sCLK <= '0';
	wait for iCLK_period / 2; -- iCLK_period je konstanta
	sCLK <= '1';
	wait for iCLK_period / 2;
	end process;

	stimulus: process
	begin
	sRST <= '1';
	wait for 5.25 * iCLK_period; -- iCLK_period je konstanta
	sRST <= '0';

	sEN <= '1';

	wait for 8 * iCLK_period;

	sEN <= '0';
	wait for 5 * iCLK_period;

	sRST <= '1';

	wait;
	end process;


end architecture;
