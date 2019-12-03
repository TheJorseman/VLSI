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

-- DATE "12/02/2019 19:24:16"

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

ENTITY 	Cafetera IS
    PORT (
	fila : IN std_logic_vector(3 DOWNTO 0);
	clk50MHz : IN std_logic;
	columna : BUFFER std_logic_vector(3 DOWNTO 0);
	start : IN std_logic;
	f1 : IN std_logic;
	f2 : IN std_logic;
	siete_seg_u : BUFFER std_logic_vector(6 DOWNTO 0);
	siete_seg_d : BUFFER std_logic_vector(6 DOWNTO 0);
	siete_seg_c : BUFFER std_logic_vector(6 DOWNTO 0);
	siete_seg_t : BUFFER std_logic_vector(6 DOWNTO 0);
	reset : IN std_logic;
	data : BUFFER std_logic_vector(3 DOWNTO 0);
	debug_d : BUFFER std_logic_vector(3 DOWNTO 0);
	bomba_1 : BUFFER std_logic;
	bomba_2 : BUFFER std_logic
	);
END Cafetera;

-- Design Ports Information
-- columna[0]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[1]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columna[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_u[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_d[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_c[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- siete_seg_t[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_d[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_d[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_d[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_d[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bomba_1	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bomba_2	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[2]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fila[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Cafetera IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_fila : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_columna : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_siete_seg_u : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_siete_seg_d : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_siete_seg_c : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_siete_seg_t : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bomba_1 : std_logic;
SIGNAL ww_bomba_2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \D|Selector21~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|Selector19~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|Selector14~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \T|reloj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|Selector9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \T|dato~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \start~input_o\ : std_logic;
SIGNAL \f1~input_o\ : std_logic;
SIGNAL \f2~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \columna[0]~output_o\ : std_logic;
SIGNAL \columna[1]~output_o\ : std_logic;
SIGNAL \columna[2]~output_o\ : std_logic;
SIGNAL \columna[3]~output_o\ : std_logic;
SIGNAL \siete_seg_u[0]~output_o\ : std_logic;
SIGNAL \siete_seg_u[1]~output_o\ : std_logic;
SIGNAL \siete_seg_u[2]~output_o\ : std_logic;
SIGNAL \siete_seg_u[3]~output_o\ : std_logic;
SIGNAL \siete_seg_u[4]~output_o\ : std_logic;
SIGNAL \siete_seg_u[5]~output_o\ : std_logic;
SIGNAL \siete_seg_u[6]~output_o\ : std_logic;
SIGNAL \siete_seg_d[0]~output_o\ : std_logic;
SIGNAL \siete_seg_d[1]~output_o\ : std_logic;
SIGNAL \siete_seg_d[2]~output_o\ : std_logic;
SIGNAL \siete_seg_d[3]~output_o\ : std_logic;
SIGNAL \siete_seg_d[4]~output_o\ : std_logic;
SIGNAL \siete_seg_d[5]~output_o\ : std_logic;
SIGNAL \siete_seg_d[6]~output_o\ : std_logic;
SIGNAL \siete_seg_c[0]~output_o\ : std_logic;
SIGNAL \siete_seg_c[1]~output_o\ : std_logic;
SIGNAL \siete_seg_c[2]~output_o\ : std_logic;
SIGNAL \siete_seg_c[3]~output_o\ : std_logic;
SIGNAL \siete_seg_c[4]~output_o\ : std_logic;
SIGNAL \siete_seg_c[5]~output_o\ : std_logic;
SIGNAL \siete_seg_c[6]~output_o\ : std_logic;
SIGNAL \siete_seg_t[0]~output_o\ : std_logic;
SIGNAL \siete_seg_t[1]~output_o\ : std_logic;
SIGNAL \siete_seg_t[2]~output_o\ : std_logic;
SIGNAL \siete_seg_t[3]~output_o\ : std_logic;
SIGNAL \siete_seg_t[4]~output_o\ : std_logic;
SIGNAL \siete_seg_t[5]~output_o\ : std_logic;
SIGNAL \siete_seg_t[6]~output_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \debug_d[0]~output_o\ : std_logic;
SIGNAL \debug_d[1]~output_o\ : std_logic;
SIGNAL \debug_d[2]~output_o\ : std_logic;
SIGNAL \debug_d[3]~output_o\ : std_logic;
SIGNAL \bomba_1~output_o\ : std_logic;
SIGNAL \bomba_2~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \T|reloj~0_combout\ : std_logic;
SIGNAL \T|reloj~feeder_combout\ : std_logic;
SIGNAL \T|reloj~q\ : std_logic;
SIGNAL \T|reloj~clkctrl_outclk\ : std_logic;
SIGNAL \T|Add0~0_combout\ : std_logic;
SIGNAL \T|conectornum[0]~feeder_combout\ : std_logic;
SIGNAL \T|Add0~1\ : std_logic;
SIGNAL \T|Add0~2_combout\ : std_logic;
SIGNAL \T|Add0~3\ : std_logic;
SIGNAL \T|Add0~4_combout\ : std_logic;
SIGNAL \T|conectornum~0_combout\ : std_logic;
SIGNAL \T|Add0~5\ : std_logic;
SIGNAL \T|Add0~6_combout\ : std_logic;
SIGNAL \T|Add0~7\ : std_logic;
SIGNAL \T|Add0~8_combout\ : std_logic;
SIGNAL \T|Add0~9\ : std_logic;
SIGNAL \T|Add0~10_combout\ : std_logic;
SIGNAL \T|Add0~11\ : std_logic;
SIGNAL \T|Add0~12_combout\ : std_logic;
SIGNAL \T|Add0~13\ : std_logic;
SIGNAL \T|Add0~14_combout\ : std_logic;
SIGNAL \T|Add0~15\ : std_logic;
SIGNAL \T|Add0~16_combout\ : std_logic;
SIGNAL \T|Add0~17\ : std_logic;
SIGNAL \T|Add0~18_combout\ : std_logic;
SIGNAL \T|Add0~19\ : std_logic;
SIGNAL \T|Add0~20_combout\ : std_logic;
SIGNAL \T|Add0~21\ : std_logic;
SIGNAL \T|Add0~22_combout\ : std_logic;
SIGNAL \T|Add0~23\ : std_logic;
SIGNAL \T|Add0~24_combout\ : std_logic;
SIGNAL \T|Add0~25\ : std_logic;
SIGNAL \T|Add0~26_combout\ : std_logic;
SIGNAL \T|Add0~27\ : std_logic;
SIGNAL \T|Add0~28_combout\ : std_logic;
SIGNAL \T|conectornum[14]~feeder_combout\ : std_logic;
SIGNAL \T|Add0~29\ : std_logic;
SIGNAL \T|Add0~30_combout\ : std_logic;
SIGNAL \T|Add0~31\ : std_logic;
SIGNAL \T|Add0~32_combout\ : std_logic;
SIGNAL \T|Add0~33\ : std_logic;
SIGNAL \T|Add0~34_combout\ : std_logic;
SIGNAL \T|Add0~35\ : std_logic;
SIGNAL \T|Add0~36_combout\ : std_logic;
SIGNAL \T|Add0~37\ : std_logic;
SIGNAL \T|Add0~38_combout\ : std_logic;
SIGNAL \T|Add0~39\ : std_logic;
SIGNAL \T|Add0~40_combout\ : std_logic;
SIGNAL \T|Add0~41\ : std_logic;
SIGNAL \T|Add0~42_combout\ : std_logic;
SIGNAL \T|Equal6~5_combout\ : std_logic;
SIGNAL \T|Add0~43\ : std_logic;
SIGNAL \T|Add0~44_combout\ : std_logic;
SIGNAL \T|Add0~45\ : std_logic;
SIGNAL \T|Add0~46_combout\ : std_logic;
SIGNAL \T|Add0~47\ : std_logic;
SIGNAL \T|Add0~48_combout\ : std_logic;
SIGNAL \T|Add0~49\ : std_logic;
SIGNAL \T|Add0~50_combout\ : std_logic;
SIGNAL \T|Equal6~6_combout\ : std_logic;
SIGNAL \T|Add0~51\ : std_logic;
SIGNAL \T|Add0~52_combout\ : std_logic;
SIGNAL \T|Add0~53\ : std_logic;
SIGNAL \T|Add0~54_combout\ : std_logic;
SIGNAL \T|Add0~55\ : std_logic;
SIGNAL \T|Add0~56_combout\ : std_logic;
SIGNAL \T|Add0~57\ : std_logic;
SIGNAL \T|Add0~58_combout\ : std_logic;
SIGNAL \T|Add0~59\ : std_logic;
SIGNAL \T|Add0~60_combout\ : std_logic;
SIGNAL \T|Add0~61\ : std_logic;
SIGNAL \T|Add0~62_combout\ : std_logic;
SIGNAL \T|Equal6~7_combout\ : std_logic;
SIGNAL \T|Equal6~8_combout\ : std_logic;
SIGNAL \T|Equal6~0_combout\ : std_logic;
SIGNAL \T|Equal6~3_combout\ : std_logic;
SIGNAL \T|Equal6~1_combout\ : std_logic;
SIGNAL \T|Equal6~2_combout\ : std_logic;
SIGNAL \T|Equal6~4_combout\ : std_logic;
SIGNAL \T|Equal6~9_combout\ : std_logic;
SIGNAL \T|Equal9~0_combout\ : std_logic;
SIGNAL \T|Equal6~10_combout\ : std_logic;
SIGNAL \T|Equal7~0_combout\ : std_logic;
SIGNAL \T|Equal8~0_combout\ : std_logic;
SIGNAL \fila[1]~input_o\ : std_logic;
SIGNAL \fila[2]~input_o\ : std_logic;
SIGNAL \fila[3]~input_o\ : std_logic;
SIGNAL \fila[0]~input_o\ : std_logic;
SIGNAL \T|Equal1~0_combout\ : std_logic;
SIGNAL \T|Equal3~0_combout\ : std_logic;
SIGNAL \T|Selector4~0_combout\ : std_logic;
SIGNAL \T|Selector4~1_combout\ : std_logic;
SIGNAL \T|Selector4~2_combout\ : std_logic;
SIGNAL \T|data~0_combout\ : std_logic;
SIGNAL \T|Equal2~0_combout\ : std_logic;
SIGNAL \T|Selector4~3_combout\ : std_logic;
SIGNAL \T|Selector4~4_combout\ : std_logic;
SIGNAL \T|Equal4~0_combout\ : std_logic;
SIGNAL \T|Equal5~0_combout\ : std_logic;
SIGNAL \T|Selector4~5_combout\ : std_logic;
SIGNAL \T|Selector4~6_combout\ : std_logic;
SIGNAL \T|Selector4~7_combout\ : std_logic;
SIGNAL \T|Selector1~0_combout\ : std_logic;
SIGNAL \T|Selector1~1_combout\ : std_logic;
SIGNAL \T|Selector1~2_combout\ : std_logic;
SIGNAL \T|data~1_combout\ : std_logic;
SIGNAL \T|Selector1~3_combout\ : std_logic;
SIGNAL \T|Selector1~4_combout\ : std_logic;
SIGNAL \T|Selector1~5_combout\ : std_logic;
SIGNAL \T|is_digit~q\ : std_logic;
SIGNAL \T|dato~0_combout\ : std_logic;
SIGNAL \T|dato~1_combout\ : std_logic;
SIGNAL \T|dato~2_combout\ : std_logic;
SIGNAL \T|dato~q\ : std_logic;
SIGNAL \T|dato~clkctrl_outclk\ : std_logic;
SIGNAL \T|Selector3~4_combout\ : std_logic;
SIGNAL \T|Selector3~2_combout\ : std_logic;
SIGNAL \T|Selector3~3_combout\ : std_logic;
SIGNAL \T|Selector5~0_combout\ : std_logic;
SIGNAL \T|Selector3~0_combout\ : std_logic;
SIGNAL \T|Selector3~1_combout\ : std_logic;
SIGNAL \T|WideNor0~0_combout\ : std_logic;
SIGNAL \T|Selector3~5_combout\ : std_logic;
SIGNAL \T|Selector3~6_combout\ : std_logic;
SIGNAL \T|Selector3~7_combout\ : std_logic;
SIGNAL \T|Selector5~6_combout\ : std_logic;
SIGNAL \T|Selector5~7_combout\ : std_logic;
SIGNAL \T|Selector5~1_combout\ : std_logic;
SIGNAL \T|Selector5~2_combout\ : std_logic;
SIGNAL \T|Selector5~4_combout\ : std_logic;
SIGNAL \T|Selector5~3_combout\ : std_logic;
SIGNAL \T|Selector5~5_combout\ : std_logic;
SIGNAL \T|Selector5~8_combout\ : std_logic;
SIGNAL \T|Selector2~0_combout\ : std_logic;
SIGNAL \T|Selector2~1_combout\ : std_logic;
SIGNAL \T|Selector2~2_combout\ : std_logic;
SIGNAL \T|Selector2~4_combout\ : std_logic;
SIGNAL \T|Selector2~5_combout\ : std_logic;
SIGNAL \T|Selector2~3_combout\ : std_logic;
SIGNAL \D|Equal1~0_combout\ : std_logic;
SIGNAL \T|is_oper~0_combout\ : std_logic;
SIGNAL \T|Selector6~0_combout\ : std_logic;
SIGNAL \T|Selector6~1_combout\ : std_logic;
SIGNAL \T|is_oper~q\ : std_logic;
SIGNAL \D|Selector4~0_combout\ : std_logic;
SIGNAL \D|Selector4~2_combout\ : std_logic;
SIGNAL \D|Equal2~0_combout\ : std_logic;
SIGNAL \D|Selector4~1_combout\ : std_logic;
SIGNAL \D|Selector5~0_combout\ : std_logic;
SIGNAL \D|Selector5~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \D|state.D3~q\ : std_logic;
SIGNAL \D|Selector4~3_combout\ : std_logic;
SIGNAL \D|state.D2~q\ : std_logic;
SIGNAL \D|Selector3~0_combout\ : std_logic;
SIGNAL \D|Selector3~1_combout\ : std_logic;
SIGNAL \D|state.D1~q\ : std_logic;
SIGNAL \D|Selector2~1_combout\ : std_logic;
SIGNAL \D|Selector2~0_combout\ : std_logic;
SIGNAL \D|Selector2~2_combout\ : std_logic;
SIGNAL \D|state.Idle~feeder_combout\ : std_logic;
SIGNAL \D|state.Idle~q\ : std_logic;
SIGNAL \D|Selector16~0_combout\ : std_logic;
SIGNAL \D|Selector19~0_combout\ : std_logic;
SIGNAL \D|Selector19~1_combout\ : std_logic;
SIGNAL \D|Selector19~1clkctrl_outclk\ : std_logic;
SIGNAL \D|Selector17~0_combout\ : std_logic;
SIGNAL \D|Selector18~0_combout\ : std_logic;
SIGNAL \D|Selector15~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \D|Selector14~0_combout\ : std_logic;
SIGNAL \D|Selector14~1_combout\ : std_logic;
SIGNAL \D|Selector14~1clkctrl_outclk\ : std_logic;
SIGNAL \D|Selector13~0_combout\ : std_logic;
SIGNAL \D|Selector10~0_combout\ : std_logic;
SIGNAL \D|Selector12~0_combout\ : std_logic;
SIGNAL \D|Selector11~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \D|Selector8~0_combout\ : std_logic;
SIGNAL \D|Selector9~0_combout\ : std_logic;
SIGNAL \D|Selector9~0clkctrl_outclk\ : std_logic;
SIGNAL \D|Selector0~0_combout\ : std_logic;
SIGNAL \D|Selector1~0_combout\ : std_logic;
SIGNAL \D|Selector6~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \D|debug~0_combout\ : std_logic;
SIGNAL \D|Selector21~0_combout\ : std_logic;
SIGNAL \D|Selector21~0clkctrl_outclk\ : std_logic;
SIGNAL \D|debug~1_combout\ : std_logic;
SIGNAL \T|columna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|Sal0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \T|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \T|conectornum\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \D|Sal1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|Sal2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|debug\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_fila <= fila;
ww_clk50MHz <= clk50MHz;
columna <= ww_columna;
ww_start <= start;
ww_f1 <= f1;
ww_f2 <= f2;
siete_seg_u <= ww_siete_seg_u;
siete_seg_d <= ww_siete_seg_d;
siete_seg_c <= ww_siete_seg_c;
siete_seg_t <= ww_siete_seg_t;
ww_reset <= reset;
data <= ww_data;
debug_d <= ww_debug_d;
bomba_1 <= ww_bomba_1;
bomba_2 <= ww_bomba_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\D|Selector21~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|Selector21~0_combout\);

\D|Selector19~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|Selector19~1_combout\);

\D|Selector14~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|Selector14~1_combout\);

\T|reloj~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \T|reloj~q\);

\D|Selector9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \D|Selector9~0_combout\);

\T|dato~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \T|dato~q\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X18_Y0_N2
\columna[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|columna\(0),
	devoe => ww_devoe,
	o => \columna[0]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\columna[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|columna\(1),
	devoe => ww_devoe,
	o => \columna[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\columna[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|columna\(2),
	devoe => ww_devoe,
	o => \columna[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\columna[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|columna\(3),
	devoe => ww_devoe,
	o => \columna[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\siete_seg_u[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\siete_seg_u[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\siete_seg_u[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\siete_seg_u[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\siete_seg_u[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\siete_seg_u[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\siete_seg_u[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_u[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\siete_seg_d[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\siete_seg_d[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\siete_seg_d[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\siete_seg_d[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\siete_seg_d[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\siete_seg_d[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\siete_seg_d[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_d[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\siete_seg_c[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\siete_seg_c[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\siete_seg_c[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\siete_seg_c[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\siete_seg_c[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\siete_seg_c[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\siete_seg_c[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \siete_seg_c[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\siete_seg_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\siete_seg_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\siete_seg_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\siete_seg_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\siete_seg_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\siete_seg_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\siete_seg_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \siete_seg_t[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|data\(0),
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|data\(1),
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|data\(2),
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \T|data\(3),
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\debug_d[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D|debug\(0),
	devoe => ww_devoe,
	o => \debug_d[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\debug_d[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D|debug\(1),
	devoe => ww_devoe,
	o => \debug_d[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\debug_d[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_d[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\debug_d[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D|debug\(3),
	devoe => ww_devoe,
	o => \debug_d[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\bomba_1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bomba_1~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\bomba_2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \bomba_2~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: LCCOMB_X58_Y43_N14
\T|reloj~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|reloj~0_combout\ = !\T|reloj~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \T|reloj~q\,
	combout => \T|reloj~0_combout\);

-- Location: LCCOMB_X58_Y43_N6
\T|reloj~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|reloj~feeder_combout\ = \T|reloj~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T|reloj~0_combout\,
	combout => \T|reloj~feeder_combout\);

-- Location: FF_X58_Y43_N7
\T|reloj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~input_o\,
	d => \T|reloj~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|reloj~q\);

-- Location: CLKCTRL_G9
\T|reloj~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \T|reloj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \T|reloj~clkctrl_outclk\);

-- Location: LCCOMB_X57_Y45_N0
\T|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~0_combout\ = \T|conectornum\(0) $ (VCC)
-- \T|Add0~1\ = CARRY(\T|conectornum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(0),
	datad => VCC,
	combout => \T|Add0~0_combout\,
	cout => \T|Add0~1\);

-- Location: LCCOMB_X58_Y45_N12
\T|conectornum[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|conectornum[0]~feeder_combout\ = \T|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T|Add0~0_combout\,
	combout => \T|conectornum[0]~feeder_combout\);

-- Location: FF_X58_Y45_N13
\T|conectornum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|conectornum[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(0));

-- Location: LCCOMB_X57_Y45_N2
\T|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~2_combout\ = (\T|conectornum\(1) & (!\T|Add0~1\)) # (!\T|conectornum\(1) & ((\T|Add0~1\) # (GND)))
-- \T|Add0~3\ = CARRY((!\T|Add0~1\) # (!\T|conectornum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(1),
	datad => VCC,
	cin => \T|Add0~1\,
	combout => \T|Add0~2_combout\,
	cout => \T|Add0~3\);

-- Location: FF_X57_Y45_N3
\T|conectornum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(1));

-- Location: LCCOMB_X57_Y45_N4
\T|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~4_combout\ = (\T|conectornum\(2) & (\T|Add0~3\ $ (GND))) # (!\T|conectornum\(2) & (!\T|Add0~3\ & VCC))
-- \T|Add0~5\ = CARRY((\T|conectornum\(2) & !\T|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(2),
	datad => VCC,
	cin => \T|Add0~3\,
	combout => \T|Add0~4_combout\,
	cout => \T|Add0~5\);

-- Location: LCCOMB_X58_Y45_N28
\T|conectornum~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|conectornum~0_combout\ = (\T|Add0~4_combout\ & (((!\T|Equal6~9_combout\) # (!\T|conectornum\(0))) # (!\T|conectornum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(1),
	datab => \T|conectornum\(0),
	datac => \T|Add0~4_combout\,
	datad => \T|Equal6~9_combout\,
	combout => \T|conectornum~0_combout\);

-- Location: FF_X58_Y44_N23
\T|conectornum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|conectornum~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(2));

-- Location: LCCOMB_X57_Y45_N6
\T|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~6_combout\ = (\T|conectornum\(3) & (!\T|Add0~5\)) # (!\T|conectornum\(3) & ((\T|Add0~5\) # (GND)))
-- \T|Add0~7\ = CARRY((!\T|Add0~5\) # (!\T|conectornum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(3),
	datad => VCC,
	cin => \T|Add0~5\,
	combout => \T|Add0~6_combout\,
	cout => \T|Add0~7\);

-- Location: FF_X57_Y45_N7
\T|conectornum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(3));

-- Location: LCCOMB_X57_Y45_N8
\T|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~8_combout\ = (\T|conectornum\(4) & (\T|Add0~7\ $ (GND))) # (!\T|conectornum\(4) & (!\T|Add0~7\ & VCC))
-- \T|Add0~9\ = CARRY((\T|conectornum\(4) & !\T|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(4),
	datad => VCC,
	cin => \T|Add0~7\,
	combout => \T|Add0~8_combout\,
	cout => \T|Add0~9\);

-- Location: FF_X57_Y45_N9
\T|conectornum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(4));

-- Location: LCCOMB_X57_Y45_N10
\T|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~10_combout\ = (\T|conectornum\(5) & (!\T|Add0~9\)) # (!\T|conectornum\(5) & ((\T|Add0~9\) # (GND)))
-- \T|Add0~11\ = CARRY((!\T|Add0~9\) # (!\T|conectornum\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(5),
	datad => VCC,
	cin => \T|Add0~9\,
	combout => \T|Add0~10_combout\,
	cout => \T|Add0~11\);

-- Location: FF_X58_Y44_N5
\T|conectornum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(5));

-- Location: LCCOMB_X57_Y45_N12
\T|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~12_combout\ = (\T|conectornum\(6) & (\T|Add0~11\ $ (GND))) # (!\T|conectornum\(6) & (!\T|Add0~11\ & VCC))
-- \T|Add0~13\ = CARRY((\T|conectornum\(6) & !\T|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(6),
	datad => VCC,
	cin => \T|Add0~11\,
	combout => \T|Add0~12_combout\,
	cout => \T|Add0~13\);

-- Location: FF_X57_Y45_N13
\T|conectornum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(6));

-- Location: LCCOMB_X57_Y45_N14
\T|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~14_combout\ = (\T|conectornum\(7) & (!\T|Add0~13\)) # (!\T|conectornum\(7) & ((\T|Add0~13\) # (GND)))
-- \T|Add0~15\ = CARRY((!\T|Add0~13\) # (!\T|conectornum\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(7),
	datad => VCC,
	cin => \T|Add0~13\,
	combout => \T|Add0~14_combout\,
	cout => \T|Add0~15\);

-- Location: FF_X57_Y45_N15
\T|conectornum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(7));

-- Location: LCCOMB_X57_Y45_N16
\T|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~16_combout\ = (\T|conectornum\(8) & (\T|Add0~15\ $ (GND))) # (!\T|conectornum\(8) & (!\T|Add0~15\ & VCC))
-- \T|Add0~17\ = CARRY((\T|conectornum\(8) & !\T|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(8),
	datad => VCC,
	cin => \T|Add0~15\,
	combout => \T|Add0~16_combout\,
	cout => \T|Add0~17\);

-- Location: FF_X58_Y44_N31
\T|conectornum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Add0~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(8));

-- Location: LCCOMB_X57_Y45_N18
\T|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~18_combout\ = (\T|conectornum\(9) & (!\T|Add0~17\)) # (!\T|conectornum\(9) & ((\T|Add0~17\) # (GND)))
-- \T|Add0~19\ = CARRY((!\T|Add0~17\) # (!\T|conectornum\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(9),
	datad => VCC,
	cin => \T|Add0~17\,
	combout => \T|Add0~18_combout\,
	cout => \T|Add0~19\);

-- Location: FF_X57_Y45_N19
\T|conectornum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(9));

-- Location: LCCOMB_X57_Y45_N20
\T|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~20_combout\ = (\T|conectornum\(10) & (\T|Add0~19\ $ (GND))) # (!\T|conectornum\(10) & (!\T|Add0~19\ & VCC))
-- \T|Add0~21\ = CARRY((\T|conectornum\(10) & !\T|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(10),
	datad => VCC,
	cin => \T|Add0~19\,
	combout => \T|Add0~20_combout\,
	cout => \T|Add0~21\);

-- Location: FF_X57_Y45_N21
\T|conectornum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(10));

-- Location: LCCOMB_X57_Y45_N22
\T|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~22_combout\ = (\T|conectornum\(11) & (!\T|Add0~21\)) # (!\T|conectornum\(11) & ((\T|Add0~21\) # (GND)))
-- \T|Add0~23\ = CARRY((!\T|Add0~21\) # (!\T|conectornum\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(11),
	datad => VCC,
	cin => \T|Add0~21\,
	combout => \T|Add0~22_combout\,
	cout => \T|Add0~23\);

-- Location: FF_X58_Y44_N1
\T|conectornum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Add0~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(11));

-- Location: LCCOMB_X57_Y45_N24
\T|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~24_combout\ = (\T|conectornum\(12) & (\T|Add0~23\ $ (GND))) # (!\T|conectornum\(12) & (!\T|Add0~23\ & VCC))
-- \T|Add0~25\ = CARRY((\T|conectornum\(12) & !\T|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(12),
	datad => VCC,
	cin => \T|Add0~23\,
	combout => \T|Add0~24_combout\,
	cout => \T|Add0~25\);

-- Location: FF_X58_Y44_N11
\T|conectornum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Add0~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(12));

-- Location: LCCOMB_X57_Y45_N26
\T|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~26_combout\ = (\T|conectornum\(13) & (!\T|Add0~25\)) # (!\T|conectornum\(13) & ((\T|Add0~25\) # (GND)))
-- \T|Add0~27\ = CARRY((!\T|Add0~25\) # (!\T|conectornum\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(13),
	datad => VCC,
	cin => \T|Add0~25\,
	combout => \T|Add0~26_combout\,
	cout => \T|Add0~27\);

-- Location: FF_X57_Y45_N27
\T|conectornum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(13));

-- Location: LCCOMB_X57_Y45_N28
\T|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~28_combout\ = (\T|conectornum\(14) & (\T|Add0~27\ $ (GND))) # (!\T|conectornum\(14) & (!\T|Add0~27\ & VCC))
-- \T|Add0~29\ = CARRY((\T|conectornum\(14) & !\T|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(14),
	datad => VCC,
	cin => \T|Add0~27\,
	combout => \T|Add0~28_combout\,
	cout => \T|Add0~29\);

-- Location: LCCOMB_X56_Y44_N4
\T|conectornum[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|conectornum[14]~feeder_combout\ = \T|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T|Add0~28_combout\,
	combout => \T|conectornum[14]~feeder_combout\);

-- Location: FF_X56_Y44_N5
\T|conectornum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|conectornum[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(14));

-- Location: LCCOMB_X57_Y45_N30
\T|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~30_combout\ = (\T|conectornum\(15) & (!\T|Add0~29\)) # (!\T|conectornum\(15) & ((\T|Add0~29\) # (GND)))
-- \T|Add0~31\ = CARRY((!\T|Add0~29\) # (!\T|conectornum\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(15),
	datad => VCC,
	cin => \T|Add0~29\,
	combout => \T|Add0~30_combout\,
	cout => \T|Add0~31\);

-- Location: FF_X58_Y44_N17
\T|conectornum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Add0~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(15));

-- Location: LCCOMB_X57_Y44_N0
\T|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~32_combout\ = (\T|conectornum\(16) & (\T|Add0~31\ $ (GND))) # (!\T|conectornum\(16) & (!\T|Add0~31\ & VCC))
-- \T|Add0~33\ = CARRY((\T|conectornum\(16) & !\T|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(16),
	datad => VCC,
	cin => \T|Add0~31\,
	combout => \T|Add0~32_combout\,
	cout => \T|Add0~33\);

-- Location: FF_X57_Y44_N1
\T|conectornum[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(16));

-- Location: LCCOMB_X57_Y44_N2
\T|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~34_combout\ = (\T|conectornum\(17) & (!\T|Add0~33\)) # (!\T|conectornum\(17) & ((\T|Add0~33\) # (GND)))
-- \T|Add0~35\ = CARRY((!\T|Add0~33\) # (!\T|conectornum\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(17),
	datad => VCC,
	cin => \T|Add0~33\,
	combout => \T|Add0~34_combout\,
	cout => \T|Add0~35\);

-- Location: FF_X57_Y44_N3
\T|conectornum[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(17));

-- Location: LCCOMB_X57_Y44_N4
\T|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~36_combout\ = (\T|conectornum\(18) & (\T|Add0~35\ $ (GND))) # (!\T|conectornum\(18) & (!\T|Add0~35\ & VCC))
-- \T|Add0~37\ = CARRY((\T|conectornum\(18) & !\T|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(18),
	datad => VCC,
	cin => \T|Add0~35\,
	combout => \T|Add0~36_combout\,
	cout => \T|Add0~37\);

-- Location: FF_X57_Y44_N5
\T|conectornum[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(18));

-- Location: LCCOMB_X57_Y44_N6
\T|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~38_combout\ = (\T|conectornum\(19) & (!\T|Add0~37\)) # (!\T|conectornum\(19) & ((\T|Add0~37\) # (GND)))
-- \T|Add0~39\ = CARRY((!\T|Add0~37\) # (!\T|conectornum\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(19),
	datad => VCC,
	cin => \T|Add0~37\,
	combout => \T|Add0~38_combout\,
	cout => \T|Add0~39\);

-- Location: FF_X57_Y44_N7
\T|conectornum[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(19));

-- Location: LCCOMB_X57_Y44_N8
\T|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~40_combout\ = (\T|conectornum\(20) & (\T|Add0~39\ $ (GND))) # (!\T|conectornum\(20) & (!\T|Add0~39\ & VCC))
-- \T|Add0~41\ = CARRY((\T|conectornum\(20) & !\T|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(20),
	datad => VCC,
	cin => \T|Add0~39\,
	combout => \T|Add0~40_combout\,
	cout => \T|Add0~41\);

-- Location: FF_X57_Y44_N9
\T|conectornum[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(20));

-- Location: LCCOMB_X57_Y44_N10
\T|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~42_combout\ = (\T|conectornum\(21) & (!\T|Add0~41\)) # (!\T|conectornum\(21) & ((\T|Add0~41\) # (GND)))
-- \T|Add0~43\ = CARRY((!\T|Add0~41\) # (!\T|conectornum\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(21),
	datad => VCC,
	cin => \T|Add0~41\,
	combout => \T|Add0~42_combout\,
	cout => \T|Add0~43\);

-- Location: FF_X57_Y44_N11
\T|conectornum[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(21));

-- Location: LCCOMB_X56_Y44_N14
\T|Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~5_combout\ = (!\T|conectornum\(18) & (!\T|conectornum\(21) & (!\T|conectornum\(20) & !\T|conectornum\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(18),
	datab => \T|conectornum\(21),
	datac => \T|conectornum\(20),
	datad => \T|conectornum\(19),
	combout => \T|Equal6~5_combout\);

-- Location: LCCOMB_X57_Y44_N12
\T|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~44_combout\ = (\T|conectornum\(22) & (\T|Add0~43\ $ (GND))) # (!\T|conectornum\(22) & (!\T|Add0~43\ & VCC))
-- \T|Add0~45\ = CARRY((\T|conectornum\(22) & !\T|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(22),
	datad => VCC,
	cin => \T|Add0~43\,
	combout => \T|Add0~44_combout\,
	cout => \T|Add0~45\);

-- Location: FF_X57_Y44_N13
\T|conectornum[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(22));

-- Location: LCCOMB_X57_Y44_N14
\T|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~46_combout\ = (\T|conectornum\(23) & (!\T|Add0~45\)) # (!\T|conectornum\(23) & ((\T|Add0~45\) # (GND)))
-- \T|Add0~47\ = CARRY((!\T|Add0~45\) # (!\T|conectornum\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(23),
	datad => VCC,
	cin => \T|Add0~45\,
	combout => \T|Add0~46_combout\,
	cout => \T|Add0~47\);

-- Location: FF_X57_Y44_N15
\T|conectornum[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(23));

-- Location: LCCOMB_X57_Y44_N16
\T|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~48_combout\ = (\T|conectornum\(24) & (\T|Add0~47\ $ (GND))) # (!\T|conectornum\(24) & (!\T|Add0~47\ & VCC))
-- \T|Add0~49\ = CARRY((\T|conectornum\(24) & !\T|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(24),
	datad => VCC,
	cin => \T|Add0~47\,
	combout => \T|Add0~48_combout\,
	cout => \T|Add0~49\);

-- Location: FF_X57_Y44_N17
\T|conectornum[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(24));

-- Location: LCCOMB_X57_Y44_N18
\T|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~50_combout\ = (\T|conectornum\(25) & (!\T|Add0~49\)) # (!\T|conectornum\(25) & ((\T|Add0~49\) # (GND)))
-- \T|Add0~51\ = CARRY((!\T|Add0~49\) # (!\T|conectornum\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(25),
	datad => VCC,
	cin => \T|Add0~49\,
	combout => \T|Add0~50_combout\,
	cout => \T|Add0~51\);

-- Location: FF_X57_Y44_N19
\T|conectornum[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(25));

-- Location: LCCOMB_X58_Y44_N24
\T|Equal6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~6_combout\ = (!\T|conectornum\(23) & (!\T|conectornum\(25) & (!\T|conectornum\(24) & !\T|conectornum\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(23),
	datab => \T|conectornum\(25),
	datac => \T|conectornum\(24),
	datad => \T|conectornum\(22),
	combout => \T|Equal6~6_combout\);

-- Location: LCCOMB_X57_Y44_N20
\T|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~52_combout\ = (\T|conectornum\(26) & (\T|Add0~51\ $ (GND))) # (!\T|conectornum\(26) & (!\T|Add0~51\ & VCC))
-- \T|Add0~53\ = CARRY((\T|conectornum\(26) & !\T|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(26),
	datad => VCC,
	cin => \T|Add0~51\,
	combout => \T|Add0~52_combout\,
	cout => \T|Add0~53\);

-- Location: FF_X57_Y44_N21
\T|conectornum[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(26));

-- Location: LCCOMB_X57_Y44_N22
\T|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~54_combout\ = (\T|conectornum\(27) & (!\T|Add0~53\)) # (!\T|conectornum\(27) & ((\T|Add0~53\) # (GND)))
-- \T|Add0~55\ = CARRY((!\T|Add0~53\) # (!\T|conectornum\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(27),
	datad => VCC,
	cin => \T|Add0~53\,
	combout => \T|Add0~54_combout\,
	cout => \T|Add0~55\);

-- Location: FF_X57_Y44_N23
\T|conectornum[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(27));

-- Location: LCCOMB_X57_Y44_N24
\T|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~56_combout\ = (\T|conectornum\(28) & (\T|Add0~55\ $ (GND))) # (!\T|conectornum\(28) & (!\T|Add0~55\ & VCC))
-- \T|Add0~57\ = CARRY((\T|conectornum\(28) & !\T|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(28),
	datad => VCC,
	cin => \T|Add0~55\,
	combout => \T|Add0~56_combout\,
	cout => \T|Add0~57\);

-- Location: FF_X57_Y44_N25
\T|conectornum[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(28));

-- Location: LCCOMB_X57_Y44_N26
\T|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~58_combout\ = (\T|conectornum\(29) & (!\T|Add0~57\)) # (!\T|conectornum\(29) & ((\T|Add0~57\) # (GND)))
-- \T|Add0~59\ = CARRY((!\T|Add0~57\) # (!\T|conectornum\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(29),
	datad => VCC,
	cin => \T|Add0~57\,
	combout => \T|Add0~58_combout\,
	cout => \T|Add0~59\);

-- Location: FF_X57_Y44_N27
\T|conectornum[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(29));

-- Location: LCCOMB_X57_Y44_N28
\T|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~60_combout\ = (\T|conectornum\(30) & (\T|Add0~59\ $ (GND))) # (!\T|conectornum\(30) & (!\T|Add0~59\ & VCC))
-- \T|Add0~61\ = CARRY((\T|conectornum\(30) & !\T|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \T|conectornum\(30),
	datad => VCC,
	cin => \T|Add0~59\,
	combout => \T|Add0~60_combout\,
	cout => \T|Add0~61\);

-- Location: FF_X57_Y44_N29
\T|conectornum[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(30));

-- Location: LCCOMB_X57_Y44_N30
\T|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Add0~62_combout\ = \T|conectornum\(31) $ (\T|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(31),
	cin => \T|Add0~61\,
	combout => \T|Add0~62_combout\);

-- Location: FF_X57_Y44_N31
\T|conectornum[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|conectornum\(31));

-- Location: LCCOMB_X58_Y44_N18
\T|Equal6~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~7_combout\ = (!\T|conectornum\(29) & (!\T|conectornum\(26) & (!\T|conectornum\(28) & !\T|conectornum\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(29),
	datab => \T|conectornum\(26),
	datac => \T|conectornum\(28),
	datad => \T|conectornum\(27),
	combout => \T|Equal6~7_combout\);

-- Location: LCCOMB_X58_Y44_N4
\T|Equal6~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~8_combout\ = (!\T|conectornum\(30) & (!\T|conectornum\(31) & \T|Equal6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(30),
	datab => \T|conectornum\(31),
	datad => \T|Equal6~7_combout\,
	combout => \T|Equal6~8_combout\);

-- Location: LCCOMB_X58_Y44_N22
\T|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~0_combout\ = (!\T|conectornum\(4) & (!\T|conectornum\(5) & (!\T|conectornum\(2) & !\T|conectornum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(4),
	datab => \T|conectornum\(5),
	datac => \T|conectornum\(2),
	datad => \T|conectornum\(3),
	combout => \T|Equal6~0_combout\);

-- Location: LCCOMB_X58_Y44_N16
\T|Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~3_combout\ = (!\T|conectornum\(17) & (!\T|conectornum\(16) & (!\T|conectornum\(15) & !\T|conectornum\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(17),
	datab => \T|conectornum\(16),
	datac => \T|conectornum\(15),
	datad => \T|conectornum\(14),
	combout => \T|Equal6~3_combout\);

-- Location: LCCOMB_X58_Y44_N30
\T|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~1_combout\ = (!\T|conectornum\(6) & (!\T|conectornum\(7) & (!\T|conectornum\(8) & !\T|conectornum\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(6),
	datab => \T|conectornum\(7),
	datac => \T|conectornum\(8),
	datad => \T|conectornum\(9),
	combout => \T|Equal6~1_combout\);

-- Location: LCCOMB_X58_Y44_N10
\T|Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~2_combout\ = (!\T|conectornum\(10) & (!\T|conectornum\(11) & (!\T|conectornum\(12) & !\T|conectornum\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(10),
	datab => \T|conectornum\(11),
	datac => \T|conectornum\(12),
	datad => \T|conectornum\(13),
	combout => \T|Equal6~2_combout\);

-- Location: LCCOMB_X58_Y44_N2
\T|Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~4_combout\ = (\T|Equal6~0_combout\ & (\T|Equal6~3_combout\ & (\T|Equal6~1_combout\ & \T|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal6~0_combout\,
	datab => \T|Equal6~3_combout\,
	datac => \T|Equal6~1_combout\,
	datad => \T|Equal6~2_combout\,
	combout => \T|Equal6~4_combout\);

-- Location: LCCOMB_X58_Y44_N28
\T|Equal6~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~9_combout\ = (\T|Equal6~5_combout\ & (\T|Equal6~6_combout\ & (\T|Equal6~8_combout\ & \T|Equal6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal6~5_combout\,
	datab => \T|Equal6~6_combout\,
	datac => \T|Equal6~8_combout\,
	datad => \T|Equal6~4_combout\,
	combout => \T|Equal6~9_combout\);

-- Location: LCCOMB_X58_Y44_N0
\T|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal9~0_combout\ = (\T|conectornum\(1) & (\T|conectornum\(0) & \T|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(1),
	datab => \T|conectornum\(0),
	datad => \T|Equal6~9_combout\,
	combout => \T|Equal9~0_combout\);

-- Location: FF_X58_Y44_N13
\T|columna[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Equal9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|columna\(0));

-- Location: LCCOMB_X59_Y44_N10
\T|Equal6~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal6~10_combout\ = (!\T|conectornum\(0) & (!\T|conectornum\(1) & \T|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(0),
	datac => \T|conectornum\(1),
	datad => \T|Equal6~9_combout\,
	combout => \T|Equal6~10_combout\);

-- Location: FF_X59_Y44_N13
\T|columna[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|Equal6~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|columna\(1));

-- Location: LCCOMB_X58_Y44_N6
\T|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal7~0_combout\ = (!\T|conectornum\(1) & (\T|conectornum\(0) & \T|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(1),
	datab => \T|conectornum\(0),
	datad => \T|Equal6~9_combout\,
	combout => \T|Equal7~0_combout\);

-- Location: FF_X58_Y44_N7
\T|columna[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|columna\(2));

-- Location: LCCOMB_X58_Y44_N8
\T|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal8~0_combout\ = (\T|conectornum\(1) & (!\T|conectornum\(0) & \T|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(1),
	datab => \T|conectornum\(0),
	datad => \T|Equal6~9_combout\,
	combout => \T|Equal8~0_combout\);

-- Location: FF_X58_Y44_N9
\T|columna[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	d => \T|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|columna\(3));

-- Location: IOIBUF_X20_Y0_N8
\fila[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(1),
	o => \fila[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\fila[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(2),
	o => \fila[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\fila[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(3),
	o => \fila[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N29
\fila[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fila(0),
	o => \fila[0]~input_o\);

-- Location: LCCOMB_X58_Y45_N6
\T|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal1~0_combout\ = (!\fila[1]~input_o\ & (!\fila[2]~input_o\ & (\fila[3]~input_o\ & !\fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y45_N16
\T|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal3~0_combout\ = (\fila[1]~input_o\ & (!\fila[2]~input_o\ & (!\fila[3]~input_o\ & !\fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Equal3~0_combout\);

-- Location: LCCOMB_X58_Y45_N14
\T|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~0_combout\ = (\fila[1]~input_o\) # ((\fila[0]~input_o\) # (\fila[2]~input_o\ $ (!\fila[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Selector4~0_combout\);

-- Location: LCCOMB_X58_Y44_N12
\T|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~1_combout\ = (\T|conectornum\(1) & (!\T|Selector4~0_combout\ & \T|Equal6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(1),
	datab => \T|Selector4~0_combout\,
	datad => \T|Equal6~9_combout\,
	combout => \T|Selector4~1_combout\);

-- Location: LCCOMB_X59_Y44_N14
\T|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~2_combout\ = (\T|Selector4~1_combout\) # ((\T|Equal3~0_combout\ & (\T|Selector4~0_combout\ & \T|Equal6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal3~0_combout\,
	datab => \T|Selector4~0_combout\,
	datac => \T|Equal6~10_combout\,
	datad => \T|Selector4~1_combout\,
	combout => \T|Selector4~2_combout\);

-- Location: LCCOMB_X58_Y45_N4
\T|data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|data~0_combout\ = (!\fila[2]~input_o\ & (!\fila[3]~input_o\ & ((!\fila[0]~input_o\) # (!\fila[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|data~0_combout\);

-- Location: LCCOMB_X58_Y45_N20
\T|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal2~0_combout\ = (!\fila[1]~input_o\ & (\fila[2]~input_o\ & (!\fila[3]~input_o\ & !\fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y44_N16
\T|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~3_combout\ = (!\T|data~0_combout\ & ((\T|Equal9~0_combout\) # ((\T|Equal7~0_combout\ & !\T|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data~0_combout\,
	datab => \T|Equal7~0_combout\,
	datac => \T|Equal9~0_combout\,
	datad => \T|Equal2~0_combout\,
	combout => \T|Selector4~3_combout\);

-- Location: LCCOMB_X59_Y44_N4
\T|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~4_combout\ = (\T|Selector4~2_combout\) # ((\T|data\(1) & ((\T|Selector4~3_combout\) # (!\T|Equal6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(1),
	datab => \T|Equal6~9_combout\,
	datac => \T|Selector4~2_combout\,
	datad => \T|Selector4~3_combout\,
	combout => \T|Selector4~4_combout\);

-- Location: LCCOMB_X58_Y45_N18
\T|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal4~0_combout\ = (!\fila[1]~input_o\ & (!\fila[2]~input_o\ & (!\fila[3]~input_o\ & \fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Equal4~0_combout\);

-- Location: LCCOMB_X58_Y45_N8
\T|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Equal5~0_combout\ = (!\fila[1]~input_o\ & (!\fila[2]~input_o\ & (!\fila[3]~input_o\ & !\fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Equal5~0_combout\);

-- Location: LCCOMB_X59_Y44_N24
\T|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~5_combout\ = (\T|Equal3~0_combout\ & (\T|Selector4~0_combout\ & (\T|Equal6~10_combout\))) # (!\T|Equal3~0_combout\ & ((\T|Equal8~0_combout\) # ((\T|Selector4~0_combout\ & \T|Equal6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal3~0_combout\,
	datab => \T|Selector4~0_combout\,
	datac => \T|Equal6~10_combout\,
	datad => \T|Equal8~0_combout\,
	combout => \T|Selector4~5_combout\);

-- Location: LCCOMB_X59_Y44_N2
\T|Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~6_combout\ = (\T|Selector4~5_combout\ & ((\T|Equal4~0_combout\) # ((\T|data\(1) & !\T|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal4~0_combout\,
	datab => \T|data\(1),
	datac => \T|Equal5~0_combout\,
	datad => \T|Selector4~5_combout\,
	combout => \T|Selector4~6_combout\);

-- Location: LCCOMB_X59_Y44_N18
\T|Selector4~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector4~7_combout\ = (\T|Selector4~4_combout\) # ((\T|Selector4~6_combout\) # ((\T|Equal1~0_combout\ & \T|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal1~0_combout\,
	datab => \T|Equal7~0_combout\,
	datac => \T|Selector4~4_combout\,
	datad => \T|Selector4~6_combout\,
	combout => \T|Selector4~7_combout\);

-- Location: FF_X59_Y44_N19
\T|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|data\(1));

-- Location: LCCOMB_X58_Y45_N24
\T|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~0_combout\ = (\fila[1]~input_o\ & ((\fila[2]~input_o\) # ((\fila[3]~input_o\) # (\fila[0]~input_o\)))) # (!\fila[1]~input_o\ & ((\fila[2]~input_o\ & ((\fila[3]~input_o\) # (\fila[0]~input_o\))) # (!\fila[2]~input_o\ & (\fila[3]~input_o\ $ 
-- (!\fila[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Selector1~0_combout\);

-- Location: LCCOMB_X58_Y43_N16
\T|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~1_combout\ = (\T|is_digit~q\ & ((!\T|Equal6~9_combout\) # (!\T|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal5~0_combout\,
	datab => \T|is_digit~q\,
	datac => \T|Equal6~9_combout\,
	combout => \T|Selector1~1_combout\);

-- Location: LCCOMB_X58_Y43_N8
\T|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~2_combout\ = (\T|conectornum\(0) & ((!\T|conectornum\(1)) # (!\T|is_digit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|conectornum\(0),
	datab => \T|is_digit~q\,
	datad => \T|conectornum\(1),
	combout => \T|Selector1~2_combout\);

-- Location: LCCOMB_X58_Y45_N22
\T|data~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|data~1_combout\ = (!\fila[0]~input_o\ & ((\fila[1]~input_o\ & (!\fila[2]~input_o\ & !\fila[3]~input_o\)) # (!\fila[1]~input_o\ & (\fila[2]~input_o\ $ (\fila[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|data~1_combout\);

-- Location: LCCOMB_X59_Y43_N30
\T|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~3_combout\ = (\T|data~1_combout\) # ((\T|Equal4~0_combout\ & \T|is_digit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal4~0_combout\,
	datab => \T|data~1_combout\,
	datad => \T|is_digit~q\,
	combout => \T|Selector1~3_combout\);

-- Location: LCCOMB_X58_Y43_N20
\T|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~4_combout\ = (\T|Equal6~9_combout\ & ((\T|Selector1~2_combout\ & ((\T|Selector1~1_combout\))) # (!\T|Selector1~2_combout\ & (\T|Selector1~3_combout\ & !\T|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector1~2_combout\,
	datab => \T|Selector1~3_combout\,
	datac => \T|Equal6~9_combout\,
	datad => \T|Selector1~1_combout\,
	combout => \T|Selector1~4_combout\);

-- Location: LCCOMB_X58_Y43_N24
\T|Selector1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector1~5_combout\ = (\T|Equal7~0_combout\ & (((\T|Selector1~1_combout\) # (\T|Selector1~4_combout\)) # (!\T|Selector1~0_combout\))) # (!\T|Equal7~0_combout\ & ((\T|Selector1~1_combout\ $ (\T|Selector1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector1~0_combout\,
	datab => \T|Equal7~0_combout\,
	datac => \T|Selector1~1_combout\,
	datad => \T|Selector1~4_combout\,
	combout => \T|Selector1~5_combout\);

-- Location: FF_X58_Y43_N25
\T|is_digit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|is_digit~q\);

-- Location: LCCOMB_X58_Y45_N26
\T|dato~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|dato~0_combout\ = (\fila[1]~input_o\ & (!\fila[2]~input_o\ & (!\fila[3]~input_o\ & !\fila[0]~input_o\))) # (!\fila[1]~input_o\ & ((\fila[2]~input_o\ & (!\fila[3]~input_o\ & !\fila[0]~input_o\)) # (!\fila[2]~input_o\ & (\fila[3]~input_o\ $ 
-- (\fila[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|dato~0_combout\);

-- Location: LCCOMB_X58_Y45_N0
\T|dato~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|dato~1_combout\ = (\fila[1]~input_o\ & ((\fila[2]~input_o\) # ((\fila[3]~input_o\) # (\fila[0]~input_o\)))) # (!\fila[1]~input_o\ & ((\fila[2]~input_o\ & ((\fila[3]~input_o\) # (\fila[0]~input_o\))) # (!\fila[2]~input_o\ & (\fila[3]~input_o\ & 
-- \fila[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|dato~1_combout\);

-- Location: LCCOMB_X58_Y45_N10
\T|dato~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|dato~2_combout\ = (\T|dato~1_combout\ & (((\T|dato~q\)))) # (!\T|dato~1_combout\ & ((\T|Equal6~9_combout\ & (\T|dato~0_combout\)) # (!\T|Equal6~9_combout\ & ((\T|dato~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|dato~0_combout\,
	datab => \T|dato~1_combout\,
	datac => \T|dato~q\,
	datad => \T|Equal6~9_combout\,
	combout => \T|dato~2_combout\);

-- Location: FF_X59_Y47_N7
\T|dato\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~clkctrl_outclk\,
	asdata => \T|dato~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|dato~q\);

-- Location: CLKCTRL_G8
\T|dato~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \T|dato~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \T|dato~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y43_N30
\T|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~4_combout\ = (\T|Equal2~0_combout\ & ((\T|Equal7~0_combout\) # ((!\T|Equal6~9_combout\ & \T|data\(2))))) # (!\T|Equal2~0_combout\ & (!\T|Equal6~9_combout\ & (\T|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal2~0_combout\,
	datab => \T|Equal6~9_combout\,
	datac => \T|data\(2),
	datad => \T|Equal7~0_combout\,
	combout => \T|Selector3~4_combout\);

-- Location: LCCOMB_X58_Y43_N0
\T|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~2_combout\ = (\T|Equal6~9_combout\ & ((\T|conectornum\(1) & (!\T|Equal2~0_combout\ & \T|conectornum\(0))) # (!\T|conectornum\(1) & ((!\T|conectornum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal2~0_combout\,
	datab => \T|conectornum\(1),
	datac => \T|Equal6~9_combout\,
	datad => \T|conectornum\(0),
	combout => \T|Selector3~2_combout\);

-- Location: LCCOMB_X58_Y43_N18
\T|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~3_combout\ = (!\T|Equal1~0_combout\ & (\T|Selector3~2_combout\ & ((\T|data~0_combout\) # (\T|data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data~0_combout\,
	datab => \T|Equal1~0_combout\,
	datac => \T|data\(2),
	datad => \T|Selector3~2_combout\,
	combout => \T|Selector3~3_combout\);

-- Location: LCCOMB_X58_Y45_N30
\T|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~0_combout\ = (\fila[2]~input_o\) # ((\fila[0]~input_o\) # (\fila[1]~input_o\ $ (!\fila[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Selector5~0_combout\);

-- Location: LCCOMB_X58_Y43_N28
\T|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~0_combout\ = (\T|Selector1~0_combout\ & ((\T|Equal7~0_combout\) # ((\T|Selector5~0_combout\ & \T|Equal8~0_combout\)))) # (!\T|Selector1~0_combout\ & (\T|Selector5~0_combout\ & ((\T|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector1~0_combout\,
	datab => \T|Selector5~0_combout\,
	datac => \T|Equal7~0_combout\,
	datad => \T|Equal8~0_combout\,
	combout => \T|Selector3~0_combout\);

-- Location: LCCOMB_X58_Y43_N26
\T|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~1_combout\ = (\T|Selector3~0_combout\ & ((\T|Equal5~0_combout\) # (\T|data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal5~0_combout\,
	datab => \T|data\(2),
	datad => \T|Selector3~0_combout\,
	combout => \T|Selector3~1_combout\);

-- Location: LCCOMB_X59_Y44_N30
\T|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|WideNor0~0_combout\ = (\T|conectornum\(0)) # (!\T|Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T|conectornum\(0),
	datad => \T|Equal6~9_combout\,
	combout => \T|WideNor0~0_combout\);

-- Location: LCCOMB_X58_Y43_N12
\T|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~5_combout\ = (\T|Selector5~0_combout\ & (\T|Equal4~0_combout\ & \T|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|Selector5~0_combout\,
	datac => \T|Equal4~0_combout\,
	datad => \T|Equal8~0_combout\,
	combout => \T|Selector3~5_combout\);

-- Location: LCCOMB_X58_Y43_N2
\T|Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~6_combout\ = (\T|Selector3~5_combout\) # ((\T|Equal2~0_combout\ & (!\T|Equal1~0_combout\ & !\T|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal2~0_combout\,
	datab => \T|Equal1~0_combout\,
	datac => \T|WideNor0~0_combout\,
	datad => \T|Selector3~5_combout\,
	combout => \T|Selector3~6_combout\);

-- Location: LCCOMB_X58_Y43_N22
\T|Selector3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector3~7_combout\ = (\T|Selector3~4_combout\) # ((\T|Selector3~3_combout\) # ((\T|Selector3~1_combout\) # (\T|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector3~4_combout\,
	datab => \T|Selector3~3_combout\,
	datac => \T|Selector3~1_combout\,
	datad => \T|Selector3~6_combout\,
	combout => \T|Selector3~7_combout\);

-- Location: FF_X58_Y43_N23
\T|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|data\(2));

-- Location: LCCOMB_X59_Y44_N26
\T|Selector5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~6_combout\ = (!\T|WideNor0~0_combout\ & ((\T|Equal1~0_combout\) # ((!\T|Equal2~0_combout\ & \T|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal1~0_combout\,
	datab => \T|Equal2~0_combout\,
	datac => \T|WideNor0~0_combout\,
	datad => \T|Equal3~0_combout\,
	combout => \T|Selector5~6_combout\);

-- Location: LCCOMB_X58_Y44_N20
\T|Selector5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~7_combout\ = (\T|Equal2~0_combout\ & (!\T|Equal1~0_combout\ & ((\T|Equal9~0_combout\) # (\T|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal2~0_combout\,
	datab => \T|Equal9~0_combout\,
	datac => \T|Equal1~0_combout\,
	datad => \T|Equal7~0_combout\,
	combout => \T|Selector5~7_combout\);

-- Location: LCCOMB_X58_Y44_N14
\T|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~1_combout\ = (\T|Equal2~0_combout\ & (\T|Selector5~0_combout\ & ((\T|Equal9~0_combout\)))) # (!\T|Equal2~0_combout\ & ((\T|Equal8~0_combout\) # ((\T|Selector5~0_combout\ & \T|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal2~0_combout\,
	datab => \T|Selector5~0_combout\,
	datac => \T|Equal8~0_combout\,
	datad => \T|Equal9~0_combout\,
	combout => \T|Selector5~1_combout\);

-- Location: LCCOMB_X59_Y44_N22
\T|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~2_combout\ = (\T|Selector5~1_combout\ & ((\T|Equal4~0_combout\) # ((!\T|Equal5~0_combout\ & \T|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal4~0_combout\,
	datab => \T|Equal5~0_combout\,
	datac => \T|data\(0),
	datad => \T|Selector5~1_combout\,
	combout => \T|Selector5~2_combout\);

-- Location: LCCOMB_X58_Y45_N2
\T|Selector5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~4_combout\ = (\fila[1]~input_o\) # ((\fila[3]~input_o\) # ((\fila[2]~input_o\ & \fila[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fila[1]~input_o\,
	datab => \fila[2]~input_o\,
	datac => \fila[3]~input_o\,
	datad => \fila[0]~input_o\,
	combout => \T|Selector5~4_combout\);

-- Location: LCCOMB_X59_Y44_N28
\T|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~3_combout\ = ((!\T|Equal1~0_combout\ & (\T|Equal7~0_combout\ & !\T|data~0_combout\))) # (!\T|Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal1~0_combout\,
	datab => \T|Equal6~9_combout\,
	datac => \T|Equal7~0_combout\,
	datad => \T|data~0_combout\,
	combout => \T|Selector5~3_combout\);

-- Location: LCCOMB_X60_Y44_N16
\T|Selector5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~5_combout\ = (\T|data\(0) & ((\T|Selector5~3_combout\) # ((\T|Equal6~10_combout\ & \T|Selector5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal6~10_combout\,
	datab => \T|Selector5~4_combout\,
	datac => \T|data\(0),
	datad => \T|Selector5~3_combout\,
	combout => \T|Selector5~5_combout\);

-- Location: LCCOMB_X59_Y44_N8
\T|Selector5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector5~8_combout\ = (\T|Selector5~6_combout\) # ((\T|Selector5~7_combout\) # ((\T|Selector5~2_combout\) # (\T|Selector5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector5~6_combout\,
	datab => \T|Selector5~7_combout\,
	datac => \T|Selector5~2_combout\,
	datad => \T|Selector5~5_combout\,
	combout => \T|Selector5~8_combout\);

-- Location: FF_X59_Y44_N9
\T|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|data\(0));

-- Location: LCCOMB_X59_Y45_N4
\T|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~0_combout\ = (\T|Equal5~0_combout\) # ((\T|Equal4~0_combout\) # ((\T|data\(3)) # (\T|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal5~0_combout\,
	datab => \T|Equal4~0_combout\,
	datac => \T|data\(3),
	datad => \T|Equal3~0_combout\,
	combout => \T|Selector2~0_combout\);

-- Location: LCCOMB_X58_Y44_N26
\T|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~1_combout\ = (\T|Selector4~0_combout\ & (\T|Selector2~0_combout\ & ((\T|Equal8~0_combout\) # (\T|Equal9~0_combout\)))) # (!\T|Selector4~0_combout\ & (((\T|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector2~0_combout\,
	datab => \T|Selector4~0_combout\,
	datac => \T|Equal8~0_combout\,
	datad => \T|Equal9~0_combout\,
	combout => \T|Selector2~1_combout\);

-- Location: LCCOMB_X59_Y44_N12
\T|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~2_combout\ = (\T|Selector1~0_combout\ & ((\T|Equal7~0_combout\) # ((\T|Equal6~10_combout\ & !\T|data~1_combout\)))) # (!\T|Selector1~0_combout\ & (((\T|Equal6~10_combout\ & !\T|data~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Selector1~0_combout\,
	datab => \T|Equal7~0_combout\,
	datac => \T|Equal6~10_combout\,
	datad => \T|data~1_combout\,
	combout => \T|Selector2~2_combout\);

-- Location: LCCOMB_X59_Y44_N0
\T|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~4_combout\ = (\T|data\(3) & (((\T|Selector2~2_combout\)) # (!\T|Equal6~9_combout\))) # (!\T|data\(3) & (((\T|Equal5~0_combout\ & \T|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(3),
	datab => \T|Equal6~9_combout\,
	datac => \T|Equal5~0_combout\,
	datad => \T|Selector2~2_combout\,
	combout => \T|Selector2~4_combout\);

-- Location: LCCOMB_X59_Y44_N20
\T|Selector2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~5_combout\ = (\T|Selector2~1_combout\) # ((\T|Selector2~4_combout\) # ((\T|Equal3~0_combout\ & \T|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal3~0_combout\,
	datab => \T|Equal7~0_combout\,
	datac => \T|Selector2~1_combout\,
	datad => \T|Selector2~4_combout\,
	combout => \T|Selector2~5_combout\);

-- Location: LCCOMB_X59_Y44_N6
\T|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector2~3_combout\ = (\T|Selector2~5_combout\) # ((\T|Equal4~0_combout\ & (!\T|data~1_combout\ & \T|Equal6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal4~0_combout\,
	datab => \T|data~1_combout\,
	datac => \T|Equal6~10_combout\,
	datad => \T|Selector2~5_combout\,
	combout => \T|Selector2~3_combout\);

-- Location: FF_X59_Y44_N7
\T|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|data\(3));

-- Location: LCCOMB_X58_Y47_N8
\D|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Equal1~0_combout\ = (\T|data\(1) & (\T|data\(2) & (!\T|data\(0) & \T|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(1),
	datab => \T|data\(2),
	datac => \T|data\(0),
	datad => \T|data\(3),
	combout => \D|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y43_N10
\T|is_oper~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|is_oper~0_combout\ = (\T|data~1_combout\ & (((\T|is_oper~q\)))) # (!\T|data~1_combout\ & ((\T|Equal4~0_combout\) # ((\T|is_oper~q\ & !\T|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|Equal4~0_combout\,
	datab => \T|data~1_combout\,
	datac => \T|is_oper~q\,
	datad => \T|Equal5~0_combout\,
	combout => \T|is_oper~0_combout\);

-- Location: LCCOMB_X59_Y43_N28
\T|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector6~0_combout\ = ((!\T|Equal5~0_combout\ & \T|conectornum\(0))) # (!\T|Equal6~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|Equal5~0_combout\,
	datac => \T|conectornum\(0),
	datad => \T|Equal6~9_combout\,
	combout => \T|Selector6~0_combout\);

-- Location: LCCOMB_X59_Y43_N0
\T|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \T|Selector6~1_combout\ = (\T|is_oper~0_combout\ & (((\T|Selector6~0_combout\ & \T|is_oper~q\)) # (!\T|WideNor0~0_combout\))) # (!\T|is_oper~0_combout\ & (\T|Selector6~0_combout\ & (\T|is_oper~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|is_oper~0_combout\,
	datab => \T|Selector6~0_combout\,
	datac => \T|is_oper~q\,
	datad => \T|WideNor0~0_combout\,
	combout => \T|Selector6~1_combout\);

-- Location: FF_X59_Y43_N1
\T|is_oper\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|reloj~q\,
	d => \T|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \T|is_oper~q\);

-- Location: LCCOMB_X58_Y47_N26
\D|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector4~0_combout\ = (\D|Equal1~0_combout\ & \T|is_oper~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D|Equal1~0_combout\,
	datad => \T|is_oper~q\,
	combout => \D|Selector4~0_combout\);

-- Location: LCCOMB_X60_Y47_N24
\D|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector4~2_combout\ = (\D|state.D2~q\ & (!\T|is_oper~q\ & !\T|is_digit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D2~q\,
	datac => \T|is_oper~q\,
	datad => \T|is_digit~q\,
	combout => \D|Selector4~2_combout\);

-- Location: LCCOMB_X58_Y47_N12
\D|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Equal2~0_combout\ = (!\T|data\(2) & (\T|data\(0) & (!\T|data\(1) & !\T|data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(2),
	datab => \T|data\(0),
	datac => \T|data\(1),
	datad => \T|data\(3),
	combout => \D|Equal2~0_combout\);

-- Location: LCCOMB_X59_Y47_N30
\D|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector4~1_combout\ = (\T|is_digit~q\ & ((\D|state.D1~q\) # ((\D|state.D2~q\ & !\D|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D1~q\,
	datab => \D|state.D2~q\,
	datac => \T|is_digit~q\,
	datad => \D|Equal2~0_combout\,
	combout => \D|Selector4~1_combout\);

-- Location: LCCOMB_X58_Y47_N6
\D|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector5~0_combout\ = (\D|state.D2~q\ & \T|is_digit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D|state.D2~q\,
	datad => \T|is_digit~q\,
	combout => \D|Selector5~0_combout\);

-- Location: LCCOMB_X58_Y47_N0
\D|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector5~1_combout\ = (\D|Equal2~0_combout\ & ((\D|Selector5~0_combout\) # ((!\T|is_oper~q\ & \D|state.D3~q\)))) # (!\D|Equal2~0_combout\ & (!\T|is_oper~q\ & (\D|state.D3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal2~0_combout\,
	datab => \T|is_oper~q\,
	datac => \D|state.D3~q\,
	datad => \D|Selector5~0_combout\,
	combout => \D|Selector5~1_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X58_Y47_N1
\D|state.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|dato~q\,
	d => \D|Selector5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|state.D3~q\);

-- Location: LCCOMB_X59_Y47_N4
\D|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector4~3_combout\ = (\D|Selector4~2_combout\) # ((\D|Selector4~1_combout\) # ((\D|Selector4~0_combout\ & \D|state.D3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Selector4~0_combout\,
	datab => \D|Selector4~2_combout\,
	datac => \D|Selector4~1_combout\,
	datad => \D|state.D3~q\,
	combout => \D|Selector4~3_combout\);

-- Location: FF_X58_Y47_N15
\D|state.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|dato~clkctrl_outclk\,
	asdata => \D|Selector4~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|state.D2~q\);

-- Location: LCCOMB_X58_Y47_N30
\D|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector3~0_combout\ = (\T|is_oper~q\ & (\D|state.D2~q\ & (\D|Equal1~0_combout\))) # (!\T|is_oper~q\ & (((\D|state.D1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D2~q\,
	datab => \T|is_oper~q\,
	datac => \D|Equal1~0_combout\,
	datad => \D|state.D1~q\,
	combout => \D|Selector3~0_combout\);

-- Location: LCCOMB_X58_Y47_N10
\D|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector3~1_combout\ = (\T|is_digit~q\ & ((!\D|state.Idle~q\))) # (!\T|is_digit~q\ & (\D|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|is_digit~q\,
	datac => \D|Selector3~0_combout\,
	datad => \D|state.Idle~q\,
	combout => \D|Selector3~1_combout\);

-- Location: FF_X58_Y47_N11
\D|state.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|dato~q\,
	d => \D|Selector3~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|state.D1~q\);

-- Location: LCCOMB_X59_Y47_N0
\D|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector2~1_combout\ = (!\T|is_digit~q\ & ((\D|state.D1~q\) # (!\D|state.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D1~q\,
	datab => \D|state.Idle~q\,
	datad => \T|is_digit~q\,
	combout => \D|Selector2~1_combout\);

-- Location: LCCOMB_X58_Y47_N28
\D|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector2~0_combout\ = (!\D|Equal1~0_combout\ & ((\D|state.D3~q\) # ((\D|state.D2~q\ & !\T|is_digit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D2~q\,
	datab => \T|is_digit~q\,
	datac => \D|state.D3~q\,
	datad => \D|Equal1~0_combout\,
	combout => \D|Selector2~0_combout\);

-- Location: LCCOMB_X58_Y47_N18
\D|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector2~2_combout\ = (\D|Selector2~1_combout\ & (((!\T|is_oper~q\ & \D|state.Idle~q\)))) # (!\D|Selector2~1_combout\ & (((!\T|is_oper~q\)) # (!\D|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Selector2~1_combout\,
	datab => \D|Selector2~0_combout\,
	datac => \T|is_oper~q\,
	datad => \D|state.Idle~q\,
	combout => \D|Selector2~2_combout\);

-- Location: LCCOMB_X57_Y47_N6
\D|state.Idle~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|state.Idle~feeder_combout\ = \D|Selector2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D|Selector2~2_combout\,
	combout => \D|state.Idle~feeder_combout\);

-- Location: FF_X57_Y47_N7
\D|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T|dato~clkctrl_outclk\,
	d => \D|state.Idle~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|state.Idle~q\);

-- Location: LCCOMB_X57_Y47_N2
\D|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector16~0_combout\ = (\T|data\(1) & (\T|is_digit~q\ & !\D|state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(1),
	datac => \T|is_digit~q\,
	datad => \D|state.Idle~q\,
	combout => \D|Selector16~0_combout\);

-- Location: LCCOMB_X58_Y47_N4
\D|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector19~0_combout\ = (\D|state.D1~q\ & (((\D|Equal1~0_combout\) # (!\T|is_oper~q\)))) # (!\D|state.D1~q\ & (\D|state.D2~q\ & (!\T|is_oper~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D1~q\,
	datab => \D|state.D2~q\,
	datac => \T|is_oper~q\,
	datad => \D|Equal1~0_combout\,
	combout => \D|Selector19~0_combout\);

-- Location: LCCOMB_X58_Y47_N2
\D|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector19~1_combout\ = ((\D|Selector19~0_combout\ & !\T|is_digit~q\)) # (!\D|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.Idle~q\,
	datac => \D|Selector19~0_combout\,
	datad => \T|is_digit~q\,
	combout => \D|Selector19~1_combout\);

-- Location: CLKCTRL_G10
\D|Selector19~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|Selector19~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|Selector19~1clkctrl_outclk\);

-- Location: LCCOMB_X57_Y47_N10
\D|Sal0[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal0\(1) = (GLOBAL(\D|Selector19~1clkctrl_outclk\) & ((\D|Selector16~0_combout\))) # (!GLOBAL(\D|Selector19~1clkctrl_outclk\) & (\D|Sal0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datac => \D|Selector16~0_combout\,
	datad => \D|Selector19~1clkctrl_outclk\,
	combout => \D|Sal0\(1));

-- Location: LCCOMB_X57_Y47_N30
\D|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector17~0_combout\ = (\T|data\(2) & (!\D|state.Idle~q\ & \T|is_digit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(2),
	datac => \D|state.Idle~q\,
	datad => \T|is_digit~q\,
	combout => \D|Selector17~0_combout\);

-- Location: LCCOMB_X57_Y47_N12
\D|Sal0[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal0\(2) = (GLOBAL(\D|Selector19~1clkctrl_outclk\) & ((\D|Selector17~0_combout\))) # (!GLOBAL(\D|Selector19~1clkctrl_outclk\) & (\D|Sal0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(2),
	datac => \D|Selector17~0_combout\,
	datad => \D|Selector19~1clkctrl_outclk\,
	combout => \D|Sal0\(2));

-- Location: LCCOMB_X57_Y47_N24
\D|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector18~0_combout\ = (!\D|state.Idle~q\ & (\T|is_digit~q\ & \T|data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.Idle~q\,
	datac => \T|is_digit~q\,
	datad => \T|data\(3),
	combout => \D|Selector18~0_combout\);

-- Location: LCCOMB_X57_Y47_N20
\D|Sal0[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal0\(3) = (GLOBAL(\D|Selector19~1clkctrl_outclk\) & ((\D|Selector18~0_combout\))) # (!GLOBAL(\D|Selector19~1clkctrl_outclk\) & (\D|Sal0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal0\(3),
	datac => \D|Selector18~0_combout\,
	datad => \D|Selector19~1clkctrl_outclk\,
	combout => \D|Sal0\(3));

-- Location: LCCOMB_X57_Y47_N0
\D|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector15~0_combout\ = (\T|is_digit~q\ & (\T|data\(0) & !\D|state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|is_digit~q\,
	datac => \T|data\(0),
	datad => \D|state.Idle~q\,
	combout => \D|Selector15~0_combout\);

-- Location: LCCOMB_X57_Y47_N8
\D|Sal0[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal0\(0) = (GLOBAL(\D|Selector19~1clkctrl_outclk\) & (\D|Selector15~0_combout\)) # (!GLOBAL(\D|Selector19~1clkctrl_outclk\) & ((\D|Sal0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Selector15~0_combout\,
	datac => \D|Sal0\(0),
	datad => \D|Selector19~1clkctrl_outclk\,
	combout => \D|Sal0\(0));

-- Location: LCCOMB_X61_Y50_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\D|Sal0\(1) & (!\D|Sal0\(3) & (\D|Sal0\(2) $ (\D|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X61_Y50_N26
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\D|Sal0\(2) & (!\D|Sal0\(3) & (\D|Sal0\(1) $ (\D|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X61_Y50_N4
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\D|Sal0\(1) & (!\D|Sal0\(2) & (!\D|Sal0\(3) & !\D|Sal0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X61_Y50_N22
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\D|Sal0\(3) & ((\D|Sal0\(1) & (\D|Sal0\(2) & \D|Sal0\(0))) # (!\D|Sal0\(1) & (\D|Sal0\(2) $ (\D|Sal0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X61_Y50_N24
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\D|Sal0\(1) & (((!\D|Sal0\(3) & \D|Sal0\(0))))) # (!\D|Sal0\(1) & ((\D|Sal0\(2) & (!\D|Sal0\(3))) # (!\D|Sal0\(2) & ((\D|Sal0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X61_Y50_N10
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\D|Sal0\(3) & ((\D|Sal0\(1) & ((\D|Sal0\(0)) # (!\D|Sal0\(2)))) # (!\D|Sal0\(1) & (!\D|Sal0\(2) & \D|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X61_Y50_N0
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\D|Sal0\(1) & (!\D|Sal0\(3) & ((!\D|Sal0\(0)) # (!\D|Sal0\(2))))) # (!\D|Sal0\(1) & (\D|Sal0\(2) $ ((\D|Sal0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal0\(1),
	datab => \D|Sal0\(2),
	datac => \D|Sal0\(3),
	datad => \D|Sal0\(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X58_Y47_N24
\D|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector14~0_combout\ = ((!\T|is_digit~q\ & ((\D|Equal1~0_combout\) # (!\T|is_oper~q\)))) # (!\D|state.D2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|is_oper~q\,
	datab => \D|Equal1~0_combout\,
	datac => \D|state.D2~q\,
	datad => \T|is_digit~q\,
	combout => \D|Selector14~0_combout\);

-- Location: LCCOMB_X58_Y47_N14
\D|Selector14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector14~1_combout\ = (!\D|state.D3~q\ & \D|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.D3~q\,
	datad => \D|Selector14~0_combout\,
	combout => \D|Selector14~1_combout\);

-- Location: CLKCTRL_G14
\D|Selector14~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|Selector14~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|Selector14~1clkctrl_outclk\);

-- Location: LCCOMB_X59_Y47_N14
\D|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector13~0_combout\ = (\T|data\(3) & (\T|is_digit~q\ & \D|state.D1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|data\(3),
	datac => \T|is_digit~q\,
	datad => \D|state.D1~q\,
	combout => \D|Selector13~0_combout\);

-- Location: LCCOMB_X59_Y47_N22
\D|Sal1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal1\(3) = (GLOBAL(\D|Selector14~1clkctrl_outclk\) & ((\D|Selector13~0_combout\))) # (!GLOBAL(\D|Selector14~1clkctrl_outclk\) & (\D|Sal1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datac => \D|Selector14~1clkctrl_outclk\,
	datad => \D|Selector13~0_combout\,
	combout => \D|Sal1\(3));

-- Location: LCCOMB_X57_Y47_N28
\D|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector10~0_combout\ = (\T|data\(0) & (\D|state.D1~q\ & \T|is_digit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(0),
	datab => \D|state.D1~q\,
	datac => \T|is_digit~q\,
	combout => \D|Selector10~0_combout\);

-- Location: LCCOMB_X57_Y47_N14
\D|Sal1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal1\(0) = (GLOBAL(\D|Selector14~1clkctrl_outclk\) & (\D|Selector10~0_combout\)) # (!GLOBAL(\D|Selector14~1clkctrl_outclk\) & ((\D|Sal1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Selector10~0_combout\,
	datac => \D|Sal1\(0),
	datad => \D|Selector14~1clkctrl_outclk\,
	combout => \D|Sal1\(0));

-- Location: LCCOMB_X57_Y47_N4
\D|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector12~0_combout\ = (\D|state.D1~q\ & (\T|is_digit~q\ & \T|data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.D1~q\,
	datac => \T|is_digit~q\,
	datad => \T|data\(2),
	combout => \D|Selector12~0_combout\);

-- Location: LCCOMB_X57_Y47_N16
\D|Sal1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal1\(2) = (GLOBAL(\D|Selector14~1clkctrl_outclk\) & ((\D|Selector12~0_combout\))) # (!GLOBAL(\D|Selector14~1clkctrl_outclk\) & (\D|Sal1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal1\(2),
	datac => \D|Selector12~0_combout\,
	datad => \D|Selector14~1clkctrl_outclk\,
	combout => \D|Sal1\(2));

-- Location: LCCOMB_X57_Y47_N22
\D|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector11~0_combout\ = (\D|state.D1~q\ & (\T|is_digit~q\ & \T|data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.D1~q\,
	datac => \T|is_digit~q\,
	datad => \T|data\(1),
	combout => \D|Selector11~0_combout\);

-- Location: LCCOMB_X57_Y47_N26
\D|Sal1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal1\(1) = (GLOBAL(\D|Selector14~1clkctrl_outclk\) & ((\D|Selector11~0_combout\))) # (!GLOBAL(\D|Selector14~1clkctrl_outclk\) & (\D|Sal1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(1),
	datab => \D|Selector11~0_combout\,
	datad => \D|Selector14~1clkctrl_outclk\,
	combout => \D|Sal1\(1));

-- Location: LCCOMB_X74_Y47_N8
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\D|Sal1\(3) & (!\D|Sal1\(1) & (\D|Sal1\(0) $ (\D|Sal1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X74_Y47_N26
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\D|Sal1\(3) & (\D|Sal1\(2) & (\D|Sal1\(0) $ (\D|Sal1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X74_Y47_N28
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\D|Sal1\(3) & (!\D|Sal1\(0) & (!\D|Sal1\(2) & \D|Sal1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X74_Y47_N10
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\D|Sal1\(3) & ((\D|Sal1\(0) & (\D|Sal1\(2) $ (!\D|Sal1\(1)))) # (!\D|Sal1\(0) & (\D|Sal1\(2) & !\D|Sal1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X74_Y47_N24
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\D|Sal1\(1) & (!\D|Sal1\(3) & (\D|Sal1\(0)))) # (!\D|Sal1\(1) & ((\D|Sal1\(2) & (!\D|Sal1\(3))) # (!\D|Sal1\(2) & ((\D|Sal1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X74_Y47_N22
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\D|Sal1\(3) & ((\D|Sal1\(0) & ((\D|Sal1\(1)) # (!\D|Sal1\(2)))) # (!\D|Sal1\(0) & (!\D|Sal1\(2) & \D|Sal1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X74_Y47_N4
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\D|Sal1\(2) & (!\D|Sal1\(3) & ((!\D|Sal1\(1)) # (!\D|Sal1\(0))))) # (!\D|Sal1\(2) & (\D|Sal1\(3) $ (((\D|Sal1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal1\(3),
	datab => \D|Sal1\(0),
	datac => \D|Sal1\(2),
	datad => \D|Sal1\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X59_Y47_N8
\D|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector8~0_combout\ = (\T|data\(3) & (\T|is_digit~q\ & \D|state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|data\(3),
	datac => \T|is_digit~q\,
	datad => \D|state.D2~q\,
	combout => \D|Selector8~0_combout\);

-- Location: LCCOMB_X58_Y47_N16
\D|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector9~0_combout\ = (\D|Equal2~0_combout\ & (((\D|Selector4~0_combout\)) # (!\D|state.D3~q\))) # (!\D|Equal2~0_combout\ & (!\D|Selector5~0_combout\ & ((\D|Selector4~0_combout\) # (!\D|state.D3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Equal2~0_combout\,
	datab => \D|state.D3~q\,
	datac => \D|Selector4~0_combout\,
	datad => \D|Selector5~0_combout\,
	combout => \D|Selector9~0_combout\);

-- Location: CLKCTRL_G12
\D|Selector9~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|Selector9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|Selector9~0clkctrl_outclk\);

-- Location: LCCOMB_X59_Y47_N20
\D|Sal2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal2\(3) = (GLOBAL(\D|Selector9~0clkctrl_outclk\) & ((\D|Selector8~0_combout\))) # (!GLOBAL(\D|Selector9~0clkctrl_outclk\) & (\D|Sal2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal2\(3),
	datac => \D|Selector8~0_combout\,
	datad => \D|Selector9~0clkctrl_outclk\,
	combout => \D|Sal2\(3));

-- Location: LCCOMB_X59_Y47_N16
\D|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector0~0_combout\ = (\T|data\(2) & (\T|is_digit~q\ & \D|state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(2),
	datab => \T|is_digit~q\,
	datad => \D|state.D2~q\,
	combout => \D|Selector0~0_combout\);

-- Location: LCCOMB_X59_Y47_N18
\D|Sal2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal2\(2) = (GLOBAL(\D|Selector9~0clkctrl_outclk\) & ((\D|Selector0~0_combout\))) # (!GLOBAL(\D|Selector9~0clkctrl_outclk\) & (\D|Sal2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal2\(2),
	datac => \D|Selector0~0_combout\,
	datad => \D|Selector9~0clkctrl_outclk\,
	combout => \D|Sal2\(2));

-- Location: LCCOMB_X59_Y47_N26
\D|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector1~0_combout\ = (\T|data\(1) & (\T|is_digit~q\ & \D|state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(1),
	datab => \T|is_digit~q\,
	datad => \D|state.D2~q\,
	combout => \D|Selector1~0_combout\);

-- Location: LCCOMB_X59_Y47_N2
\D|Sal2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal2\(1) = (GLOBAL(\D|Selector9~0clkctrl_outclk\) & ((\D|Selector1~0_combout\))) # (!GLOBAL(\D|Selector9~0clkctrl_outclk\) & (\D|Sal2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal2\(1),
	datac => \D|Selector1~0_combout\,
	datad => \D|Selector9~0clkctrl_outclk\,
	combout => \D|Sal2\(1));

-- Location: LCCOMB_X59_Y47_N24
\D|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector6~0_combout\ = (\T|data\(0) & (\T|is_digit~q\ & \D|state.D2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T|data\(0),
	datab => \T|is_digit~q\,
	datad => \D|state.D2~q\,
	combout => \D|Selector6~0_combout\);

-- Location: LCCOMB_X59_Y47_N28
\D|Sal2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Sal2\(0) = (GLOBAL(\D|Selector9~0clkctrl_outclk\) & ((\D|Selector6~0_combout\))) # (!GLOBAL(\D|Selector9~0clkctrl_outclk\) & (\D|Sal2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Sal2\(0),
	datac => \D|Selector6~0_combout\,
	datad => \D|Selector9~0clkctrl_outclk\,
	combout => \D|Sal2\(0));

-- Location: LCCOMB_X63_Y44_N4
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\D|Sal2\(3) & (!\D|Sal2\(1) & (\D|Sal2\(2) $ (\D|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X63_Y44_N6
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\D|Sal2\(3) & (\D|Sal2\(2) & (\D|Sal2\(1) $ (\D|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X63_Y44_N12
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\D|Sal2\(3) & (!\D|Sal2\(2) & (\D|Sal2\(1) & !\D|Sal2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X63_Y44_N2
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\D|Sal2\(3) & ((\D|Sal2\(2) & (\D|Sal2\(1) $ (!\D|Sal2\(0)))) # (!\D|Sal2\(2) & (!\D|Sal2\(1) & \D|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X63_Y44_N20
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\D|Sal2\(1) & (!\D|Sal2\(3) & ((\D|Sal2\(0))))) # (!\D|Sal2\(1) & ((\D|Sal2\(2) & (!\D|Sal2\(3))) # (!\D|Sal2\(2) & ((\D|Sal2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X63_Y44_N10
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\D|Sal2\(3) & ((\D|Sal2\(2) & (\D|Sal2\(1) & \D|Sal2\(0))) # (!\D|Sal2\(2) & ((\D|Sal2\(1)) # (\D|Sal2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X63_Y44_N16
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\D|Sal2\(2) & (!\D|Sal2\(3) & ((!\D|Sal2\(0)) # (!\D|Sal2\(1))))) # (!\D|Sal2\(2) & (\D|Sal2\(3) $ ((\D|Sal2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|Sal2\(3),
	datab => \D|Sal2\(2),
	datac => \D|Sal2\(1),
	datad => \D|Sal2\(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X59_Y47_N10
\D|debug~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|debug~0_combout\ = (\D|state.D1~q\) # (\D|state.D3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \D|state.D1~q\,
	datad => \D|state.D3~q\,
	combout => \D|debug~0_combout\);

-- Location: LCCOMB_X57_Y47_N18
\D|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|Selector21~0_combout\ = (\T|is_digit~q\) # (\D|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \T|is_digit~q\,
	datad => \D|state.Idle~q\,
	combout => \D|Selector21~0_combout\);

-- Location: CLKCTRL_G13
\D|Selector21~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \D|Selector21~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \D|Selector21~0clkctrl_outclk\);

-- Location: LCCOMB_X58_Y47_N20
\D|debug[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|debug\(0) = (GLOBAL(\D|Selector21~0clkctrl_outclk\) & ((!\D|debug~0_combout\))) # (!GLOBAL(\D|Selector21~0clkctrl_outclk\) & (\D|debug\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|debug\(0),
	datac => \D|debug~0_combout\,
	datad => \D|Selector21~0clkctrl_outclk\,
	combout => \D|debug\(0));

-- Location: LCCOMB_X59_Y47_N6
\D|debug~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|debug~1_combout\ = (\D|state.D1~q\) # (\D|state.D2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|state.D1~q\,
	datad => \D|state.D2~q\,
	combout => \D|debug~1_combout\);

-- Location: LCCOMB_X59_Y47_N12
\D|debug[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|debug\(1) = (GLOBAL(\D|Selector21~0clkctrl_outclk\) & ((\D|debug~1_combout\))) # (!GLOBAL(\D|Selector21~0clkctrl_outclk\) & (\D|debug\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|debug\(1),
	datac => \D|debug~1_combout\,
	datad => \D|Selector21~0clkctrl_outclk\,
	combout => \D|debug\(1));

-- Location: LCCOMB_X58_Y47_N22
\D|debug[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \D|debug\(3) = (GLOBAL(\D|Selector21~0clkctrl_outclk\) & (\D|state.D3~q\)) # (!GLOBAL(\D|Selector21~0clkctrl_outclk\) & ((\D|debug\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D|state.D3~q\,
	datac => \D|debug\(3),
	datad => \D|Selector21~0clkctrl_outclk\,
	combout => \D|debug\(3));

-- Location: IOIBUF_X78_Y45_N8
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X54_Y54_N1
\f1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f1,
	o => \f1~input_o\);

-- Location: IOIBUF_X78_Y41_N15
\f2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f2,
	o => \f2~input_o\);

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

ww_columna(0) <= \columna[0]~output_o\;

ww_columna(1) <= \columna[1]~output_o\;

ww_columna(2) <= \columna[2]~output_o\;

ww_columna(3) <= \columna[3]~output_o\;

ww_siete_seg_u(0) <= \siete_seg_u[0]~output_o\;

ww_siete_seg_u(1) <= \siete_seg_u[1]~output_o\;

ww_siete_seg_u(2) <= \siete_seg_u[2]~output_o\;

ww_siete_seg_u(3) <= \siete_seg_u[3]~output_o\;

ww_siete_seg_u(4) <= \siete_seg_u[4]~output_o\;

ww_siete_seg_u(5) <= \siete_seg_u[5]~output_o\;

ww_siete_seg_u(6) <= \siete_seg_u[6]~output_o\;

ww_siete_seg_d(0) <= \siete_seg_d[0]~output_o\;

ww_siete_seg_d(1) <= \siete_seg_d[1]~output_o\;

ww_siete_seg_d(2) <= \siete_seg_d[2]~output_o\;

ww_siete_seg_d(3) <= \siete_seg_d[3]~output_o\;

ww_siete_seg_d(4) <= \siete_seg_d[4]~output_o\;

ww_siete_seg_d(5) <= \siete_seg_d[5]~output_o\;

ww_siete_seg_d(6) <= \siete_seg_d[6]~output_o\;

ww_siete_seg_c(0) <= \siete_seg_c[0]~output_o\;

ww_siete_seg_c(1) <= \siete_seg_c[1]~output_o\;

ww_siete_seg_c(2) <= \siete_seg_c[2]~output_o\;

ww_siete_seg_c(3) <= \siete_seg_c[3]~output_o\;

ww_siete_seg_c(4) <= \siete_seg_c[4]~output_o\;

ww_siete_seg_c(5) <= \siete_seg_c[5]~output_o\;

ww_siete_seg_c(6) <= \siete_seg_c[6]~output_o\;

ww_siete_seg_t(0) <= \siete_seg_t[0]~output_o\;

ww_siete_seg_t(1) <= \siete_seg_t[1]~output_o\;

ww_siete_seg_t(2) <= \siete_seg_t[2]~output_o\;

ww_siete_seg_t(3) <= \siete_seg_t[3]~output_o\;

ww_siete_seg_t(4) <= \siete_seg_t[4]~output_o\;

ww_siete_seg_t(5) <= \siete_seg_t[5]~output_o\;

ww_siete_seg_t(6) <= \siete_seg_t[6]~output_o\;

ww_data(0) <= \data[0]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(2) <= \data[2]~output_o\;

ww_data(3) <= \data[3]~output_o\;

ww_debug_d(0) <= \debug_d[0]~output_o\;

ww_debug_d(1) <= \debug_d[1]~output_o\;

ww_debug_d(2) <= \debug_d[2]~output_o\;

ww_debug_d(3) <= \debug_d[3]~output_o\;

ww_bomba_1 <= \bomba_1~output_o\;

ww_bomba_2 <= \bomba_2~output_o\;
END structure;


