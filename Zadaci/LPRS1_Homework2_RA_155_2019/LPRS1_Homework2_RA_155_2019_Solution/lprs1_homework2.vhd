library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
-- Libraries.

entity lprs1_homework2 is
	port(
		i_clk    :  in std_logic;
		i_rst    :  in std_logic;
		i_run    :  in std_logic;
		i_pause  :  in std_logic;
		o_digit0 : out std_logic_vector(3 downto 0);
		o_digit1 : out std_logic_vector(3 downto 0);
		o_digit2 : out std_logic_vector(3 downto 0);
		o_digit3 : out std_logic_vector(3 downto 0)
	);
end entity;


architecture arch of lprs1_homework2 is

		signal s_en_1us : std_logic; --- DOZVOLA za 1us brojac
		signal s_tc_1us : std_logic; --- Kreni 0. brojac
		signal s_cnt_1us : std_logic_vector(7 downto 0); ---- BROJAC 1us
		
		signal s_en0 : std_logic;  ---- DOZVOLA za 0. brojac
		signal s_tc0 : std_logic;  ---- Kreni 1. brojac
		signal s_cnt0 : std_logic_vector(3 downto 0); ---- 0. BROJAC
		
		signal s_en1 : std_logic;  ---- DOZVOLA ZA 1. brojac
		signal s_tc1 : std_logic;  ---- Kraj brojanja
		signal s_cnt1 : std_logic_vector(3 downto 0); ---- 1. BROJAC
		
	
begin

		------- KONTROLA BROJANJA -----
		process(i_clk, i_rst) begin 

			if(i_rst= '1') then

				s_en_1us <= '0';
					
			elsif(i_clk'event and i_clk= '1') then
			
				if(i_run= '1') then
					s_en_1us <= '1';
				end if;

				if(i_run= '0' and i_pause= '0' and s_en_1us= '1') then
					s_en_1us <= '1';
				end if;
				
				if(i_run= '0' and i_pause= '1') then
					s_en_1us <= '0';
				end if;
			
			end if;
		end process;
		
		o_digit2 <= "0001" ;
		o_digit3 <= "1110" ;
			
		 -------- BROJAC 1us ---------------
		process(i_clk, i_rst) begin 
			if(i_rst='1') then
				s_cnt_1us <= "00000000";
			elsif(i_clk'event and i_clk='1') then
				if(s_en_1us= '1') then
					s_cnt_1us <= s_cnt_1us + 1;
					if(s_cnt_1us = "11111001") then
						s_cnt_1us <= "00000000";
					end if;
				end if;	
			end if;
		end process;
		 
		s_tc_1us <= '1' when s_cnt_1us= "11111001" else '0'; -- po modulu 250
		s_en0 <= s_en_1us and s_tc_1us;	
		
		 
		 -------- BROJAC NULTE CIFRE --------------
		process(i_clk, i_rst) begin 
			if(i_rst='1') then
				s_cnt0 <= "0000";
			elsif(i_clk'event and i_clk='1') then
				if(s_en0 = '1') then 
					s_cnt0 <= s_cnt0 + 1 ;
					if(s_cnt0 = "0110") then
						s_cnt0 <= "0000" ;
					end if;
				end if;
			end if;
		end process;
		
		o_digit0 <= s_cnt0;
		
		s_tc0 <= '1' when s_cnt0= "0110" else '0';
		s_en1 <= s_en0 and s_tc0;
	
	
		 -------- BROJAC PRVE CIFRE ------------
		process(i_clk, i_rst) begin 
			if(i_rst='1') then
				s_cnt1 <= "0000";
			elsif(i_clk'event and i_clk='1') then
				if(s_en1 = '1') then
					s_cnt1 <= s_cnt1 + 1 ;
					if(s_cnt1 = "0101") then
						s_cnt1 <= "0000" ;
					end if;
				end if;
			end if;
		end process;
		
		s_tc1 <= '1' when s_cnt1= "0101" else '0';		

		o_digit1 <= s_cnt1;	
		
end architecture;