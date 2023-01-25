
----------------------------------------------------------------------------------
-- Logicko projektovanje racunarskih sistema 1
-- 2011/2012
-- Lab 5-7
--
-- ALU
--
-- author: Ivan Kastelan (ivan.kastelan@rt-rk.com)
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity alu is
    Port ( iA : in  STD_LOGIC_VECTOR (15 downto 0);
           iB : in  STD_LOGIC_VECTOR (15 downto 0);
           iSEL : in  STD_LOGIC_VECTOR (3 downto 0);
           oC : out  STD_LOGIC_VECTOR (15 downto 0);
           oSIGN : out  STD_LOGIC;
           oCARRY : out  STD_LOGIC;
           oZERO : out  STD_LOGIC);
end alu;

architecture Behavioral of alu is

    signal sA : std_logic_vector(16 downto 0);
    signal sB : std_logic_vector(16 downto 0);
    signal sC : std_logic_vector(16 downto 0);

begin
    -- Sign extensions.
    --TODO

    -- Mux with arithmetic-logical operations.
    --TODO
    
	 -- Flags.
    --TODO

end Behavioral;
