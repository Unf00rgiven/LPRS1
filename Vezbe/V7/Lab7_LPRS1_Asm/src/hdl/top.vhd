
----------------------------------------------------------------------------------
-- Logicko projektovanje racunarskih sistema 1
-- 2011/2012,2020
--
-- Computer system top level
--
-- author:
-- Ivan Kastelan (ivan.kastelan@rt-rk.com)
-- Milos Subotic (milos.subotic@uns.ac.rs)
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity top is
	generic(
		-- Default frequency used in synthesis.
		constant CLK_FREQ         : positive := 12000000;
		constant CNT_BITS_COMPENS : integer  := 0
	);
	port(
		iCLK       : in  std_logic;
		inRST      : in  std_logic;
		oLED       : out std_logic_vector(15 downto 0);
		onCOL      : out std_logic_vector(7 downto 0);
		oMUX_ROW   : out std_logic_vector(2 downto 0);
		oMUX_COLOR : out std_logic_vector(1 downto 0);
		iPB_UP     : in  std_logic;
		iPB_DOWN   : in  std_logic;
		iPB_LEFT   : in  std_logic;
		iPB_RIGHT  : in  std_logic
	);
end entity top;

architecture Behavioral of top is

	component cpu_top is
		port(
			iCLK : in  STD_LOGIC;
			inRST : in  STD_LOGIC;
			iINSTR : in  STD_LOGIC_VECTOR (14 downto 0);
			iDATA : in  STD_LOGIC_VECTOR (15 downto 0);
			oPC : out  STD_LOGIC_VECTOR (15 downto 0);
			oDATA : out  STD_LOGIC_VECTOR (15 downto 0);
			oADDR : out  STD_LOGIC_VECTOR (15 downto 0);
			oMEM_WE : out  STD_LOGIC;
			oLED : out  STD_LOGIC_VECTOR (15 downto 0)
		);
	end component;

	component instr_rom is
		port(
			iA : in  std_logic_vector(15 downto 0);
			oQ : out std_logic_vector(14 downto 0)
		);
	end component instr_rom;

	component data_ram is
		port(
			iCLK  : in  std_logic;
			inRST : in  std_logic;
			iA    : in  std_logic_vector(7 downto 0);
			iD    : in  std_logic_vector(15 downto 0);
			iWE   : in  std_logic;
			oQ    : out std_logic_vector(15 downto 0)
		);
	end component data_ram;
	
	
	component rgb_matrix_io_ctrl is
		generic(
			constant CLK_FREQ         : positive;
			constant CNT_BITS_COMPENS : integer
		);
		port(
			iCLK       : in  std_logic;
			inRST      : in  std_logic;
			onCOL      : out std_logic_vector(7 downto 0);
			oMUX_ROW   : out std_logic_vector(2 downto 0);
			oMUX_COLOR : out std_logic_vector(1 downto 0);
			iBUS_A     : in  std_logic_vector(7 downto 0);
			oBUS_RD    : out std_logic_vector(15 downto 0);
			iBUS_WD    : in  std_logic_vector(15 downto 0);
			iBUS_WE    : in  std_logic
		);
	end component rgb_matrix_io_ctrl;
	
	component push_buttons_dec_io_ctrl is
	port(
		iCLK       : in  std_logic;
		inRST      : in  std_logic;
		iPB_UP     : in  std_logic;
		iPB_DOWN   : in  std_logic;
		iPB_LEFT   : in  std_logic;
		iPB_RIGHT  : in  std_logic;
		iBUS_A     : in  std_logic_vector(7 downto 0);
		oBUS_RD    : out std_logic_vector(15 downto 0);
		iBUS_WD    : in  std_logic_vector(15 downto 0);
		iBUS_WE    : in  std_logic
	);
	end component push_buttons_dec_io_ctrl;
	
	
	signal sINSTR  : std_logic_vector(14 downto 0);
	signal sPC     : std_logic_vector(15 downto 0);
	signal sBUS_A  : std_logic_vector(15 downto 0);
	signal sBUS_RD : std_logic_vector(15 downto 0);
	signal sMEM_RD : std_logic_vector(15 downto 0);
	signal sRGB_RD : std_logic_vector(15 downto 0);
	signal sPBD_RD : std_logic_vector(15 downto 0);
	signal sBUS_WD : std_logic_vector(15 downto 0);
	signal sBUS_WE : std_logic;
	signal sMEM_WE : std_logic;
	signal sRGB_WE : std_logic;
	signal sPBD_WE : std_logic;


begin

	cpu_top_i: cpu_top
	port map(
		iCLK    => iCLK,
		inRST   => inRST,
		oPC     => sPC,
		iINSTR  => sINSTR,
		oADDR   => sBUS_A,
		oDATA   => sBUS_WD,
		oMEM_WE => sBUS_WE,
		iDATA   => sBUS_RD,
		oLED    => oLED
	);

	i_instr_rom: instr_rom
	port map(
		iA => sPC,
		oQ => sINSTR
	);

	i_data_ram: data_ram
	port map(
		iCLK  => iCLK,
		inRST => inRST,
		iA    => sBUS_A(7 downto 0),
		iD    => sBUS_WD,
		iWE   => sMEM_WE,
		oQ    => sMEM_RD
	);
	
	i_rgb: rgb_matrix_io_ctrl
	generic map(
		CLK_FREQ         => CLK_FREQ,
		CNT_BITS_COMPENS => CNT_BITS_COMPENS
	)
	port map(
		iCLK       => iCLK,
		inRST      => inRST,
		onCOL      => onCOL,
		oMUX_ROW   => oMUX_ROW,
		oMUX_COLOR => oMUX_COLOR,
		iBUS_A     => sBUS_A(7 downto 0),
		oBUS_RD    => sRGB_RD,
		iBUS_WE    => sRGB_WE,
		iBUS_WD    => sBUS_WD
	);
	
	-- Data Write Enable demux.
	process(sBUS_A, sBUS_WE)
	begin
		sMEM_WE <= '0';
		sRGB_WE <= '0';
		case sBUS_A(9 downto 8) is
			when "00" =>
				sMEM_WE <= sBUS_WE;
			when "01" =>
				sRGB_WE <= sBUS_WE;
			when others =>
		end case;
	end process;
	-- Data Read mux.
	process(sBUS_A, sMEM_RD, sRGB_RD)
	begin
		case sBUS_A(9 downto 8) is
			when "00" =>
				sBUS_RD <= sMEM_RD;
			when "01" =>
				sBUS_RD <= sRGB_RD;
			when others =>
				sBUS_RD <= x"baba";
		end case;
	end process;

end architecture;
