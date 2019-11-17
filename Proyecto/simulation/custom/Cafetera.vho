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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/17/2019 17:25:45"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
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
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd_to_bin IS
    PORT (
	clk : IN std_logic;
	Dat0 : IN std_logic_vector(3 DOWNTO 0);
	Dat1 : IN std_logic_vector(3 DOWNTO 0);
	Dat2 : IN std_logic_vector(3 DOWNTO 0);
	D_sal : OUT std_logic_vector(6 DOWNTO 0);
	ready : OUT std_logic
	);
END bcd_to_bin;

-- Design Ports Information
-- D_sal[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[1]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[5]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_sal[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat0[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat1[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat0[1]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat1[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat0[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat2[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat1[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat0[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat2[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat1[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat2[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dat2[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd_to_bin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Dat0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dat1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Dat2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_sal : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D_sal[0]~output_o\ : std_logic;
SIGNAL \D_sal[1]~output_o\ : std_logic;
SIGNAL \D_sal[2]~output_o\ : std_logic;
SIGNAL \D_sal[3]~output_o\ : std_logic;
SIGNAL \D_sal[4]~output_o\ : std_logic;
SIGNAL \D_sal[5]~output_o\ : std_logic;
SIGNAL \D_sal[6]~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \Dat0[0]~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D_sal~0_combout\ : std_logic;
SIGNAL \Dat0[1]~input_o\ : std_logic;
SIGNAL \Dat1[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \D_sal~1_combout\ : std_logic;
SIGNAL \Dat2[0]~input_o\ : std_logic;
SIGNAL \Dat0[2]~input_o\ : std_logic;
SIGNAL \Dat1[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \D_sal~2_combout\ : std_logic;
SIGNAL \Dat0[3]~input_o\ : std_logic;
SIGNAL \Dat1[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Dat2[1]~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \D_sal~3_combout\ : std_logic;
SIGNAL \Dat2[2]~input_o\ : std_logic;
SIGNAL \Dat1[3]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \D_sal~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Dat2[3]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \D_sal~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \D_sal~6_combout\ : std_logic;
SIGNAL bin : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_Dat0 <= Dat0;
ww_Dat1 <= Dat1;
ww_Dat2 <= Dat2;
D_sal <= ww_D_sal;
ready <= ww_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
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

-- Location: IOOBUF_X0_Y26_N16
\D_sal[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~0_combout\,
	devoe => ww_devoe,
	o => \D_sal[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\D_sal[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~1_combout\,
	devoe => ww_devoe,
	o => \D_sal[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\D_sal[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~2_combout\,
	devoe => ww_devoe,
	o => \D_sal[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\D_sal[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~3_combout\,
	devoe => ww_devoe,
	o => \D_sal[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\D_sal[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~4_combout\,
	devoe => ww_devoe,
	o => \D_sal[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N9
\D_sal[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~5_combout\,
	devoe => ww_devoe,
	o => \D_sal[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\D_sal[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D_sal~6_combout\,
	devoe => ww_devoe,
	o => \D_sal[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\ready~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\Dat0[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat0(0),
	o => \Dat0[0]~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y26_N6
\bin[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(0) = (GLOBAL(\clk~inputclkctrl_outclk\) & (\Dat0[0]~input_o\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((bin(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat0[0]~input_o\,
	datac => \clk~inputclkctrl_outclk\,
	datad => bin(0),
	combout => bin(0));

-- Location: LCCOMB_X1_Y26_N16
\D_sal~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~0_combout\ = (\clk~input_o\ & bin(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(0),
	combout => \D_sal~0_combout\);

-- Location: IOIBUF_X0_Y23_N22
\Dat0[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat0(1),
	o => \Dat0[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\Dat1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat1(0),
	o => \Dat1[0]~input_o\);

-- Location: LCCOMB_X1_Y27_N18
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Dat0[1]~input_o\ & (\Dat1[0]~input_o\ $ (VCC))) # (!\Dat0[1]~input_o\ & (\Dat1[0]~input_o\ & VCC))
-- \Add1~1\ = CARRY((\Dat0[1]~input_o\ & \Dat1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat0[1]~input_o\,
	datab => \Dat1[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y26_N0
\bin[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(1) = (GLOBAL(\clk~inputclkctrl_outclk\) & ((\Add1~0_combout\))) # (!GLOBAL(\clk~inputclkctrl_outclk\) & (bin(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bin(1),
	datac => \Add1~0_combout\,
	datad => \clk~inputclkctrl_outclk\,
	combout => bin(1));

-- Location: LCCOMB_X1_Y26_N18
\D_sal~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~1_combout\ = (\clk~input_o\ & bin(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(1),
	combout => \D_sal~1_combout\);

-- Location: IOIBUF_X0_Y28_N8
\Dat2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat2(0),
	o => \Dat2[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\Dat0[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat0(2),
	o => \Dat0[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\Dat1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat1(1),
	o => \Dat1[1]~input_o\);

-- Location: LCCOMB_X1_Y27_N20
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Dat0[2]~input_o\ & ((\Dat1[1]~input_o\ & (\Add1~1\ & VCC)) # (!\Dat1[1]~input_o\ & (!\Add1~1\)))) # (!\Dat0[2]~input_o\ & ((\Dat1[1]~input_o\ & (!\Add1~1\)) # (!\Dat1[1]~input_o\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\Dat0[2]~input_o\ & (!\Dat1[1]~input_o\ & !\Add1~1\)) # (!\Dat0[2]~input_o\ & ((!\Add1~1\) # (!\Dat1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dat0[2]~input_o\,
	datab => \Dat1[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y27_N6
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\Dat2[0]~input_o\ & (\Add1~2_combout\ $ (VCC))) # (!\Dat2[0]~input_o\ & (\Add1~2_combout\ & VCC))
-- \Add2~1\ = CARRY((\Dat2[0]~input_o\ & \Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat2[0]~input_o\,
	datab => \Add1~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X1_Y26_N2
\bin[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(2) = (GLOBAL(\clk~inputclkctrl_outclk\) & (\Add2~0_combout\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((bin(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \clk~inputclkctrl_outclk\,
	datad => bin(2),
	combout => bin(2));

-- Location: LCCOMB_X1_Y26_N20
\D_sal~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~2_combout\ = (\clk~input_o\ & bin(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(2),
	combout => \D_sal~2_combout\);

-- Location: IOIBUF_X0_Y27_N15
\Dat0[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat0(3),
	o => \Dat0[3]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\Dat1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat1(2),
	o => \Dat1[2]~input_o\);

-- Location: LCCOMB_X1_Y27_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Dat1[0]~input_o\ $ (\Dat1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dat1[0]~input_o\,
	datad => \Dat1[2]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y27_N22
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Dat0[3]~input_o\ $ (\Add0~0_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Dat0[3]~input_o\ & ((\Add0~0_combout\) # (!\Add1~3\))) # (!\Dat0[3]~input_o\ & (\Add0~0_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dat0[3]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: IOIBUF_X0_Y25_N1
\Dat2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat2(1),
	o => \Dat2[1]~input_o\);

-- Location: LCCOMB_X1_Y27_N8
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~4_combout\ & ((\Dat2[1]~input_o\ & (\Add2~1\ & VCC)) # (!\Dat2[1]~input_o\ & (!\Add2~1\)))) # (!\Add1~4_combout\ & ((\Dat2[1]~input_o\ & (!\Add2~1\)) # (!\Dat2[1]~input_o\ & ((\Add2~1\) # (GND)))))
-- \Add2~3\ = CARRY((\Add1~4_combout\ & (!\Dat2[1]~input_o\ & !\Add2~1\)) # (!\Add1~4_combout\ & ((!\Add2~1\) # (!\Dat2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Dat2[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X1_Y26_N12
\bin[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(3) = (GLOBAL(\clk~inputclkctrl_outclk\) & ((\Add2~2_combout\))) # (!GLOBAL(\clk~inputclkctrl_outclk\) & (bin(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin(3),
	datac => \Add2~2_combout\,
	datad => \clk~inputclkctrl_outclk\,
	combout => bin(3));

-- Location: LCCOMB_X1_Y26_N14
\D_sal~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~3_combout\ = (\clk~input_o\ & bin(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(3),
	combout => \D_sal~3_combout\);

-- Location: IOIBUF_X0_Y25_N22
\Dat2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat2(2),
	o => \Dat2[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\Dat1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat1(3),
	o => \Dat1[3]~input_o\);

-- Location: LCCOMB_X1_Y27_N2
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \Dat1[3]~input_o\ $ (\Dat1[1]~input_o\ $ (((\Dat1[2]~input_o\ & \Dat1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat1[2]~input_o\,
	datab => \Dat1[0]~input_o\,
	datac => \Dat1[3]~input_o\,
	datad => \Dat1[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y27_N24
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~1_combout\ & (!\Add1~5\)) # (!\Add0~1_combout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y27_N10
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\Dat2[2]~input_o\ $ (\Add1~6_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\Dat2[2]~input_o\ & ((\Add1~6_combout\) # (!\Add2~3\))) # (!\Dat2[2]~input_o\ & (\Add1~6_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dat2[2]~input_o\,
	datab => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X1_Y26_N30
\bin[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(4) = (GLOBAL(\clk~inputclkctrl_outclk\) & (\Add2~4_combout\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((bin(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => bin(4),
	datad => \clk~inputclkctrl_outclk\,
	combout => bin(4));

-- Location: LCCOMB_X1_Y26_N8
\D_sal~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~4_combout\ = (bin(4) & \clk~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin(4),
	datac => \clk~input_o\,
	combout => \D_sal~4_combout\);

-- Location: LCCOMB_X1_Y27_N4
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Dat1[3]~input_o\ & ((\Dat1[1]~input_o\) # ((\Dat1[2]~input_o\ & \Dat1[0]~input_o\)))) # (!\Dat1[3]~input_o\ & (\Dat1[2]~input_o\ & (\Dat1[0]~input_o\ & \Dat1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat1[2]~input_o\,
	datab => \Dat1[0]~input_o\,
	datac => \Dat1[3]~input_o\,
	datad => \Dat1[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X1_Y27_N26
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~7\ & ((\Dat1[2]~input_o\ $ (\Add0~2_combout\)))) # (!\Add1~7\ & (\Dat1[2]~input_o\ $ (\Add0~2_combout\ $ (VCC))))
-- \Add1~9\ = CARRY((!\Add1~7\ & (\Dat1[2]~input_o\ $ (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dat1[2]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: IOIBUF_X0_Y28_N1
\Dat2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Dat2(3),
	o => \Dat2[3]~input_o\);

-- Location: LCCOMB_X1_Y28_N24
\Mult0|mult_core|romout[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~combout\ = \Dat2[3]~input_o\ $ (\Dat2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat2[3]~input_o\,
	datad => \Dat2[0]~input_o\,
	combout => \Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X1_Y27_N12
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~8_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (\Add2~5\ & VCC)) # (!\Mult0|mult_core|romout[0][5]~combout\ & (!\Add2~5\)))) # (!\Add1~8_combout\ & ((\Mult0|mult_core|romout[0][5]~combout\ & (!\Add2~5\)) # 
-- (!\Mult0|mult_core|romout[0][5]~combout\ & ((\Add2~5\) # (GND)))))
-- \Add2~7\ = CARRY((\Add1~8_combout\ & (!\Mult0|mult_core|romout[0][5]~combout\ & !\Add2~5\)) # (!\Add1~8_combout\ & ((!\Add2~5\) # (!\Mult0|mult_core|romout[0][5]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mult0|mult_core|romout[0][5]~combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X1_Y26_N24
\bin[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(5) = (GLOBAL(\clk~inputclkctrl_outclk\) & ((\Add2~6_combout\))) # (!GLOBAL(\clk~inputclkctrl_outclk\) & (bin(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bin(5),
	datac => \Add2~6_combout\,
	datad => \clk~inputclkctrl_outclk\,
	combout => bin(5));

-- Location: LCCOMB_X1_Y26_N26
\D_sal~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~5_combout\ = (\clk~input_o\ & bin(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(5),
	combout => \D_sal~5_combout\);

-- Location: LCCOMB_X1_Y27_N30
\Mult0|mult_core|romout[0][6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~0_combout\ = \Dat2[1]~input_o\ $ (((\Dat2[0]~input_o\ & !\Dat2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat2[0]~input_o\,
	datab => \Dat2[3]~input_o\,
	datac => \Dat2[1]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X1_Y27_N0
\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Dat1[2]~input_o\ & ((\Dat1[0]~input_o\ & ((\Dat1[3]~input_o\) # (\Dat1[1]~input_o\))) # (!\Dat1[0]~input_o\ & (\Dat1[3]~input_o\ & \Dat1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dat1[2]~input_o\,
	datab => \Dat1[0]~input_o\,
	datac => \Dat1[3]~input_o\,
	datad => \Dat1[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X1_Y27_N28
\Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Dat1[3]~input_o\ $ (\Add1~9\ $ (\Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dat1[3]~input_o\,
	datad => \Add0~3_combout\,
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X1_Y27_N14
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Mult0|mult_core|romout[0][6]~0_combout\ $ (\Add1~10_combout\ $ (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][6]~0_combout\,
	datab => \Add1~10_combout\,
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X1_Y26_N10
\bin[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- bin(6) = (GLOBAL(\clk~inputclkctrl_outclk\) & (\Add2~8_combout\)) # (!GLOBAL(\clk~inputclkctrl_outclk\) & ((bin(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => \clk~inputclkctrl_outclk\,
	datad => bin(6),
	combout => bin(6));

-- Location: LCCOMB_X1_Y26_N4
\D_sal~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D_sal~6_combout\ = (\clk~input_o\ & bin(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => bin(6),
	combout => \D_sal~6_combout\);

-- Location: UNVM_X0_Y40_N40
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_D_sal(0) <= \D_sal[0]~output_o\;

ww_D_sal(1) <= \D_sal[1]~output_o\;

ww_D_sal(2) <= \D_sal[2]~output_o\;

ww_D_sal(3) <= \D_sal[3]~output_o\;

ww_D_sal(4) <= \D_sal[4]~output_o\;

ww_D_sal(5) <= \D_sal[5]~output_o\;

ww_D_sal(6) <= \D_sal[6]~output_o\;

ww_ready <= \ready~output_o\;
END structure;


