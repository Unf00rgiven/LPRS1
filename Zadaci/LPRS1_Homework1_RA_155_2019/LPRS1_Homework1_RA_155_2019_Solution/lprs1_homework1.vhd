
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Libraries.

entity lprs1_homework1 is
	port(
		i_x   :  in std_logic_vector(3 downto 0);
		i_y   :  in std_logic_vector(3 downto 0);
		i_z   :  in std_logic_vector(1 downto 0);
		i_sel :  in std_logic_vector(1 downto 0);
		o_res : out std_logic_vector(3 downto 0);
		o_cmp : out std_logic_vector(1 downto 0);
		o_enc : out std_logic_vector(1 downto 0)
	);
end entity;


architecture arch of lprs1_homework1 is
		signal sSHL : std_logic_vector(3 downto 0);
		signal sSHR : std_logic_vector(3 downto 0);
		signal sADD : std_logic_vector(3 downto 0);
		signal sSUB : std_logic_vector(3 downto 0);
		signal sDEC : std_logic_vector(3 downto 0);
		signal sCONST0 : std_logic_vector(3 downto 0);
		signal sCONST1 : std_logic_vector(3 downto 0);
		signal sMUX : std_logic_vector(3 downto 0);
		
begin
	-- SHIFTLEFT ARITMETICAL 2 --
		sSHL <= i_x(1) & i_x(0) & '0' & '0';
	
	-- SHIFTRIGHT LOGICAL 3 --
		sSHR <= '0' & '0' & '0' & i_y(3);
	
	-- ADD --
		sADD <= sSHL + sSHR;
			
	-- DECODER --
		sDEC <= "0001" when i_z="0000" else
				  "0010" when i_z="0001" else
              "0100" when i_z="0010" else
              "1000";
		
	
	-- SUB --
		 sSUB <= sDec - i_x;
		
	-- CONST0 = 7 --
		sCONST0 <= "0111";
	
	-- CONST1 = 15--
		sCONST1 <= "1111";
	
	-- MUX --
		sMUX <= sADD when i_sel="00" else
				  sCONST1 when i_sel="01" else
				  sSUB when i_sel="10" else
				  sCONST0;
	
	-- CMP 0 --
		o_cmp <= "00" when sMUX=0 else
					"01" when sMUX>0 else
					"11";
	
	-- N --
		o_enc <= "01" when sMUX(1)='1' else
					"10" when sMUX(2)='1' else
					"11" when sMUX(3)='1' else
					"00";
					
		o_res <= sMUX;
	
end architecture;
