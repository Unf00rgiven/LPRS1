
----------------------------------------------------------------------------------
-- Logicko projektovanje racunarskih sistema 1
-- 2011/2012,2020
--
-- Computer system top level testbench
--
-- authors:
-- Ivan Kastelan (ivan.kastelan@rt-rk.com)
-- Milos Subotic (milos.subotic@uns.ac.rs)
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity top_tb is
end top_tb;

architecture Behavior of top_tb is

	component top is
		port(
			iCLK       : in  std_logic;
			inRST      : in  std_logic;
			oSUBSEQS   : out std_logic_vector(15 downto 0);
			oDONE      : out std_logic
		);
	end component top;
	
	
	--Inputs
	signal iCLK       : std_logic := '0';
	signal inRST      : std_logic := '0';
	signal oSUBSEQS   : std_logic_vector (15 downto 0);
	signal oDONE      : std_logic;

	constant iCLK_period : time := 10 ns; -- 100MHz
	
begin


	-- Instantiate the Unit Under Test (UUT)
	uut: top
	port map(
		iCLK       => iCLK,
		inRST      => inRST,
		oSUBSEQS   => oSUBSEQS,
		oDONE      => oDONE
	);


	-- Clock process definitions
	iCLK_proc: process
	begin
		iCLK <= '0';
		wait for iCLK_period/2;
		iCLK <= '1';
		wait for iCLK_period/2;
	end process;


	-- Stimulus process
	stim_proc: process
	begin
		inRST <= '0';
		wait for 2*iCLK_period;
		inRST <= '1';
		
		--TODO Test design with one assert like Chuck Norris.
		
		wait;
	end process;

end architecture;
