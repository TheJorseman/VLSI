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

-- DATE "11/17/2019 16:41:00"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Digits IS
    PORT (
	clk : IN std_logic;
	is_digit : IN std_logic;
	is_oper : IN std_logic;
	digits : IN std_logic_vector(3 DOWNTO 0);
	reset : IN std_logic;
	Sal0 : OUT std_logic_vector(3 DOWNTO 0);
	Sal1 : OUT std_logic_vector(3 DOWNTO 0);
	Sal2 : OUT std_logic_vector(3 DOWNTO 0);
	save_o : OUT std_logic
	);
END Digits;

-- Design Ports Information
-- Sal0[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal0[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal0[2]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal0[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal1[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal1[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal1[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal1[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal2[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal2[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal2[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sal2[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- save_o	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_digit	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- is_oper	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digits[1]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digits[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digits[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digits[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Digits IS
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
SIGNAL ww_is_digit : std_logic;
SIGNAL ww_is_oper : std_logic;
SIGNAL ww_digits : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_Sal0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sal1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sal2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_save_o : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector19~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector14~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Sal0[0]~output_o\ : std_logic;
SIGNAL \Sal0[1]~output_o\ : std_logic;
SIGNAL \Sal0[2]~output_o\ : std_logic;
SIGNAL \Sal0[3]~output_o\ : std_logic;
SIGNAL \Sal1[0]~output_o\ : std_logic;
SIGNAL \Sal1[1]~output_o\ : std_logic;
SIGNAL \Sal1[2]~output_o\ : std_logic;
SIGNAL \Sal1[3]~output_o\ : std_logic;
SIGNAL \Sal2[0]~output_o\ : std_logic;
SIGNAL \Sal2[1]~output_o\ : std_logic;
SIGNAL \Sal2[2]~output_o\ : std_logic;
SIGNAL \Sal2[3]~output_o\ : std_logic;
SIGNAL \save_o~output_o\ : std_logic;
SIGNAL \is_digit~input_o\ : std_logic;
SIGNAL \digits[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \is_oper~input_o\ : std_logic;
SIGNAL \digits[1]~input_o\ : std_logic;
SIGNAL \digits[2]~input_o\ : std_logic;
SIGNAL \digits[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.D3~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.D1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.D2~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \state.Idle~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~1clkctrl_outclk\ : std_logic;
SIGNAL \Sal0[0]$latch~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Sal0[1]$latch~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Sal0[2]$latch~combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Sal0[3]$latch~combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector14~1clkctrl_outclk\ : std_logic;
SIGNAL \Sal1[0]$latch~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Sal1[1]$latch~combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Sal1[2]$latch~combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Sal1[3]$latch~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \Sal2[0]$latch~combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Sal2[1]$latch~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Sal2[2]$latch~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Sal2[3]$latch~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_is_digit <= is_digit;
ww_is_oper <= is_oper;
ww_digits <= digits;
ww_reset <= reset;
Sal0 <= ww_Sal0;
Sal1 <= ww_Sal1;
Sal2 <= ww_Sal2;
save_o <= ww_save_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector9~0_combout\);

\Selector19~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector19~1_combout\);

\Selector14~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector14~1_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X20_Y39_N16
\Sal0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal0[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\Sal0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal0[1]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\Sal0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal0[2]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\Sal0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal0[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Sal1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal1[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal1[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\Sal1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal1[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\Sal1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal1[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\Sal1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal1[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal1[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Sal2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal2[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal2[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\Sal2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal2[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal2[1]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\Sal2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal2[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal2[2]~output_o\);

-- Location: IOOBUF_X26_Y39_N16
\Sal2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sal2[3]$latch~combout\,
	devoe => ww_devoe,
	o => \Sal2[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\save_o~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~1_combout\,
	devoe => ww_devoe,
	o => \save_o~output_o\);

-- Location: IOIBUF_X24_Y39_N22
\is_digit~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_digit,
	o => \is_digit~input_o\);

-- Location: IOIBUF_X24_Y39_N29
\digits[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digits(0),
	o => \digits[0]~input_o\);

-- Location: IOIBUF_X22_Y39_N29
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

-- Location: IOIBUF_X22_Y39_N15
\is_oper~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_is_oper,
	o => \is_oper~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\digits[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digits(1),
	o => \digits[1]~input_o\);

-- Location: IOIBUF_X24_Y39_N15
\digits[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digits(2),
	o => \digits[2]~input_o\);

-- Location: IOIBUF_X24_Y39_N8
\digits[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digits(3),
	o => \digits[3]~input_o\);

-- Location: LCCOMB_X23_Y38_N18
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\digits[1]~input_o\ & (\digits[2]~input_o\ & (!\digits[0]~input_o\ & \digits[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1]~input_o\,
	datab => \digits[2]~input_o\,
	datac => \digits[0]~input_o\,
	datad => \digits[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y38_N20
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\is_oper~input_o\ & (\state.D2~q\ & ((\is_digit~input_o\)))) # (!\is_oper~input_o\ & ((\state.D3~q\) # ((\state.D2~q\ & \is_digit~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \state.D2~q\,
	datac => \state.D3~q\,
	datad => \is_digit~input_o\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G1
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X23_Y38_N21
\state.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D3~q\);

-- Location: LCCOMB_X23_Y38_N8
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\is_oper~input_o\ & (\Equal0~0_combout\ & ((\state.D2~q\)))) # (!\is_oper~input_o\ & (((\state.D1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \is_oper~input_o\,
	datac => \state.D1~q\,
	datad => \state.D2~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y38_N22
\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\is_digit~input_o\ & (!\state.Idle~q\)) # (!\is_digit~input_o\ & ((\Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \state.Idle~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X23_Y38_N23
\state.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D1~q\);

-- Location: LCCOMB_X23_Y38_N2
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\is_digit~input_o\ & (((\state.D1~q\)))) # (!\is_digit~input_o\ & (!\is_oper~input_o\ & ((\state.D2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \is_digit~input_o\,
	datac => \state.D1~q\,
	datad => \state.D2~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X23_Y38_N24
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\is_oper~input_o\ & (\state.D3~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \state.D3~q\,
	datac => \Equal0~0_combout\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X23_Y38_N25
\state.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.D2~q\);

-- Location: LCCOMB_X23_Y38_N30
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.D3~q\) # ((!\is_digit~input_o\ & \state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \state.D2~q\,
	datad => \state.D3~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X23_Y38_N16
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\is_digit~input_o\ & (((\is_oper~input_o\ & \state.D1~q\)) # (!\state.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \is_digit~input_o\,
	datac => \state.Idle~q\,
	datad => \state.D1~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X23_Y38_N26
\Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (!\Selector3~0_combout\ & (((\Equal0~0_combout\) # (!\Selector3~1_combout\)) # (!\is_oper~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X23_Y38_N27
\state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector3~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Idle~q\);

-- Location: LCCOMB_X23_Y37_N8
\Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\is_digit~input_o\ & (\digits[0]~input_o\ & !\state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \digits[0]~input_o\,
	datad => \state.Idle~q\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X23_Y38_N6
\Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\is_oper~input_o\ & (\Equal0~0_combout\ & (\state.D1~q\))) # (!\is_oper~input_o\ & (((\state.D1~q\) # (\state.D2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \Equal0~0_combout\,
	datac => \state.D1~q\,
	datad => \state.D2~q\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X23_Y38_N28
\Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ((!\is_digit~input_o\ & \Selector19~0_combout\)) # (!\state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \state.Idle~q\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: CLKCTRL_G4
\Selector19~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector19~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector19~1clkctrl_outclk\);

-- Location: LCCOMB_X22_Y37_N12
\Sal0[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal0[0]$latch~combout\ = (GLOBAL(\Selector19~1clkctrl_outclk\) & ((\Selector15~0_combout\))) # (!GLOBAL(\Selector19~1clkctrl_outclk\) & (\Sal0[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sal0[0]$latch~combout\,
	datac => \Selector15~0_combout\,
	datad => \Selector19~1clkctrl_outclk\,
	combout => \Sal0[0]$latch~combout\);

-- Location: LCCOMB_X23_Y37_N6
\Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\is_digit~input_o\ & (\digits[1]~input_o\ & !\state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \digits[1]~input_o\,
	datad => \state.Idle~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X23_Y37_N12
\Sal0[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal0[1]$latch~combout\ = (GLOBAL(\Selector19~1clkctrl_outclk\) & (\Selector16~0_combout\)) # (!GLOBAL(\Selector19~1clkctrl_outclk\) & ((\Sal0[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~0_combout\,
	datac => \Selector19~1clkctrl_outclk\,
	datad => \Sal0[1]$latch~combout\,
	combout => \Sal0[1]$latch~combout\);

-- Location: LCCOMB_X23_Y37_N28
\Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\is_digit~input_o\ & (\digits[2]~input_o\ & !\state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \digits[2]~input_o\,
	datad => \state.Idle~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X22_Y37_N26
\Sal0[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal0[2]$latch~combout\ = (GLOBAL(\Selector19~1clkctrl_outclk\) & (\Selector17~0_combout\)) # (!GLOBAL(\Selector19~1clkctrl_outclk\) & ((\Sal0[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector17~0_combout\,
	datac => \Sal0[2]$latch~combout\,
	datad => \Selector19~1clkctrl_outclk\,
	combout => \Sal0[2]$latch~combout\);

-- Location: LCCOMB_X23_Y37_N22
\Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\is_digit~input_o\ & (\digits[3]~input_o\ & !\state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \digits[3]~input_o\,
	datad => \state.Idle~q\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X23_Y37_N14
\Sal0[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal0[3]$latch~combout\ = (GLOBAL(\Selector19~1clkctrl_outclk\) & (\Selector18~0_combout\)) # (!GLOBAL(\Selector19~1clkctrl_outclk\) & ((\Sal0[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datac => \Sal0[3]$latch~combout\,
	datad => \Selector19~1clkctrl_outclk\,
	combout => \Sal0[3]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N4
\Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\is_digit~input_o\ & (\digits[0]~input_o\ & \state.D1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_digit~input_o\,
	datac => \digits[0]~input_o\,
	datad => \state.D1~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X23_Y38_N14
\Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\state.D3~q\ & (((!\is_oper~input_o\ & !\is_digit~input_o\)) # (!\state.D2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_oper~input_o\,
	datab => \is_digit~input_o\,
	datac => \state.D2~q\,
	datad => \state.D3~q\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X23_Y38_N10
\Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\) # ((!\is_digit~input_o\ & (\Equal0~0_combout\ & !\state.D3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_digit~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Selector14~0_combout\,
	datad => \state.D3~q\,
	combout => \Selector14~1_combout\);

-- Location: CLKCTRL_G0
\Selector14~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector14~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector14~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y38_N20
\Sal1[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal1[0]$latch~combout\ = (GLOBAL(\Selector14~1clkctrl_outclk\) & (\Selector10~0_combout\)) # (!GLOBAL(\Selector14~1clkctrl_outclk\) & ((\Sal1[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~0_combout\,
	datac => \Sal1[0]$latch~combout\,
	datad => \Selector14~1clkctrl_outclk\,
	combout => \Sal1[0]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N30
\Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\digits[1]~input_o\ & (\is_digit~input_o\ & \state.D1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digits[1]~input_o\,
	datac => \is_digit~input_o\,
	datad => \state.D1~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X27_Y38_N28
\Sal1[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal1[1]$latch~combout\ = (GLOBAL(\Selector14~1clkctrl_outclk\) & (\Selector11~0_combout\)) # (!GLOBAL(\Selector14~1clkctrl_outclk\) & ((\Sal1[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datac => \Selector14~1clkctrl_outclk\,
	datad => \Sal1[1]$latch~combout\,
	combout => \Sal1[1]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N8
\Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\is_digit~input_o\ & (\state.D1~q\ & \digits[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_digit~input_o\,
	datac => \state.D1~q\,
	datad => \digits[2]~input_o\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X24_Y38_N26
\Sal1[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal1[2]$latch~combout\ = (GLOBAL(\Selector14~1clkctrl_outclk\) & ((\Selector12~0_combout\))) # (!GLOBAL(\Selector14~1clkctrl_outclk\) & (\Sal1[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sal1[2]$latch~combout\,
	datac => \Selector12~0_combout\,
	datad => \Selector14~1clkctrl_outclk\,
	combout => \Sal1[2]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N14
\Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\is_digit~input_o\ & (\digits[3]~input_o\ & \state.D1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_digit~input_o\,
	datab => \digits[3]~input_o\,
	datad => \state.D1~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X25_Y38_N8
\Sal1[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal1[3]$latch~combout\ = (GLOBAL(\Selector14~1clkctrl_outclk\) & (\Selector13~0_combout\)) # (!GLOBAL(\Selector14~1clkctrl_outclk\) & ((\Sal1[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector13~0_combout\,
	datac => \Sal1[3]$latch~combout\,
	datad => \Selector14~1clkctrl_outclk\,
	combout => \Sal1[3]$latch~combout\);

-- Location: LCCOMB_X25_Y38_N4
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\is_digit~input_o\ & (\digits[0]~input_o\ & \state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \is_digit~input_o\,
	datac => \digits[0]~input_o\,
	datad => \state.D2~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X23_Y38_N0
\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ((\Equal0~0_combout\ & \is_oper~input_o\)) # (!\state.D3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \is_oper~input_o\,
	datad => \state.D3~q\,
	combout => \Selector9~0_combout\);

-- Location: CLKCTRL_G3
\Selector9~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X25_Y38_N18
\Sal2[0]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal2[0]$latch~combout\ = (GLOBAL(\Selector9~0clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector9~0clkctrl_outclk\) & (\Sal2[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sal2[0]$latch~combout\,
	datac => \Selector7~0_combout\,
	datad => \Selector9~0clkctrl_outclk\,
	combout => \Sal2[0]$latch~combout\);

-- Location: LCCOMB_X25_Y38_N22
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.D2~q\ & (\digits[1]~input_o\ & \is_digit~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.D2~q\,
	datab => \digits[1]~input_o\,
	datac => \is_digit~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X30_Y38_N28
\Sal2[1]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal2[1]$latch~combout\ = (GLOBAL(\Selector9~0clkctrl_outclk\) & ((\Selector2~0_combout\))) # (!GLOBAL(\Selector9~0clkctrl_outclk\) & (\Sal2[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sal2[1]$latch~combout\,
	datac => \Selector2~0_combout\,
	datad => \Selector9~0clkctrl_outclk\,
	combout => \Sal2[1]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N28
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\is_digit~input_o\ & (\state.D2~q\ & \digits[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \is_digit~input_o\,
	datac => \state.D2~q\,
	datad => \digits[2]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X24_Y38_N24
\Sal2[2]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal2[2]$latch~combout\ = (GLOBAL(\Selector9~0clkctrl_outclk\) & ((\Selector1~0_combout\))) # (!GLOBAL(\Selector9~0clkctrl_outclk\) & (\Sal2[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sal2[2]$latch~combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector9~0clkctrl_outclk\,
	combout => \Sal2[2]$latch~combout\);

-- Location: LCCOMB_X24_Y38_N10
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\digits[3]~input_o\ & (\is_digit~input_o\ & \state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digits[3]~input_o\,
	datac => \is_digit~input_o\,
	datad => \state.D2~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X27_Y38_N14
\Sal2[3]$latch\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Sal2[3]$latch~combout\ = (GLOBAL(\Selector9~0clkctrl_outclk\) & (\Selector0~0_combout\)) # (!GLOBAL(\Selector9~0clkctrl_outclk\) & ((\Sal2[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datac => \Sal2[3]$latch~combout\,
	datad => \Selector9~0clkctrl_outclk\,
	combout => \Sal2[3]$latch~combout\);

-- Location: LCCOMB_X23_Y38_N12
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.D3~q\) # ((!\is_digit~input_o\ & ((\state.D2~q\) # (\state.D1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.D2~q\,
	datab => \state.D1~q\,
	datac => \state.D3~q\,
	datad => \is_digit~input_o\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X23_Y38_N4
\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (!\Equal0~0_combout\ & (\is_oper~input_o\ & \Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \is_oper~input_o\,
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

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

ww_Sal0(0) <= \Sal0[0]~output_o\;

ww_Sal0(1) <= \Sal0[1]~output_o\;

ww_Sal0(2) <= \Sal0[2]~output_o\;

ww_Sal0(3) <= \Sal0[3]~output_o\;

ww_Sal1(0) <= \Sal1[0]~output_o\;

ww_Sal1(1) <= \Sal1[1]~output_o\;

ww_Sal1(2) <= \Sal1[2]~output_o\;

ww_Sal1(3) <= \Sal1[3]~output_o\;

ww_Sal2(0) <= \Sal2[0]~output_o\;

ww_Sal2(1) <= \Sal2[1]~output_o\;

ww_Sal2(2) <= \Sal2[2]~output_o\;

ww_Sal2(3) <= \Sal2[3]~output_o\;

ww_save_o <= \save_o~output_o\;
END structure;


