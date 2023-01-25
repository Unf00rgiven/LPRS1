-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/26/2020 11:15:08"

-- 
-- Device: Altera 10M16SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Brojac IS
    PORT (
	iRST : IN std_logic;
	iCLK : IN std_logic;
	iEN : IN std_logic;
	oCNT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Brojac;

-- Design Ports Information
-- oCNT[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[2]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oCNT[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iEN	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Brojac IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iRST : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iEN : std_logic;
SIGNAL ww_oCNT : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \iRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oCNT[0]~output_o\ : std_logic;
SIGNAL \oCNT[1]~output_o\ : std_logic;
SIGNAL \oCNT[2]~output_o\ : std_logic;
SIGNAL \oCNT[3]~output_o\ : std_logic;
SIGNAL \oCNT[4]~output_o\ : std_logic;
SIGNAL \oCNT[5]~output_o\ : std_logic;
SIGNAL \oCNT[6]~output_o\ : std_logic;
SIGNAL \oCNT[7]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iEN~input_o\ : std_logic;
SIGNAL \sCNT[0]~7_combout\ : std_logic;
SIGNAL \iRST~input_o\ : std_logic;
SIGNAL \iRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \sCNT[1]~8_combout\ : std_logic;
SIGNAL \sCNT[1]~9\ : std_logic;
SIGNAL \sCNT[2]~10_combout\ : std_logic;
SIGNAL \sCNT[2]~11\ : std_logic;
SIGNAL \sCNT[3]~12_combout\ : std_logic;
SIGNAL \sCNT[3]~13\ : std_logic;
SIGNAL \sCNT[4]~14_combout\ : std_logic;
SIGNAL \sCNT[4]~15\ : std_logic;
SIGNAL \sCNT[5]~16_combout\ : std_logic;
SIGNAL \sCNT[5]~17\ : std_logic;
SIGNAL \sCNT[6]~18_combout\ : std_logic;
SIGNAL \sCNT[6]~19\ : std_logic;
SIGNAL \sCNT[7]~20_combout\ : std_logic;
SIGNAL sCNT : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_iRST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iRST <= iRST;
ww_iCLK <= iCLK;
ww_iEN <= iEN;
oCNT <= ww_oCNT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\iRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iRST~input_o\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\ALT_INV_iRST~inputclkctrl_outclk\ <= NOT \iRST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y28_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y8_N9
\oCNT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(0),
	devoe => ww_devoe,
	o => \oCNT[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\oCNT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(1),
	devoe => ww_devoe,
	o => \oCNT[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\oCNT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(2),
	devoe => ww_devoe,
	o => \oCNT[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\oCNT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(3),
	devoe => ww_devoe,
	o => \oCNT[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\oCNT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(4),
	devoe => ww_devoe,
	o => \oCNT[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\oCNT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(5),
	devoe => ww_devoe,
	o => \oCNT[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\oCNT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(6),
	devoe => ww_devoe,
	o => \oCNT[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\oCNT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sCNT(7),
	devoe => ww_devoe,
	o => \oCNT[7]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\iCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G3
\iCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y9_N15
\iEN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iEN,
	o => \iEN~input_o\);

-- Location: LCCOMB_X1_Y7_N12
\sCNT[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[0]~7_combout\ = sCNT(0) $ (\iEN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sCNT(0),
	datad => \iEN~input_o\,
	combout => \sCNT[0]~7_combout\);

-- Location: IOIBUF_X0_Y8_N22
\iRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST,
	o => \iRST~input_o\);

-- Location: CLKCTRL_G4
\iRST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iRST~inputclkctrl_outclk\);

-- Location: FF_X1_Y7_N13
\sCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[0]~7_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(0));

-- Location: LCCOMB_X1_Y7_N16
\sCNT[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[1]~8_combout\ = (sCNT(0) & (sCNT(1) $ (VCC))) # (!sCNT(0) & (sCNT(1) & VCC))
-- \sCNT[1]~9\ = CARRY((sCNT(0) & sCNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sCNT(0),
	datab => sCNT(1),
	datad => VCC,
	combout => \sCNT[1]~8_combout\,
	cout => \sCNT[1]~9\);

-- Location: FF_X1_Y7_N17
\sCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[1]~8_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(1));

-- Location: LCCOMB_X1_Y7_N18
\sCNT[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[2]~10_combout\ = (sCNT(2) & (!\sCNT[1]~9\)) # (!sCNT(2) & ((\sCNT[1]~9\) # (GND)))
-- \sCNT[2]~11\ = CARRY((!\sCNT[1]~9\) # (!sCNT(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT(2),
	datad => VCC,
	cin => \sCNT[1]~9\,
	combout => \sCNT[2]~10_combout\,
	cout => \sCNT[2]~11\);

-- Location: FF_X1_Y7_N19
\sCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[2]~10_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(2));

-- Location: LCCOMB_X1_Y7_N20
\sCNT[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[3]~12_combout\ = (sCNT(3) & (\sCNT[2]~11\ $ (GND))) # (!sCNT(3) & (!\sCNT[2]~11\ & VCC))
-- \sCNT[3]~13\ = CARRY((sCNT(3) & !\sCNT[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT(3),
	datad => VCC,
	cin => \sCNT[2]~11\,
	combout => \sCNT[3]~12_combout\,
	cout => \sCNT[3]~13\);

-- Location: FF_X1_Y7_N21
\sCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[3]~12_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(3));

-- Location: LCCOMB_X1_Y7_N22
\sCNT[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[4]~14_combout\ = (sCNT(4) & (!\sCNT[3]~13\)) # (!sCNT(4) & ((\sCNT[3]~13\) # (GND)))
-- \sCNT[4]~15\ = CARRY((!\sCNT[3]~13\) # (!sCNT(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT(4),
	datad => VCC,
	cin => \sCNT[3]~13\,
	combout => \sCNT[4]~14_combout\,
	cout => \sCNT[4]~15\);

-- Location: FF_X1_Y7_N23
\sCNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[4]~14_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(4));

-- Location: LCCOMB_X1_Y7_N24
\sCNT[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[5]~16_combout\ = (sCNT(5) & (\sCNT[4]~15\ $ (GND))) # (!sCNT(5) & (!\sCNT[4]~15\ & VCC))
-- \sCNT[5]~17\ = CARRY((sCNT(5) & !\sCNT[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sCNT(5),
	datad => VCC,
	cin => \sCNT[4]~15\,
	combout => \sCNT[5]~16_combout\,
	cout => \sCNT[5]~17\);

-- Location: FF_X1_Y7_N25
\sCNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[5]~16_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(5));

-- Location: LCCOMB_X1_Y7_N26
\sCNT[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[6]~18_combout\ = (sCNT(6) & (!\sCNT[5]~17\)) # (!sCNT(6) & ((\sCNT[5]~17\) # (GND)))
-- \sCNT[6]~19\ = CARRY((!\sCNT[5]~17\) # (!sCNT(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sCNT(6),
	datad => VCC,
	cin => \sCNT[5]~17\,
	combout => \sCNT[6]~18_combout\,
	cout => \sCNT[6]~19\);

-- Location: FF_X1_Y7_N27
\sCNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[6]~18_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(6));

-- Location: LCCOMB_X1_Y7_N28
\sCNT[7]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sCNT[7]~20_combout\ = \sCNT[6]~19\ $ (!sCNT(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => sCNT(7),
	cin => \sCNT[6]~19\,
	combout => \sCNT[7]~20_combout\);

-- Location: FF_X1_Y7_N29
\sCNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sCNT[7]~20_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sCNT(7));

-- Location: UNVM_X0_Y18_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y28_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_oCNT(0) <= \oCNT[0]~output_o\;

ww_oCNT(1) <= \oCNT[1]~output_o\;

ww_oCNT(2) <= \oCNT[2]~output_o\;

ww_oCNT(3) <= \oCNT[3]~output_o\;

ww_oCNT(4) <= \oCNT[4]~output_o\;

ww_oCNT(5) <= \oCNT[5]~output_o\;

ww_oCNT(6) <= \oCNT[6]~output_o\;

ww_oCNT(7) <= \oCNT[7]~output_o\;
END structure;


