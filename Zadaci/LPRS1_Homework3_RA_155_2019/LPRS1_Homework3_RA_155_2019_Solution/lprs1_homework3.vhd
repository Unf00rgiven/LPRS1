
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- Libraries.

entity lprs1_homework3 is
	port(
		i_clk         :  in std_logic;
		i_rst         :  in std_logic;
		i_base        :  in std_logic_vector(1 downto 0);
		o_cnt_subseq0 : out std_logic_vector(3 downto 0);
		o_cnt_subseq1 : out std_logic_vector(3 downto 0);
		o_cnt_subseq2 : out std_logic_vector(3 downto 0)
	);
end entity;


architecture arch of lprs1_homework3 is
	-- Constants.
	constant A : std_logic_vector(1 downto 0) := "00";
	constant C : std_logic_vector(1 downto 0) := "01";
	constant G : std_logic_vector(1 downto 0) := "10";
	constant T : std_logic_vector(1 downto 0) := "11";
	
	-- Signals.
	type tSTATE is (IDLE, T0S012, A0S01, T1S0, A1S1, G0S2, A0S2);
	signal sSTATE : tSTATE; 
	signal sNEXT_STATE : tSTATE;
	
	signal s_en_subseq0 : std_logic;
	signal s_en_subseq1 : std_logic;
	signal s_en_subseq2 : std_logic;
	
	signal s_cnt_subseq0 : std_logic_vector(3 downto 0);
	signal s_cnt_subseq1 : std_logic_vector(3 downto 0);
	signal s_cnt_subseq2 : std_logic_vector(3 downto 0);	
	
begin
	-- Body.
	
	--- AUTOMAT ---
	process(i_base, sSTATE) begin
		case (sSTATE) is
		
			when IDLE =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				else
					sNEXT_STATE <= IDLE;
				end if;
				
			when T0S012 =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				elsif(i_base=A) then
					sNEXT_STATE <= A0S01;
				elsif(i_base=G) then
					sNEXT_STATE <= G0S2;
				else 
					sNEXT_STATE <= IDLE;
				end if;
				
			when A0S01 =>
				if(i_base=T) then 
					sNEXT_STATE <= T1S0;
				elsif(i_base=A) then
					sNEXT_STATE <= A1S1;
				else 
					sNEXT_STATE <= IDLE;
				end if;
			
			
			when T1S0 =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				elsif(i_base=A) then
					sNEXT_STATE <= A0S01;
				else 
					sNEXT_STATE <= IDLE;
				end if;
				
			
			when A1S1 =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				else
					sNEXT_STATE <= IDLE;
				end if;	
			
			
			when G0S2 =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				elsif(i_base=A) then
					sNEXT_STATE <= A0S2;
				else 
					sNEXT_STATE <= IDLE;
				end if;
				
			
			when A0S2 =>
				if(i_base=T) then 
					sNEXT_STATE <= T0S012;
				else 
					sNEXT_STATE <= IDLE;
				end if;
			
				
			when others =>
				sNEXT_STATE <= IDLE;
				
		end case;		
	end process;
	
	s_en_subseq0 <= '1' when (sSTATE=T1S0) else '0';
	s_en_subseq1 <= '1' when (sSTATE=A1S1) else '0';
	s_en_subseq2 <= '1' when (sSTATE=A0S2) else '0';
	
	process (i_clk,i_rst) begin
		if(i_rst='0') then
			sSTATE <= IDLE;
		elsif(i_clk'event and i_clk='0') then
			sSTATE <= sNEXT_STATE;
		end if;
	end process;
	
	
	--- 0. brojac moduo 7 ---
	process (i_clk,i_rst) begin
		if(i_rst='0') then
			s_cnt_subseq0 <= "0000";
		elsif(i_clk'event and i_clk='0') then
			if(s_en_subseq0='1') then
				if(s_cnt_subseq0 = "0110") then
					s_cnt_subseq0 <= "0000";
				else
					s_cnt_subseq0 <= s_cnt_subseq0 + 1;
				end if;
			end if;
		end if;
	end process;
	
	--- 1. brojac moduo 4 ---
	process (i_clk,i_rst) begin
		if(i_rst='0') then
			s_cnt_subseq1 <= "0000";
		elsif(i_clk'event and i_clk='0') then
			if(s_en_subseq1='1') then
				if(s_cnt_subseq1 = "0011") then
					s_cnt_subseq1 <= "0000";
				else
					s_cnt_subseq1 <= s_cnt_subseq1 + 1;
				end if;
			end if;
		end if;
	end process;
	
	--- 2. brojac moduo 3 ---
	process (i_clk,i_rst) begin
		if(i_rst='0') then
			s_cnt_subseq2 <= "0000";
		elsif(i_clk'event and i_clk='0') then
			if(s_en_subseq2='1') then
				if(s_cnt_subseq2 = "0010") then
					s_cnt_subseq2 <= "0000";
				else
					s_cnt_subseq2 <= s_cnt_subseq2 + 1;
				end if;
			end if;
		end if;
	end process;
	
	o_cnt_subseq0 <= s_cnt_subseq0;
	o_cnt_subseq1 <= s_cnt_subseq1;
	o_cnt_subseq2 <= s_cnt_subseq2;
	
	
end architecture;
