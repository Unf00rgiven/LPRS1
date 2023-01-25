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

-- DATE "12/10/2020 17:20:13"

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

ENTITY 	Semafor IS
    PORT (
	iCLK : IN std_logic;
	inRST : IN std_logic;
	iD : IN std_logic;
	iEN : IN std_logic;
	iSEL : IN std_logic_vector(1 DOWNTO 0);
	oQ : OUT std_logic_vector(4 DOWNTO 0)
	);
END Semafor;

-- Design Ports Information
-- oQ[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oQ[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oQ[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oQ[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oQ[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSEL[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iSEL[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inRST	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iEN	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iD	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semafor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_inRST : std_logic;
SIGNAL ww_iD : std_logic;
SIGNAL ww_iEN : std_logic;
SIGNAL ww_iSEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_oQ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oQ[0]~output_o\ : std_logic;
SIGNAL \oQ[1]~output_o\ : std_logic;
SIGNAL \oQ[2]~output_o\ : std_logic;
SIGNAL \oQ[3]~output_o\ : std_logic;
SIGNAL \oQ[4]~output_o\ : std_logic;
SIGNAL \iSEL[1]~input_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iD~input_o\ : std_logic;
SIGNAL \inRST~input_o\ : std_logic;
SIGNAL \inRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \iEN~input_o\ : std_logic;
SIGNAL \sDATA[8]~feeder_combout\ : std_logic;
SIGNAL \sDATA[7]~feeder_combout\ : std_logic;
SIGNAL \sDATA[4]~feeder_combout\ : std_logic;
SIGNAL \sDATA[3]~feeder_combout\ : std_logic;
SIGNAL \sDATA[2]~feeder_combout\ : std_logic;
SIGNAL \sMUX~1_combout\ : std_logic;
SIGNAL \iSEL[0]~input_o\ : std_logic;
SIGNAL \sMUX~2_combout\ : std_logic;
SIGNAL \sMUX~0_combout\ : std_logic;
SIGNAL \sMUX~3_combout\ : std_logic;
SIGNAL \sMUX~4_combout\ : std_logic;
SIGNAL \sMUX~5_combout\ : std_logic;
SIGNAL \sMUX~6_combout\ : std_logic;
SIGNAL \sMUX~7_combout\ : std_logic;
SIGNAL \sMUX~8_combout\ : std_logic;
SIGNAL \sMUX~9_combout\ : std_logic;
SIGNAL \sMUX~10_combout\ : std_logic;
SIGNAL sDATA : std_logic_vector(9 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iCLK <= iCLK;
ww_inRST <= inRST;
ww_iD <= iD;
ww_iEN <= iEN;
ww_iSEL <= iSEL;
oQ <= ww_oQ;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inRST~input_o\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y19_N12
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

-- Location: IOOBUF_X0_Y9_N2
\oQ[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sMUX~3_combout\,
	devoe => ww_devoe,
	o => \oQ[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\oQ[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sMUX~5_combout\,
	devoe => ww_devoe,
	o => \oQ[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\oQ[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sMUX~7_combout\,
	devoe => ww_devoe,
	o => \oQ[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\oQ[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sMUX~9_combout\,
	devoe => ww_devoe,
	o => \oQ[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\oQ[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sMUX~10_combout\,
	devoe => ww_devoe,
	o => \oQ[4]~output_o\);

-- Location: IOIBUF_X0_Y7_N22
\iSEL[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSEL(1),
	o => \iSEL[1]~input_o\);

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

-- Location: IOIBUF_X0_Y8_N8
\iD~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iD,
	o => \iD~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\inRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inRST,
	o => \inRST~input_o\);

-- Location: CLKCTRL_G4
\inRST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inRST~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y7_N15
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

-- Location: FF_X1_Y7_N1
\sDATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \iD~input_o\,
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(9));

-- Location: LCCOMB_X1_Y7_N12
\sDATA[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDATA[8]~feeder_combout\ = sDATA(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sDATA(9),
	combout => \sDATA[8]~feeder_combout\);

-- Location: FF_X1_Y7_N13
\sDATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sDATA[8]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(8));

-- Location: LCCOMB_X1_Y7_N30
\sDATA[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDATA[7]~feeder_combout\ = sDATA(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sDATA(8),
	combout => \sDATA[7]~feeder_combout\);

-- Location: FF_X1_Y7_N31
\sDATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sDATA[7]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(7));

-- Location: FF_X1_Y7_N23
\sDATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => sDATA(7),
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(6));

-- Location: FF_X1_Y7_N11
\sDATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => sDATA(6),
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(5));

-- Location: LCCOMB_X1_Y7_N24
\sDATA[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDATA[4]~feeder_combout\ = sDATA(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sDATA(5),
	combout => \sDATA[4]~feeder_combout\);

-- Location: FF_X1_Y7_N25
\sDATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sDATA[4]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(4));

-- Location: LCCOMB_X1_Y7_N16
\sDATA[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDATA[3]~feeder_combout\ = sDATA(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sDATA(4),
	combout => \sDATA[3]~feeder_combout\);

-- Location: FF_X1_Y7_N17
\sDATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sDATA[3]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(3));

-- Location: LCCOMB_X1_Y7_N8
\sDATA[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sDATA[2]~feeder_combout\ = sDATA(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sDATA(3),
	combout => \sDATA[2]~feeder_combout\);

-- Location: FF_X1_Y7_N9
\sDATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sDATA[2]~feeder_combout\,
	clrn => \inRST~inputclkctrl_outclk\,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(2));

-- Location: FF_X1_Y7_N5
\sDATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => sDATA(2),
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(1));

-- Location: FF_X1_Y7_N29
\sDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => sDATA(1),
	clrn => \inRST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \iEN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sDATA(0));

-- Location: LCCOMB_X1_Y7_N14
\sMUX~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~1_combout\ = (sDATA(4) & ((sDATA(1)) # ((sDATA(2)) # (sDATA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sDATA(1),
	datab => sDATA(2),
	datac => sDATA(0),
	datad => sDATA(4),
	combout => \sMUX~1_combout\);

-- Location: IOIBUF_X0_Y7_N1
\iSEL[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iSEL(0),
	o => \iSEL[0]~input_o\);

-- Location: LCCOMB_X1_Y7_N2
\sMUX~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~2_combout\ = (\iSEL[1]~input_o\) # ((\sMUX~1_combout\ & (!\iSEL[0]~input_o\ & sDATA(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datab => \sMUX~1_combout\,
	datac => \iSEL[0]~input_o\,
	datad => sDATA(3),
	combout => \sMUX~2_combout\);

-- Location: LCCOMB_X1_Y7_N10
\sMUX~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~0_combout\ = (\iSEL[1]~input_o\ & ((\iSEL[0]~input_o\ & ((sDATA(7)))) # (!\iSEL[0]~input_o\ & (sDATA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datab => \iSEL[0]~input_o\,
	datac => sDATA(5),
	datad => sDATA(7),
	combout => \sMUX~0_combout\);

-- Location: LCCOMB_X1_Y7_N28
\sMUX~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~3_combout\ = (\sMUX~0_combout\) # ((!\sMUX~2_combout\ & sDATA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMUX~2_combout\,
	datac => sDATA(0),
	datad => \sMUX~0_combout\,
	combout => \sMUX~3_combout\);

-- Location: LCCOMB_X1_Y7_N22
\sMUX~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~4_combout\ = (\iSEL[1]~input_o\ & ((\iSEL[0]~input_o\ & ((sDATA(8)))) # (!\iSEL[0]~input_o\ & (sDATA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datab => \iSEL[0]~input_o\,
	datac => sDATA(6),
	datad => sDATA(8),
	combout => \sMUX~4_combout\);

-- Location: LCCOMB_X1_Y7_N4
\sMUX~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~5_combout\ = (\sMUX~4_combout\) # ((!\sMUX~2_combout\ & sDATA(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sMUX~2_combout\,
	datab => \sMUX~4_combout\,
	datac => sDATA(1),
	combout => \sMUX~5_combout\);

-- Location: LCCOMB_X1_Y7_N18
\sMUX~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~6_combout\ = (\iSEL[1]~input_o\ & ((\iSEL[0]~input_o\ & ((sDATA(9)))) # (!\iSEL[0]~input_o\ & (sDATA(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datab => sDATA(7),
	datac => sDATA(9),
	datad => \iSEL[0]~input_o\,
	combout => \sMUX~6_combout\);

-- Location: LCCOMB_X1_Y7_N6
\sMUX~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~7_combout\ = (\sMUX~6_combout\) # ((sDATA(2) & !\sMUX~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sDATA(2),
	datac => \sMUX~2_combout\,
	datad => \sMUX~6_combout\,
	combout => \sMUX~7_combout\);

-- Location: LCCOMB_X1_Y7_N26
\sMUX~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~8_combout\ = (\iSEL[1]~input_o\ & ((\iSEL[0]~input_o\ & (sDATA(9))) # (!\iSEL[0]~input_o\ & ((sDATA(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datab => sDATA(9),
	datac => \iSEL[0]~input_o\,
	datad => sDATA(8),
	combout => \sMUX~8_combout\);

-- Location: LCCOMB_X1_Y7_N20
\sMUX~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~9_combout\ = (\sMUX~8_combout\) # ((!\iSEL[1]~input_o\ & sDATA(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSEL[1]~input_o\,
	datac => \sMUX~8_combout\,
	datad => sDATA(3),
	combout => \sMUX~9_combout\);

-- Location: LCCOMB_X1_Y7_N0
\sMUX~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sMUX~10_combout\ = (\iSEL[1]~input_o\ & ((sDATA(9)))) # (!\iSEL[1]~input_o\ & (sDATA(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sDATA(4),
	datac => sDATA(9),
	datad => \iSEL[1]~input_o\,
	combout => \sMUX~10_combout\);

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

ww_oQ(0) <= \oQ[0]~output_o\;

ww_oQ(1) <= \oQ[1]~output_o\;

ww_oQ(2) <= \oQ[2]~output_o\;

ww_oQ(3) <= \oQ[3]~output_o\;

ww_oQ(4) <= \oQ[4]~output_o\;
END structure;


