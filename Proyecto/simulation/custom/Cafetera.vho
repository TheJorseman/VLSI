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

-- DATE "12/05/2019 01:25:24"

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
	clk50MHz : IN std_logic;
	RX_WIRE : IN std_logic;
	disp_unidades : BUFFER std_logic_vector(6 DOWNTO 0);
	disp_decenas : BUFFER std_logic_vector(6 DOWNTO 0);
	disp_centenas : BUFFER std_logic_vector(6 DOWNTO 0);
	disp_tipo : BUFFER std_logic_vector(6 DOWNTO 0);
	start : IN std_logic;
	debug : BUFFER std_logic_vector(3 DOWNTO 0);
	debug_bin : BUFFER std_logic_vector(6 DOWNTO 0);
	debug_state : BUFFER std_logic_vector(3 DOWNTO 0);
	bomba1 : BUFFER std_logic;
	bomba2 : BUFFER std_logic
	);
END Cafetera;

-- Design Ports Information
-- disp_unidades[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_unidades[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_decenas[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_centenas[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp_tipo[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_bin[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug_state[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bomba1	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bomba2	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_WIRE	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_RX_WIRE : std_logic;
SIGNAL ww_disp_unidades : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_decenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_centenas : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp_tipo : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_start : std_logic;
SIGNAL ww_debug : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_debug_bin : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_debug_state : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_bomba1 : std_logic;
SIGNAL ww_bomba2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Dig|Selector17~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Equal1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dd|T2|clk1ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dd|T1|clk1ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|Receptor|bandera~reg0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Selector28~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Selector23~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Selector22~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|R1|cuenta[21]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \disp_unidades[0]~output_o\ : std_logic;
SIGNAL \disp_unidades[1]~output_o\ : std_logic;
SIGNAL \disp_unidades[2]~output_o\ : std_logic;
SIGNAL \disp_unidades[3]~output_o\ : std_logic;
SIGNAL \disp_unidades[4]~output_o\ : std_logic;
SIGNAL \disp_unidades[5]~output_o\ : std_logic;
SIGNAL \disp_unidades[6]~output_o\ : std_logic;
SIGNAL \disp_decenas[0]~output_o\ : std_logic;
SIGNAL \disp_decenas[1]~output_o\ : std_logic;
SIGNAL \disp_decenas[2]~output_o\ : std_logic;
SIGNAL \disp_decenas[3]~output_o\ : std_logic;
SIGNAL \disp_decenas[4]~output_o\ : std_logic;
SIGNAL \disp_decenas[5]~output_o\ : std_logic;
SIGNAL \disp_decenas[6]~output_o\ : std_logic;
SIGNAL \disp_centenas[0]~output_o\ : std_logic;
SIGNAL \disp_centenas[1]~output_o\ : std_logic;
SIGNAL \disp_centenas[2]~output_o\ : std_logic;
SIGNAL \disp_centenas[3]~output_o\ : std_logic;
SIGNAL \disp_centenas[4]~output_o\ : std_logic;
SIGNAL \disp_centenas[5]~output_o\ : std_logic;
SIGNAL \disp_centenas[6]~output_o\ : std_logic;
SIGNAL \disp_tipo[0]~output_o\ : std_logic;
SIGNAL \disp_tipo[1]~output_o\ : std_logic;
SIGNAL \disp_tipo[2]~output_o\ : std_logic;
SIGNAL \disp_tipo[3]~output_o\ : std_logic;
SIGNAL \disp_tipo[4]~output_o\ : std_logic;
SIGNAL \disp_tipo[5]~output_o\ : std_logic;
SIGNAL \disp_tipo[6]~output_o\ : std_logic;
SIGNAL \debug[0]~output_o\ : std_logic;
SIGNAL \debug[1]~output_o\ : std_logic;
SIGNAL \debug[2]~output_o\ : std_logic;
SIGNAL \debug[3]~output_o\ : std_logic;
SIGNAL \debug_bin[0]~output_o\ : std_logic;
SIGNAL \debug_bin[1]~output_o\ : std_logic;
SIGNAL \debug_bin[2]~output_o\ : std_logic;
SIGNAL \debug_bin[3]~output_o\ : std_logic;
SIGNAL \debug_bin[4]~output_o\ : std_logic;
SIGNAL \debug_bin[5]~output_o\ : std_logic;
SIGNAL \debug_bin[6]~output_o\ : std_logic;
SIGNAL \debug_state[0]~output_o\ : std_logic;
SIGNAL \debug_state[1]~output_o\ : std_logic;
SIGNAL \debug_state[2]~output_o\ : std_logic;
SIGNAL \debug_state[3]~output_o\ : std_logic;
SIGNAL \bomba1~output_o\ : std_logic;
SIGNAL \bomba2~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX|R1|cuenta[0]~63_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[1]~21_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[1]~22\ : std_logic;
SIGNAL \RX|R1|cuenta[2]~23_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[2]~24\ : std_logic;
SIGNAL \RX|R1|cuenta[3]~25_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[3]~26\ : std_logic;
SIGNAL \RX|R1|cuenta[4]~27_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[4]~28\ : std_logic;
SIGNAL \RX|R1|cuenta[5]~29_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[5]~30\ : std_logic;
SIGNAL \RX|R1|cuenta[6]~31_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[6]~32\ : std_logic;
SIGNAL \RX|R1|cuenta[7]~33_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[7]~34\ : std_logic;
SIGNAL \RX|R1|cuenta[8]~35_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[8]~36\ : std_logic;
SIGNAL \RX|R1|cuenta[9]~37_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[9]~38\ : std_logic;
SIGNAL \RX|R1|cuenta[10]~39_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[10]~40\ : std_logic;
SIGNAL \RX|R1|cuenta[11]~41_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[11]~42\ : std_logic;
SIGNAL \RX|R1|cuenta[12]~43_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[12]~44\ : std_logic;
SIGNAL \RX|R1|cuenta[13]~45_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[13]~46\ : std_logic;
SIGNAL \RX|R1|cuenta[14]~47_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[14]~48\ : std_logic;
SIGNAL \RX|R1|cuenta[15]~49_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[15]~50\ : std_logic;
SIGNAL \RX|R1|cuenta[16]~51_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[16]~52\ : std_logic;
SIGNAL \RX|R1|cuenta[17]~53_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[17]~54\ : std_logic;
SIGNAL \RX|R1|cuenta[18]~55_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[18]~56\ : std_logic;
SIGNAL \RX|R1|cuenta[19]~57_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[19]~58\ : std_logic;
SIGNAL \RX|R1|cuenta[20]~59_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[20]~60\ : std_logic;
SIGNAL \RX|R1|cuenta[21]~61_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[0]~13_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[4]~29_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[4]~30_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[4]~31_combout\ : std_logic;
SIGNAL \RX_WIRE~input_o\ : std_logic;
SIGNAL \RX|Receptor|PRE~32_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[0]~14\ : std_logic;
SIGNAL \RX|Receptor|PRE[1]~15_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[1]~16\ : std_logic;
SIGNAL \RX|Receptor|PRE[2]~17_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[2]~18\ : std_logic;
SIGNAL \RX|Receptor|PRE[3]~19_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[3]~20\ : std_logic;
SIGNAL \RX|Receptor|PRE[4]~21_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[4]~22\ : std_logic;
SIGNAL \RX|Receptor|PRE[5]~23_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[5]~24\ : std_logic;
SIGNAL \RX|Receptor|PRE[6]~25_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[6]~26\ : std_logic;
SIGNAL \RX|Receptor|PRE[7]~27_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[7]~28\ : std_logic;
SIGNAL \RX|Receptor|PRE[8]~33_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[8]~34\ : std_logic;
SIGNAL \RX|Receptor|PRE[9]~35_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[9]~36\ : std_logic;
SIGNAL \RX|Receptor|PRE[10]~37_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[10]~38\ : std_logic;
SIGNAL \RX|Receptor|PRE[11]~39_combout\ : std_logic;
SIGNAL \RX|Receptor|PRE[11]~40\ : std_logic;
SIGNAL \RX|Receptor|PRE[12]~41_combout\ : std_logic;
SIGNAL \RX|Receptor|Equal0~1_combout\ : std_logic;
SIGNAL \RX|Receptor|Equal0~0_combout\ : std_logic;
SIGNAL \RX|Receptor|Equal0~2_combout\ : std_logic;
SIGNAL \RX|Receptor|Equal0~3_combout\ : std_logic;
SIGNAL \RX|Receptor|INDICE[2]~1_combout\ : std_logic;
SIGNAL \RX|Receptor|INDICE[1]~3_combout\ : std_logic;
SIGNAL \RX|Receptor|Add1~0_combout\ : std_logic;
SIGNAL \RX|Receptor|INDICE[2]~4_combout\ : std_logic;
SIGNAL \RX|Receptor|Add1~1_combout\ : std_logic;
SIGNAL \RX|Receptor|INDICE[3]~5_combout\ : std_logic;
SIGNAL \RX|Receptor|LessThan1~0_combout\ : std_logic;
SIGNAL \RX|Receptor|Flag~0_combout\ : std_logic;
SIGNAL \RX_WIRE~_wirecell_combout\ : std_logic;
SIGNAL \RX|Receptor|Flag~q\ : std_logic;
SIGNAL \RX|Receptor|INDICE[3]~0_combout\ : std_logic;
SIGNAL \RX|Receptor|INDICE[0]~2_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~3_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~2_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[0]~2_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~0_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[8]~7_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[9]~0_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~6_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS[7]~1_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~1_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[6]~6_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~5_combout\ : std_logic;
SIGNAL \RX|data[2]~0_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~4_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[7]~5_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~4_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~6_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[4]~8_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~7_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[2]~1_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~0_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[3]~3_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~2_combout\ : std_logic;
SIGNAL \RX|Receptor|Decoder0~5_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[5]~9_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~8_combout\ : std_logic;
SIGNAL \RX|Receptor|BUFF[1]~4_combout\ : std_logic;
SIGNAL \RX|Receptor|LEDS~3_combout\ : std_logic;
SIGNAL \RX|Mux5~2_combout\ : std_logic;
SIGNAL \RX|Mux5~4_combout\ : std_logic;
SIGNAL \RX|Mux4~1_combout\ : std_logic;
SIGNAL \RX|Mux0~0_combout\ : std_logic;
SIGNAL \RX|Mux0~1_combout\ : std_logic;
SIGNAL \RX|is_digit~q\ : std_logic;
SIGNAL \RX|Mux1~0_combout\ : std_logic;
SIGNAL \RX|Mux2~0_combout\ : std_logic;
SIGNAL \RX|data[2]~2_combout\ : std_logic;
SIGNAL \RX|data[2]~3_combout\ : std_logic;
SIGNAL \RX|Mux1~1_combout\ : std_logic;
SIGNAL \RX|R1|cuenta[21]~clkctrl_outclk\ : std_logic;
SIGNAL \RX|Mux4~0_combout\ : std_logic;
SIGNAL \RX|Mux4~2_combout\ : std_logic;
SIGNAL \RX|Mux4~3_combout\ : std_logic;
SIGNAL \RX|Mux3~0_combout\ : std_logic;
SIGNAL \RX|Mux3~2_combout\ : std_logic;
SIGNAL \RX|Mux3~3_combout\ : std_logic;
SIGNAL \RX|Mux3~1_combout\ : std_logic;
SIGNAL \Dig|Selector4~0_combout\ : std_logic;
SIGNAL \RX|Receptor|bandera~0_combout\ : std_logic;
SIGNAL \RX|Receptor|bandera~reg0_q\ : std_logic;
SIGNAL \RX|Receptor|bandera~reg0clkctrl_outclk\ : std_logic;
SIGNAL \RX|Mux5~3_combout\ : std_logic;
SIGNAL \RX|is_oper~q\ : std_logic;
SIGNAL \Dig|Equal0~0_combout\ : std_logic;
SIGNAL \Dig|Selector13~1_combout\ : std_logic;
SIGNAL \Dig|Selector4~1_combout\ : std_logic;
SIGNAL \Dig|state.D3~q\ : std_logic;
SIGNAL \Dig|Selector3~2_combout\ : std_logic;
SIGNAL \Dig|Selector3~1_combout\ : std_logic;
SIGNAL \Dig|Selector2~1_combout\ : std_logic;
SIGNAL \Dig|Selector1~1_combout\ : std_logic;
SIGNAL \Dig|Selector1~0_combout\ : std_logic;
SIGNAL \Dig|Selector1~2_combout\ : std_logic;
SIGNAL \Dig|state.Idle~q\ : std_logic;
SIGNAL \Dig|Selector2~0_combout\ : std_logic;
SIGNAL \Dig|Selector2~2_combout\ : std_logic;
SIGNAL \Dig|state.D1~q\ : std_logic;
SIGNAL \Dig|Selector3~3_combout\ : std_logic;
SIGNAL \Dig|state.D2~q\ : std_logic;
SIGNAL \Dig|Selector28~0_combout\ : std_logic;
SIGNAL \Dig|Equal3~0_combout\ : std_logic;
SIGNAL \Dig|Selector23~0_combout\ : std_logic;
SIGNAL \Dig|Selector28~1_combout\ : std_logic;
SIGNAL \Dig|Selector28~1clkctrl_outclk\ : std_logic;
SIGNAL \Dig|Sal0~2_combout\ : std_logic;
SIGNAL \Dig|Sal0~1_combout\ : std_logic;
SIGNAL \Dig|Sal0~0_combout\ : std_logic;
SIGNAL \Dig|Sal0~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Dig|Selector23~2_combout\ : std_logic;
SIGNAL \Dig|Selector23~2clkctrl_outclk\ : std_logic;
SIGNAL \Dig|Selector6~0_combout\ : std_logic;
SIGNAL \Dig|Selector20~0_combout\ : std_logic;
SIGNAL \Dig|Selector3~0_combout\ : std_logic;
SIGNAL \Dig|Selector23~1_combout\ : std_logic;
SIGNAL \Dig|Selector22~0_combout\ : std_logic;
SIGNAL \Dig|Selector22~0clkctrl_outclk\ : std_logic;
SIGNAL \Dig|Selector5~0_combout\ : std_logic;
SIGNAL \Dig|Selector21~0_combout\ : std_logic;
SIGNAL \Dig|Selector11~0_combout\ : std_logic;
SIGNAL \Dig|Selector18~0_combout\ : std_logic;
SIGNAL \Dig|Selector7~0_combout\ : std_logic;
SIGNAL \Dig|Selector19~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Dig|Selector9~0_combout\ : std_logic;
SIGNAL \Dig|Selector0~0_combout\ : std_logic;
SIGNAL \Dig|Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \Dig|Selector15~0_combout\ : std_logic;
SIGNAL \Dig|Selector17~0_combout\ : std_logic;
SIGNAL \Dig|Selector17~1_combout\ : std_logic;
SIGNAL \Dig|Selector17~1clkctrl_outclk\ : std_logic;
SIGNAL \Dig|Selector10~0_combout\ : std_logic;
SIGNAL \Dig|Selector14~0_combout\ : std_logic;
SIGNAL \Dig|Selector12~0_combout\ : std_logic;
SIGNAL \Dig|Selector13~0_combout\ : std_logic;
SIGNAL \Dig|Selector8~0_combout\ : std_logic;
SIGNAL \Dig|Selector16~0_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \RX|data[2]~1_combout\ : std_logic;
SIGNAL \RX|tipo[0]~0_combout\ : std_logic;
SIGNAL \RX|tipo[0]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Dig|Equal1~0_combout\ : std_logic;
SIGNAL \Dig|Equal1~0clkctrl_outclk\ : std_logic;
SIGNAL \bcd|D_sal[0]~0_combout\ : std_logic;
SIGNAL \bcd|Add1~0_combout\ : std_logic;
SIGNAL \bcd|D_sal[1]~1_combout\ : std_logic;
SIGNAL \bcd|Add1~1\ : std_logic;
SIGNAL \bcd|Add1~2_combout\ : std_logic;
SIGNAL \bcd|Add2~0_combout\ : std_logic;
SIGNAL \bcd|D_sal[2]~2_combout\ : std_logic;
SIGNAL \bcd|Add0~0_combout\ : std_logic;
SIGNAL \bcd|Add1~3\ : std_logic;
SIGNAL \bcd|Add1~4_combout\ : std_logic;
SIGNAL \bcd|Add2~1\ : std_logic;
SIGNAL \bcd|Add2~2_combout\ : std_logic;
SIGNAL \bcd|D_sal[3]~3_combout\ : std_logic;
SIGNAL \bcd|Add0~1_combout\ : std_logic;
SIGNAL \bcd|Add1~5\ : std_logic;
SIGNAL \bcd|Add1~6_combout\ : std_logic;
SIGNAL \bcd|Add2~3\ : std_logic;
SIGNAL \bcd|Add2~4_combout\ : std_logic;
SIGNAL \bcd|D_sal[4]~4_combout\ : std_logic;
SIGNAL \bcd|Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \bcd|Add0~2_combout\ : std_logic;
SIGNAL \bcd|Add1~7\ : std_logic;
SIGNAL \bcd|Add1~8_combout\ : std_logic;
SIGNAL \bcd|Add2~5\ : std_logic;
SIGNAL \bcd|Add2~6_combout\ : std_logic;
SIGNAL \bcd|D_sal[5]~5_combout\ : std_logic;
SIGNAL \bcd|Mult0|mult_core|romout[0][6]~0_combout\ : std_logic;
SIGNAL \bcd|Add0~3_combout\ : std_logic;
SIGNAL \bcd|Add1~9\ : std_logic;
SIGNAL \bcd|Add1~10_combout\ : std_logic;
SIGNAL \bcd|Add2~7\ : std_logic;
SIGNAL \bcd|Add2~8_combout\ : std_logic;
SIGNAL \bcd|D_sal[6]~6_combout\ : std_logic;
SIGNAL \Dig|debug_state~0_combout\ : std_logic;
SIGNAL \Dig|debug_state[0]~feeder_combout\ : std_logic;
SIGNAL \Dig|debug_state~1_combout\ : std_logic;
SIGNAL \Dig|debug_state[1]~feeder_combout\ : std_logic;
SIGNAL \Dig|debug_state[2]~feeder_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[0]~52_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[0]~53\ : std_logic;
SIGNAL \dd|T1|cuenta[1]~54_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[1]~55\ : std_logic;
SIGNAL \dd|T1|cuenta[2]~56_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[2]~57\ : std_logic;
SIGNAL \dd|T1|cuenta[3]~58_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[3]~59\ : std_logic;
SIGNAL \dd|T1|cuenta[4]~60_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[4]~61\ : std_logic;
SIGNAL \dd|T1|cuenta[5]~62_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[5]~63\ : std_logic;
SIGNAL \dd|T1|cuenta[6]~64_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[6]~65\ : std_logic;
SIGNAL \dd|T1|cuenta[7]~66_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[7]~67\ : std_logic;
SIGNAL \dd|T1|cuenta[8]~68_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[8]~69\ : std_logic;
SIGNAL \dd|T1|cuenta[9]~70_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[9]~71\ : std_logic;
SIGNAL \dd|T1|cuenta[10]~72_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[10]~73\ : std_logic;
SIGNAL \dd|T1|cuenta[11]~74_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[11]~75\ : std_logic;
SIGNAL \dd|T1|cuenta[12]~76_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[12]~77\ : std_logic;
SIGNAL \dd|T1|cuenta[13]~78_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[13]~79\ : std_logic;
SIGNAL \dd|T1|cuenta[14]~80_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[14]~81\ : std_logic;
SIGNAL \dd|T1|cuenta[15]~82_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[15]~83\ : std_logic;
SIGNAL \dd|T1|cuenta[16]~84_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[16]~85\ : std_logic;
SIGNAL \dd|T1|cuenta[17]~86_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[17]~87\ : std_logic;
SIGNAL \dd|T1|cuenta[18]~88_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[18]~89\ : std_logic;
SIGNAL \dd|T1|cuenta[19]~90_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[19]~91\ : std_logic;
SIGNAL \dd|T1|cuenta[20]~92_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[20]~93\ : std_logic;
SIGNAL \dd|T1|cuenta[21]~94_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[21]~95\ : std_logic;
SIGNAL \dd|T1|cuenta[22]~96_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[22]~97\ : std_logic;
SIGNAL \dd|T1|cuenta[23]~98_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[23]~99\ : std_logic;
SIGNAL \dd|T1|cuenta[24]~100_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[24]~101\ : std_logic;
SIGNAL \dd|T1|cuenta[25]~102_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[25]~103\ : std_logic;
SIGNAL \dd|T1|cuenta[26]~104_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[26]~105\ : std_logic;
SIGNAL \dd|T1|cuenta[27]~106_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[27]~107\ : std_logic;
SIGNAL \dd|T1|cuenta[28]~108_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[28]~109\ : std_logic;
SIGNAL \dd|T1|cuenta[29]~110_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[29]~111\ : std_logic;
SIGNAL \dd|T1|cuenta[30]~112_combout\ : std_logic;
SIGNAL \dd|T1|cuenta[30]~113\ : std_logic;
SIGNAL \dd|T1|cuenta[31]~114_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~0_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~1_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~2_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~3_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~4_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~5_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~6_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~7_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~8_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~9_combout\ : std_logic;
SIGNAL \dd|T1|LessThan0~10_combout\ : std_logic;
SIGNAL \dd|T1|clk1ms~feeder_combout\ : std_logic;
SIGNAL \dd|T1|clk1ms~q\ : std_logic;
SIGNAL \dd|T1|clk1ms~clkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \dd|T1|previo~q\ : std_logic;
SIGNAL \dd|T1|contando~q\ : std_logic;
SIGNAL \dd|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[1][8]~0_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[1][7]~1_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[1][6]~2_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][10]~3_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][8]~4_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][7]~5_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][6]~6_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \dd|Mult0|mult_core|romout[0][5]~7_combout\ : std_logic;
SIGNAL \dd|Add0~1_cout\ : std_logic;
SIGNAL \dd|Add0~3\ : std_logic;
SIGNAL \dd|Add0~5\ : std_logic;
SIGNAL \dd|Add0~7\ : std_logic;
SIGNAL \dd|Add0~9\ : std_logic;
SIGNAL \dd|Add0~11\ : std_logic;
SIGNAL \dd|Add0~13\ : std_logic;
SIGNAL \dd|Add0~15\ : std_logic;
SIGNAL \dd|Add0~17\ : std_logic;
SIGNAL \dd|Add0~19\ : std_logic;
SIGNAL \dd|Add0~21\ : std_logic;
SIGNAL \dd|Add0~23\ : std_logic;
SIGNAL \dd|Add0~25\ : std_logic;
SIGNAL \dd|Add0~26_combout\ : std_logic;
SIGNAL \dd|Tms1~26_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~32_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[16]~0_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[19]~q\ : std_logic;
SIGNAL \dd|T1|Add1~0_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~51_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[0]~q\ : std_logic;
SIGNAL \dd|T1|Add1~1\ : std_logic;
SIGNAL \dd|T1|Add1~2_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~50_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[1]~q\ : std_logic;
SIGNAL \dd|T1|Add1~3\ : std_logic;
SIGNAL \dd|T1|Add1~4_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~49_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[2]~q\ : std_logic;
SIGNAL \dd|T1|Add1~5\ : std_logic;
SIGNAL \dd|T1|Add1~6_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~48_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[3]~q\ : std_logic;
SIGNAL \dd|T1|Add1~7\ : std_logic;
SIGNAL \dd|T1|Add1~8_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~47_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[4]~q\ : std_logic;
SIGNAL \dd|T1|Add1~9\ : std_logic;
SIGNAL \dd|T1|Add1~10_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~46_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[5]~q\ : std_logic;
SIGNAL \dd|T1|Add1~11\ : std_logic;
SIGNAL \dd|T1|Add1~12_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~45_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[6]~q\ : std_logic;
SIGNAL \dd|T1|Add1~13\ : std_logic;
SIGNAL \dd|T1|Add1~14_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~44_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[7]~q\ : std_logic;
SIGNAL \dd|T1|Add1~15\ : std_logic;
SIGNAL \dd|T1|Add1~16_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~43_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[8]~q\ : std_logic;
SIGNAL \dd|T1|Add1~17\ : std_logic;
SIGNAL \dd|T1|Add1~18_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~42_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[9]~q\ : std_logic;
SIGNAL \dd|T1|Add1~19\ : std_logic;
SIGNAL \dd|T1|Add1~20_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~41_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[10]~q\ : std_logic;
SIGNAL \dd|T1|Add1~21\ : std_logic;
SIGNAL \dd|T1|Add1~22_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~40_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[11]~q\ : std_logic;
SIGNAL \dd|T1|Add1~23\ : std_logic;
SIGNAL \dd|T1|Add1~24_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~39_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[12]~q\ : std_logic;
SIGNAL \dd|T1|Add1~25\ : std_logic;
SIGNAL \dd|T1|Add1~26_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~38_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[13]~q\ : std_logic;
SIGNAL \dd|T1|Add1~27\ : std_logic;
SIGNAL \dd|T1|Add1~28_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~37_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[14]~q\ : std_logic;
SIGNAL \dd|T1|Add1~29\ : std_logic;
SIGNAL \dd|T1|Add1~30_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~36_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[15]~q\ : std_logic;
SIGNAL \dd|T1|Add1~31\ : std_logic;
SIGNAL \dd|T1|Add1~32_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~35_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[16]~q\ : std_logic;
SIGNAL \dd|T1|Add1~33\ : std_logic;
SIGNAL \dd|T1|Add1~34_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~34_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[17]~q\ : std_logic;
SIGNAL \dd|T1|Add1~35\ : std_logic;
SIGNAL \dd|T1|Add1~36_combout\ : std_logic;
SIGNAL \dd|T1|cuenta~33_combout\ : std_logic;
SIGNAL \dd|T1|process_1:cuenta[18]~q\ : std_logic;
SIGNAL \dd|T1|Add1~37\ : std_logic;
SIGNAL \dd|T1|Add1~38_combout\ : std_logic;
SIGNAL \dd|Add0~24_combout\ : std_logic;
SIGNAL \dd|Tms1~27_combout\ : std_logic;
SIGNAL \dd|Add0~22_combout\ : std_logic;
SIGNAL \dd|Tms1~28_combout\ : std_logic;
SIGNAL \dd|Add0~20_combout\ : std_logic;
SIGNAL \dd|Tms1~29_combout\ : std_logic;
SIGNAL \dd|Add0~18_combout\ : std_logic;
SIGNAL \dd|Tms1~30_combout\ : std_logic;
SIGNAL \dd|Add0~16_combout\ : std_logic;
SIGNAL \dd|Tms1~31_combout\ : std_logic;
SIGNAL \dd|Add0~14_combout\ : std_logic;
SIGNAL \dd|Tms1~32_combout\ : std_logic;
SIGNAL \dd|Add0~12_combout\ : std_logic;
SIGNAL \dd|Tms1~33_combout\ : std_logic;
SIGNAL \dd|Add0~10_combout\ : std_logic;
SIGNAL \dd|Tms1~34_combout\ : std_logic;
SIGNAL \dd|Add0~8_combout\ : std_logic;
SIGNAL \dd|Tms1~35_combout\ : std_logic;
SIGNAL \dd|Add0~6_combout\ : std_logic;
SIGNAL \dd|Tms1~36_combout\ : std_logic;
SIGNAL \dd|Add0~4_combout\ : std_logic;
SIGNAL \dd|Tms1~37_combout\ : std_logic;
SIGNAL \dd|Add0~2_combout\ : std_logic;
SIGNAL \dd|Tms1~38_combout\ : std_logic;
SIGNAL \dd|T1|LessThan1~1_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~3_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~5_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~7_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~9_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~11_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~13_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~15_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~17_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~19_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~21_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~23_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~25_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~27_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~29_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~31_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~33_cout\ : std_logic;
SIGNAL \dd|T1|LessThan1~34_combout\ : std_logic;
SIGNAL \dd|T1|P~0_combout\ : std_logic;
SIGNAL \dd|T1|P~feeder_combout\ : std_logic;
SIGNAL \dd|T1|P~q\ : std_logic;
SIGNAL \dd|T2|clk1ms~feeder_combout\ : std_logic;
SIGNAL \dd|T2|clk1ms~q\ : std_logic;
SIGNAL \dd|T2|clk1ms~clkctrl_outclk\ : std_logic;
SIGNAL \dd|T2|previo~q\ : std_logic;
SIGNAL \dd|T2|contando~q\ : std_logic;
SIGNAL \dd|Tms2~22_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~0_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[13]~0_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[19]~q\ : std_logic;
SIGNAL \dd|T2|Add1~0_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~19_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[0]~q\ : std_logic;
SIGNAL \dd|T2|Add1~1\ : std_logic;
SIGNAL \dd|T2|Add1~2_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~18_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[1]~q\ : std_logic;
SIGNAL \dd|T2|Add1~3\ : std_logic;
SIGNAL \dd|T2|Add1~4_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~17_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[2]~q\ : std_logic;
SIGNAL \dd|T2|Add1~5\ : std_logic;
SIGNAL \dd|T2|Add1~6_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~16_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[3]~q\ : std_logic;
SIGNAL \dd|T2|Add1~7\ : std_logic;
SIGNAL \dd|T2|Add1~8_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~15_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[4]~q\ : std_logic;
SIGNAL \dd|T2|Add1~9\ : std_logic;
SIGNAL \dd|T2|Add1~10_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~14_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[5]~q\ : std_logic;
SIGNAL \dd|T2|Add1~11\ : std_logic;
SIGNAL \dd|T2|Add1~12_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~13_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[6]~q\ : std_logic;
SIGNAL \dd|T2|Add1~13\ : std_logic;
SIGNAL \dd|T2|Add1~14_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~12_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[7]~q\ : std_logic;
SIGNAL \dd|T2|Add1~15\ : std_logic;
SIGNAL \dd|T2|Add1~16_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~11_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[8]~q\ : std_logic;
SIGNAL \dd|T2|Add1~17\ : std_logic;
SIGNAL \dd|T2|Add1~18_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~10_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[9]~q\ : std_logic;
SIGNAL \dd|T2|Add1~19\ : std_logic;
SIGNAL \dd|T2|Add1~20_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~9_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[10]~q\ : std_logic;
SIGNAL \dd|T2|Add1~21\ : std_logic;
SIGNAL \dd|T2|Add1~22_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~8_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[11]~q\ : std_logic;
SIGNAL \dd|T2|Add1~23\ : std_logic;
SIGNAL \dd|T2|Add1~24_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~7_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[12]~q\ : std_logic;
SIGNAL \dd|T2|Add1~25\ : std_logic;
SIGNAL \dd|T2|Add1~26_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~6_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[13]~q\ : std_logic;
SIGNAL \dd|T2|Add1~27\ : std_logic;
SIGNAL \dd|T2|Add1~28_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~5_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[14]~q\ : std_logic;
SIGNAL \dd|T2|Add1~29\ : std_logic;
SIGNAL \dd|T2|Add1~30_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~4_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[15]~q\ : std_logic;
SIGNAL \dd|T2|Add1~31\ : std_logic;
SIGNAL \dd|T2|Add1~32_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~3_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[16]~q\ : std_logic;
SIGNAL \dd|T2|Add1~33\ : std_logic;
SIGNAL \dd|T2|Add1~34_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~2_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[17]~q\ : std_logic;
SIGNAL \dd|T2|Add1~35\ : std_logic;
SIGNAL \dd|T2|Add1~36_combout\ : std_logic;
SIGNAL \dd|T2|cuenta~1_combout\ : std_logic;
SIGNAL \dd|T2|process_1:cuenta[18]~q\ : std_logic;
SIGNAL \dd|T2|Add1~37\ : std_logic;
SIGNAL \dd|T2|Add1~38_combout\ : std_logic;
SIGNAL \dd|Tms2~24_combout\ : std_logic;
SIGNAL \dd|Tms2~25_combout\ : std_logic;
SIGNAL \dd|Tms2~23_combout\ : std_logic;
SIGNAL \dd|Tms2~26_combout\ : std_logic;
SIGNAL \dd|Tms2~27_combout\ : std_logic;
SIGNAL \dd|Tms2~28_combout\ : std_logic;
SIGNAL \dd|Tms2~29_combout\ : std_logic;
SIGNAL \dd|Tms2~30_combout\ : std_logic;
SIGNAL \dd|Tms2~31_combout\ : std_logic;
SIGNAL \dd|Tms2~32_combout\ : std_logic;
SIGNAL \dd|Tms2~33_combout\ : std_logic;
SIGNAL \dd|Tms2~34_combout\ : std_logic;
SIGNAL \dd|T2|LessThan1~1_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~3_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~5_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~7_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~9_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~11_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~13_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~15_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~17_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~19_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~21_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~23_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~25_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~27_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~29_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~31_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~33_cout\ : std_logic;
SIGNAL \dd|T2|LessThan1~34_combout\ : std_logic;
SIGNAL \dd|T2|P~0_combout\ : std_logic;
SIGNAL \dd|T2|P~feeder_combout\ : std_logic;
SIGNAL \dd|T2|P~q\ : std_logic;
SIGNAL \RX|Receptor|INDICE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dd|T1|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RX|R1|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \RX|Receptor|PRE\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \dd|porcentaje\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Dig|decenas\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|tipo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \dd|Tms2\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RX|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|debug_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|Receptor|LEDS\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RX|Receptor|BUFF\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Dig|Sal0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dig|Sal1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dd|Tms1\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Dig|Sal2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd|bin\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Dig|unidades\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX|Receptor|ALT_INV_Flag~q\ : std_logic;
SIGNAL \ALT_INV_WideNor0~0_combout\ : std_logic;
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

ww_clk50MHz <= clk50MHz;
ww_RX_WIRE <= RX_WIRE;
disp_unidades <= ww_disp_unidades;
disp_decenas <= ww_disp_decenas;
disp_centenas <= ww_disp_centenas;
disp_tipo <= ww_disp_tipo;
ww_start <= start;
debug <= ww_debug;
debug_bin <= ww_debug_bin;
debug_state <= ww_debug_state;
bomba1 <= ww_bomba1;
bomba2 <= ww_bomba2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Dig|Selector17~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Selector17~1_combout\);

\Dig|Equal1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Equal1~0_combout\);

\dd|T2|clk1ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dd|T2|clk1ms~q\);

\dd|T1|clk1ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dd|T1|clk1ms~q\);

\Dig|Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Selector0~0_combout\);

\RX|Receptor|bandera~reg0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RX|Receptor|bandera~reg0_q\);

\Dig|Selector28~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Selector28~1_combout\);

\Dig|Selector23~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Selector23~2_combout\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

\Dig|Selector22~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Dig|Selector22~0_combout\);

\RX|R1|cuenta[21]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RX|R1|cuenta\(21));
\RX|Receptor|ALT_INV_Flag~q\ <= NOT \RX|Receptor|Flag~q\;
\ALT_INV_WideNor0~0_combout\ <= NOT \WideNor0~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: IOOBUF_X58_Y54_N16
\disp_unidades[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\disp_unidades[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\disp_unidades[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\disp_unidades[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\disp_unidades[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\disp_unidades[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\disp_unidades[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp_unidades[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\disp_decenas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\disp_decenas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\disp_decenas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\disp_decenas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\disp_decenas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\disp_decenas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\disp_decenas[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \disp_decenas[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\disp_centenas[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\disp_centenas[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\disp_centenas[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\disp_centenas[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\disp_centenas[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\disp_centenas[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\disp_centenas[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux14~0_combout\,
	devoe => ww_devoe,
	o => \disp_centenas[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\disp_tipo[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_tipo[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\disp_tipo[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_tipo[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\disp_tipo[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_tipo[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\disp_tipo[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \disp_tipo[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\disp_tipo[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_tipo[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\disp_tipo[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp_tipo[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\disp_tipo[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => \disp_tipo[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\debug[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data\(0),
	devoe => ww_devoe,
	o => \debug[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\debug[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data\(1),
	devoe => ww_devoe,
	o => \debug[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\debug[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data\(2),
	devoe => ww_devoe,
	o => \debug[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\debug[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX|data\(3),
	devoe => ww_devoe,
	o => \debug[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\debug_bin[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[0]~0_combout\,
	devoe => ww_devoe,
	o => \debug_bin[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\debug_bin[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[1]~1_combout\,
	devoe => ww_devoe,
	o => \debug_bin[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\debug_bin[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[2]~2_combout\,
	devoe => ww_devoe,
	o => \debug_bin[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\debug_bin[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[3]~3_combout\,
	devoe => ww_devoe,
	o => \debug_bin[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\debug_bin[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[4]~4_combout\,
	devoe => ww_devoe,
	o => \debug_bin[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\debug_bin[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[5]~5_combout\,
	devoe => ww_devoe,
	o => \debug_bin[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\debug_bin[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd|D_sal[6]~6_combout\,
	devoe => ww_devoe,
	o => \debug_bin[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\debug_state[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dig|debug_state\(0),
	devoe => ww_devoe,
	o => \debug_state[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\debug_state[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dig|debug_state\(1),
	devoe => ww_devoe,
	o => \debug_state[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\debug_state[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Dig|debug_state\(2),
	devoe => ww_devoe,
	o => \debug_state[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\debug_state[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \debug_state[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\bomba1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|T1|P~q\,
	devoe => ww_devoe,
	o => \bomba1~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\bomba2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dd|T2|P~q\,
	devoe => ww_devoe,
	o => \bomba2~output_o\);

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

-- Location: CLKCTRL_G19
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y45_N8
\RX|R1|cuenta[0]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[0]~63_combout\ = !\RX|R1|cuenta\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|R1|cuenta\(0),
	combout => \RX|R1|cuenta[0]~63_combout\);

-- Location: FF_X59_Y45_N9
\RX|R1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(0));

-- Location: LCCOMB_X59_Y45_N12
\RX|R1|cuenta[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[1]~21_combout\ = (\RX|R1|cuenta\(1) & (\RX|R1|cuenta\(0) $ (VCC))) # (!\RX|R1|cuenta\(1) & (\RX|R1|cuenta\(0) & VCC))
-- \RX|R1|cuenta[1]~22\ = CARRY((\RX|R1|cuenta\(1) & \RX|R1|cuenta\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(1),
	datab => \RX|R1|cuenta\(0),
	datad => VCC,
	combout => \RX|R1|cuenta[1]~21_combout\,
	cout => \RX|R1|cuenta[1]~22\);

-- Location: FF_X59_Y45_N13
\RX|R1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(1));

-- Location: LCCOMB_X59_Y45_N14
\RX|R1|cuenta[2]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[2]~23_combout\ = (\RX|R1|cuenta\(2) & (!\RX|R1|cuenta[1]~22\)) # (!\RX|R1|cuenta\(2) & ((\RX|R1|cuenta[1]~22\) # (GND)))
-- \RX|R1|cuenta[2]~24\ = CARRY((!\RX|R1|cuenta[1]~22\) # (!\RX|R1|cuenta\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(2),
	datad => VCC,
	cin => \RX|R1|cuenta[1]~22\,
	combout => \RX|R1|cuenta[2]~23_combout\,
	cout => \RX|R1|cuenta[2]~24\);

-- Location: FF_X59_Y45_N15
\RX|R1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(2));

-- Location: LCCOMB_X59_Y45_N16
\RX|R1|cuenta[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[3]~25_combout\ = (\RX|R1|cuenta\(3) & (\RX|R1|cuenta[2]~24\ $ (GND))) # (!\RX|R1|cuenta\(3) & (!\RX|R1|cuenta[2]~24\ & VCC))
-- \RX|R1|cuenta[3]~26\ = CARRY((\RX|R1|cuenta\(3) & !\RX|R1|cuenta[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(3),
	datad => VCC,
	cin => \RX|R1|cuenta[2]~24\,
	combout => \RX|R1|cuenta[3]~25_combout\,
	cout => \RX|R1|cuenta[3]~26\);

-- Location: FF_X59_Y45_N17
\RX|R1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[3]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(3));

-- Location: LCCOMB_X59_Y45_N18
\RX|R1|cuenta[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[4]~27_combout\ = (\RX|R1|cuenta\(4) & (!\RX|R1|cuenta[3]~26\)) # (!\RX|R1|cuenta\(4) & ((\RX|R1|cuenta[3]~26\) # (GND)))
-- \RX|R1|cuenta[4]~28\ = CARRY((!\RX|R1|cuenta[3]~26\) # (!\RX|R1|cuenta\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(4),
	datad => VCC,
	cin => \RX|R1|cuenta[3]~26\,
	combout => \RX|R1|cuenta[4]~27_combout\,
	cout => \RX|R1|cuenta[4]~28\);

-- Location: FF_X59_Y45_N19
\RX|R1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(4));

-- Location: LCCOMB_X59_Y45_N20
\RX|R1|cuenta[5]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[5]~29_combout\ = (\RX|R1|cuenta\(5) & (\RX|R1|cuenta[4]~28\ $ (GND))) # (!\RX|R1|cuenta\(5) & (!\RX|R1|cuenta[4]~28\ & VCC))
-- \RX|R1|cuenta[5]~30\ = CARRY((\RX|R1|cuenta\(5) & !\RX|R1|cuenta[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(5),
	datad => VCC,
	cin => \RX|R1|cuenta[4]~28\,
	combout => \RX|R1|cuenta[5]~29_combout\,
	cout => \RX|R1|cuenta[5]~30\);

-- Location: FF_X59_Y45_N21
\RX|R1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(5));

-- Location: LCCOMB_X59_Y45_N22
\RX|R1|cuenta[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[6]~31_combout\ = (\RX|R1|cuenta\(6) & (!\RX|R1|cuenta[5]~30\)) # (!\RX|R1|cuenta\(6) & ((\RX|R1|cuenta[5]~30\) # (GND)))
-- \RX|R1|cuenta[6]~32\ = CARRY((!\RX|R1|cuenta[5]~30\) # (!\RX|R1|cuenta\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(6),
	datad => VCC,
	cin => \RX|R1|cuenta[5]~30\,
	combout => \RX|R1|cuenta[6]~31_combout\,
	cout => \RX|R1|cuenta[6]~32\);

-- Location: FF_X59_Y45_N23
\RX|R1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(6));

-- Location: LCCOMB_X59_Y45_N24
\RX|R1|cuenta[7]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[7]~33_combout\ = (\RX|R1|cuenta\(7) & (\RX|R1|cuenta[6]~32\ $ (GND))) # (!\RX|R1|cuenta\(7) & (!\RX|R1|cuenta[6]~32\ & VCC))
-- \RX|R1|cuenta[7]~34\ = CARRY((\RX|R1|cuenta\(7) & !\RX|R1|cuenta[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(7),
	datad => VCC,
	cin => \RX|R1|cuenta[6]~32\,
	combout => \RX|R1|cuenta[7]~33_combout\,
	cout => \RX|R1|cuenta[7]~34\);

-- Location: FF_X59_Y45_N25
\RX|R1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[7]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(7));

-- Location: LCCOMB_X59_Y45_N26
\RX|R1|cuenta[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[8]~35_combout\ = (\RX|R1|cuenta\(8) & (!\RX|R1|cuenta[7]~34\)) # (!\RX|R1|cuenta\(8) & ((\RX|R1|cuenta[7]~34\) # (GND)))
-- \RX|R1|cuenta[8]~36\ = CARRY((!\RX|R1|cuenta[7]~34\) # (!\RX|R1|cuenta\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(8),
	datad => VCC,
	cin => \RX|R1|cuenta[7]~34\,
	combout => \RX|R1|cuenta[8]~35_combout\,
	cout => \RX|R1|cuenta[8]~36\);

-- Location: FF_X59_Y45_N27
\RX|R1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[8]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(8));

-- Location: LCCOMB_X59_Y45_N28
\RX|R1|cuenta[9]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[9]~37_combout\ = (\RX|R1|cuenta\(9) & (\RX|R1|cuenta[8]~36\ $ (GND))) # (!\RX|R1|cuenta\(9) & (!\RX|R1|cuenta[8]~36\ & VCC))
-- \RX|R1|cuenta[9]~38\ = CARRY((\RX|R1|cuenta\(9) & !\RX|R1|cuenta[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(9),
	datad => VCC,
	cin => \RX|R1|cuenta[8]~36\,
	combout => \RX|R1|cuenta[9]~37_combout\,
	cout => \RX|R1|cuenta[9]~38\);

-- Location: FF_X59_Y45_N29
\RX|R1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[9]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(9));

-- Location: LCCOMB_X59_Y45_N30
\RX|R1|cuenta[10]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[10]~39_combout\ = (\RX|R1|cuenta\(10) & (!\RX|R1|cuenta[9]~38\)) # (!\RX|R1|cuenta\(10) & ((\RX|R1|cuenta[9]~38\) # (GND)))
-- \RX|R1|cuenta[10]~40\ = CARRY((!\RX|R1|cuenta[9]~38\) # (!\RX|R1|cuenta\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(10),
	datad => VCC,
	cin => \RX|R1|cuenta[9]~38\,
	combout => \RX|R1|cuenta[10]~39_combout\,
	cout => \RX|R1|cuenta[10]~40\);

-- Location: FF_X59_Y45_N31
\RX|R1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[10]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(10));

-- Location: LCCOMB_X59_Y44_N0
\RX|R1|cuenta[11]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[11]~41_combout\ = (\RX|R1|cuenta\(11) & (\RX|R1|cuenta[10]~40\ $ (GND))) # (!\RX|R1|cuenta\(11) & (!\RX|R1|cuenta[10]~40\ & VCC))
-- \RX|R1|cuenta[11]~42\ = CARRY((\RX|R1|cuenta\(11) & !\RX|R1|cuenta[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(11),
	datad => VCC,
	cin => \RX|R1|cuenta[10]~40\,
	combout => \RX|R1|cuenta[11]~41_combout\,
	cout => \RX|R1|cuenta[11]~42\);

-- Location: FF_X59_Y44_N1
\RX|R1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[11]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(11));

-- Location: LCCOMB_X59_Y44_N2
\RX|R1|cuenta[12]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[12]~43_combout\ = (\RX|R1|cuenta\(12) & (!\RX|R1|cuenta[11]~42\)) # (!\RX|R1|cuenta\(12) & ((\RX|R1|cuenta[11]~42\) # (GND)))
-- \RX|R1|cuenta[12]~44\ = CARRY((!\RX|R1|cuenta[11]~42\) # (!\RX|R1|cuenta\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(12),
	datad => VCC,
	cin => \RX|R1|cuenta[11]~42\,
	combout => \RX|R1|cuenta[12]~43_combout\,
	cout => \RX|R1|cuenta[12]~44\);

-- Location: FF_X59_Y44_N3
\RX|R1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[12]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(12));

-- Location: LCCOMB_X59_Y44_N4
\RX|R1|cuenta[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[13]~45_combout\ = (\RX|R1|cuenta\(13) & (\RX|R1|cuenta[12]~44\ $ (GND))) # (!\RX|R1|cuenta\(13) & (!\RX|R1|cuenta[12]~44\ & VCC))
-- \RX|R1|cuenta[13]~46\ = CARRY((\RX|R1|cuenta\(13) & !\RX|R1|cuenta[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(13),
	datad => VCC,
	cin => \RX|R1|cuenta[12]~44\,
	combout => \RX|R1|cuenta[13]~45_combout\,
	cout => \RX|R1|cuenta[13]~46\);

-- Location: FF_X59_Y44_N5
\RX|R1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[13]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(13));

-- Location: LCCOMB_X59_Y44_N6
\RX|R1|cuenta[14]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[14]~47_combout\ = (\RX|R1|cuenta\(14) & (!\RX|R1|cuenta[13]~46\)) # (!\RX|R1|cuenta\(14) & ((\RX|R1|cuenta[13]~46\) # (GND)))
-- \RX|R1|cuenta[14]~48\ = CARRY((!\RX|R1|cuenta[13]~46\) # (!\RX|R1|cuenta\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(14),
	datad => VCC,
	cin => \RX|R1|cuenta[13]~46\,
	combout => \RX|R1|cuenta[14]~47_combout\,
	cout => \RX|R1|cuenta[14]~48\);

-- Location: FF_X59_Y44_N7
\RX|R1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[14]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(14));

-- Location: LCCOMB_X59_Y44_N8
\RX|R1|cuenta[15]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[15]~49_combout\ = (\RX|R1|cuenta\(15) & (\RX|R1|cuenta[14]~48\ $ (GND))) # (!\RX|R1|cuenta\(15) & (!\RX|R1|cuenta[14]~48\ & VCC))
-- \RX|R1|cuenta[15]~50\ = CARRY((\RX|R1|cuenta\(15) & !\RX|R1|cuenta[14]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(15),
	datad => VCC,
	cin => \RX|R1|cuenta[14]~48\,
	combout => \RX|R1|cuenta[15]~49_combout\,
	cout => \RX|R1|cuenta[15]~50\);

-- Location: FF_X59_Y44_N9
\RX|R1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[15]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(15));

-- Location: LCCOMB_X59_Y44_N10
\RX|R1|cuenta[16]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[16]~51_combout\ = (\RX|R1|cuenta\(16) & (!\RX|R1|cuenta[15]~50\)) # (!\RX|R1|cuenta\(16) & ((\RX|R1|cuenta[15]~50\) # (GND)))
-- \RX|R1|cuenta[16]~52\ = CARRY((!\RX|R1|cuenta[15]~50\) # (!\RX|R1|cuenta\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(16),
	datad => VCC,
	cin => \RX|R1|cuenta[15]~50\,
	combout => \RX|R1|cuenta[16]~51_combout\,
	cout => \RX|R1|cuenta[16]~52\);

-- Location: FF_X59_Y44_N11
\RX|R1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[16]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(16));

-- Location: LCCOMB_X59_Y44_N12
\RX|R1|cuenta[17]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[17]~53_combout\ = (\RX|R1|cuenta\(17) & (\RX|R1|cuenta[16]~52\ $ (GND))) # (!\RX|R1|cuenta\(17) & (!\RX|R1|cuenta[16]~52\ & VCC))
-- \RX|R1|cuenta[17]~54\ = CARRY((\RX|R1|cuenta\(17) & !\RX|R1|cuenta[16]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|R1|cuenta\(17),
	datad => VCC,
	cin => \RX|R1|cuenta[16]~52\,
	combout => \RX|R1|cuenta[17]~53_combout\,
	cout => \RX|R1|cuenta[17]~54\);

-- Location: FF_X59_Y44_N13
\RX|R1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[17]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(17));

-- Location: LCCOMB_X59_Y44_N14
\RX|R1|cuenta[18]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[18]~55_combout\ = (\RX|R1|cuenta\(18) & (!\RX|R1|cuenta[17]~54\)) # (!\RX|R1|cuenta\(18) & ((\RX|R1|cuenta[17]~54\) # (GND)))
-- \RX|R1|cuenta[18]~56\ = CARRY((!\RX|R1|cuenta[17]~54\) # (!\RX|R1|cuenta\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(18),
	datad => VCC,
	cin => \RX|R1|cuenta[17]~54\,
	combout => \RX|R1|cuenta[18]~55_combout\,
	cout => \RX|R1|cuenta[18]~56\);

-- Location: FF_X59_Y44_N15
\RX|R1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[18]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(18));

-- Location: LCCOMB_X59_Y44_N16
\RX|R1|cuenta[19]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[19]~57_combout\ = (\RX|R1|cuenta\(19) & (\RX|R1|cuenta[18]~56\ $ (GND))) # (!\RX|R1|cuenta\(19) & (!\RX|R1|cuenta[18]~56\ & VCC))
-- \RX|R1|cuenta[19]~58\ = CARRY((\RX|R1|cuenta\(19) & !\RX|R1|cuenta[18]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(19),
	datad => VCC,
	cin => \RX|R1|cuenta[18]~56\,
	combout => \RX|R1|cuenta[19]~57_combout\,
	cout => \RX|R1|cuenta[19]~58\);

-- Location: FF_X59_Y44_N17
\RX|R1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[19]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(19));

-- Location: LCCOMB_X59_Y44_N18
\RX|R1|cuenta[20]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[20]~59_combout\ = (\RX|R1|cuenta\(20) & (!\RX|R1|cuenta[19]~58\)) # (!\RX|R1|cuenta\(20) & ((\RX|R1|cuenta[19]~58\) # (GND)))
-- \RX|R1|cuenta[20]~60\ = CARRY((!\RX|R1|cuenta[19]~58\) # (!\RX|R1|cuenta\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|R1|cuenta\(20),
	datad => VCC,
	cin => \RX|R1|cuenta[19]~58\,
	combout => \RX|R1|cuenta[20]~59_combout\,
	cout => \RX|R1|cuenta[20]~60\);

-- Location: FF_X59_Y44_N19
\RX|R1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[20]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(20));

-- Location: LCCOMB_X59_Y44_N20
\RX|R1|cuenta[21]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|R1|cuenta[21]~61_combout\ = \RX|R1|cuenta[20]~60\ $ (!\RX|R1|cuenta\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RX|R1|cuenta\(21),
	cin => \RX|R1|cuenta[20]~60\,
	combout => \RX|R1|cuenta[21]~61_combout\);

-- Location: FF_X59_Y44_N21
\RX|R1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|R1|cuenta[21]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|R1|cuenta\(21));

-- Location: LCCOMB_X58_Y49_N4
\RX|Receptor|PRE[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[0]~13_combout\ = \RX|Receptor|PRE\(0) $ (VCC)
-- \RX|Receptor|PRE[0]~14\ = CARRY(\RX|Receptor|PRE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(0),
	datad => VCC,
	combout => \RX|Receptor|PRE[0]~13_combout\,
	cout => \RX|Receptor|PRE[0]~14\);

-- Location: LCCOMB_X57_Y49_N18
\RX|Receptor|PRE[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[4]~29_combout\ = (!\RX|Receptor|PRE\(9) & (((!\RX|Receptor|PRE\(5) & !\RX|Receptor|PRE\(4))) # (!\RX|Receptor|PRE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(9),
	datab => \RX|Receptor|PRE\(5),
	datac => \RX|Receptor|PRE\(4),
	datad => \RX|Receptor|PRE\(6),
	combout => \RX|Receptor|PRE[4]~29_combout\);

-- Location: LCCOMB_X57_Y49_N24
\RX|Receptor|PRE[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[4]~30_combout\ = ((!\RX|Receptor|PRE\(7) & (!\RX|Receptor|PRE\(8) & \RX|Receptor|PRE[4]~29_combout\))) # (!\RX|Receptor|PRE\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(7),
	datab => \RX|Receptor|PRE\(10),
	datac => \RX|Receptor|PRE\(8),
	datad => \RX|Receptor|PRE[4]~29_combout\,
	combout => \RX|Receptor|PRE[4]~30_combout\);

-- Location: LCCOMB_X57_Y49_N26
\RX|Receptor|PRE[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[4]~31_combout\ = ((\RX|Receptor|PRE\(12) & ((\RX|Receptor|PRE\(11)) # (!\RX|Receptor|PRE[4]~30_combout\)))) # (!\RX|Receptor|Flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Flag~q\,
	datab => \RX|Receptor|PRE\(12),
	datac => \RX|Receptor|PRE\(11),
	datad => \RX|Receptor|PRE[4]~30_combout\,
	combout => \RX|Receptor|PRE[4]~31_combout\);

-- Location: IOIBUF_X18_Y0_N22
\RX_WIRE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX_WIRE,
	o => \RX_WIRE~input_o\);

-- Location: LCCOMB_X57_Y48_N30
\RX|Receptor|PRE~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE~32_combout\ = (\RX|Receptor|Flag~q\) # (!\RX_WIRE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_WIRE~input_o\,
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|PRE~32_combout\);

-- Location: FF_X57_Y49_N9
\RX|Receptor|PRE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \RX|Receptor|PRE[0]~13_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	sload => VCC,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(0));

-- Location: LCCOMB_X58_Y49_N6
\RX|Receptor|PRE[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[1]~15_combout\ = (\RX|Receptor|PRE\(1) & (!\RX|Receptor|PRE[0]~14\)) # (!\RX|Receptor|PRE\(1) & ((\RX|Receptor|PRE[0]~14\) # (GND)))
-- \RX|Receptor|PRE[1]~16\ = CARRY((!\RX|Receptor|PRE[0]~14\) # (!\RX|Receptor|PRE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(1),
	datad => VCC,
	cin => \RX|Receptor|PRE[0]~14\,
	combout => \RX|Receptor|PRE[1]~15_combout\,
	cout => \RX|Receptor|PRE[1]~16\);

-- Location: FF_X57_Y49_N7
\RX|Receptor|PRE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \RX|Receptor|PRE[1]~15_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	sload => VCC,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(1));

-- Location: LCCOMB_X58_Y49_N8
\RX|Receptor|PRE[2]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[2]~17_combout\ = (\RX|Receptor|PRE\(2) & (\RX|Receptor|PRE[1]~16\ $ (GND))) # (!\RX|Receptor|PRE\(2) & (!\RX|Receptor|PRE[1]~16\ & VCC))
-- \RX|Receptor|PRE[2]~18\ = CARRY((\RX|Receptor|PRE\(2) & !\RX|Receptor|PRE[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(2),
	datad => VCC,
	cin => \RX|Receptor|PRE[1]~16\,
	combout => \RX|Receptor|PRE[2]~17_combout\,
	cout => \RX|Receptor|PRE[2]~18\);

-- Location: FF_X58_Y49_N9
\RX|Receptor|PRE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[2]~17_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(2));

-- Location: LCCOMB_X58_Y49_N10
\RX|Receptor|PRE[3]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[3]~19_combout\ = (\RX|Receptor|PRE\(3) & (!\RX|Receptor|PRE[2]~18\)) # (!\RX|Receptor|PRE\(3) & ((\RX|Receptor|PRE[2]~18\) # (GND)))
-- \RX|Receptor|PRE[3]~20\ = CARRY((!\RX|Receptor|PRE[2]~18\) # (!\RX|Receptor|PRE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(3),
	datad => VCC,
	cin => \RX|Receptor|PRE[2]~18\,
	combout => \RX|Receptor|PRE[3]~19_combout\,
	cout => \RX|Receptor|PRE[3]~20\);

-- Location: FF_X58_Y49_N11
\RX|Receptor|PRE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[3]~19_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(3));

-- Location: LCCOMB_X58_Y49_N12
\RX|Receptor|PRE[4]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[4]~21_combout\ = (\RX|Receptor|PRE\(4) & (\RX|Receptor|PRE[3]~20\ $ (GND))) # (!\RX|Receptor|PRE\(4) & (!\RX|Receptor|PRE[3]~20\ & VCC))
-- \RX|Receptor|PRE[4]~22\ = CARRY((\RX|Receptor|PRE\(4) & !\RX|Receptor|PRE[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(4),
	datad => VCC,
	cin => \RX|Receptor|PRE[3]~20\,
	combout => \RX|Receptor|PRE[4]~21_combout\,
	cout => \RX|Receptor|PRE[4]~22\);

-- Location: FF_X58_Y49_N13
\RX|Receptor|PRE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[4]~21_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(4));

-- Location: LCCOMB_X58_Y49_N14
\RX|Receptor|PRE[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[5]~23_combout\ = (\RX|Receptor|PRE\(5) & (!\RX|Receptor|PRE[4]~22\)) # (!\RX|Receptor|PRE\(5) & ((\RX|Receptor|PRE[4]~22\) # (GND)))
-- \RX|Receptor|PRE[5]~24\ = CARRY((!\RX|Receptor|PRE[4]~22\) # (!\RX|Receptor|PRE\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(5),
	datad => VCC,
	cin => \RX|Receptor|PRE[4]~22\,
	combout => \RX|Receptor|PRE[5]~23_combout\,
	cout => \RX|Receptor|PRE[5]~24\);

-- Location: FF_X58_Y49_N15
\RX|Receptor|PRE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[5]~23_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(5));

-- Location: LCCOMB_X58_Y49_N16
\RX|Receptor|PRE[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[6]~25_combout\ = (\RX|Receptor|PRE\(6) & (\RX|Receptor|PRE[5]~24\ $ (GND))) # (!\RX|Receptor|PRE\(6) & (!\RX|Receptor|PRE[5]~24\ & VCC))
-- \RX|Receptor|PRE[6]~26\ = CARRY((\RX|Receptor|PRE\(6) & !\RX|Receptor|PRE[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(6),
	datad => VCC,
	cin => \RX|Receptor|PRE[5]~24\,
	combout => \RX|Receptor|PRE[6]~25_combout\,
	cout => \RX|Receptor|PRE[6]~26\);

-- Location: FF_X58_Y49_N17
\RX|Receptor|PRE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[6]~25_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(6));

-- Location: LCCOMB_X58_Y49_N18
\RX|Receptor|PRE[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[7]~27_combout\ = (\RX|Receptor|PRE\(7) & (!\RX|Receptor|PRE[6]~26\)) # (!\RX|Receptor|PRE\(7) & ((\RX|Receptor|PRE[6]~26\) # (GND)))
-- \RX|Receptor|PRE[7]~28\ = CARRY((!\RX|Receptor|PRE[6]~26\) # (!\RX|Receptor|PRE\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(7),
	datad => VCC,
	cin => \RX|Receptor|PRE[6]~26\,
	combout => \RX|Receptor|PRE[7]~27_combout\,
	cout => \RX|Receptor|PRE[7]~28\);

-- Location: FF_X57_Y49_N29
\RX|Receptor|PRE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \RX|Receptor|PRE[7]~27_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	sload => VCC,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(7));

-- Location: LCCOMB_X58_Y49_N20
\RX|Receptor|PRE[8]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[8]~33_combout\ = (\RX|Receptor|PRE\(8) & (\RX|Receptor|PRE[7]~28\ $ (GND))) # (!\RX|Receptor|PRE\(8) & (!\RX|Receptor|PRE[7]~28\ & VCC))
-- \RX|Receptor|PRE[8]~34\ = CARRY((\RX|Receptor|PRE\(8) & !\RX|Receptor|PRE[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(8),
	datad => VCC,
	cin => \RX|Receptor|PRE[7]~28\,
	combout => \RX|Receptor|PRE[8]~33_combout\,
	cout => \RX|Receptor|PRE[8]~34\);

-- Location: FF_X57_Y49_N15
\RX|Receptor|PRE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \RX|Receptor|PRE[8]~33_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	sload => VCC,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(8));

-- Location: LCCOMB_X58_Y49_N22
\RX|Receptor|PRE[9]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[9]~35_combout\ = (\RX|Receptor|PRE\(9) & (!\RX|Receptor|PRE[8]~34\)) # (!\RX|Receptor|PRE\(9) & ((\RX|Receptor|PRE[8]~34\) # (GND)))
-- \RX|Receptor|PRE[9]~36\ = CARRY((!\RX|Receptor|PRE[8]~34\) # (!\RX|Receptor|PRE\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(9),
	datad => VCC,
	cin => \RX|Receptor|PRE[8]~34\,
	combout => \RX|Receptor|PRE[9]~35_combout\,
	cout => \RX|Receptor|PRE[9]~36\);

-- Location: FF_X58_Y49_N23
\RX|Receptor|PRE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[9]~35_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(9));

-- Location: LCCOMB_X58_Y49_N24
\RX|Receptor|PRE[10]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[10]~37_combout\ = (\RX|Receptor|PRE\(10) & (\RX|Receptor|PRE[9]~36\ $ (GND))) # (!\RX|Receptor|PRE\(10) & (!\RX|Receptor|PRE[9]~36\ & VCC))
-- \RX|Receptor|PRE[10]~38\ = CARRY((\RX|Receptor|PRE\(10) & !\RX|Receptor|PRE[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(10),
	datad => VCC,
	cin => \RX|Receptor|PRE[9]~36\,
	combout => \RX|Receptor|PRE[10]~37_combout\,
	cout => \RX|Receptor|PRE[10]~38\);

-- Location: FF_X58_Y49_N25
\RX|Receptor|PRE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[10]~37_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(10));

-- Location: LCCOMB_X58_Y49_N26
\RX|Receptor|PRE[11]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[11]~39_combout\ = (\RX|Receptor|PRE\(11) & (!\RX|Receptor|PRE[10]~38\)) # (!\RX|Receptor|PRE\(11) & ((\RX|Receptor|PRE[10]~38\) # (GND)))
-- \RX|Receptor|PRE[11]~40\ = CARRY((!\RX|Receptor|PRE[10]~38\) # (!\RX|Receptor|PRE\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|PRE\(11),
	datad => VCC,
	cin => \RX|Receptor|PRE[10]~38\,
	combout => \RX|Receptor|PRE[11]~39_combout\,
	cout => \RX|Receptor|PRE[11]~40\);

-- Location: FF_X58_Y49_N27
\RX|Receptor|PRE[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[11]~39_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(11));

-- Location: LCCOMB_X58_Y49_N28
\RX|Receptor|PRE[12]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|PRE[12]~41_combout\ = \RX|Receptor|PRE[11]~40\ $ (!\RX|Receptor|PRE\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RX|Receptor|PRE\(12),
	cin => \RX|Receptor|PRE[11]~40\,
	combout => \RX|Receptor|PRE[12]~41_combout\);

-- Location: FF_X58_Y49_N29
\RX|Receptor|PRE[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|PRE[12]~41_combout\,
	sclr => \RX|Receptor|PRE[4]~31_combout\,
	ena => \RX|Receptor|PRE~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|PRE\(12));

-- Location: LCCOMB_X58_Y49_N0
\RX|Receptor|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Equal0~1_combout\ = (\RX|Receptor|PRE\(3) & (\RX|Receptor|PRE\(5) & (!\RX|Receptor|PRE\(2) & !\RX|Receptor|PRE\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(3),
	datab => \RX|Receptor|PRE\(5),
	datac => \RX|Receptor|PRE\(2),
	datad => \RX|Receptor|PRE\(4),
	combout => \RX|Receptor|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y49_N4
\RX|Receptor|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Equal0~0_combout\ = (!\RX|Receptor|PRE\(1) & (!\RX|Receptor|PRE\(8) & (!\RX|Receptor|PRE\(0) & !\RX|Receptor|PRE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(1),
	datab => \RX|Receptor|PRE\(8),
	datac => \RX|Receptor|PRE\(0),
	datad => \RX|Receptor|PRE\(7),
	combout => \RX|Receptor|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y49_N2
\RX|Receptor|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Equal0~2_combout\ = (\RX|Receptor|PRE\(9) & (!\RX|Receptor|PRE\(10) & (\RX|Receptor|PRE\(11) & !\RX|Receptor|PRE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(9),
	datab => \RX|Receptor|PRE\(10),
	datac => \RX|Receptor|PRE\(11),
	datad => \RX|Receptor|PRE\(6),
	combout => \RX|Receptor|Equal0~2_combout\);

-- Location: LCCOMB_X58_Y49_N30
\RX|Receptor|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Equal0~3_combout\ = (!\RX|Receptor|PRE\(12) & (\RX|Receptor|Equal0~1_combout\ & (\RX|Receptor|Equal0~0_combout\ & \RX|Receptor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|PRE\(12),
	datab => \RX|Receptor|Equal0~1_combout\,
	datac => \RX|Receptor|Equal0~0_combout\,
	datad => \RX|Receptor|Equal0~2_combout\,
	combout => \RX|Receptor|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y48_N18
\RX|Receptor|INDICE[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[2]~1_combout\ = (\RX|Receptor|Flag~q\ & (\RX|Receptor|LessThan1~0_combout\ & \RX|Receptor|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|Flag~q\,
	datac => \RX|Receptor|LessThan1~0_combout\,
	datad => \RX|Receptor|Equal0~3_combout\,
	combout => \RX|Receptor|INDICE[2]~1_combout\);

-- Location: LCCOMB_X58_Y48_N2
\RX|Receptor|INDICE[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[1]~3_combout\ = (\RX|Receptor|INDICE\(1) & ((\RX|Receptor|INDICE[3]~0_combout\) # ((!\RX|Receptor|INDICE\(0) & \RX|Receptor|INDICE[2]~1_combout\)))) # (!\RX|Receptor|INDICE\(1) & (\RX|Receptor|INDICE\(0) & 
-- (\RX|Receptor|INDICE[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(0),
	datab => \RX|Receptor|INDICE[2]~1_combout\,
	datac => \RX|Receptor|INDICE\(1),
	datad => \RX|Receptor|INDICE[3]~0_combout\,
	combout => \RX|Receptor|INDICE[1]~3_combout\);

-- Location: FF_X58_Y48_N3
\RX|Receptor|INDICE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|INDICE[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|INDICE\(1));

-- Location: LCCOMB_X58_Y48_N16
\RX|Receptor|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Add1~0_combout\ = \RX|Receptor|INDICE\(2) $ (((\RX|Receptor|INDICE\(1) & \RX|Receptor|INDICE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|INDICE\(1),
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE\(0),
	combout => \RX|Receptor|Add1~0_combout\);

-- Location: LCCOMB_X58_Y48_N8
\RX|Receptor|INDICE[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[2]~4_combout\ = (\RX|Receptor|Add1~0_combout\ & ((\RX|Receptor|INDICE[2]~1_combout\) # ((\RX|Receptor|INDICE[3]~0_combout\ & \RX|Receptor|INDICE\(2))))) # (!\RX|Receptor|Add1~0_combout\ & (\RX|Receptor|INDICE[3]~0_combout\ & 
-- (\RX|Receptor|INDICE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Add1~0_combout\,
	datab => \RX|Receptor|INDICE[3]~0_combout\,
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE[2]~1_combout\,
	combout => \RX|Receptor|INDICE[2]~4_combout\);

-- Location: FF_X58_Y48_N9
\RX|Receptor|INDICE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|INDICE[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|INDICE\(2));

-- Location: LCCOMB_X58_Y48_N22
\RX|Receptor|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Add1~1_combout\ = \RX|Receptor|INDICE\(3) $ (((\RX|Receptor|INDICE\(1) & (\RX|Receptor|INDICE\(2) & \RX|Receptor|INDICE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(3),
	datab => \RX|Receptor|INDICE\(1),
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE\(0),
	combout => \RX|Receptor|Add1~1_combout\);

-- Location: LCCOMB_X58_Y48_N26
\RX|Receptor|INDICE[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[3]~5_combout\ = (\RX|Receptor|Add1~1_combout\ & ((\RX|Receptor|INDICE[2]~1_combout\) # ((\RX|Receptor|INDICE[3]~0_combout\ & \RX|Receptor|INDICE\(3))))) # (!\RX|Receptor|Add1~1_combout\ & (\RX|Receptor|INDICE[3]~0_combout\ & 
-- (\RX|Receptor|INDICE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Add1~1_combout\,
	datab => \RX|Receptor|INDICE[3]~0_combout\,
	datac => \RX|Receptor|INDICE\(3),
	datad => \RX|Receptor|INDICE[2]~1_combout\,
	combout => \RX|Receptor|INDICE[3]~5_combout\);

-- Location: FF_X58_Y48_N27
\RX|Receptor|INDICE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|INDICE[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|INDICE\(3));

-- Location: LCCOMB_X58_Y48_N12
\RX|Receptor|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LessThan1~0_combout\ = ((!\RX|Receptor|INDICE\(1) & (!\RX|Receptor|INDICE\(2) & !\RX|Receptor|INDICE\(0)))) # (!\RX|Receptor|INDICE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(3),
	datab => \RX|Receptor|INDICE\(1),
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE\(0),
	combout => \RX|Receptor|LessThan1~0_combout\);

-- Location: LCCOMB_X58_Y48_N28
\RX|Receptor|Flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Flag~0_combout\ = (\RX|Receptor|LessThan1~0_combout\) # (!\RX|Receptor|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|LessThan1~0_combout\,
	datad => \RX|Receptor|Equal0~3_combout\,
	combout => \RX|Receptor|Flag~0_combout\);

-- Location: LCCOMB_X57_Y48_N26
\RX_WIRE~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX_WIRE~_wirecell_combout\ = !\RX_WIRE~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX_WIRE~input_o\,
	combout => \RX_WIRE~_wirecell_combout\);

-- Location: FF_X58_Y48_N29
\RX|Receptor|Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|Flag~0_combout\,
	asdata => \RX_WIRE~_wirecell_combout\,
	sload => \RX|Receptor|ALT_INV_Flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|Flag~q\);

-- Location: LCCOMB_X58_Y48_N0
\RX|Receptor|INDICE[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[3]~0_combout\ = (\RX|Receptor|Flag~q\ & (((!\RX|Receptor|Equal0~3_combout\) # (!\RX|Receptor|LessThan1~0_combout\)))) # (!\RX|Receptor|Flag~q\ & (\RX_WIRE~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Flag~q\,
	datab => \RX_WIRE~input_o\,
	datac => \RX|Receptor|LessThan1~0_combout\,
	datad => \RX|Receptor|Equal0~3_combout\,
	combout => \RX|Receptor|INDICE[3]~0_combout\);

-- Location: LCCOMB_X58_Y48_N24
\RX|Receptor|INDICE[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|INDICE[0]~2_combout\ = (\RX|Receptor|INDICE\(0) & (\RX|Receptor|INDICE[3]~0_combout\)) # (!\RX|Receptor|INDICE\(0) & ((\RX|Receptor|INDICE[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|INDICE[3]~0_combout\,
	datac => \RX|Receptor|INDICE\(0),
	datad => \RX|Receptor|INDICE[2]~1_combout\,
	combout => \RX|Receptor|INDICE[0]~2_combout\);

-- Location: FF_X58_Y48_N25
\RX|Receptor|INDICE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|INDICE[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|INDICE\(0));

-- Location: LCCOMB_X57_Y48_N12
\RX|Receptor|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~3_combout\ = (!\RX|Receptor|INDICE\(0) & (!\RX|Receptor|INDICE\(3) & \RX|Receptor|Flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|INDICE\(3),
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|Decoder0~3_combout\);

-- Location: LCCOMB_X57_Y48_N14
\RX|Receptor|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~2_combout\ = (!\RX|Receptor|INDICE\(2) & !\RX|Receptor|INDICE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE\(1),
	combout => \RX|Receptor|Decoder0~2_combout\);

-- Location: LCCOMB_X58_Y48_N14
\RX|Receptor|BUFF[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[0]~2_combout\ = (\RX|Receptor|Decoder0~3_combout\ & ((\RX|Receptor|Decoder0~2_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~2_combout\ & ((\RX|Receptor|BUFF\(0)))))) # (!\RX|Receptor|Decoder0~3_combout\ & 
-- (((\RX|Receptor|BUFF\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Decoder0~3_combout\,
	datab => \RX_WIRE~input_o\,
	datac => \RX|Receptor|BUFF\(0),
	datad => \RX|Receptor|Decoder0~2_combout\,
	combout => \RX|Receptor|BUFF[0]~2_combout\);

-- Location: FF_X58_Y48_N15
\RX|Receptor|BUFF[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(0));

-- Location: LCCOMB_X58_Y48_N10
\RX|Receptor|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~0_combout\ = (\RX|Receptor|INDICE\(3) & (!\RX|Receptor|INDICE\(1) & (!\RX|Receptor|INDICE\(2) & \RX|Receptor|Flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(3),
	datab => \RX|Receptor|INDICE\(1),
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|Decoder0~0_combout\);

-- Location: LCCOMB_X58_Y48_N4
\RX|Receptor|BUFF[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[8]~7_combout\ = (\RX|Receptor|Decoder0~0_combout\ & ((\RX|Receptor|INDICE\(0) & (\RX|Receptor|BUFF\(8))) # (!\RX|Receptor|INDICE\(0) & ((\RX_WIRE~input_o\))))) # (!\RX|Receptor|Decoder0~0_combout\ & (((\RX|Receptor|BUFF\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Decoder0~0_combout\,
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|BUFF\(8),
	datad => \RX_WIRE~input_o\,
	combout => \RX|Receptor|BUFF[8]~7_combout\);

-- Location: FF_X58_Y48_N5
\RX|Receptor|BUFF[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(8));

-- Location: LCCOMB_X58_Y48_N20
\RX|Receptor|BUFF[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[9]~0_combout\ = (\RX|Receptor|Decoder0~0_combout\ & ((\RX|Receptor|INDICE\(0) & ((\RX_WIRE~input_o\))) # (!\RX|Receptor|INDICE\(0) & (\RX|Receptor|BUFF\(9))))) # (!\RX|Receptor|Decoder0~0_combout\ & (((\RX|Receptor|BUFF\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|Decoder0~0_combout\,
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|BUFF\(9),
	datad => \RX_WIRE~input_o\,
	combout => \RX|Receptor|BUFF[9]~0_combout\);

-- Location: FF_X58_Y48_N21
\RX|Receptor|BUFF[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(9));

-- Location: LCCOMB_X59_Y48_N22
\RX|Receptor|LEDS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~6_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(8) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(8),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~6_combout\);

-- Location: LCCOMB_X59_Y48_N2
\RX|Receptor|LEDS[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS[7]~1_combout\ = (!\RX|Receptor|LessThan1~0_combout\ & (\RX|Receptor|Flag~q\ & \RX|Receptor|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LessThan1~0_combout\,
	datab => \RX|Receptor|Flag~q\,
	datad => \RX|Receptor|Equal0~3_combout\,
	combout => \RX|Receptor|LEDS[7]~1_combout\);

-- Location: FF_X59_Y48_N23
\RX|Receptor|LEDS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~6_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(7));

-- Location: LCCOMB_X57_Y48_N28
\RX|Receptor|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~1_combout\ = (\RX|Receptor|INDICE\(1) & (!\RX|Receptor|INDICE\(0) & (!\RX|Receptor|INDICE\(3) & \RX|Receptor|Flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(1),
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|INDICE\(3),
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|Decoder0~1_combout\);

-- Location: LCCOMB_X57_Y48_N6
\RX|Receptor|BUFF[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[6]~6_combout\ = (\RX|Receptor|INDICE\(2) & ((\RX|Receptor|Decoder0~1_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~1_combout\ & ((\RX|Receptor|BUFF\(6)))))) # (!\RX|Receptor|INDICE\(2) & (((\RX|Receptor|BUFF\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|INDICE\(2),
	datac => \RX|Receptor|BUFF\(6),
	datad => \RX|Receptor|Decoder0~1_combout\,
	combout => \RX|Receptor|BUFF[6]~6_combout\);

-- Location: FF_X57_Y48_N7
\RX|Receptor|BUFF[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(6));

-- Location: LCCOMB_X59_Y48_N10
\RX|Receptor|LEDS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~5_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(6) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(6),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~5_combout\);

-- Location: FF_X59_Y48_N11
\RX|Receptor|LEDS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~5_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(5));

-- Location: LCCOMB_X59_Y48_N26
\RX|data[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|data[2]~0_combout\ = (!\RX|Receptor|LEDS\(7) & \RX|Receptor|LEDS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|Receptor|LEDS\(7),
	datad => \RX|Receptor|LEDS\(5),
	combout => \RX|data[2]~0_combout\);

-- Location: LCCOMB_X57_Y48_N24
\RX|Receptor|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~4_combout\ = (\RX|Receptor|INDICE\(1) & (\RX|Receptor|INDICE\(0) & (!\RX|Receptor|INDICE\(3) & \RX|Receptor|Flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(1),
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|INDICE\(3),
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|Decoder0~4_combout\);

-- Location: LCCOMB_X58_Y48_N30
\RX|Receptor|BUFF[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[7]~5_combout\ = (\RX|Receptor|INDICE\(2) & ((\RX|Receptor|Decoder0~4_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~4_combout\ & ((\RX|Receptor|BUFF\(7)))))) # (!\RX|Receptor|INDICE\(2) & (((\RX|Receptor|BUFF\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|INDICE\(2),
	datab => \RX_WIRE~input_o\,
	datac => \RX|Receptor|BUFF\(7),
	datad => \RX|Receptor|Decoder0~4_combout\,
	combout => \RX|Receptor|BUFF[7]~5_combout\);

-- Location: FF_X58_Y48_N31
\RX|Receptor|BUFF[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(7));

-- Location: LCCOMB_X59_Y48_N20
\RX|Receptor|LEDS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~4_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(7) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datab => \RX|Receptor|BUFF\(7),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~4_combout\);

-- Location: FF_X59_Y48_N21
\RX|Receptor|LEDS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~4_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(6));

-- Location: LCCOMB_X57_Y48_N20
\RX|Receptor|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~6_combout\ = (\RX|Receptor|INDICE\(2) & !\RX|Receptor|INDICE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|Receptor|INDICE\(2),
	datad => \RX|Receptor|INDICE\(1),
	combout => \RX|Receptor|Decoder0~6_combout\);

-- Location: LCCOMB_X57_Y48_N16
\RX|Receptor|BUFF[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[4]~8_combout\ = (\RX|Receptor|Decoder0~6_combout\ & ((\RX|Receptor|Decoder0~3_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~3_combout\ & ((\RX|Receptor|BUFF\(4)))))) # (!\RX|Receptor|Decoder0~6_combout\ & 
-- (((\RX|Receptor|BUFF\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|Decoder0~6_combout\,
	datac => \RX|Receptor|BUFF\(4),
	datad => \RX|Receptor|Decoder0~3_combout\,
	combout => \RX|Receptor|BUFF[4]~8_combout\);

-- Location: FF_X57_Y48_N17
\RX|Receptor|BUFF[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(4));

-- Location: LCCOMB_X59_Y48_N30
\RX|Receptor|LEDS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~7_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(4) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(4),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~7_combout\);

-- Location: FF_X59_Y48_N31
\RX|Receptor|LEDS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~7_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(3));

-- Location: LCCOMB_X57_Y48_N0
\RX|Receptor|BUFF[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[2]~1_combout\ = (\RX|Receptor|INDICE\(2) & (((\RX|Receptor|BUFF\(2))))) # (!\RX|Receptor|INDICE\(2) & ((\RX|Receptor|Decoder0~1_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~1_combout\ & ((\RX|Receptor|BUFF\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|INDICE\(2),
	datac => \RX|Receptor|BUFF\(2),
	datad => \RX|Receptor|Decoder0~1_combout\,
	combout => \RX|Receptor|BUFF[2]~1_combout\);

-- Location: FF_X57_Y48_N1
\RX|Receptor|BUFF[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(2));

-- Location: LCCOMB_X59_Y48_N12
\RX|Receptor|LEDS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~0_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(2) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(2),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~0_combout\);

-- Location: FF_X59_Y48_N13
\RX|Receptor|LEDS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~0_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(1));

-- Location: LCCOMB_X57_Y48_N22
\RX|Receptor|BUFF[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[3]~3_combout\ = (\RX|Receptor|INDICE\(2) & (((\RX|Receptor|BUFF\(3))))) # (!\RX|Receptor|INDICE\(2) & ((\RX|Receptor|Decoder0~4_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~4_combout\ & ((\RX|Receptor|BUFF\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|INDICE\(2),
	datac => \RX|Receptor|BUFF\(3),
	datad => \RX|Receptor|Decoder0~4_combout\,
	combout => \RX|Receptor|BUFF[3]~3_combout\);

-- Location: FF_X57_Y48_N23
\RX|Receptor|BUFF[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(3));

-- Location: LCCOMB_X59_Y48_N24
\RX|Receptor|LEDS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~2_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(3) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(3),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~2_combout\);

-- Location: FF_X59_Y48_N25
\RX|Receptor|LEDS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~2_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(2));

-- Location: LCCOMB_X57_Y48_N2
\RX|Receptor|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|Decoder0~5_combout\ = (\RX|Receptor|INDICE\(0) & (!\RX|Receptor|INDICE\(3) & \RX|Receptor|Flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|INDICE\(0),
	datac => \RX|Receptor|INDICE\(3),
	datad => \RX|Receptor|Flag~q\,
	combout => \RX|Receptor|Decoder0~5_combout\);

-- Location: LCCOMB_X57_Y48_N10
\RX|Receptor|BUFF[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[5]~9_combout\ = (\RX|Receptor|Decoder0~6_combout\ & ((\RX|Receptor|Decoder0~5_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~5_combout\ & ((\RX|Receptor|BUFF\(5)))))) # (!\RX|Receptor|Decoder0~6_combout\ & 
-- (((\RX|Receptor|BUFF\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|Decoder0~6_combout\,
	datac => \RX|Receptor|BUFF\(5),
	datad => \RX|Receptor|Decoder0~5_combout\,
	combout => \RX|Receptor|BUFF[5]~9_combout\);

-- Location: FF_X57_Y48_N11
\RX|Receptor|BUFF[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(5));

-- Location: LCCOMB_X59_Y48_N14
\RX|Receptor|LEDS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~8_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(5) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(5),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~8_combout\);

-- Location: FF_X59_Y48_N15
\RX|Receptor|LEDS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~8_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(4));

-- Location: LCCOMB_X57_Y48_N4
\RX|Receptor|BUFF[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|BUFF[1]~4_combout\ = (\RX|Receptor|Decoder0~2_combout\ & ((\RX|Receptor|Decoder0~5_combout\ & (\RX_WIRE~input_o\)) # (!\RX|Receptor|Decoder0~5_combout\ & ((\RX|Receptor|BUFF\(1)))))) # (!\RX|Receptor|Decoder0~2_combout\ & 
-- (((\RX|Receptor|BUFF\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_WIRE~input_o\,
	datab => \RX|Receptor|Decoder0~2_combout\,
	datac => \RX|Receptor|BUFF\(1),
	datad => \RX|Receptor|Decoder0~5_combout\,
	combout => \RX|Receptor|BUFF[1]~4_combout\);

-- Location: FF_X57_Y48_N5
\RX|Receptor|BUFF[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|BUFF[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|BUFF\(1));

-- Location: LCCOMB_X59_Y48_N8
\RX|Receptor|LEDS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|LEDS~3_combout\ = (!\RX|Receptor|BUFF\(0) & (\RX|Receptor|BUFF\(1) & \RX|Receptor|BUFF\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|BUFF\(0),
	datac => \RX|Receptor|BUFF\(1),
	datad => \RX|Receptor|BUFF\(9),
	combout => \RX|Receptor|LEDS~3_combout\);

-- Location: FF_X59_Y48_N9
\RX|Receptor|LEDS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|LEDS~3_combout\,
	ena => \RX|Receptor|LEDS[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|LEDS\(0));

-- Location: LCCOMB_X62_Y52_N28
\RX|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux5~2_combout\ = (\RX|Receptor|LEDS\(2) & (!\RX|Receptor|LEDS\(4) & \RX|Receptor|LEDS\(0))) # (!\RX|Receptor|LEDS\(2) & (\RX|Receptor|LEDS\(4) & !\RX|Receptor|LEDS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(2),
	datac => \RX|Receptor|LEDS\(4),
	datad => \RX|Receptor|LEDS\(0),
	combout => \RX|Mux5~2_combout\);

-- Location: LCCOMB_X62_Y52_N4
\RX|Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux5~4_combout\ = (\RX|Receptor|LEDS\(6) & (!\RX|Receptor|LEDS\(3) & (\RX|Receptor|LEDS\(1) & \RX|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(6),
	datab => \RX|Receptor|LEDS\(3),
	datac => \RX|Receptor|LEDS\(1),
	datad => \RX|Mux5~2_combout\,
	combout => \RX|Mux5~4_combout\);

-- Location: LCCOMB_X59_Y52_N8
\RX|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux4~1_combout\ = (\RX|Receptor|LEDS\(3) & ((\RX|Receptor|LEDS\(2)) # (\RX|Receptor|LEDS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|LEDS\(2),
	datac => \RX|Receptor|LEDS\(3),
	datad => \RX|Receptor|LEDS\(1),
	combout => \RX|Mux4~1_combout\);

-- Location: LCCOMB_X60_Y52_N22
\RX|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux0~0_combout\ = (\RX|Receptor|LEDS\(4) & (!\RX|Receptor|LEDS\(6) & !\RX|Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(6),
	datad => \RX|Mux4~1_combout\,
	combout => \RX|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y52_N20
\RX|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux0~1_combout\ = (\RX|data[2]~0_combout\ & ((\RX|Mux0~0_combout\) # ((\RX|Mux5~4_combout\ & \RX|is_digit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data[2]~0_combout\,
	datab => \RX|Mux5~4_combout\,
	datac => \RX|is_digit~q\,
	datad => \RX|Mux0~0_combout\,
	combout => \RX|Mux0~1_combout\);

-- Location: FF_X62_Y52_N21
\RX|is_digit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta\(21),
	d => \RX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|is_digit~q\);

-- Location: LCCOMB_X58_Y52_N18
\RX|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux1~0_combout\ = (\RX|Receptor|LEDS\(5) & (!\RX|Receptor|LEDS\(7) & (!\RX|Receptor|LEDS\(6) & \RX|Receptor|LEDS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(5),
	datab => \RX|Receptor|LEDS\(7),
	datac => \RX|Receptor|LEDS\(6),
	datad => \RX|Receptor|LEDS\(4),
	combout => \RX|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y52_N4
\RX|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux2~0_combout\ = ((\RX|Receptor|LEDS\(2)) # ((\RX|Receptor|LEDS\(1) & \RX|Receptor|LEDS\(3)))) # (!\RX|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Mux1~0_combout\,
	datac => \RX|Receptor|LEDS\(3),
	datad => \RX|Receptor|LEDS\(2),
	combout => \RX|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y48_N0
\RX|data[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|data[2]~2_combout\ = (!\RX|Receptor|LEDS\(4) & (\RX|Receptor|LEDS\(0) $ (((\RX|Receptor|LEDS\(1)) # (\RX|Receptor|LEDS\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(0),
	datad => \RX|Receptor|LEDS\(2),
	combout => \RX|data[2]~2_combout\);

-- Location: LCCOMB_X59_Y48_N16
\RX|data[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|data[2]~3_combout\ = (\RX|Receptor|LEDS\(3)) # (((!\RX|data[2]~2_combout\) # (!\RX|data[2]~0_combout\)) # (!\RX|Receptor|LEDS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(3),
	datab => \RX|Receptor|LEDS\(6),
	datac => \RX|data[2]~0_combout\,
	datad => \RX|data[2]~2_combout\,
	combout => \RX|data[2]~3_combout\);

-- Location: FF_X58_Y52_N5
\RX|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta\(21),
	d => \RX|Mux2~0_combout\,
	ena => \RX|data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data\(2));

-- Location: LCCOMB_X58_Y52_N16
\RX|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux1~1_combout\ = (\RX|Receptor|LEDS\(3)) # (!\RX|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(3),
	datad => \RX|Mux1~0_combout\,
	combout => \RX|Mux1~1_combout\);

-- Location: FF_X58_Y52_N17
\RX|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta\(21),
	d => \RX|Mux1~1_combout\,
	ena => \RX|data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data\(3));

-- Location: CLKCTRL_G7
\RX|R1|cuenta[21]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RX|R1|cuenta[21]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RX|R1|cuenta[21]~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y52_N12
\RX|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux4~0_combout\ = (!\RX|Receptor|LEDS\(4) & (((!\RX|Receptor|LEDS\(6)) # (!\RX|Receptor|LEDS\(2))) # (!\RX|Receptor|LEDS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Receptor|LEDS\(2),
	datac => \RX|Receptor|LEDS\(6),
	datad => \RX|Receptor|LEDS\(4),
	combout => \RX|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y52_N8
\RX|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux4~2_combout\ = (\RX|Receptor|LEDS\(6) & (\RX|Receptor|LEDS\(4))) # (!\RX|Receptor|LEDS\(6) & ((\RX|Receptor|LEDS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(6),
	datad => \RX|Receptor|LEDS\(0),
	combout => \RX|Mux4~2_combout\);

-- Location: LCCOMB_X58_Y52_N30
\RX|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux4~3_combout\ = (\RX|Mux4~0_combout\) # ((\RX|Mux4~2_combout\) # ((\RX|Mux4~1_combout\) # (!\RX|data[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Mux4~0_combout\,
	datab => \RX|Mux4~2_combout\,
	datac => \RX|data[2]~0_combout\,
	datad => \RX|Mux4~1_combout\,
	combout => \RX|Mux4~3_combout\);

-- Location: FF_X58_Y52_N31
\RX|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta[21]~clkctrl_outclk\,
	d => \RX|Mux4~3_combout\,
	ena => \RX|data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data\(0));

-- Location: LCCOMB_X59_Y48_N18
\RX|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux3~0_combout\ = ((\RX|Receptor|LEDS\(4) & ((\RX|Receptor|LEDS\(0)) # (\RX|Receptor|LEDS\(2)))) # (!\RX|Receptor|LEDS\(4) & ((!\RX|Receptor|LEDS\(2))))) # (!\RX|Receptor|LEDS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(5),
	datab => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(0),
	datad => \RX|Receptor|LEDS\(2),
	combout => \RX|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y48_N6
\RX|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux3~2_combout\ = (\RX|Receptor|LEDS\(1) & (((\RX|Mux3~0_combout\)) # (!\RX|Receptor|LEDS\(6)))) # (!\RX|Receptor|LEDS\(1) & ((\RX|Receptor|LEDS\(6)) # ((!\RX|Receptor|LEDS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Receptor|LEDS\(6),
	datac => \RX|Receptor|LEDS\(5),
	datad => \RX|Mux3~0_combout\,
	combout => \RX|Mux3~2_combout\);

-- Location: LCCOMB_X59_Y48_N28
\RX|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux3~3_combout\ = (\RX|Mux3~2_combout\) # ((\RX|Receptor|LEDS\(1) & ((\RX|Receptor|LEDS\(3)))) # (!\RX|Receptor|LEDS\(1) & (!\RX|Receptor|LEDS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(3),
	datad => \RX|Mux3~2_combout\,
	combout => \RX|Mux3~3_combout\);

-- Location: LCCOMB_X59_Y48_N4
\RX|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux3~1_combout\ = (\RX|Receptor|LEDS\(7)) # ((\RX|Mux3~3_combout\) # ((\RX|Receptor|LEDS\(3) & \RX|Receptor|LEDS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(3),
	datab => \RX|Receptor|LEDS\(2),
	datac => \RX|Receptor|LEDS\(7),
	datad => \RX|Mux3~3_combout\,
	combout => \RX|Mux3~1_combout\);

-- Location: FF_X59_Y48_N5
\RX|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta\(21),
	d => \RX|Mux3~1_combout\,
	ena => \RX|data[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|data\(1));

-- Location: LCCOMB_X58_Y52_N22
\Dig|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector4~0_combout\ = (!\RX|data\(2) & (!\RX|data\(3) & (\RX|data\(0) & !\RX|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data\(2),
	datab => \RX|data\(3),
	datac => \RX|data\(0),
	datad => \RX|data\(1),
	combout => \Dig|Selector4~0_combout\);

-- Location: LCCOMB_X60_Y48_N26
\RX|Receptor|bandera~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Receptor|bandera~0_combout\ = (\RX|Receptor|BUFF\(9) & (!\RX|Receptor|BUFF\(0) & \RX|Receptor|LEDS[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|Receptor|BUFF\(9),
	datac => \RX|Receptor|BUFF\(0),
	datad => \RX|Receptor|LEDS[7]~1_combout\,
	combout => \RX|Receptor|bandera~0_combout\);

-- Location: FF_X60_Y48_N27
\RX|Receptor|bandera~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \RX|Receptor|bandera~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|Receptor|bandera~reg0_q\);

-- Location: CLKCTRL_G9
\RX|Receptor|bandera~reg0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RX|Receptor|bandera~reg0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RX|Receptor|bandera~reg0clkctrl_outclk\);

-- Location: LCCOMB_X60_Y52_N6
\RX|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|Mux5~3_combout\ = (\RX|data[2]~0_combout\ & ((\RX|Mux5~4_combout\) # ((\RX|Mux0~0_combout\ & \RX|is_oper~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Mux0~0_combout\,
	datab => \RX|data[2]~0_combout\,
	datac => \RX|is_oper~q\,
	datad => \RX|Mux5~4_combout\,
	combout => \RX|Mux5~3_combout\);

-- Location: FF_X60_Y52_N7
\RX|is_oper\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta\(21),
	d => \RX|Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|is_oper~q\);

-- Location: LCCOMB_X60_Y52_N12
\Dig|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Equal0~0_combout\ = (\RX|data\(0) & (\RX|data\(2) & (\RX|data\(3) & !\RX|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data\(0),
	datab => \RX|data\(2),
	datac => \RX|data\(3),
	datad => \RX|data\(1),
	combout => \Dig|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y52_N18
\Dig|Selector13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector13~1_combout\ = (\Dig|state.D2~q\ & \RX|is_digit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|state.D2~q\,
	datad => \RX|is_digit~q\,
	combout => \Dig|Selector13~1_combout\);

-- Location: LCCOMB_X59_Y52_N16
\Dig|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector4~1_combout\ = (\Dig|Selector13~1_combout\ & ((\Dig|Selector4~0_combout\) # ((\Dig|state.D3~q\ & !\RX|is_oper~q\)))) # (!\Dig|Selector13~1_combout\ & (((\Dig|state.D3~q\ & !\RX|is_oper~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector13~1_combout\,
	datab => \Dig|Selector4~0_combout\,
	datac => \Dig|state.D3~q\,
	datad => \RX|is_oper~q\,
	combout => \Dig|Selector4~1_combout\);

-- Location: FF_X59_Y52_N15
\Dig|state.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0_q\,
	asdata => \Dig|Selector4~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|state.D3~q\);

-- Location: LCCOMB_X60_Y52_N26
\Dig|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector3~2_combout\ = (\RX|is_oper~q\ & (\Dig|Equal0~0_combout\ & \Dig|state.D3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_oper~q\,
	datab => \Dig|Equal0~0_combout\,
	datad => \Dig|state.D3~q\,
	combout => \Dig|Selector3~2_combout\);

-- Location: LCCOMB_X59_Y52_N2
\Dig|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector3~1_combout\ = (\Dig|state.D2~q\ & ((\RX|is_digit~q\ & (!\Dig|Selector4~0_combout\)) # (!\RX|is_digit~q\ & ((!\RX|is_oper~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|state.D2~q\,
	datab => \Dig|Selector4~0_combout\,
	datac => \RX|is_oper~q\,
	datad => \RX|is_digit~q\,
	combout => \Dig|Selector3~1_combout\);

-- Location: LCCOMB_X60_Y52_N4
\Dig|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector2~1_combout\ = (!\RX|is_digit~q\ & (((\Dig|state.D2~q\ & \Dig|Equal0~0_combout\)) # (!\RX|is_oper~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_oper~q\,
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|Equal0~0_combout\,
	combout => \Dig|Selector2~1_combout\);

-- Location: LCCOMB_X60_Y52_N14
\Dig|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector1~1_combout\ = (\RX|is_oper~q\ & ((\Dig|state.D3~q\) # ((\Dig|state.D2~q\ & !\RX|is_digit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_oper~q\,
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|state.D3~q\,
	combout => \Dig|Selector1~1_combout\);

-- Location: LCCOMB_X60_Y52_N30
\Dig|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector1~0_combout\ = (!\RX|is_digit~q\ & (((\RX|is_oper~q\ & \Dig|state.D1~q\)) # (!\Dig|state.Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_oper~q\,
	datab => \RX|is_digit~q\,
	datac => \Dig|state.D1~q\,
	datad => \Dig|state.Idle~q\,
	combout => \Dig|Selector1~0_combout\);

-- Location: LCCOMB_X60_Y52_N16
\Dig|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector1~2_combout\ = (!\Dig|Selector1~0_combout\ & ((\Dig|Equal0~0_combout\) # (!\Dig|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Selector1~1_combout\,
	datac => \Dig|Selector1~0_combout\,
	datad => \Dig|Equal0~0_combout\,
	combout => \Dig|Selector1~2_combout\);

-- Location: FF_X60_Y52_N17
\Dig|state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0_q\,
	d => \Dig|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|state.Idle~q\);

-- Location: LCCOMB_X60_Y52_N0
\Dig|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector2~0_combout\ = (\RX|is_digit~q\ & !\Dig|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|is_digit~q\,
	datad => \Dig|state.Idle~q\,
	combout => \Dig|Selector2~0_combout\);

-- Location: LCCOMB_X60_Y52_N18
\Dig|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector2~2_combout\ = (\Dig|Selector2~0_combout\) # ((\Dig|Selector2~1_combout\ & ((\Dig|state.D1~q\) # (\RX|is_oper~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|state.D1~q\,
	datab => \RX|is_oper~q\,
	datac => \Dig|Selector2~1_combout\,
	datad => \Dig|Selector2~0_combout\,
	combout => \Dig|Selector2~2_combout\);

-- Location: FF_X60_Y52_N27
\Dig|state.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0_q\,
	asdata => \Dig|Selector2~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|state.D1~q\);

-- Location: LCCOMB_X63_Y52_N26
\Dig|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector3~3_combout\ = (\Dig|Selector3~2_combout\) # ((\Dig|Selector3~1_combout\) # ((\RX|is_digit~q\ & \Dig|state.D1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector3~2_combout\,
	datab => \RX|is_digit~q\,
	datac => \Dig|Selector3~1_combout\,
	datad => \Dig|state.D1~q\,
	combout => \Dig|Selector3~3_combout\);

-- Location: FF_X62_Y52_N9
\Dig|state.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0clkctrl_outclk\,
	asdata => \Dig|Selector3~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|state.D2~q\);

-- Location: LCCOMB_X59_Y52_N10
\Dig|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector28~0_combout\ = (\Dig|state.D2~q\ & ((\RX|is_digit~q\ & (\Dig|Selector4~0_combout\)) # (!\RX|is_digit~q\ & ((!\RX|is_oper~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \Dig|Selector4~0_combout\,
	datac => \Dig|state.D2~q\,
	datad => \RX|is_oper~q\,
	combout => \Dig|Selector28~0_combout\);

-- Location: LCCOMB_X58_Y52_N6
\Dig|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Equal3~0_combout\ = (\RX|data\(2) & (\RX|data\(3) & (!\RX|data\(0) & \RX|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data\(2),
	datab => \RX|data\(3),
	datac => \RX|data\(0),
	datad => \RX|data\(1),
	combout => \Dig|Equal3~0_combout\);

-- Location: LCCOMB_X59_Y52_N24
\Dig|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector23~0_combout\ = (!\RX|is_digit~q\ & (!\Dig|Equal3~0_combout\ & \RX|is_oper~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datac => \Dig|Equal3~0_combout\,
	datad => \RX|is_oper~q\,
	combout => \Dig|Selector23~0_combout\);

-- Location: LCCOMB_X59_Y52_N12
\Dig|Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector28~1_combout\ = (\Dig|Selector28~0_combout\) # (((!\Dig|Selector23~0_combout\ & \Dig|state.D1~q\)) # (!\Dig|state.Idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector28~0_combout\,
	datab => \Dig|state.Idle~q\,
	datac => \Dig|Selector23~0_combout\,
	datad => \Dig|state.D1~q\,
	combout => \Dig|Selector28~1_combout\);

-- Location: CLKCTRL_G11
\Dig|Selector28~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Selector28~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Selector28~1clkctrl_outclk\);

-- Location: LCCOMB_X58_Y52_N10
\Dig|Sal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0~2_combout\ = (\RX|data\(2) & \RX|is_digit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|data\(2),
	datad => \RX|is_digit~q\,
	combout => \Dig|Sal0~2_combout\);

-- Location: LCCOMB_X59_Y52_N4
\Dig|Sal0[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0\(2) = (GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & ((\Dig|Sal0~2_combout\))) # (!GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & (\Dig|Sal0\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector28~1clkctrl_outclk\,
	datab => \Dig|Sal0\(2),
	datac => \Dig|Sal0~2_combout\,
	combout => \Dig|Sal0\(2));

-- Location: LCCOMB_X62_Y51_N30
\Dig|Sal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0~1_combout\ = (\RX|is_digit~q\ & \RX|data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datad => \RX|data\(1),
	combout => \Dig|Sal0~1_combout\);

-- Location: LCCOMB_X62_Y51_N0
\Dig|Sal0[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0\(1) = (GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & (\Dig|Sal0~1_combout\)) # (!GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & ((\Dig|Sal0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0~1_combout\,
	datac => \Dig|Selector28~1clkctrl_outclk\,
	datad => \Dig|Sal0\(1),
	combout => \Dig|Sal0\(1));

-- Location: LCCOMB_X57_Y52_N0
\Dig|Sal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0~0_combout\ = (\RX|is_digit~q\ & \RX|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \RX|data\(0),
	combout => \Dig|Sal0~0_combout\);

-- Location: LCCOMB_X57_Y52_N2
\Dig|Sal0[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0\(0) = (GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & ((\Dig|Sal0~0_combout\))) # (!GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & (\Dig|Sal0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Sal0\(0),
	datac => \Dig|Sal0~0_combout\,
	datad => \Dig|Selector28~1clkctrl_outclk\,
	combout => \Dig|Sal0\(0));

-- Location: LCCOMB_X58_Y52_N14
\Dig|Sal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0~3_combout\ = (\RX|is_digit~q\ & \RX|data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|is_digit~q\,
	datad => \RX|data\(3),
	combout => \Dig|Sal0~3_combout\);

-- Location: LCCOMB_X58_Y52_N26
\Dig|Sal0[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal0\(3) = (GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & (\Dig|Sal0~3_combout\)) # (!GLOBAL(\Dig|Selector28~1clkctrl_outclk\) & ((\Dig|Sal0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0~3_combout\,
	datac => \Dig|Sal0\(3),
	datad => \Dig|Selector28~1clkctrl_outclk\,
	combout => \Dig|Sal0\(3));

-- Location: LCCOMB_X62_Y51_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\Dig|Sal0\(1) & (!\Dig|Sal0\(3) & (\Dig|Sal0\(2) $ (\Dig|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Dig|Sal0\(2) & (!\Dig|Sal0\(3) & (\Dig|Sal0\(1) $ (\Dig|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X62_Y51_N20
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\Dig|Sal0\(2) & (\Dig|Sal0\(1) & (!\Dig|Sal0\(0) & !\Dig|Sal0\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X62_Y51_N10
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\Dig|Sal0\(3) & ((\Dig|Sal0\(2) & (\Dig|Sal0\(1) $ (!\Dig|Sal0\(0)))) # (!\Dig|Sal0\(2) & (!\Dig|Sal0\(1) & \Dig|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Dig|Sal0\(1) & (((\Dig|Sal0\(0) & !\Dig|Sal0\(3))))) # (!\Dig|Sal0\(1) & ((\Dig|Sal0\(2) & ((!\Dig|Sal0\(3)))) # (!\Dig|Sal0\(2) & (\Dig|Sal0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X62_Y51_N18
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\Dig|Sal0\(3) & ((\Dig|Sal0\(2) & (\Dig|Sal0\(1) & \Dig|Sal0\(0))) # (!\Dig|Sal0\(2) & ((\Dig|Sal0\(1)) # (\Dig|Sal0\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X62_Y51_N24
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Dig|Sal0\(2) & (!\Dig|Sal0\(3) & ((!\Dig|Sal0\(0)) # (!\Dig|Sal0\(1))))) # (!\Dig|Sal0\(2) & (\Dig|Sal0\(1) $ (((\Dig|Sal0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(2),
	datab => \Dig|Sal0\(1),
	datac => \Dig|Sal0\(0),
	datad => \Dig|Sal0\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y52_N30
\Dig|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector23~2_combout\ = (\Dig|Selector2~0_combout\) # ((\Dig|Selector23~0_combout\ & ((\Dig|state.D1~q\) # (\Dig|state.D2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector2~0_combout\,
	datab => \Dig|state.D1~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|Selector23~0_combout\,
	combout => \Dig|Selector23~2_combout\);

-- Location: CLKCTRL_G10
\Dig|Selector23~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Selector23~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Selector23~2clkctrl_outclk\);

-- Location: LCCOMB_X59_Y52_N14
\Dig|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector6~0_combout\ = (\RX|data\(2) & !\Dig|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|data\(2),
	datad => \Dig|state.Idle~q\,
	combout => \Dig|Selector6~0_combout\);

-- Location: LCCOMB_X62_Y52_N18
\Dig|unidades[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|unidades\(2) = (GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & ((\Dig|Selector6~0_combout\))) # (!GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & (\Dig|unidades\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector23~2clkctrl_outclk\,
	datab => \Dig|unidades\(2),
	datad => \Dig|Selector6~0_combout\,
	combout => \Dig|unidades\(2));

-- Location: LCCOMB_X62_Y52_N22
\Dig|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector20~0_combout\ = (\RX|is_digit~q\ & (\Dig|state.Idle~q\ & \Dig|unidades\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.Idle~q\,
	datad => \Dig|unidades\(2),
	combout => \Dig|Selector20~0_combout\);

-- Location: LCCOMB_X59_Y52_N26
\Dig|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector3~0_combout\ = (\Dig|state.D2~q\ & ((!\Dig|Selector4~0_combout\) # (!\RX|is_digit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|Selector4~0_combout\,
	combout => \Dig|Selector3~0_combout\);

-- Location: LCCOMB_X59_Y52_N0
\Dig|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector23~1_combout\ = (!\Dig|Equal3~0_combout\ & \RX|is_oper~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dig|Equal3~0_combout\,
	datad => \RX|is_oper~q\,
	combout => \Dig|Selector23~1_combout\);

-- Location: LCCOMB_X59_Y52_N22
\Dig|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector22~0_combout\ = (!\Dig|state.D3~q\ & (((!\RX|is_digit~q\ & !\Dig|Selector23~1_combout\)) # (!\Dig|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \Dig|state.D3~q\,
	datac => \Dig|Selector3~0_combout\,
	datad => \Dig|Selector23~1_combout\,
	combout => \Dig|Selector22~0_combout\);

-- Location: CLKCTRL_G13
\Dig|Selector22~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Selector22~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Selector22~0clkctrl_outclk\);

-- Location: LCCOMB_X62_Y52_N6
\Dig|Sal1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal1\(2) = (GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & ((\Dig|Selector20~0_combout\))) # (!GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & (\Dig|Sal1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datac => \Dig|Selector20~0_combout\,
	datad => \Dig|Selector22~0clkctrl_outclk\,
	combout => \Dig|Sal1\(2));

-- Location: LCCOMB_X60_Y52_N20
\Dig|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector5~0_combout\ = (\RX|data\(3) & !\Dig|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|data\(3),
	datad => \Dig|state.Idle~q\,
	combout => \Dig|Selector5~0_combout\);

-- Location: LCCOMB_X62_Y52_N10
\Dig|unidades[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|unidades\(3) = (GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & ((\Dig|Selector5~0_combout\))) # (!GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & (\Dig|unidades\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|unidades\(3),
	datac => \Dig|Selector5~0_combout\,
	datad => \Dig|Selector23~2clkctrl_outclk\,
	combout => \Dig|unidades\(3));

-- Location: LCCOMB_X62_Y52_N14
\Dig|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector21~0_combout\ = (\RX|is_digit~q\ & (\Dig|state.Idle~q\ & \Dig|unidades\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.Idle~q\,
	datad => \Dig|unidades\(3),
	combout => \Dig|Selector21~0_combout\);

-- Location: LCCOMB_X62_Y52_N26
\Dig|Sal1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal1\(3) = (GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & ((\Dig|Selector21~0_combout\))) # (!GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & (\Dig|Sal1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(3),
	datac => \Dig|Selector21~0_combout\,
	datad => \Dig|Selector22~0clkctrl_outclk\,
	combout => \Dig|Sal1\(3));

-- Location: LCCOMB_X62_Y52_N8
\Dig|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector11~0_combout\ = (!\Dig|state.Idle~q\ & \RX|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|state.Idle~q\,
	datad => \RX|data\(0),
	combout => \Dig|Selector11~0_combout\);

-- Location: LCCOMB_X62_Y52_N24
\Dig|unidades[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|unidades\(0) = (GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & ((\Dig|Selector11~0_combout\))) # (!GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & (\Dig|unidades\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|unidades\(0),
	datac => \Dig|Selector11~0_combout\,
	datad => \Dig|Selector23~2clkctrl_outclk\,
	combout => \Dig|unidades\(0));

-- Location: LCCOMB_X62_Y52_N30
\Dig|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector18~0_combout\ = (\RX|is_digit~q\ & (\Dig|state.Idle~q\ & \Dig|unidades\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.Idle~q\,
	datad => \Dig|unidades\(0),
	combout => \Dig|Selector18~0_combout\);

-- Location: LCCOMB_X62_Y52_N12
\Dig|Sal1[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal1\(0) = (GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & ((\Dig|Selector18~0_combout\))) # (!GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & (\Dig|Sal1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(0),
	datac => \Dig|Selector18~0_combout\,
	datad => \Dig|Selector22~0clkctrl_outclk\,
	combout => \Dig|Sal1\(0));

-- Location: LCCOMB_X60_Y52_N10
\Dig|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector7~0_combout\ = (\RX|data\(1) & !\Dig|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|data\(1),
	datad => \Dig|state.Idle~q\,
	combout => \Dig|Selector7~0_combout\);

-- Location: LCCOMB_X60_Y52_N24
\Dig|unidades[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|unidades\(1) = (GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & (\Dig|Selector7~0_combout\)) # (!GLOBAL(\Dig|Selector23~2clkctrl_outclk\) & ((\Dig|unidades\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Selector7~0_combout\,
	datac => \Dig|unidades\(1),
	datad => \Dig|Selector23~2clkctrl_outclk\,
	combout => \Dig|unidades\(1));

-- Location: LCCOMB_X60_Y52_N8
\Dig|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector19~0_combout\ = (\RX|is_digit~q\ & (\Dig|state.Idle~q\ & \Dig|unidades\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \Dig|state.Idle~q\,
	datad => \Dig|unidades\(1),
	combout => \Dig|Selector19~0_combout\);

-- Location: LCCOMB_X60_Y52_N2
\Dig|Sal1[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal1\(1) = (GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & (\Dig|Selector19~0_combout\)) # (!GLOBAL(\Dig|Selector22~0clkctrl_outclk\) & ((\Dig|Sal1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector22~0clkctrl_outclk\,
	datab => \Dig|Selector19~0_combout\,
	datac => \Dig|Sal1\(1),
	combout => \Dig|Sal1\(1));

-- Location: LCCOMB_X65_Y52_N24
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Dig|Sal1\(3) & (!\Dig|Sal1\(1) & (\Dig|Sal1\(2) $ (\Dig|Sal1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X65_Y52_N26
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Dig|Sal1\(2) & (!\Dig|Sal1\(3) & (\Dig|Sal1\(0) $ (\Dig|Sal1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X65_Y52_N28
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\Dig|Sal1\(2) & (!\Dig|Sal1\(3) & (!\Dig|Sal1\(0) & \Dig|Sal1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X65_Y52_N6
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\Dig|Sal1\(3) & ((\Dig|Sal1\(2) & (\Dig|Sal1\(0) $ (!\Dig|Sal1\(1)))) # (!\Dig|Sal1\(2) & (\Dig|Sal1\(0) & !\Dig|Sal1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X65_Y52_N12
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Dig|Sal1\(1) & (((!\Dig|Sal1\(3) & \Dig|Sal1\(0))))) # (!\Dig|Sal1\(1) & ((\Dig|Sal1\(2) & (!\Dig|Sal1\(3))) # (!\Dig|Sal1\(2) & ((\Dig|Sal1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X65_Y52_N2
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\Dig|Sal1\(3) & ((\Dig|Sal1\(2) & (\Dig|Sal1\(0) & \Dig|Sal1\(1))) # (!\Dig|Sal1\(2) & ((\Dig|Sal1\(0)) # (\Dig|Sal1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X65_Y52_N0
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Dig|Sal1\(2) & (!\Dig|Sal1\(3) & ((!\Dig|Sal1\(1)) # (!\Dig|Sal1\(0))))) # (!\Dig|Sal1\(2) & (\Dig|Sal1\(3) $ (((\Dig|Sal1\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \Dig|Sal1\(3),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X63_Y52_N30
\Dig|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector9~0_combout\ = (\RX|is_digit~q\ & (!\Dig|state.D2~q\ & \Dig|unidades\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|unidades\(2),
	combout => \Dig|Selector9~0_combout\);

-- Location: LCCOMB_X59_Y52_N28
\Dig|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector0~0_combout\ = (\RX|is_digit~q\ & (((\Dig|state.D1~q\)))) # (!\RX|is_digit~q\ & (\Dig|Selector23~1_combout\ & ((\Dig|state.D2~q\) # (\Dig|state.D1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \Dig|Selector23~1_combout\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|state.D1~q\,
	combout => \Dig|Selector0~0_combout\);

-- Location: CLKCTRL_G14
\Dig|Selector0~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Selector0~0clkctrl_outclk\);

-- Location: LCCOMB_X63_Y52_N28
\Dig|decenas[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|decenas\(2) = (GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & (\Dig|Selector9~0_combout\)) # (!GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & ((\Dig|decenas\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Selector9~0_combout\,
	datac => \Dig|Selector0~0clkctrl_outclk\,
	datad => \Dig|decenas\(2),
	combout => \Dig|decenas\(2));

-- Location: LCCOMB_X63_Y52_N14
\Dig|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector15~0_combout\ = (\Dig|state.D2~q\ & (\RX|is_digit~q\ & \Dig|decenas\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|decenas\(2),
	combout => \Dig|Selector15~0_combout\);

-- Location: LCCOMB_X59_Y52_N6
\Dig|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector17~0_combout\ = ((\Dig|Selector4~0_combout\) # (!\Dig|state.D2~q\)) # (!\RX|is_digit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|Selector4~0_combout\,
	combout => \Dig|Selector17~0_combout\);

-- Location: LCCOMB_X59_Y52_N20
\Dig|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector17~1_combout\ = (\Dig|Selector17~0_combout\ & (((\Dig|Equal3~0_combout\ & \RX|is_oper~q\)) # (!\Dig|state.D3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector17~0_combout\,
	datab => \Dig|Equal3~0_combout\,
	datac => \Dig|state.D3~q\,
	datad => \RX|is_oper~q\,
	combout => \Dig|Selector17~1_combout\);

-- Location: CLKCTRL_G12
\Dig|Selector17~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Selector17~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Selector17~1clkctrl_outclk\);

-- Location: LCCOMB_X63_Y52_N22
\Dig|Sal2[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal2\(2) = (GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & (\Dig|Selector15~0_combout\)) # (!GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & ((\Dig|Sal2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector15~0_combout\,
	datac => \Dig|Sal2\(2),
	datad => \Dig|Selector17~1clkctrl_outclk\,
	combout => \Dig|Sal2\(2));

-- Location: LCCOMB_X63_Y52_N0
\Dig|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector10~0_combout\ = (!\Dig|state.D2~q\ & (\RX|is_digit~q\ & \Dig|unidades\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|unidades\(1),
	combout => \Dig|Selector10~0_combout\);

-- Location: LCCOMB_X63_Y52_N6
\Dig|decenas[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|decenas\(1) = (GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & (\Dig|Selector10~0_combout\)) # (!GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & ((\Dig|decenas\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector10~0_combout\,
	datac => \Dig|Selector0~0clkctrl_outclk\,
	datad => \Dig|decenas\(1),
	combout => \Dig|decenas\(1));

-- Location: LCCOMB_X63_Y52_N4
\Dig|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector14~0_combout\ = (\Dig|state.D2~q\ & (\RX|is_digit~q\ & \Dig|decenas\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|decenas\(1),
	combout => \Dig|Selector14~0_combout\);

-- Location: LCCOMB_X63_Y52_N16
\Dig|Sal2[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal2\(1) = (GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & ((\Dig|Selector14~0_combout\))) # (!GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & (\Dig|Sal2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Sal2\(1),
	datac => \Dig|Selector14~0_combout\,
	datad => \Dig|Selector17~1clkctrl_outclk\,
	combout => \Dig|Sal2\(1));

-- Location: LCCOMB_X62_Y52_N2
\Dig|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector12~0_combout\ = (\RX|is_digit~q\ & (!\Dig|state.D2~q\ & \Dig|unidades\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|unidades\(0),
	combout => \Dig|Selector12~0_combout\);

-- Location: LCCOMB_X62_Y52_N16
\Dig|decenas[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|decenas\(0) = (GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & (\Dig|Selector12~0_combout\)) # (!GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & ((\Dig|decenas\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector12~0_combout\,
	datac => \Dig|Selector0~0clkctrl_outclk\,
	datad => \Dig|decenas\(0),
	combout => \Dig|decenas\(0));

-- Location: LCCOMB_X62_Y52_N0
\Dig|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector13~0_combout\ = (\RX|is_digit~q\ & (\Dig|state.D2~q\ & \Dig|decenas\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|is_digit~q\,
	datab => \Dig|state.D2~q\,
	datad => \Dig|decenas\(0),
	combout => \Dig|Selector13~0_combout\);

-- Location: LCCOMB_X63_Y52_N2
\Dig|Sal2[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal2\(0) = (GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & (\Dig|Selector13~0_combout\)) # (!GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & ((\Dig|Sal2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector13~0_combout\,
	datab => \Dig|Sal2\(0),
	datad => \Dig|Selector17~1clkctrl_outclk\,
	combout => \Dig|Sal2\(0));

-- Location: LCCOMB_X63_Y52_N24
\Dig|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector8~0_combout\ = (\RX|is_digit~q\ & (!\Dig|state.D2~q\ & \Dig|unidades\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|is_digit~q\,
	datac => \Dig|state.D2~q\,
	datad => \Dig|unidades\(3),
	combout => \Dig|Selector8~0_combout\);

-- Location: LCCOMB_X63_Y52_N10
\Dig|decenas[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|decenas\(3) = (GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & (\Dig|Selector8~0_combout\)) # (!GLOBAL(\Dig|Selector0~0clkctrl_outclk\) & ((\Dig|decenas\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Selector8~0_combout\,
	datac => \Dig|Selector0~0clkctrl_outclk\,
	datad => \Dig|decenas\(3),
	combout => \Dig|decenas\(3));

-- Location: LCCOMB_X63_Y52_N12
\Dig|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Selector16~0_combout\ = (\Dig|state.D2~q\ & (\RX|is_digit~q\ & \Dig|decenas\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|state.D2~q\,
	datac => \RX|is_digit~q\,
	datad => \Dig|decenas\(3),
	combout => \Dig|Selector16~0_combout\);

-- Location: LCCOMB_X63_Y52_N8
\Dig|Sal2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Sal2\(3) = (GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & (\Dig|Selector16~0_combout\)) # (!GLOBAL(\Dig|Selector17~1clkctrl_outclk\) & ((\Dig|Sal2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Selector16~0_combout\,
	datac => \Dig|Sal2\(3),
	datad => \Dig|Selector17~1clkctrl_outclk\,
	combout => \Dig|Sal2\(3));

-- Location: LCCOMB_X70_Y48_N16
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\Dig|Sal2\(1) & (!\Dig|Sal2\(3) & (\Dig|Sal2\(2) $ (\Dig|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X70_Y48_N6
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Dig|Sal2\(2) & (!\Dig|Sal2\(3) & (\Dig|Sal2\(1) $ (\Dig|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X70_Y48_N12
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!\Dig|Sal2\(2) & (\Dig|Sal2\(1) & (!\Dig|Sal2\(0) & !\Dig|Sal2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X70_Y48_N2
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!\Dig|Sal2\(3) & ((\Dig|Sal2\(2) & (\Dig|Sal2\(1) $ (!\Dig|Sal2\(0)))) # (!\Dig|Sal2\(2) & (!\Dig|Sal2\(1) & \Dig|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X70_Y48_N20
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Dig|Sal2\(1) & (((\Dig|Sal2\(0) & !\Dig|Sal2\(3))))) # (!\Dig|Sal2\(1) & ((\Dig|Sal2\(2) & ((!\Dig|Sal2\(3)))) # (!\Dig|Sal2\(2) & (\Dig|Sal2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X70_Y48_N10
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\Dig|Sal2\(3) & ((\Dig|Sal2\(2) & (\Dig|Sal2\(1) & \Dig|Sal2\(0))) # (!\Dig|Sal2\(2) & ((\Dig|Sal2\(1)) # (\Dig|Sal2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X70_Y48_N0
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Dig|Sal2\(2) & (!\Dig|Sal2\(3) & ((!\Dig|Sal2\(0)) # (!\Dig|Sal2\(1))))) # (!\Dig|Sal2\(2) & (\Dig|Sal2\(1) $ (((\Dig|Sal2\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \Dig|Sal2\(1),
	datac => \Dig|Sal2\(0),
	datad => \Dig|Sal2\(3),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X58_Y48_N6
\RX|data[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|data[2]~1_combout\ = (!\RX|Receptor|LEDS\(3) & (!\RX|Receptor|LEDS\(4) & (\RX|Receptor|LEDS\(6) & \RX|data[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(3),
	datab => \RX|Receptor|LEDS\(4),
	datac => \RX|Receptor|LEDS\(6),
	datad => \RX|data[2]~0_combout\,
	combout => \RX|data[2]~1_combout\);

-- Location: LCCOMB_X58_Y52_N28
\RX|tipo[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|tipo[0]~0_combout\ = (!\RX|Receptor|LEDS\(2) & (\RX|data[2]~1_combout\ & (\RX|Receptor|LEDS\(1) $ (\RX|Receptor|LEDS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|Receptor|LEDS\(1),
	datab => \RX|Receptor|LEDS\(2),
	datac => \RX|data[2]~1_combout\,
	datad => \RX|Receptor|LEDS\(0),
	combout => \RX|tipo[0]~0_combout\);

-- Location: FF_X55_Y53_N11
\RX|tipo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta[21]~clkctrl_outclk\,
	asdata => \RX|Receptor|LEDS\(1),
	sload => VCC,
	ena => \RX|tipo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|tipo\(1));

-- Location: LCCOMB_X56_Y53_N0
\RX|tipo[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RX|tipo[0]~1_combout\ = !\RX|Receptor|LEDS\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX|Receptor|LEDS\(1),
	combout => \RX|tipo[0]~1_combout\);

-- Location: FF_X55_Y53_N29
\RX|tipo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|R1|cuenta[21]~clkctrl_outclk\,
	asdata => \RX|tipo[0]~1_combout\,
	sload => VCC,
	ena => \RX|tipo[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX|tipo\(0));

-- Location: LCCOMB_X56_Y50_N28
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\RX|tipo\(1) & \RX|tipo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|tipo\(1),
	datad => \RX|tipo\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X56_Y50_N30
\WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = \RX|tipo\(1) $ (\RX|tipo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RX|tipo\(1),
	datad => \RX|tipo\(0),
	combout => \WideNor0~0_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Dig|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|Equal1~0_combout\ = (\RX|data\(2) & (\RX|data\(3) & (!\RX|data\(0) & !\RX|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|data\(2),
	datab => \RX|data\(3),
	datac => \RX|data\(0),
	datad => \RX|data\(1),
	combout => \Dig|Equal1~0_combout\);

-- Location: CLKCTRL_G6
\Dig|Equal1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Dig|Equal1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Dig|Equal1~0clkctrl_outclk\);

-- Location: LCCOMB_X57_Y52_N12
\bcd|bin[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(0) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\Dig|Sal0\(0)))) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|bin\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|bin\(0),
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \Dig|Sal0\(0),
	combout => \bcd|bin\(0));

-- Location: LCCOMB_X57_Y52_N8
\bcd|D_sal[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[0]~0_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(0),
	combout => \bcd|D_sal[0]~0_combout\);

-- Location: LCCOMB_X61_Y52_N8
\bcd|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~0_combout\ = (\Dig|Sal0\(1) & (\Dig|Sal1\(0) $ (VCC))) # (!\Dig|Sal0\(1) & (\Dig|Sal1\(0) & VCC))
-- \bcd|Add1~1\ = CARRY((\Dig|Sal0\(1) & \Dig|Sal1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(1),
	datab => \Dig|Sal1\(0),
	datad => VCC,
	combout => \bcd|Add1~0_combout\,
	cout => \bcd|Add1~1\);

-- Location: LCCOMB_X57_Y52_N6
\bcd|bin[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(1) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|Add1~0_combout\)) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|bin\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|Add1~0_combout\,
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \bcd|bin\(1),
	combout => \bcd|bin\(1));

-- Location: LCCOMB_X57_Y52_N10
\bcd|D_sal[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[1]~1_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(1),
	combout => \bcd|D_sal[1]~1_combout\);

-- Location: LCCOMB_X61_Y52_N10
\bcd|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~2_combout\ = (\Dig|Sal1\(1) & ((\Dig|Sal0\(2) & (\bcd|Add1~1\ & VCC)) # (!\Dig|Sal0\(2) & (!\bcd|Add1~1\)))) # (!\Dig|Sal1\(1) & ((\Dig|Sal0\(2) & (!\bcd|Add1~1\)) # (!\Dig|Sal0\(2) & ((\bcd|Add1~1\) # (GND)))))
-- \bcd|Add1~3\ = CARRY((\Dig|Sal1\(1) & (!\Dig|Sal0\(2) & !\bcd|Add1~1\)) # (!\Dig|Sal1\(1) & ((!\bcd|Add1~1\) # (!\Dig|Sal0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(1),
	datab => \Dig|Sal0\(2),
	datad => VCC,
	cin => \bcd|Add1~1\,
	combout => \bcd|Add1~2_combout\,
	cout => \bcd|Add1~3\);

-- Location: LCCOMB_X61_Y52_N20
\bcd|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add2~0_combout\ = (\bcd|Add1~2_combout\ & (\Dig|Sal2\(0) $ (VCC))) # (!\bcd|Add1~2_combout\ & (\Dig|Sal2\(0) & VCC))
-- \bcd|Add2~1\ = CARRY((\bcd|Add1~2_combout\ & \Dig|Sal2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|Add1~2_combout\,
	datab => \Dig|Sal2\(0),
	datad => VCC,
	combout => \bcd|Add2~0_combout\,
	cout => \bcd|Add2~1\);

-- Location: LCCOMB_X57_Y52_N28
\bcd|bin[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(2) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|Add2~0_combout\))) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|bin\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|bin\(2),
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \bcd|Add2~0_combout\,
	combout => \bcd|bin\(2));

-- Location: LCCOMB_X57_Y52_N24
\bcd|D_sal[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[2]~2_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(2),
	combout => \bcd|D_sal[2]~2_combout\);

-- Location: LCCOMB_X61_Y52_N0
\bcd|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add0~0_combout\ = \Dig|Sal1\(0) $ (\Dig|Sal1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(2),
	combout => \bcd|Add0~0_combout\);

-- Location: LCCOMB_X61_Y52_N12
\bcd|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~4_combout\ = ((\Dig|Sal0\(3) $ (\bcd|Add0~0_combout\ $ (!\bcd|Add1~3\)))) # (GND)
-- \bcd|Add1~5\ = CARRY((\Dig|Sal0\(3) & ((\bcd|Add0~0_combout\) # (!\bcd|Add1~3\))) # (!\Dig|Sal0\(3) & (\bcd|Add0~0_combout\ & !\bcd|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal0\(3),
	datab => \bcd|Add0~0_combout\,
	datad => VCC,
	cin => \bcd|Add1~3\,
	combout => \bcd|Add1~4_combout\,
	cout => \bcd|Add1~5\);

-- Location: LCCOMB_X61_Y52_N22
\bcd|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add2~2_combout\ = (\bcd|Add1~4_combout\ & ((\Dig|Sal2\(1) & (\bcd|Add2~1\ & VCC)) # (!\Dig|Sal2\(1) & (!\bcd|Add2~1\)))) # (!\bcd|Add1~4_combout\ & ((\Dig|Sal2\(1) & (!\bcd|Add2~1\)) # (!\Dig|Sal2\(1) & ((\bcd|Add2~1\) # (GND)))))
-- \bcd|Add2~3\ = CARRY((\bcd|Add1~4_combout\ & (!\Dig|Sal2\(1) & !\bcd|Add2~1\)) # (!\bcd|Add1~4_combout\ & ((!\bcd|Add2~1\) # (!\Dig|Sal2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|Add1~4_combout\,
	datab => \Dig|Sal2\(1),
	datad => VCC,
	cin => \bcd|Add2~1\,
	combout => \bcd|Add2~2_combout\,
	cout => \bcd|Add2~3\);

-- Location: LCCOMB_X57_Y52_N18
\bcd|bin[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(3) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|Add2~2_combout\)) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|bin\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|Add2~2_combout\,
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \bcd|bin\(3),
	combout => \bcd|bin\(3));

-- Location: LCCOMB_X57_Y52_N14
\bcd|D_sal[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[3]~3_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(3),
	combout => \bcd|D_sal[3]~3_combout\);

-- Location: LCCOMB_X61_Y52_N30
\bcd|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add0~1_combout\ = \Dig|Sal1\(1) $ (\Dig|Sal1\(3) $ (((\Dig|Sal1\(2) & \Dig|Sal1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(1),
	datab => \Dig|Sal1\(2),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(3),
	combout => \bcd|Add0~1_combout\);

-- Location: LCCOMB_X61_Y52_N14
\bcd|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~6_combout\ = (\bcd|Add0~1_combout\ & (!\bcd|Add1~5\)) # (!\bcd|Add0~1_combout\ & ((\bcd|Add1~5\) # (GND)))
-- \bcd|Add1~7\ = CARRY((!\bcd|Add1~5\) # (!\bcd|Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|Add0~1_combout\,
	datad => VCC,
	cin => \bcd|Add1~5\,
	combout => \bcd|Add1~6_combout\,
	cout => \bcd|Add1~7\);

-- Location: LCCOMB_X61_Y52_N24
\bcd|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add2~4_combout\ = ((\Dig|Sal2\(2) $ (\bcd|Add1~6_combout\ $ (!\bcd|Add2~3\)))) # (GND)
-- \bcd|Add2~5\ = CARRY((\Dig|Sal2\(2) & ((\bcd|Add1~6_combout\) # (!\bcd|Add2~3\))) # (!\Dig|Sal2\(2) & (\bcd|Add1~6_combout\ & !\bcd|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal2\(2),
	datab => \bcd|Add1~6_combout\,
	datad => VCC,
	cin => \bcd|Add2~3\,
	combout => \bcd|Add2~4_combout\,
	cout => \bcd|Add2~5\);

-- Location: LCCOMB_X58_Y52_N20
\bcd|bin[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(4) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|Add2~4_combout\))) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|bin\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|bin\(4),
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \bcd|Add2~4_combout\,
	combout => \bcd|bin\(4));

-- Location: LCCOMB_X58_Y52_N0
\bcd|D_sal[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[4]~4_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(4),
	combout => \bcd|D_sal[4]~4_combout\);

-- Location: LCCOMB_X63_Y52_N18
\bcd|Mult0|mult_core|romout[0][5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Mult0|mult_core|romout[0][5]~combout\ = \Dig|Sal2\(3) $ (\Dig|Sal2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dig|Sal2\(3),
	datad => \Dig|Sal2\(0),
	combout => \bcd|Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X61_Y52_N4
\bcd|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add0~2_combout\ = (\Dig|Sal1\(1) & ((\Dig|Sal1\(3)) # ((\Dig|Sal1\(2) & \Dig|Sal1\(0))))) # (!\Dig|Sal1\(1) & (\Dig|Sal1\(2) & (\Dig|Sal1\(0) & \Dig|Sal1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(1),
	datab => \Dig|Sal1\(2),
	datac => \Dig|Sal1\(0),
	datad => \Dig|Sal1\(3),
	combout => \bcd|Add0~2_combout\);

-- Location: LCCOMB_X61_Y52_N16
\bcd|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~8_combout\ = (\bcd|Add1~7\ & ((\Dig|Sal1\(2) $ (\bcd|Add0~2_combout\)))) # (!\bcd|Add1~7\ & (\Dig|Sal1\(2) $ (\bcd|Add0~2_combout\ $ (VCC))))
-- \bcd|Add1~9\ = CARRY((!\bcd|Add1~7\ & (\Dig|Sal1\(2) $ (\bcd|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(2),
	datab => \bcd|Add0~2_combout\,
	datad => VCC,
	cin => \bcd|Add1~7\,
	combout => \bcd|Add1~8_combout\,
	cout => \bcd|Add1~9\);

-- Location: LCCOMB_X61_Y52_N26
\bcd|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add2~6_combout\ = (\bcd|Mult0|mult_core|romout[0][5]~combout\ & ((\bcd|Add1~8_combout\ & (\bcd|Add2~5\ & VCC)) # (!\bcd|Add1~8_combout\ & (!\bcd|Add2~5\)))) # (!\bcd|Mult0|mult_core|romout[0][5]~combout\ & ((\bcd|Add1~8_combout\ & (!\bcd|Add2~5\)) # 
-- (!\bcd|Add1~8_combout\ & ((\bcd|Add2~5\) # (GND)))))
-- \bcd|Add2~7\ = CARRY((\bcd|Mult0|mult_core|romout[0][5]~combout\ & (!\bcd|Add1~8_combout\ & !\bcd|Add2~5\)) # (!\bcd|Mult0|mult_core|romout[0][5]~combout\ & ((!\bcd|Add2~5\) # (!\bcd|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|Mult0|mult_core|romout[0][5]~combout\,
	datab => \bcd|Add1~8_combout\,
	datad => VCC,
	cin => \bcd|Add2~5\,
	combout => \bcd|Add2~6_combout\,
	cout => \bcd|Add2~7\);

-- Location: LCCOMB_X61_Y52_N6
\bcd|bin[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(5) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|Add2~6_combout\)) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|bin\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Equal1~0clkctrl_outclk\,
	datac => \bcd|Add2~6_combout\,
	datad => \bcd|bin\(5),
	combout => \bcd|bin\(5));

-- Location: LCCOMB_X56_Y52_N8
\bcd|D_sal[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[5]~5_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Equal1~0_combout\,
	datad => \bcd|bin\(5),
	combout => \bcd|D_sal[5]~5_combout\);

-- Location: LCCOMB_X63_Y52_N20
\bcd|Mult0|mult_core|romout[0][6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Mult0|mult_core|romout[0][6]~0_combout\ = \Dig|Sal2\(1) $ (((\Dig|Sal2\(0) & !\Dig|Sal2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Sal2\(0),
	datac => \Dig|Sal2\(3),
	datad => \Dig|Sal2\(1),
	combout => \bcd|Mult0|mult_core|romout[0][6]~0_combout\);

-- Location: LCCOMB_X60_Y52_N28
\bcd|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add0~3_combout\ = (\Dig|Sal1\(2) & ((\Dig|Sal1\(0) & ((\Dig|Sal1\(1)) # (\Dig|Sal1\(3)))) # (!\Dig|Sal1\(0) & (\Dig|Sal1\(1) & \Dig|Sal1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Sal1\(0),
	datab => \Dig|Sal1\(1),
	datac => \Dig|Sal1\(2),
	datad => \Dig|Sal1\(3),
	combout => \bcd|Add0~3_combout\);

-- Location: LCCOMB_X61_Y52_N18
\bcd|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add1~10_combout\ = \Dig|Sal1\(3) $ (\bcd|Add1~9\ $ (\bcd|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Sal1\(3),
	datad => \bcd|Add0~3_combout\,
	cin => \bcd|Add1~9\,
	combout => \bcd|Add1~10_combout\);

-- Location: LCCOMB_X61_Y52_N28
\bcd|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|Add2~8_combout\ = \bcd|Mult0|mult_core|romout[0][6]~0_combout\ $ (\bcd|Add2~7\ $ (!\bcd|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd|Mult0|mult_core|romout[0][6]~0_combout\,
	datad => \bcd|Add1~10_combout\,
	cin => \bcd|Add2~7\,
	combout => \bcd|Add2~8_combout\);

-- Location: LCCOMB_X61_Y52_N2
\bcd|bin[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|bin\(6) = (GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & ((\bcd|Add2~8_combout\))) # (!GLOBAL(\Dig|Equal1~0clkctrl_outclk\) & (\bcd|bin\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|bin\(6),
	datac => \Dig|Equal1~0clkctrl_outclk\,
	datad => \bcd|Add2~8_combout\,
	combout => \bcd|bin\(6));

-- Location: LCCOMB_X56_Y52_N30
\bcd|D_sal[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd|D_sal[6]~6_combout\ = (\Dig|Equal1~0_combout\ & \bcd|bin\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(6),
	combout => \bcd|D_sal[6]~6_combout\);

-- Location: LCCOMB_X61_Y53_N8
\Dig|debug_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|debug_state~0_combout\ = (\Dig|state.D2~q\) # (!\Dig|state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Dig|state.D2~q\,
	datad => \Dig|state.Idle~q\,
	combout => \Dig|debug_state~0_combout\);

-- Location: LCCOMB_X60_Y53_N12
\Dig|debug_state[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|debug_state[0]~feeder_combout\ = \Dig|debug_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dig|debug_state~0_combout\,
	combout => \Dig|debug_state[0]~feeder_combout\);

-- Location: FF_X60_Y53_N13
\Dig|debug_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0clkctrl_outclk\,
	d => \Dig|debug_state[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|debug_state\(0));

-- Location: LCCOMB_X60_Y53_N18
\Dig|debug_state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|debug_state~1_combout\ = (\Dig|state.Idle~q\ & !\Dig|state.D3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Dig|state.Idle~q\,
	datac => \Dig|state.D3~q\,
	combout => \Dig|debug_state~1_combout\);

-- Location: LCCOMB_X60_Y53_N6
\Dig|debug_state[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|debug_state[1]~feeder_combout\ = \Dig|debug_state~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|debug_state~1_combout\,
	combout => \Dig|debug_state[1]~feeder_combout\);

-- Location: FF_X60_Y53_N7
\Dig|debug_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0clkctrl_outclk\,
	d => \Dig|debug_state[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|debug_state\(1));

-- Location: LCCOMB_X60_Y53_N24
\Dig|debug_state[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Dig|debug_state[2]~feeder_combout\ = \Dig|state.D3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Dig|state.D3~q\,
	combout => \Dig|debug_state[2]~feeder_combout\);

-- Location: FF_X60_Y53_N25
\Dig|debug_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RX|Receptor|bandera~reg0clkctrl_outclk\,
	d => \Dig|debug_state[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Dig|debug_state\(2));

-- Location: LCCOMB_X2_Y38_N0
\dd|T1|cuenta[0]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[0]~52_combout\ = \dd|T1|cuenta\(0) $ (VCC)
-- \dd|T1|cuenta[0]~53\ = CARRY(\dd|T1|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(0),
	datad => VCC,
	combout => \dd|T1|cuenta[0]~52_combout\,
	cout => \dd|T1|cuenta[0]~53\);

-- Location: FF_X2_Y38_N1
\dd|T1|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[0]~52_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(0));

-- Location: LCCOMB_X2_Y38_N2
\dd|T1|cuenta[1]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[1]~54_combout\ = (\dd|T1|cuenta\(1) & (!\dd|T1|cuenta[0]~53\)) # (!\dd|T1|cuenta\(1) & ((\dd|T1|cuenta[0]~53\) # (GND)))
-- \dd|T1|cuenta[1]~55\ = CARRY((!\dd|T1|cuenta[0]~53\) # (!\dd|T1|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(1),
	datad => VCC,
	cin => \dd|T1|cuenta[0]~53\,
	combout => \dd|T1|cuenta[1]~54_combout\,
	cout => \dd|T1|cuenta[1]~55\);

-- Location: FF_X2_Y38_N3
\dd|T1|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[1]~54_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(1));

-- Location: LCCOMB_X2_Y38_N4
\dd|T1|cuenta[2]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[2]~56_combout\ = (\dd|T1|cuenta\(2) & (\dd|T1|cuenta[1]~55\ $ (GND))) # (!\dd|T1|cuenta\(2) & (!\dd|T1|cuenta[1]~55\ & VCC))
-- \dd|T1|cuenta[2]~57\ = CARRY((\dd|T1|cuenta\(2) & !\dd|T1|cuenta[1]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(2),
	datad => VCC,
	cin => \dd|T1|cuenta[1]~55\,
	combout => \dd|T1|cuenta[2]~56_combout\,
	cout => \dd|T1|cuenta[2]~57\);

-- Location: FF_X2_Y38_N5
\dd|T1|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[2]~56_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(2));

-- Location: LCCOMB_X2_Y38_N6
\dd|T1|cuenta[3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[3]~58_combout\ = (\dd|T1|cuenta\(3) & (!\dd|T1|cuenta[2]~57\)) # (!\dd|T1|cuenta\(3) & ((\dd|T1|cuenta[2]~57\) # (GND)))
-- \dd|T1|cuenta[3]~59\ = CARRY((!\dd|T1|cuenta[2]~57\) # (!\dd|T1|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(3),
	datad => VCC,
	cin => \dd|T1|cuenta[2]~57\,
	combout => \dd|T1|cuenta[3]~58_combout\,
	cout => \dd|T1|cuenta[3]~59\);

-- Location: FF_X2_Y38_N7
\dd|T1|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[3]~58_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(3));

-- Location: LCCOMB_X2_Y38_N8
\dd|T1|cuenta[4]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[4]~60_combout\ = (\dd|T1|cuenta\(4) & (\dd|T1|cuenta[3]~59\ $ (GND))) # (!\dd|T1|cuenta\(4) & (!\dd|T1|cuenta[3]~59\ & VCC))
-- \dd|T1|cuenta[4]~61\ = CARRY((\dd|T1|cuenta\(4) & !\dd|T1|cuenta[3]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(4),
	datad => VCC,
	cin => \dd|T1|cuenta[3]~59\,
	combout => \dd|T1|cuenta[4]~60_combout\,
	cout => \dd|T1|cuenta[4]~61\);

-- Location: FF_X2_Y38_N9
\dd|T1|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[4]~60_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(4));

-- Location: LCCOMB_X2_Y38_N10
\dd|T1|cuenta[5]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[5]~62_combout\ = (\dd|T1|cuenta\(5) & (!\dd|T1|cuenta[4]~61\)) # (!\dd|T1|cuenta\(5) & ((\dd|T1|cuenta[4]~61\) # (GND)))
-- \dd|T1|cuenta[5]~63\ = CARRY((!\dd|T1|cuenta[4]~61\) # (!\dd|T1|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(5),
	datad => VCC,
	cin => \dd|T1|cuenta[4]~61\,
	combout => \dd|T1|cuenta[5]~62_combout\,
	cout => \dd|T1|cuenta[5]~63\);

-- Location: FF_X2_Y38_N11
\dd|T1|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[5]~62_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(5));

-- Location: LCCOMB_X2_Y38_N12
\dd|T1|cuenta[6]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[6]~64_combout\ = (\dd|T1|cuenta\(6) & (\dd|T1|cuenta[5]~63\ $ (GND))) # (!\dd|T1|cuenta\(6) & (!\dd|T1|cuenta[5]~63\ & VCC))
-- \dd|T1|cuenta[6]~65\ = CARRY((\dd|T1|cuenta\(6) & !\dd|T1|cuenta[5]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(6),
	datad => VCC,
	cin => \dd|T1|cuenta[5]~63\,
	combout => \dd|T1|cuenta[6]~64_combout\,
	cout => \dd|T1|cuenta[6]~65\);

-- Location: FF_X2_Y38_N13
\dd|T1|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[6]~64_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(6));

-- Location: LCCOMB_X2_Y38_N14
\dd|T1|cuenta[7]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[7]~66_combout\ = (\dd|T1|cuenta\(7) & (!\dd|T1|cuenta[6]~65\)) # (!\dd|T1|cuenta\(7) & ((\dd|T1|cuenta[6]~65\) # (GND)))
-- \dd|T1|cuenta[7]~67\ = CARRY((!\dd|T1|cuenta[6]~65\) # (!\dd|T1|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(7),
	datad => VCC,
	cin => \dd|T1|cuenta[6]~65\,
	combout => \dd|T1|cuenta[7]~66_combout\,
	cout => \dd|T1|cuenta[7]~67\);

-- Location: FF_X2_Y38_N15
\dd|T1|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[7]~66_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(7));

-- Location: LCCOMB_X2_Y38_N16
\dd|T1|cuenta[8]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[8]~68_combout\ = (\dd|T1|cuenta\(8) & (\dd|T1|cuenta[7]~67\ $ (GND))) # (!\dd|T1|cuenta\(8) & (!\dd|T1|cuenta[7]~67\ & VCC))
-- \dd|T1|cuenta[8]~69\ = CARRY((\dd|T1|cuenta\(8) & !\dd|T1|cuenta[7]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(8),
	datad => VCC,
	cin => \dd|T1|cuenta[7]~67\,
	combout => \dd|T1|cuenta[8]~68_combout\,
	cout => \dd|T1|cuenta[8]~69\);

-- Location: FF_X2_Y38_N17
\dd|T1|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[8]~68_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(8));

-- Location: LCCOMB_X2_Y38_N18
\dd|T1|cuenta[9]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[9]~70_combout\ = (\dd|T1|cuenta\(9) & (!\dd|T1|cuenta[8]~69\)) # (!\dd|T1|cuenta\(9) & ((\dd|T1|cuenta[8]~69\) # (GND)))
-- \dd|T1|cuenta[9]~71\ = CARRY((!\dd|T1|cuenta[8]~69\) # (!\dd|T1|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(9),
	datad => VCC,
	cin => \dd|T1|cuenta[8]~69\,
	combout => \dd|T1|cuenta[9]~70_combout\,
	cout => \dd|T1|cuenta[9]~71\);

-- Location: FF_X2_Y38_N19
\dd|T1|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[9]~70_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(9));

-- Location: LCCOMB_X2_Y38_N20
\dd|T1|cuenta[10]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[10]~72_combout\ = (\dd|T1|cuenta\(10) & (\dd|T1|cuenta[9]~71\ $ (GND))) # (!\dd|T1|cuenta\(10) & (!\dd|T1|cuenta[9]~71\ & VCC))
-- \dd|T1|cuenta[10]~73\ = CARRY((\dd|T1|cuenta\(10) & !\dd|T1|cuenta[9]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(10),
	datad => VCC,
	cin => \dd|T1|cuenta[9]~71\,
	combout => \dd|T1|cuenta[10]~72_combout\,
	cout => \dd|T1|cuenta[10]~73\);

-- Location: FF_X2_Y38_N21
\dd|T1|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[10]~72_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(10));

-- Location: LCCOMB_X2_Y38_N22
\dd|T1|cuenta[11]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[11]~74_combout\ = (\dd|T1|cuenta\(11) & (!\dd|T1|cuenta[10]~73\)) # (!\dd|T1|cuenta\(11) & ((\dd|T1|cuenta[10]~73\) # (GND)))
-- \dd|T1|cuenta[11]~75\ = CARRY((!\dd|T1|cuenta[10]~73\) # (!\dd|T1|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(11),
	datad => VCC,
	cin => \dd|T1|cuenta[10]~73\,
	combout => \dd|T1|cuenta[11]~74_combout\,
	cout => \dd|T1|cuenta[11]~75\);

-- Location: FF_X2_Y38_N23
\dd|T1|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[11]~74_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(11));

-- Location: LCCOMB_X2_Y38_N24
\dd|T1|cuenta[12]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[12]~76_combout\ = (\dd|T1|cuenta\(12) & (\dd|T1|cuenta[11]~75\ $ (GND))) # (!\dd|T1|cuenta\(12) & (!\dd|T1|cuenta[11]~75\ & VCC))
-- \dd|T1|cuenta[12]~77\ = CARRY((\dd|T1|cuenta\(12) & !\dd|T1|cuenta[11]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(12),
	datad => VCC,
	cin => \dd|T1|cuenta[11]~75\,
	combout => \dd|T1|cuenta[12]~76_combout\,
	cout => \dd|T1|cuenta[12]~77\);

-- Location: FF_X2_Y38_N25
\dd|T1|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[12]~76_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(12));

-- Location: LCCOMB_X2_Y38_N26
\dd|T1|cuenta[13]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[13]~78_combout\ = (\dd|T1|cuenta\(13) & (!\dd|T1|cuenta[12]~77\)) # (!\dd|T1|cuenta\(13) & ((\dd|T1|cuenta[12]~77\) # (GND)))
-- \dd|T1|cuenta[13]~79\ = CARRY((!\dd|T1|cuenta[12]~77\) # (!\dd|T1|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(13),
	datad => VCC,
	cin => \dd|T1|cuenta[12]~77\,
	combout => \dd|T1|cuenta[13]~78_combout\,
	cout => \dd|T1|cuenta[13]~79\);

-- Location: FF_X2_Y38_N27
\dd|T1|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[13]~78_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(13));

-- Location: LCCOMB_X2_Y38_N28
\dd|T1|cuenta[14]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[14]~80_combout\ = (\dd|T1|cuenta\(14) & (\dd|T1|cuenta[13]~79\ $ (GND))) # (!\dd|T1|cuenta\(14) & (!\dd|T1|cuenta[13]~79\ & VCC))
-- \dd|T1|cuenta[14]~81\ = CARRY((\dd|T1|cuenta\(14) & !\dd|T1|cuenta[13]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(14),
	datad => VCC,
	cin => \dd|T1|cuenta[13]~79\,
	combout => \dd|T1|cuenta[14]~80_combout\,
	cout => \dd|T1|cuenta[14]~81\);

-- Location: FF_X2_Y38_N29
\dd|T1|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[14]~80_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(14));

-- Location: LCCOMB_X2_Y38_N30
\dd|T1|cuenta[15]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[15]~82_combout\ = (\dd|T1|cuenta\(15) & (!\dd|T1|cuenta[14]~81\)) # (!\dd|T1|cuenta\(15) & ((\dd|T1|cuenta[14]~81\) # (GND)))
-- \dd|T1|cuenta[15]~83\ = CARRY((!\dd|T1|cuenta[14]~81\) # (!\dd|T1|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(15),
	datad => VCC,
	cin => \dd|T1|cuenta[14]~81\,
	combout => \dd|T1|cuenta[15]~82_combout\,
	cout => \dd|T1|cuenta[15]~83\);

-- Location: FF_X2_Y38_N31
\dd|T1|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[15]~82_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(15));

-- Location: LCCOMB_X2_Y37_N0
\dd|T1|cuenta[16]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[16]~84_combout\ = (\dd|T1|cuenta\(16) & (\dd|T1|cuenta[15]~83\ $ (GND))) # (!\dd|T1|cuenta\(16) & (!\dd|T1|cuenta[15]~83\ & VCC))
-- \dd|T1|cuenta[16]~85\ = CARRY((\dd|T1|cuenta\(16) & !\dd|T1|cuenta[15]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(16),
	datad => VCC,
	cin => \dd|T1|cuenta[15]~83\,
	combout => \dd|T1|cuenta[16]~84_combout\,
	cout => \dd|T1|cuenta[16]~85\);

-- Location: FF_X2_Y37_N1
\dd|T1|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[16]~84_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(16));

-- Location: LCCOMB_X2_Y37_N2
\dd|T1|cuenta[17]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[17]~86_combout\ = (\dd|T1|cuenta\(17) & (!\dd|T1|cuenta[16]~85\)) # (!\dd|T1|cuenta\(17) & ((\dd|T1|cuenta[16]~85\) # (GND)))
-- \dd|T1|cuenta[17]~87\ = CARRY((!\dd|T1|cuenta[16]~85\) # (!\dd|T1|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(17),
	datad => VCC,
	cin => \dd|T1|cuenta[16]~85\,
	combout => \dd|T1|cuenta[17]~86_combout\,
	cout => \dd|T1|cuenta[17]~87\);

-- Location: FF_X2_Y37_N3
\dd|T1|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[17]~86_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(17));

-- Location: LCCOMB_X2_Y37_N4
\dd|T1|cuenta[18]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[18]~88_combout\ = (\dd|T1|cuenta\(18) & (\dd|T1|cuenta[17]~87\ $ (GND))) # (!\dd|T1|cuenta\(18) & (!\dd|T1|cuenta[17]~87\ & VCC))
-- \dd|T1|cuenta[18]~89\ = CARRY((\dd|T1|cuenta\(18) & !\dd|T1|cuenta[17]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(18),
	datad => VCC,
	cin => \dd|T1|cuenta[17]~87\,
	combout => \dd|T1|cuenta[18]~88_combout\,
	cout => \dd|T1|cuenta[18]~89\);

-- Location: FF_X2_Y37_N5
\dd|T1|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[18]~88_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(18));

-- Location: LCCOMB_X2_Y37_N6
\dd|T1|cuenta[19]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[19]~90_combout\ = (\dd|T1|cuenta\(19) & (!\dd|T1|cuenta[18]~89\)) # (!\dd|T1|cuenta\(19) & ((\dd|T1|cuenta[18]~89\) # (GND)))
-- \dd|T1|cuenta[19]~91\ = CARRY((!\dd|T1|cuenta[18]~89\) # (!\dd|T1|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(19),
	datad => VCC,
	cin => \dd|T1|cuenta[18]~89\,
	combout => \dd|T1|cuenta[19]~90_combout\,
	cout => \dd|T1|cuenta[19]~91\);

-- Location: FF_X2_Y37_N7
\dd|T1|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[19]~90_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(19));

-- Location: LCCOMB_X2_Y37_N8
\dd|T1|cuenta[20]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[20]~92_combout\ = (\dd|T1|cuenta\(20) & (\dd|T1|cuenta[19]~91\ $ (GND))) # (!\dd|T1|cuenta\(20) & (!\dd|T1|cuenta[19]~91\ & VCC))
-- \dd|T1|cuenta[20]~93\ = CARRY((\dd|T1|cuenta\(20) & !\dd|T1|cuenta[19]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(20),
	datad => VCC,
	cin => \dd|T1|cuenta[19]~91\,
	combout => \dd|T1|cuenta[20]~92_combout\,
	cout => \dd|T1|cuenta[20]~93\);

-- Location: FF_X2_Y37_N9
\dd|T1|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[20]~92_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(20));

-- Location: LCCOMB_X2_Y37_N10
\dd|T1|cuenta[21]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[21]~94_combout\ = (\dd|T1|cuenta\(21) & (!\dd|T1|cuenta[20]~93\)) # (!\dd|T1|cuenta\(21) & ((\dd|T1|cuenta[20]~93\) # (GND)))
-- \dd|T1|cuenta[21]~95\ = CARRY((!\dd|T1|cuenta[20]~93\) # (!\dd|T1|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(21),
	datad => VCC,
	cin => \dd|T1|cuenta[20]~93\,
	combout => \dd|T1|cuenta[21]~94_combout\,
	cout => \dd|T1|cuenta[21]~95\);

-- Location: FF_X2_Y37_N11
\dd|T1|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[21]~94_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(21));

-- Location: LCCOMB_X2_Y37_N12
\dd|T1|cuenta[22]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[22]~96_combout\ = (\dd|T1|cuenta\(22) & (\dd|T1|cuenta[21]~95\ $ (GND))) # (!\dd|T1|cuenta\(22) & (!\dd|T1|cuenta[21]~95\ & VCC))
-- \dd|T1|cuenta[22]~97\ = CARRY((\dd|T1|cuenta\(22) & !\dd|T1|cuenta[21]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(22),
	datad => VCC,
	cin => \dd|T1|cuenta[21]~95\,
	combout => \dd|T1|cuenta[22]~96_combout\,
	cout => \dd|T1|cuenta[22]~97\);

-- Location: FF_X2_Y37_N13
\dd|T1|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[22]~96_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(22));

-- Location: LCCOMB_X2_Y37_N14
\dd|T1|cuenta[23]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[23]~98_combout\ = (\dd|T1|cuenta\(23) & (!\dd|T1|cuenta[22]~97\)) # (!\dd|T1|cuenta\(23) & ((\dd|T1|cuenta[22]~97\) # (GND)))
-- \dd|T1|cuenta[23]~99\ = CARRY((!\dd|T1|cuenta[22]~97\) # (!\dd|T1|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(23),
	datad => VCC,
	cin => \dd|T1|cuenta[22]~97\,
	combout => \dd|T1|cuenta[23]~98_combout\,
	cout => \dd|T1|cuenta[23]~99\);

-- Location: FF_X2_Y37_N15
\dd|T1|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[23]~98_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(23));

-- Location: LCCOMB_X2_Y37_N16
\dd|T1|cuenta[24]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[24]~100_combout\ = (\dd|T1|cuenta\(24) & (\dd|T1|cuenta[23]~99\ $ (GND))) # (!\dd|T1|cuenta\(24) & (!\dd|T1|cuenta[23]~99\ & VCC))
-- \dd|T1|cuenta[24]~101\ = CARRY((\dd|T1|cuenta\(24) & !\dd|T1|cuenta[23]~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(24),
	datad => VCC,
	cin => \dd|T1|cuenta[23]~99\,
	combout => \dd|T1|cuenta[24]~100_combout\,
	cout => \dd|T1|cuenta[24]~101\);

-- Location: FF_X2_Y37_N17
\dd|T1|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[24]~100_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(24));

-- Location: LCCOMB_X2_Y37_N18
\dd|T1|cuenta[25]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[25]~102_combout\ = (\dd|T1|cuenta\(25) & (!\dd|T1|cuenta[24]~101\)) # (!\dd|T1|cuenta\(25) & ((\dd|T1|cuenta[24]~101\) # (GND)))
-- \dd|T1|cuenta[25]~103\ = CARRY((!\dd|T1|cuenta[24]~101\) # (!\dd|T1|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(25),
	datad => VCC,
	cin => \dd|T1|cuenta[24]~101\,
	combout => \dd|T1|cuenta[25]~102_combout\,
	cout => \dd|T1|cuenta[25]~103\);

-- Location: FF_X2_Y37_N19
\dd|T1|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[25]~102_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(25));

-- Location: LCCOMB_X2_Y37_N20
\dd|T1|cuenta[26]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[26]~104_combout\ = (\dd|T1|cuenta\(26) & (\dd|T1|cuenta[25]~103\ $ (GND))) # (!\dd|T1|cuenta\(26) & (!\dd|T1|cuenta[25]~103\ & VCC))
-- \dd|T1|cuenta[26]~105\ = CARRY((\dd|T1|cuenta\(26) & !\dd|T1|cuenta[25]~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(26),
	datad => VCC,
	cin => \dd|T1|cuenta[25]~103\,
	combout => \dd|T1|cuenta[26]~104_combout\,
	cout => \dd|T1|cuenta[26]~105\);

-- Location: FF_X2_Y37_N21
\dd|T1|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[26]~104_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(26));

-- Location: LCCOMB_X2_Y37_N22
\dd|T1|cuenta[27]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[27]~106_combout\ = (\dd|T1|cuenta\(27) & (!\dd|T1|cuenta[26]~105\)) # (!\dd|T1|cuenta\(27) & ((\dd|T1|cuenta[26]~105\) # (GND)))
-- \dd|T1|cuenta[27]~107\ = CARRY((!\dd|T1|cuenta[26]~105\) # (!\dd|T1|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(27),
	datad => VCC,
	cin => \dd|T1|cuenta[26]~105\,
	combout => \dd|T1|cuenta[27]~106_combout\,
	cout => \dd|T1|cuenta[27]~107\);

-- Location: FF_X2_Y37_N23
\dd|T1|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[27]~106_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(27));

-- Location: LCCOMB_X2_Y37_N24
\dd|T1|cuenta[28]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[28]~108_combout\ = (\dd|T1|cuenta\(28) & (\dd|T1|cuenta[27]~107\ $ (GND))) # (!\dd|T1|cuenta\(28) & (!\dd|T1|cuenta[27]~107\ & VCC))
-- \dd|T1|cuenta[28]~109\ = CARRY((\dd|T1|cuenta\(28) & !\dd|T1|cuenta[27]~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(28),
	datad => VCC,
	cin => \dd|T1|cuenta[27]~107\,
	combout => \dd|T1|cuenta[28]~108_combout\,
	cout => \dd|T1|cuenta[28]~109\);

-- Location: FF_X2_Y37_N25
\dd|T1|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[28]~108_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(28));

-- Location: LCCOMB_X2_Y37_N26
\dd|T1|cuenta[29]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[29]~110_combout\ = (\dd|T1|cuenta\(29) & (!\dd|T1|cuenta[28]~109\)) # (!\dd|T1|cuenta\(29) & ((\dd|T1|cuenta[28]~109\) # (GND)))
-- \dd|T1|cuenta[29]~111\ = CARRY((!\dd|T1|cuenta[28]~109\) # (!\dd|T1|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(29),
	datad => VCC,
	cin => \dd|T1|cuenta[28]~109\,
	combout => \dd|T1|cuenta[29]~110_combout\,
	cout => \dd|T1|cuenta[29]~111\);

-- Location: FF_X2_Y37_N27
\dd|T1|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[29]~110_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(29));

-- Location: LCCOMB_X2_Y37_N28
\dd|T1|cuenta[30]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[30]~112_combout\ = (\dd|T1|cuenta\(30) & (\dd|T1|cuenta[29]~111\ $ (GND))) # (!\dd|T1|cuenta\(30) & (!\dd|T1|cuenta[29]~111\ & VCC))
-- \dd|T1|cuenta[30]~113\ = CARRY((\dd|T1|cuenta\(30) & !\dd|T1|cuenta[29]~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|cuenta\(30),
	datad => VCC,
	cin => \dd|T1|cuenta[29]~111\,
	combout => \dd|T1|cuenta[30]~112_combout\,
	cout => \dd|T1|cuenta[30]~113\);

-- Location: FF_X2_Y37_N29
\dd|T1|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[30]~112_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(30));

-- Location: LCCOMB_X2_Y37_N30
\dd|T1|cuenta[31]~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta[31]~114_combout\ = \dd|T1|cuenta\(31) $ (\dd|T1|cuenta[30]~113\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(31),
	cin => \dd|T1|cuenta[30]~113\,
	combout => \dd|T1|cuenta[31]~114_combout\);

-- Location: FF_X2_Y37_N31
\dd|T1|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|cuenta[31]~114_combout\,
	sclr => \dd|T1|LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|cuenta\(31));

-- Location: LCCOMB_X1_Y38_N4
\dd|T1|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~0_combout\ = (!\dd|T1|cuenta\(10) & (!\dd|T1|cuenta\(12) & (!\dd|T1|cuenta\(13) & !\dd|T1|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(10),
	datab => \dd|T1|cuenta\(12),
	datac => \dd|T1|cuenta\(13),
	datad => \dd|T1|cuenta\(11),
	combout => \dd|T1|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y38_N10
\dd|T1|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~1_combout\ = (((!\dd|T1|cuenta\(3)) # (!\dd|T1|cuenta\(1))) # (!\dd|T1|cuenta\(0))) # (!\dd|T1|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(2),
	datab => \dd|T1|cuenta\(0),
	datac => \dd|T1|cuenta\(1),
	datad => \dd|T1|cuenta\(3),
	combout => \dd|T1|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y38_N18
\dd|T1|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~2_combout\ = (\dd|T1|cuenta\(6) & ((\dd|T1|cuenta\(4)) # ((\dd|T1|cuenta\(5)) # (!\dd|T1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(6),
	datab => \dd|T1|cuenta\(4),
	datac => \dd|T1|cuenta\(5),
	datad => \dd|T1|LessThan0~1_combout\,
	combout => \dd|T1|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y38_N28
\dd|T1|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~3_combout\ = (\dd|T1|cuenta\(8) & (\dd|T1|cuenta\(9) & ((\dd|T1|cuenta\(7)) # (\dd|T1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(8),
	datab => \dd|T1|cuenta\(9),
	datac => \dd|T1|cuenta\(7),
	datad => \dd|T1|LessThan0~2_combout\,
	combout => \dd|T1|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y38_N24
\dd|T1|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~4_combout\ = (((\dd|T1|LessThan0~0_combout\ & !\dd|T1|LessThan0~3_combout\)) # (!\dd|T1|cuenta\(14))) # (!\dd|T1|cuenta\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(15),
	datab => \dd|T1|cuenta\(14),
	datac => \dd|T1|LessThan0~0_combout\,
	datad => \dd|T1|LessThan0~3_combout\,
	combout => \dd|T1|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y38_N8
\dd|T1|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~5_combout\ = (!\dd|T1|cuenta\(19) & !\dd|T1|cuenta\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|cuenta\(19),
	datad => \dd|T1|cuenta\(18),
	combout => \dd|T1|LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y38_N16
\dd|T1|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~6_combout\ = (!\dd|T1|cuenta\(21) & (!\dd|T1|cuenta\(20) & (!\dd|T1|cuenta\(22) & !\dd|T1|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(21),
	datab => \dd|T1|cuenta\(20),
	datac => \dd|T1|cuenta\(22),
	datad => \dd|T1|cuenta\(23),
	combout => \dd|T1|LessThan0~6_combout\);

-- Location: LCCOMB_X1_Y38_N22
\dd|T1|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~7_combout\ = (!\dd|T1|cuenta\(16) & (!\dd|T1|cuenta\(17) & (\dd|T1|LessThan0~5_combout\ & \dd|T1|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(16),
	datab => \dd|T1|cuenta\(17),
	datac => \dd|T1|LessThan0~5_combout\,
	datad => \dd|T1|LessThan0~6_combout\,
	combout => \dd|T1|LessThan0~7_combout\);

-- Location: LCCOMB_X1_Y38_N12
\dd|T1|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~8_combout\ = (!\dd|T1|cuenta\(27) & (!\dd|T1|cuenta\(24) & (!\dd|T1|cuenta\(25) & !\dd|T1|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(27),
	datab => \dd|T1|cuenta\(24),
	datac => \dd|T1|cuenta\(25),
	datad => \dd|T1|cuenta\(26),
	combout => \dd|T1|LessThan0~8_combout\);

-- Location: LCCOMB_X1_Y38_N6
\dd|T1|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~9_combout\ = (!\dd|T1|cuenta\(29) & (!\dd|T1|cuenta\(28) & (!\dd|T1|cuenta\(30) & \dd|T1|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(29),
	datab => \dd|T1|cuenta\(28),
	datac => \dd|T1|cuenta\(30),
	datad => \dd|T1|LessThan0~8_combout\,
	combout => \dd|T1|LessThan0~9_combout\);

-- Location: LCCOMB_X1_Y38_N30
\dd|T1|LessThan0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan0~10_combout\ = (!\dd|T1|cuenta\(31) & (((!\dd|T1|LessThan0~9_combout\) # (!\dd|T1|LessThan0~7_combout\)) # (!\dd|T1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|cuenta\(31),
	datab => \dd|T1|LessThan0~4_combout\,
	datac => \dd|T1|LessThan0~7_combout\,
	datad => \dd|T1|LessThan0~9_combout\,
	combout => \dd|T1|LessThan0~10_combout\);

-- Location: LCCOMB_X1_Y38_N14
\dd|T1|clk1ms~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|clk1ms~feeder_combout\ = \dd|T1|LessThan0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|LessThan0~10_combout\,
	combout => \dd|T1|clk1ms~feeder_combout\);

-- Location: FF_X1_Y38_N15
\dd|T1|clk1ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T1|clk1ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|clk1ms~q\);

-- Location: CLKCTRL_G3
\dd|T1|clk1ms~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dd|T1|clk1ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dd|T1|clk1ms~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X51_Y51_N25
\dd|T1|previo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	asdata => \start~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|previo~q\);

-- Location: FF_X55_Y50_N25
\dd|T1|contando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|P~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|contando~q\);

-- Location: LCCOMB_X56_Y52_N10
\dd|Mult0|mult_core|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|_~1_combout\ = (\bcd|bin\(5) & (\bcd|bin\(6) & (\bcd|bin\(4) & \Dig|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(5),
	datab => \bcd|bin\(6),
	datac => \bcd|bin\(4),
	datad => \Dig|Equal1~0_combout\,
	combout => \dd|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X56_Y52_N28
\dd|Mult0|mult_core|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|_~0_combout\ = (!\bcd|bin\(4) & (\Dig|Equal1~0_combout\ & (\bcd|bin\(6) & \bcd|bin\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(4),
	datab => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(6),
	datad => \bcd|bin\(5),
	combout => \dd|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X56_Y52_N4
\dd|Mult0|mult_core|romout[1][8]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[1][8]~0_combout\ = (\Dig|Equal1~0_combout\ & ((\bcd|bin\(6) & ((!\bcd|bin\(5)))) # (!\bcd|bin\(6) & (\bcd|bin\(4) & \bcd|bin\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(4),
	datab => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(6),
	datad => \bcd|bin\(5),
	combout => \dd|Mult0|mult_core|romout[1][8]~0_combout\);

-- Location: LCCOMB_X56_Y52_N6
\dd|Mult0|mult_core|romout[1][7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[1][7]~1_combout\ = (\Dig|Equal1~0_combout\ & (\bcd|bin\(6) $ (((!\bcd|bin\(4) & \bcd|bin\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(4),
	datab => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(6),
	datad => \bcd|bin\(5),
	combout => \dd|Mult0|mult_core|romout[1][7]~1_combout\);

-- Location: LCCOMB_X56_Y52_N0
\dd|Mult0|mult_core|romout[1][6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[1][6]~2_combout\ = (\Dig|Equal1~0_combout\ & (\bcd|bin\(4) $ (\bcd|bin\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(4),
	datad => \bcd|bin\(5),
	combout => \dd|Mult0|mult_core|romout[1][6]~2_combout\);

-- Location: LCCOMB_X57_Y52_N30
\dd|Mult0|mult_core|romout[0][10]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][10]~3_combout\ = (\bcd|D_sal[3]~3_combout\ & ((\bcd|bin\(2)) # ((\bcd|bin\(1) & \bcd|bin\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(1),
	datab => \bcd|bin\(2),
	datac => \bcd|D_sal[3]~3_combout\,
	datad => \bcd|bin\(0),
	combout => \dd|Mult0|mult_core|romout[0][10]~3_combout\);

-- Location: LCCOMB_X57_Y52_N16
\dd|Mult0|mult_core|romout[0][9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][9]~combout\ = (\bcd|D_sal[3]~3_combout\ & (!\bcd|D_sal[2]~2_combout\ & ((!\bcd|D_sal[0]~0_combout\) # (!\bcd|D_sal[1]~1_combout\)))) # (!\bcd|D_sal[3]~3_combout\ & (\bcd|D_sal[1]~1_combout\ & (\bcd|D_sal[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[3]~3_combout\,
	datab => \bcd|D_sal[1]~1_combout\,
	datac => \bcd|D_sal[2]~2_combout\,
	datad => \bcd|D_sal[0]~0_combout\,
	combout => \dd|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X57_Y52_N22
\dd|Mult0|mult_core|romout[0][8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][8]~4_combout\ = (\bcd|D_sal[1]~1_combout\ & (\bcd|D_sal[3]~3_combout\ $ (((\bcd|D_sal[0]~0_combout\ & !\bcd|D_sal[2]~2_combout\))))) # (!\bcd|D_sal[1]~1_combout\ & ((\bcd|D_sal[2]~2_combout\ & ((\bcd|D_sal[0]~0_combout\) # 
-- (!\bcd|D_sal[3]~3_combout\))) # (!\bcd|D_sal[2]~2_combout\ & ((\bcd|D_sal[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[1]~1_combout\,
	datab => \bcd|D_sal[0]~0_combout\,
	datac => \bcd|D_sal[2]~2_combout\,
	datad => \bcd|D_sal[3]~3_combout\,
	combout => \dd|Mult0|mult_core|romout[0][8]~4_combout\);

-- Location: LCCOMB_X57_Y52_N4
\dd|Mult0|mult_core|romout[0][7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][7]~5_combout\ = \bcd|D_sal[2]~2_combout\ $ (((\bcd|D_sal[1]~1_combout\ & ((!\bcd|D_sal[0]~0_combout\))) # (!\bcd|D_sal[1]~1_combout\ & (\bcd|D_sal[3]~3_combout\ & \bcd|D_sal[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[1]~1_combout\,
	datab => \bcd|D_sal[3]~3_combout\,
	datac => \bcd|D_sal[2]~2_combout\,
	datad => \bcd|D_sal[0]~0_combout\,
	combout => \dd|Mult0|mult_core|romout[0][7]~5_combout\);

-- Location: LCCOMB_X57_Y52_N26
\dd|Mult0|mult_core|romout[0][6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][6]~6_combout\ = (\Dig|Equal1~0_combout\ & (\bcd|bin\(1) $ (((\bcd|bin\(0) & !\bcd|bin\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(1),
	datab => \Dig|Equal1~0_combout\,
	datac => \bcd|bin\(0),
	datad => \bcd|bin\(3),
	combout => \dd|Mult0|mult_core|romout[0][6]~6_combout\);

-- Location: LCCOMB_X56_Y52_N12
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\dd|Mult0|mult_core|romout[0][6]~6_combout\ & (\bcd|D_sal[4]~4_combout\ $ (VCC))) # (!\dd|Mult0|mult_core|romout[0][6]~6_combout\ & (\bcd|D_sal[4]~4_combout\ & VCC))
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\dd|Mult0|mult_core|romout[0][6]~6_combout\ & \bcd|D_sal[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|romout[0][6]~6_combout\,
	datab => \bcd|D_sal[4]~4_combout\,
	datad => VCC,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X56_Y52_N14
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\bcd|D_sal[5]~5_combout\ & ((\dd|Mult0|mult_core|romout[0][7]~5_combout\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\dd|Mult0|mult_core|romout[0][7]~5_combout\ & (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\bcd|D_sal[5]~5_combout\ & ((\dd|Mult0|mult_core|romout[0][7]~5_combout\ & (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) 
-- # (!\dd|Mult0|mult_core|romout[0][7]~5_combout\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\bcd|D_sal[5]~5_combout\ & (!\dd|Mult0|mult_core|romout[0][7]~5_combout\ & !\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\bcd|D_sal[5]~5_combout\ & 
-- ((!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\dd|Mult0|mult_core|romout[0][7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[5]~5_combout\,
	datab => \dd|Mult0|mult_core|romout[0][7]~5_combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X56_Y52_N16
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\bcd|D_sal[6]~6_combout\ $ (\dd|Mult0|mult_core|romout[0][8]~4_combout\ $ (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\bcd|D_sal[6]~6_combout\ & ((\dd|Mult0|mult_core|romout[0][8]~4_combout\) # (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!\bcd|D_sal[6]~6_combout\ & 
-- (\dd|Mult0|mult_core|romout[0][8]~4_combout\ & !\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[6]~6_combout\,
	datab => \dd|Mult0|mult_core|romout[0][8]~4_combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X56_Y52_N18
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\bcd|D_sal[4]~4_combout\ & ((\dd|Mult0|mult_core|romout[0][9]~combout\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\dd|Mult0|mult_core|romout[0][9]~combout\ & (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\bcd|D_sal[4]~4_combout\ & ((\dd|Mult0|mult_core|romout[0][9]~combout\ & (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\dd|Mult0|mult_core|romout[0][9]~combout\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\bcd|D_sal[4]~4_combout\ & (!\dd|Mult0|mult_core|romout[0][9]~combout\ & !\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\bcd|D_sal[4]~4_combout\ & 
-- ((!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\dd|Mult0|mult_core|romout[0][9]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|D_sal[4]~4_combout\,
	datab => \dd|Mult0|mult_core|romout[0][9]~combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X56_Y52_N20
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\dd|Mult0|mult_core|romout[1][6]~2_combout\ $ (\dd|Mult0|mult_core|romout[0][10]~3_combout\ $ (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\dd|Mult0|mult_core|romout[1][6]~2_combout\ & ((\dd|Mult0|mult_core|romout[0][10]~3_combout\) # (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\dd|Mult0|mult_core|romout[1][6]~2_combout\ & (\dd|Mult0|mult_core|romout[0][10]~3_combout\ & !\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|romout[1][6]~2_combout\,
	datab => \dd|Mult0|mult_core|romout[0][10]~3_combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X56_Y52_N22
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\dd|Mult0|mult_core|romout[1][7]~1_combout\ & (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\dd|Mult0|mult_core|romout[1][7]~1_combout\ & 
-- ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\dd|Mult0|mult_core|romout[1][7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|Mult0|mult_core|romout[1][7]~1_combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X56_Y52_N24
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = (\dd|Mult0|mult_core|romout[1][8]~0_combout\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ $ (GND))) # (!\dd|Mult0|mult_core|romout[1][8]~0_combout\ & 
-- (!\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ & VCC))
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\dd|Mult0|mult_core|romout[1][8]~0_combout\ & !\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|romout[1][8]~0_combout\,
	datad => VCC,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X56_Y52_N26
\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ $ (((\dd|Mult0|mult_core|_~1_combout\) # (\dd|Mult0|mult_core|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|_~1_combout\,
	datad => \dd|Mult0|mult_core|_~0_combout\,
	cin => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\);

-- Location: LCCOMB_X55_Y50_N26
\dd|porcentaje[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(13) = (\start~input_o\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datac => \dd|porcentaje\(13),
	datad => \start~input_o\,
	combout => \dd|porcentaje\(13));

-- Location: LCCOMB_X54_Y52_N0
\dd|porcentaje[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(12) = (\start~input_o\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datab => \dd|porcentaje\(12),
	datad => \start~input_o\,
	combout => \dd|porcentaje\(12));

-- Location: LCCOMB_X54_Y52_N30
\dd|porcentaje[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(11) = (\start~input_o\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datac => \dd|porcentaje\(11),
	datad => \start~input_o\,
	combout => \dd|porcentaje\(11));

-- Location: LCCOMB_X56_Y52_N2
\dd|porcentaje[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(10) = (\start~input_o\ & (\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datac => \start~input_o\,
	datad => \dd|porcentaje\(10),
	combout => \dd|porcentaje\(10));

-- Location: LCCOMB_X54_Y52_N8
\dd|porcentaje[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(9) = (\start~input_o\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(9),
	datac => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => \start~input_o\,
	combout => \dd|porcentaje\(9));

-- Location: LCCOMB_X52_Y52_N22
\dd|porcentaje[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(8) = (\start~input_o\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(8),
	datab => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datac => \start~input_o\,
	combout => \dd|porcentaje\(8));

-- Location: LCCOMB_X55_Y52_N28
\dd|porcentaje[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(7) = (\start~input_o\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(7),
	datac => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => \start~input_o\,
	combout => \dd|porcentaje\(7));

-- Location: LCCOMB_X54_Y52_N6
\dd|porcentaje[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(6) = (\start~input_o\ & ((\dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(6),
	datab => \dd|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \start~input_o\,
	combout => \dd|porcentaje\(6));

-- Location: LCCOMB_X57_Y52_N20
\dd|Mult0|mult_core|romout[0][5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Mult0|mult_core|romout[0][5]~7_combout\ = (\Dig|Equal1~0_combout\ & (\bcd|bin\(3) $ (\bcd|bin\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd|bin\(3),
	datab => \bcd|bin\(0),
	datac => \Dig|Equal1~0_combout\,
	combout => \dd|Mult0|mult_core|romout[0][5]~7_combout\);

-- Location: LCCOMB_X54_Y52_N28
\dd|porcentaje[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(5) = (\start~input_o\ & (\dd|Mult0|mult_core|romout[0][5]~7_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Mult0|mult_core|romout[0][5]~7_combout\,
	datab => \dd|porcentaje\(5),
	datad => \start~input_o\,
	combout => \dd|porcentaje\(5));

-- Location: LCCOMB_X54_Y52_N26
\dd|porcentaje[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(4) = (\start~input_o\ & ((\bcd|D_sal[2]~2_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(4),
	datac => \bcd|D_sal[2]~2_combout\,
	datad => \start~input_o\,
	combout => \dd|porcentaje\(4));

-- Location: LCCOMB_X54_Y52_N16
\dd|porcentaje[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(3) = (\start~input_o\ & ((\bcd|D_sal[1]~1_combout\))) # (!\start~input_o\ & (\dd|porcentaje\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(3),
	datac => \bcd|D_sal[1]~1_combout\,
	datad => \start~input_o\,
	combout => \dd|porcentaje\(3));

-- Location: LCCOMB_X55_Y52_N30
\dd|porcentaje[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|porcentaje\(2) = (\start~input_o\ & (\bcd|D_sal[0]~0_combout\)) # (!\start~input_o\ & ((\dd|porcentaje\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd|D_sal[0]~0_combout\,
	datac => \dd|porcentaje\(2),
	datad => \start~input_o\,
	combout => \dd|porcentaje\(2));

-- Location: LCCOMB_X55_Y52_N0
\dd|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~1_cout\ = CARRY(!\dd|porcentaje\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(2),
	datad => VCC,
	cout => \dd|Add0~1_cout\);

-- Location: LCCOMB_X55_Y52_N2
\dd|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~2_combout\ = (\dd|porcentaje\(3) & ((\dd|Add0~1_cout\) # (GND))) # (!\dd|porcentaje\(3) & (!\dd|Add0~1_cout\))
-- \dd|Add0~3\ = CARRY((\dd|porcentaje\(3)) # (!\dd|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(3),
	datad => VCC,
	cin => \dd|Add0~1_cout\,
	combout => \dd|Add0~2_combout\,
	cout => \dd|Add0~3\);

-- Location: LCCOMB_X55_Y52_N4
\dd|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~4_combout\ = (\dd|porcentaje\(4) & (\dd|Add0~3\ $ (GND))) # (!\dd|porcentaje\(4) & ((GND) # (!\dd|Add0~3\)))
-- \dd|Add0~5\ = CARRY((!\dd|Add0~3\) # (!\dd|porcentaje\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(4),
	datad => VCC,
	cin => \dd|Add0~3\,
	combout => \dd|Add0~4_combout\,
	cout => \dd|Add0~5\);

-- Location: LCCOMB_X55_Y52_N6
\dd|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~6_combout\ = (\dd|porcentaje\(5) & ((\dd|Add0~5\) # (GND))) # (!\dd|porcentaje\(5) & (!\dd|Add0~5\))
-- \dd|Add0~7\ = CARRY((\dd|porcentaje\(5)) # (!\dd|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(5),
	datad => VCC,
	cin => \dd|Add0~5\,
	combout => \dd|Add0~6_combout\,
	cout => \dd|Add0~7\);

-- Location: LCCOMB_X55_Y52_N8
\dd|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~8_combout\ = (\dd|porcentaje\(6) & (!\dd|Add0~7\ & VCC)) # (!\dd|porcentaje\(6) & (\dd|Add0~7\ $ (GND)))
-- \dd|Add0~9\ = CARRY((!\dd|porcentaje\(6) & !\dd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(6),
	datad => VCC,
	cin => \dd|Add0~7\,
	combout => \dd|Add0~8_combout\,
	cout => \dd|Add0~9\);

-- Location: LCCOMB_X55_Y52_N10
\dd|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~10_combout\ = (\dd|porcentaje\(7) & ((\dd|Add0~9\) # (GND))) # (!\dd|porcentaje\(7) & (!\dd|Add0~9\))
-- \dd|Add0~11\ = CARRY((\dd|porcentaje\(7)) # (!\dd|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(7),
	datad => VCC,
	cin => \dd|Add0~9\,
	combout => \dd|Add0~10_combout\,
	cout => \dd|Add0~11\);

-- Location: LCCOMB_X55_Y52_N12
\dd|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~12_combout\ = (\dd|porcentaje\(8) & (\dd|Add0~11\ $ (GND))) # (!\dd|porcentaje\(8) & ((GND) # (!\dd|Add0~11\)))
-- \dd|Add0~13\ = CARRY((!\dd|Add0~11\) # (!\dd|porcentaje\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(8),
	datad => VCC,
	cin => \dd|Add0~11\,
	combout => \dd|Add0~12_combout\,
	cout => \dd|Add0~13\);

-- Location: LCCOMB_X55_Y52_N14
\dd|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~14_combout\ = (\dd|porcentaje\(9) & (!\dd|Add0~13\)) # (!\dd|porcentaje\(9) & (\dd|Add0~13\ & VCC))
-- \dd|Add0~15\ = CARRY((\dd|porcentaje\(9) & !\dd|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(9),
	datad => VCC,
	cin => \dd|Add0~13\,
	combout => \dd|Add0~14_combout\,
	cout => \dd|Add0~15\);

-- Location: LCCOMB_X55_Y52_N16
\dd|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~16_combout\ = (\dd|porcentaje\(10) & (\dd|Add0~15\ $ (GND))) # (!\dd|porcentaje\(10) & ((GND) # (!\dd|Add0~15\)))
-- \dd|Add0~17\ = CARRY((!\dd|Add0~15\) # (!\dd|porcentaje\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(10),
	datad => VCC,
	cin => \dd|Add0~15\,
	combout => \dd|Add0~16_combout\,
	cout => \dd|Add0~17\);

-- Location: LCCOMB_X55_Y52_N18
\dd|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~18_combout\ = (\dd|porcentaje\(11) & ((\dd|Add0~17\) # (GND))) # (!\dd|porcentaje\(11) & (!\dd|Add0~17\))
-- \dd|Add0~19\ = CARRY((\dd|porcentaje\(11)) # (!\dd|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|porcentaje\(11),
	datad => VCC,
	cin => \dd|Add0~17\,
	combout => \dd|Add0~18_combout\,
	cout => \dd|Add0~19\);

-- Location: LCCOMB_X55_Y52_N20
\dd|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~20_combout\ = (\dd|porcentaje\(12) & (!\dd|Add0~19\ & VCC)) # (!\dd|porcentaje\(12) & (\dd|Add0~19\ $ (GND)))
-- \dd|Add0~21\ = CARRY((!\dd|porcentaje\(12) & !\dd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(12),
	datad => VCC,
	cin => \dd|Add0~19\,
	combout => \dd|Add0~20_combout\,
	cout => \dd|Add0~21\);

-- Location: LCCOMB_X55_Y52_N22
\dd|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~22_combout\ = (\dd|porcentaje\(13) & (!\dd|Add0~21\)) # (!\dd|porcentaje\(13) & (\dd|Add0~21\ & VCC))
-- \dd|Add0~23\ = CARRY((\dd|porcentaje\(13) & !\dd|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(13),
	datad => VCC,
	cin => \dd|Add0~21\,
	combout => \dd|Add0~22_combout\,
	cout => \dd|Add0~23\);

-- Location: LCCOMB_X55_Y52_N24
\dd|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~24_combout\ = \dd|Add0~23\ $ (GND)
-- \dd|Add0~25\ = CARRY(!\dd|Add0~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \dd|Add0~23\,
	combout => \dd|Add0~24_combout\,
	cout => \dd|Add0~25\);

-- Location: LCCOMB_X55_Y52_N26
\dd|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Add0~26_combout\ = !\dd|Add0~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dd|Add0~25\,
	combout => \dd|Add0~26_combout\);

-- Location: LCCOMB_X56_Y50_N12
\dd|Tms1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~26_combout\ = (\dd|Add0~26_combout\ & ((\RX|tipo\(1)) # (!\RX|tipo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RX|tipo\(0),
	datac => \RX|tipo\(1),
	datad => \dd|Add0~26_combout\,
	combout => \dd|Tms1~26_combout\);

-- Location: LCCOMB_X56_Y50_N10
\dd|Tms1[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(19) = (\start~input_o\ & ((\dd|Tms1~26_combout\))) # (!\start~input_o\ & (\dd|Tms1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms1\(19),
	datad => \dd|Tms1~26_combout\,
	combout => \dd|Tms1\(19));

-- Location: LCCOMB_X51_Y51_N8
\dd|T1|cuenta~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~32_combout\ = (\dd|T1|Add1~38_combout\ & \dd|T1|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|Add1~38_combout\,
	datad => \dd|T1|contando~q\,
	combout => \dd|T1|cuenta~32_combout\);

-- Location: LCCOMB_X51_Y51_N24
\dd|T1|process_1:cuenta[16]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|process_1:cuenta[16]~0_combout\ = (\dd|T1|contando~q\) # ((\start~input_o\ & !\dd|T1|previo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \dd|T1|previo~q\,
	datad => \dd|T1|contando~q\,
	combout => \dd|T1|process_1:cuenta[16]~0_combout\);

-- Location: FF_X51_Y51_N9
\dd|T1|process_1:cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~32_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[19]~q\);

-- Location: LCCOMB_X52_Y51_N12
\dd|T1|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~0_combout\ = \dd|T1|process_1:cuenta[0]~q\ $ (VCC)
-- \dd|T1|Add1~1\ = CARRY(\dd|T1|process_1:cuenta[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[0]~q\,
	datad => VCC,
	combout => \dd|T1|Add1~0_combout\,
	cout => \dd|T1|Add1~1\);

-- Location: LCCOMB_X52_Y51_N6
\dd|T1|cuenta~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~51_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~0_combout\,
	combout => \dd|T1|cuenta~51_combout\);

-- Location: FF_X52_Y51_N7
\dd|T1|process_1:cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~51_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[0]~q\);

-- Location: LCCOMB_X52_Y51_N14
\dd|T1|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~2_combout\ = (\dd|T1|process_1:cuenta[1]~q\ & (!\dd|T1|Add1~1\)) # (!\dd|T1|process_1:cuenta[1]~q\ & ((\dd|T1|Add1~1\) # (GND)))
-- \dd|T1|Add1~3\ = CARRY((!\dd|T1|Add1~1\) # (!\dd|T1|process_1:cuenta[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[1]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~1\,
	combout => \dd|T1|Add1~2_combout\,
	cout => \dd|T1|Add1~3\);

-- Location: LCCOMB_X52_Y51_N8
\dd|T1|cuenta~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~50_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|contando~q\,
	datac => \dd|T1|Add1~2_combout\,
	combout => \dd|T1|cuenta~50_combout\);

-- Location: FF_X52_Y51_N9
\dd|T1|process_1:cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~50_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[1]~q\);

-- Location: LCCOMB_X52_Y51_N16
\dd|T1|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~4_combout\ = (\dd|T1|process_1:cuenta[2]~q\ & (\dd|T1|Add1~3\ $ (GND))) # (!\dd|T1|process_1:cuenta[2]~q\ & (!\dd|T1|Add1~3\ & VCC))
-- \dd|T1|Add1~5\ = CARRY((\dd|T1|process_1:cuenta[2]~q\ & !\dd|T1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[2]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~3\,
	combout => \dd|T1|Add1~4_combout\,
	cout => \dd|T1|Add1~5\);

-- Location: LCCOMB_X52_Y51_N10
\dd|T1|cuenta~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~49_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~4_combout\,
	combout => \dd|T1|cuenta~49_combout\);

-- Location: FF_X52_Y51_N11
\dd|T1|process_1:cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~49_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[2]~q\);

-- Location: LCCOMB_X52_Y51_N18
\dd|T1|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~6_combout\ = (\dd|T1|process_1:cuenta[3]~q\ & (!\dd|T1|Add1~5\)) # (!\dd|T1|process_1:cuenta[3]~q\ & ((\dd|T1|Add1~5\) # (GND)))
-- \dd|T1|Add1~7\ = CARRY((!\dd|T1|Add1~5\) # (!\dd|T1|process_1:cuenta[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[3]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~5\,
	combout => \dd|T1|Add1~6_combout\,
	cout => \dd|T1|Add1~7\);

-- Location: LCCOMB_X52_Y51_N0
\dd|T1|cuenta~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~48_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~6_combout\,
	combout => \dd|T1|cuenta~48_combout\);

-- Location: FF_X52_Y51_N1
\dd|T1|process_1:cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~48_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[3]~q\);

-- Location: LCCOMB_X52_Y51_N20
\dd|T1|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~8_combout\ = (\dd|T1|process_1:cuenta[4]~q\ & (\dd|T1|Add1~7\ $ (GND))) # (!\dd|T1|process_1:cuenta[4]~q\ & (!\dd|T1|Add1~7\ & VCC))
-- \dd|T1|Add1~9\ = CARRY((\dd|T1|process_1:cuenta[4]~q\ & !\dd|T1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[4]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~7\,
	combout => \dd|T1|Add1~8_combout\,
	cout => \dd|T1|Add1~9\);

-- Location: LCCOMB_X52_Y51_N2
\dd|T1|cuenta~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~47_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~8_combout\,
	combout => \dd|T1|cuenta~47_combout\);

-- Location: FF_X52_Y51_N3
\dd|T1|process_1:cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~47_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[4]~q\);

-- Location: LCCOMB_X52_Y51_N22
\dd|T1|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~10_combout\ = (\dd|T1|process_1:cuenta[5]~q\ & (!\dd|T1|Add1~9\)) # (!\dd|T1|process_1:cuenta[5]~q\ & ((\dd|T1|Add1~9\) # (GND)))
-- \dd|T1|Add1~11\ = CARRY((!\dd|T1|Add1~9\) # (!\dd|T1|process_1:cuenta[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[5]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~9\,
	combout => \dd|T1|Add1~10_combout\,
	cout => \dd|T1|Add1~11\);

-- Location: LCCOMB_X51_Y51_N6
\dd|T1|cuenta~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~46_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~10_combout\,
	combout => \dd|T1|cuenta~46_combout\);

-- Location: FF_X51_Y51_N7
\dd|T1|process_1:cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~46_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[5]~q\);

-- Location: LCCOMB_X52_Y51_N24
\dd|T1|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~12_combout\ = (\dd|T1|process_1:cuenta[6]~q\ & (\dd|T1|Add1~11\ $ (GND))) # (!\dd|T1|process_1:cuenta[6]~q\ & (!\dd|T1|Add1~11\ & VCC))
-- \dd|T1|Add1~13\ = CARRY((\dd|T1|process_1:cuenta[6]~q\ & !\dd|T1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[6]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~11\,
	combout => \dd|T1|Add1~12_combout\,
	cout => \dd|T1|Add1~13\);

-- Location: LCCOMB_X52_Y51_N4
\dd|T1|cuenta~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~45_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~12_combout\,
	combout => \dd|T1|cuenta~45_combout\);

-- Location: FF_X52_Y51_N5
\dd|T1|process_1:cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~45_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[6]~q\);

-- Location: LCCOMB_X52_Y51_N26
\dd|T1|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~14_combout\ = (\dd|T1|process_1:cuenta[7]~q\ & (!\dd|T1|Add1~13\)) # (!\dd|T1|process_1:cuenta[7]~q\ & ((\dd|T1|Add1~13\) # (GND)))
-- \dd|T1|Add1~15\ = CARRY((!\dd|T1|Add1~13\) # (!\dd|T1|process_1:cuenta[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[7]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~13\,
	combout => \dd|T1|Add1~14_combout\,
	cout => \dd|T1|Add1~15\);

-- Location: LCCOMB_X51_Y51_N12
\dd|T1|cuenta~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~44_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~14_combout\,
	combout => \dd|T1|cuenta~44_combout\);

-- Location: FF_X51_Y51_N13
\dd|T1|process_1:cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~44_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[7]~q\);

-- Location: LCCOMB_X52_Y51_N28
\dd|T1|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~16_combout\ = (\dd|T1|process_1:cuenta[8]~q\ & (\dd|T1|Add1~15\ $ (GND))) # (!\dd|T1|process_1:cuenta[8]~q\ & (!\dd|T1|Add1~15\ & VCC))
-- \dd|T1|Add1~17\ = CARRY((\dd|T1|process_1:cuenta[8]~q\ & !\dd|T1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[8]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~15\,
	combout => \dd|T1|Add1~16_combout\,
	cout => \dd|T1|Add1~17\);

-- Location: LCCOMB_X51_Y51_N2
\dd|T1|cuenta~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~43_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~16_combout\,
	combout => \dd|T1|cuenta~43_combout\);

-- Location: FF_X51_Y51_N3
\dd|T1|process_1:cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~43_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[8]~q\);

-- Location: LCCOMB_X52_Y51_N30
\dd|T1|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~18_combout\ = (\dd|T1|process_1:cuenta[9]~q\ & (!\dd|T1|Add1~17\)) # (!\dd|T1|process_1:cuenta[9]~q\ & ((\dd|T1|Add1~17\) # (GND)))
-- \dd|T1|Add1~19\ = CARRY((!\dd|T1|Add1~17\) # (!\dd|T1|process_1:cuenta[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[9]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~17\,
	combout => \dd|T1|Add1~18_combout\,
	cout => \dd|T1|Add1~19\);

-- Location: LCCOMB_X51_Y51_N28
\dd|T1|cuenta~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~42_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~18_combout\,
	combout => \dd|T1|cuenta~42_combout\);

-- Location: FF_X51_Y51_N29
\dd|T1|process_1:cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~42_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[9]~q\);

-- Location: LCCOMB_X52_Y50_N0
\dd|T1|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~20_combout\ = (\dd|T1|process_1:cuenta[10]~q\ & (\dd|T1|Add1~19\ $ (GND))) # (!\dd|T1|process_1:cuenta[10]~q\ & (!\dd|T1|Add1~19\ & VCC))
-- \dd|T1|Add1~21\ = CARRY((\dd|T1|process_1:cuenta[10]~q\ & !\dd|T1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[10]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~19\,
	combout => \dd|T1|Add1~20_combout\,
	cout => \dd|T1|Add1~21\);

-- Location: LCCOMB_X51_Y51_N26
\dd|T1|cuenta~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~41_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~20_combout\,
	combout => \dd|T1|cuenta~41_combout\);

-- Location: FF_X51_Y51_N27
\dd|T1|process_1:cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~41_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[10]~q\);

-- Location: LCCOMB_X52_Y50_N2
\dd|T1|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~22_combout\ = (\dd|T1|process_1:cuenta[11]~q\ & (!\dd|T1|Add1~21\)) # (!\dd|T1|process_1:cuenta[11]~q\ & ((\dd|T1|Add1~21\) # (GND)))
-- \dd|T1|Add1~23\ = CARRY((!\dd|T1|Add1~21\) # (!\dd|T1|process_1:cuenta[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[11]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~21\,
	combout => \dd|T1|Add1~22_combout\,
	cout => \dd|T1|Add1~23\);

-- Location: LCCOMB_X51_Y51_N20
\dd|T1|cuenta~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~40_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datac => \dd|T1|Add1~22_combout\,
	combout => \dd|T1|cuenta~40_combout\);

-- Location: FF_X51_Y51_N21
\dd|T1|process_1:cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~40_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[11]~q\);

-- Location: LCCOMB_X52_Y50_N4
\dd|T1|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~24_combout\ = (\dd|T1|process_1:cuenta[12]~q\ & (\dd|T1|Add1~23\ $ (GND))) # (!\dd|T1|process_1:cuenta[12]~q\ & (!\dd|T1|Add1~23\ & VCC))
-- \dd|T1|Add1~25\ = CARRY((\dd|T1|process_1:cuenta[12]~q\ & !\dd|T1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[12]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~23\,
	combout => \dd|T1|Add1~24_combout\,
	cout => \dd|T1|Add1~25\);

-- Location: LCCOMB_X51_Y51_N30
\dd|T1|cuenta~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~39_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~24_combout\,
	combout => \dd|T1|cuenta~39_combout\);

-- Location: FF_X51_Y51_N31
\dd|T1|process_1:cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~39_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[12]~q\);

-- Location: LCCOMB_X52_Y50_N6
\dd|T1|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~26_combout\ = (\dd|T1|process_1:cuenta[13]~q\ & (!\dd|T1|Add1~25\)) # (!\dd|T1|process_1:cuenta[13]~q\ & ((\dd|T1|Add1~25\) # (GND)))
-- \dd|T1|Add1~27\ = CARRY((!\dd|T1|Add1~25\) # (!\dd|T1|process_1:cuenta[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[13]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~25\,
	combout => \dd|T1|Add1~26_combout\,
	cout => \dd|T1|Add1~27\);

-- Location: LCCOMB_X51_Y51_N16
\dd|T1|cuenta~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~38_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~26_combout\,
	combout => \dd|T1|cuenta~38_combout\);

-- Location: FF_X51_Y51_N17
\dd|T1|process_1:cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~38_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[13]~q\);

-- Location: LCCOMB_X52_Y50_N8
\dd|T1|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~28_combout\ = (\dd|T1|process_1:cuenta[14]~q\ & (\dd|T1|Add1~27\ $ (GND))) # (!\dd|T1|process_1:cuenta[14]~q\ & (!\dd|T1|Add1~27\ & VCC))
-- \dd|T1|Add1~29\ = CARRY((\dd|T1|process_1:cuenta[14]~q\ & !\dd|T1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[14]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~27\,
	combout => \dd|T1|Add1~28_combout\,
	cout => \dd|T1|Add1~29\);

-- Location: LCCOMB_X51_Y51_N10
\dd|T1|cuenta~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~37_combout\ = (\dd|T1|Add1~28_combout\ & \dd|T1|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|Add1~28_combout\,
	datad => \dd|T1|contando~q\,
	combout => \dd|T1|cuenta~37_combout\);

-- Location: FF_X51_Y51_N11
\dd|T1|process_1:cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~37_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[14]~q\);

-- Location: LCCOMB_X52_Y50_N10
\dd|T1|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~30_combout\ = (\dd|T1|process_1:cuenta[15]~q\ & (!\dd|T1|Add1~29\)) # (!\dd|T1|process_1:cuenta[15]~q\ & ((\dd|T1|Add1~29\) # (GND)))
-- \dd|T1|Add1~31\ = CARRY((!\dd|T1|Add1~29\) # (!\dd|T1|process_1:cuenta[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[15]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~29\,
	combout => \dd|T1|Add1~30_combout\,
	cout => \dd|T1|Add1~31\);

-- Location: LCCOMB_X51_Y51_N0
\dd|T1|cuenta~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~36_combout\ = (\dd|T1|Add1~30_combout\ & \dd|T1|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|Add1~30_combout\,
	datad => \dd|T1|contando~q\,
	combout => \dd|T1|cuenta~36_combout\);

-- Location: FF_X51_Y51_N1
\dd|T1|process_1:cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~36_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[15]~q\);

-- Location: LCCOMB_X52_Y50_N12
\dd|T1|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~32_combout\ = (\dd|T1|process_1:cuenta[16]~q\ & (\dd|T1|Add1~31\ $ (GND))) # (!\dd|T1|process_1:cuenta[16]~q\ & (!\dd|T1|Add1~31\ & VCC))
-- \dd|T1|Add1~33\ = CARRY((\dd|T1|process_1:cuenta[16]~q\ & !\dd|T1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|process_1:cuenta[16]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~31\,
	combout => \dd|T1|Add1~32_combout\,
	cout => \dd|T1|Add1~33\);

-- Location: LCCOMB_X51_Y51_N22
\dd|T1|cuenta~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~35_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~32_combout\,
	combout => \dd|T1|cuenta~35_combout\);

-- Location: FF_X51_Y51_N23
\dd|T1|process_1:cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~35_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[16]~q\);

-- Location: LCCOMB_X52_Y50_N14
\dd|T1|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~34_combout\ = (\dd|T1|process_1:cuenta[17]~q\ & (!\dd|T1|Add1~33\)) # (!\dd|T1|process_1:cuenta[17]~q\ & ((\dd|T1|Add1~33\) # (GND)))
-- \dd|T1|Add1~35\ = CARRY((!\dd|T1|Add1~33\) # (!\dd|T1|process_1:cuenta[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[17]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~33\,
	combout => \dd|T1|Add1~34_combout\,
	cout => \dd|T1|Add1~35\);

-- Location: LCCOMB_X51_Y51_N4
\dd|T1|cuenta~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~34_combout\ = (\dd|T1|contando~q\ & \dd|T1|Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T1|contando~q\,
	datad => \dd|T1|Add1~34_combout\,
	combout => \dd|T1|cuenta~34_combout\);

-- Location: FF_X51_Y51_N5
\dd|T1|process_1:cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~34_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[17]~q\);

-- Location: LCCOMB_X52_Y50_N16
\dd|T1|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~36_combout\ = (\dd|T1|process_1:cuenta[18]~q\ & (\dd|T1|Add1~35\ $ (GND))) # (!\dd|T1|process_1:cuenta[18]~q\ & (!\dd|T1|Add1~35\ & VCC))
-- \dd|T1|Add1~37\ = CARRY((\dd|T1|process_1:cuenta[18]~q\ & !\dd|T1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|process_1:cuenta[18]~q\,
	datad => VCC,
	cin => \dd|T1|Add1~35\,
	combout => \dd|T1|Add1~36_combout\,
	cout => \dd|T1|Add1~37\);

-- Location: LCCOMB_X51_Y51_N14
\dd|T1|cuenta~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|cuenta~33_combout\ = (\dd|T1|Add1~36_combout\ & \dd|T1|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|Add1~36_combout\,
	datad => \dd|T1|contando~q\,
	combout => \dd|T1|cuenta~33_combout\);

-- Location: FF_X51_Y51_N15
\dd|T1|process_1:cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|cuenta~33_combout\,
	ena => \dd|T1|process_1:cuenta[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|process_1:cuenta[18]~q\);

-- Location: LCCOMB_X52_Y50_N18
\dd|T1|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|Add1~38_combout\ = \dd|T1|Add1~37\ $ (\dd|T1|process_1:cuenta[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dd|T1|process_1:cuenta[19]~q\,
	cin => \dd|T1|Add1~37\,
	combout => \dd|T1|Add1~38_combout\);

-- Location: LCCOMB_X55_Y53_N20
\dd|Tms1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~27_combout\ = (\dd|Add0~24_combout\ & ((\RX|tipo\(1)) # (!\RX|tipo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~24_combout\,
	combout => \dd|Tms1~27_combout\);

-- Location: LCCOMB_X55_Y53_N16
\dd|Tms1[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(14) = (\start~input_o\ & ((\dd|Tms1~27_combout\))) # (!\start~input_o\ & (\dd|Tms1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms1\(14),
	datad => \dd|Tms1~27_combout\,
	combout => \dd|Tms1\(14));

-- Location: LCCOMB_X55_Y50_N22
\dd|Tms1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~28_combout\ = (\RX|tipo\(1) & (((\dd|Add0~22_combout\)))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & (\dd|porcentaje\(13))) # (!\RX|tipo\(0) & ((\dd|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datab => \RX|tipo\(0),
	datac => \dd|porcentaje\(13),
	datad => \dd|Add0~22_combout\,
	combout => \dd|Tms1~28_combout\);

-- Location: LCCOMB_X55_Y50_N28
\dd|Tms1[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(13) = (\start~input_o\ & (\dd|Tms1~28_combout\)) # (!\start~input_o\ & ((\dd|Tms1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms1~28_combout\,
	datad => \dd|Tms1\(13),
	combout => \dd|Tms1\(13));

-- Location: LCCOMB_X55_Y53_N2
\dd|Tms1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~29_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & ((\dd|Add0~20_combout\))) # (!\RX|tipo\(1) & (\dd|porcentaje\(12))))) # (!\RX|tipo\(0) & (((\dd|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(12),
	datab => \RX|tipo\(0),
	datac => \dd|Add0~20_combout\,
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~29_combout\);

-- Location: LCCOMB_X55_Y53_N26
\dd|Tms1[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(12) = (\start~input_o\ & ((\dd|Tms1~29_combout\))) # (!\start~input_o\ & (\dd|Tms1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms1\(12),
	datad => \dd|Tms1~29_combout\,
	combout => \dd|Tms1\(12));

-- Location: LCCOMB_X54_Y52_N12
\dd|Tms1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~30_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & ((\dd|Add0~18_combout\))) # (!\RX|tipo\(1) & (\dd|porcentaje\(11))))) # (!\RX|tipo\(0) & (((\dd|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(11),
	datab => \dd|Add0~18_combout\,
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~30_combout\);

-- Location: LCCOMB_X54_Y52_N20
\dd|Tms1[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(11) = (\start~input_o\ & ((\dd|Tms1~30_combout\))) # (!\start~input_o\ & (\dd|Tms1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(11),
	datac => \start~input_o\,
	datad => \dd|Tms1~30_combout\,
	combout => \dd|Tms1\(11));

-- Location: LCCOMB_X55_Y53_N12
\dd|Tms1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~31_combout\ = (\RX|tipo\(1) & (((\dd|Add0~16_combout\)))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & (\dd|porcentaje\(10))) # (!\RX|tipo\(0) & ((\dd|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datab => \RX|tipo\(0),
	datac => \dd|porcentaje\(10),
	datad => \dd|Add0~16_combout\,
	combout => \dd|Tms1~31_combout\);

-- Location: LCCOMB_X55_Y53_N4
\dd|Tms1[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(10) = (\start~input_o\ & ((\dd|Tms1~31_combout\))) # (!\start~input_o\ & (\dd|Tms1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(10),
	datac => \start~input_o\,
	datad => \dd|Tms1~31_combout\,
	combout => \dd|Tms1\(10));

-- Location: LCCOMB_X56_Y51_N4
\dd|Tms1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~32_combout\ = (\RX|tipo\(1) & (((\dd|Add0~14_combout\)))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & (\dd|porcentaje\(9))) # (!\RX|tipo\(0) & ((\dd|Add0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(9),
	datab => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~14_combout\,
	combout => \dd|Tms1~32_combout\);

-- Location: LCCOMB_X56_Y51_N20
\dd|Tms1[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(9) = (\start~input_o\ & (\dd|Tms1~32_combout\)) # (!\start~input_o\ & ((\dd|Tms1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms1~32_combout\,
	datad => \dd|Tms1\(9),
	combout => \dd|Tms1\(9));

-- Location: LCCOMB_X56_Y51_N22
\dd|Tms1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~33_combout\ = (\RX|tipo\(1) & (((\dd|Add0~12_combout\)))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & (\dd|porcentaje\(8))) # (!\RX|tipo\(0) & ((\dd|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(8),
	datab => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~12_combout\,
	combout => \dd|Tms1~33_combout\);

-- Location: LCCOMB_X56_Y51_N14
\dd|Tms1[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(8) = (\start~input_o\ & ((\dd|Tms1~33_combout\))) # (!\start~input_o\ & (\dd|Tms1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(8),
	datac => \dd|Tms1~33_combout\,
	datad => \start~input_o\,
	combout => \dd|Tms1\(8));

-- Location: LCCOMB_X55_Y51_N12
\dd|Tms1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~34_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & ((\dd|Add0~10_combout\))) # (!\RX|tipo\(1) & (\dd|porcentaje\(7))))) # (!\RX|tipo\(0) & (((\dd|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(7),
	datab => \dd|Add0~10_combout\,
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~34_combout\);

-- Location: LCCOMB_X55_Y51_N2
\dd|Tms1[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(7) = (\start~input_o\ & ((\dd|Tms1~34_combout\))) # (!\start~input_o\ & (\dd|Tms1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(7),
	datac => \start~input_o\,
	datad => \dd|Tms1~34_combout\,
	combout => \dd|Tms1\(7));

-- Location: LCCOMB_X54_Y51_N28
\dd|Tms1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~35_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|Add0~8_combout\)) # (!\RX|tipo\(1) & ((\dd|porcentaje\(6)))))) # (!\RX|tipo\(0) & (\dd|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(0),
	datab => \dd|Add0~8_combout\,
	datac => \dd|porcentaje\(6),
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~35_combout\);

-- Location: LCCOMB_X54_Y51_N8
\dd|Tms1[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(6) = (\start~input_o\ & ((\dd|Tms1~35_combout\))) # (!\start~input_o\ & (\dd|Tms1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(6),
	datac => \start~input_o\,
	datad => \dd|Tms1~35_combout\,
	combout => \dd|Tms1\(6));

-- Location: LCCOMB_X54_Y51_N22
\dd|Tms1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~36_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & ((\dd|Add0~6_combout\))) # (!\RX|tipo\(1) & (\dd|porcentaje\(5))))) # (!\RX|tipo\(0) & (((\dd|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(0),
	datab => \dd|porcentaje\(5),
	datac => \dd|Add0~6_combout\,
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~36_combout\);

-- Location: LCCOMB_X55_Y51_N4
\dd|Tms1[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(5) = (\start~input_o\ & ((\dd|Tms1~36_combout\))) # (!\start~input_o\ & (\dd|Tms1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(5),
	datac => \start~input_o\,
	datad => \dd|Tms1~36_combout\,
	combout => \dd|Tms1\(5));

-- Location: LCCOMB_X55_Y51_N10
\dd|Tms1~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~37_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|Add0~4_combout\)) # (!\RX|tipo\(1) & ((\dd|porcentaje\(4)))))) # (!\RX|tipo\(0) & (\dd|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Add0~4_combout\,
	datab => \dd|porcentaje\(4),
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~37_combout\);

-- Location: LCCOMB_X55_Y51_N6
\dd|Tms1[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(4) = (\start~input_o\ & ((\dd|Tms1~37_combout\))) # (!\start~input_o\ & (\dd|Tms1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(4),
	datac => \start~input_o\,
	datad => \dd|Tms1~37_combout\,
	combout => \dd|Tms1\(4));

-- Location: LCCOMB_X55_Y51_N0
\dd|Tms1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1~38_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|Add0~2_combout\)) # (!\RX|tipo\(1) & ((\dd|porcentaje\(3)))))) # (!\RX|tipo\(0) & (\dd|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Add0~2_combout\,
	datab => \dd|porcentaje\(3),
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms1~38_combout\);

-- Location: LCCOMB_X55_Y51_N8
\dd|Tms1[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(3) = (\start~input_o\ & ((\dd|Tms1~38_combout\))) # (!\start~input_o\ & (\dd|Tms1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(3),
	datac => \start~input_o\,
	datad => \dd|Tms1~38_combout\,
	combout => \dd|Tms1\(3));

-- Location: LCCOMB_X52_Y53_N2
\dd|Tms1[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms1\(2) = (\start~input_o\ & ((\dd|porcentaje\(2)))) # (!\start~input_o\ & (\dd|Tms1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(2),
	datac => \dd|porcentaje\(2),
	datad => \start~input_o\,
	combout => \dd|Tms1\(2));

-- Location: LCCOMB_X55_Y51_N14
\dd|T1|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~1_cout\ = CARRY((!\dd|T1|Add1~4_combout\ & \dd|Tms1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~4_combout\,
	datab => \dd|Tms1\(2),
	datad => VCC,
	cout => \dd|T1|LessThan1~1_cout\);

-- Location: LCCOMB_X55_Y51_N16
\dd|T1|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~3_cout\ = CARRY((\dd|T1|Add1~6_combout\ & ((!\dd|T1|LessThan1~1_cout\) # (!\dd|Tms1\(3)))) # (!\dd|T1|Add1~6_combout\ & (!\dd|Tms1\(3) & !\dd|T1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~6_combout\,
	datab => \dd|Tms1\(3),
	datad => VCC,
	cin => \dd|T1|LessThan1~1_cout\,
	cout => \dd|T1|LessThan1~3_cout\);

-- Location: LCCOMB_X55_Y51_N18
\dd|T1|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~5_cout\ = CARRY((\dd|Tms1\(4) & ((!\dd|T1|LessThan1~3_cout\) # (!\dd|T1|Add1~8_combout\))) # (!\dd|Tms1\(4) & (!\dd|T1|Add1~8_combout\ & !\dd|T1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(4),
	datab => \dd|T1|Add1~8_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~3_cout\,
	cout => \dd|T1|LessThan1~5_cout\);

-- Location: LCCOMB_X55_Y51_N20
\dd|T1|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~7_cout\ = CARRY((\dd|T1|Add1~10_combout\ & ((!\dd|T1|LessThan1~5_cout\) # (!\dd|Tms1\(5)))) # (!\dd|T1|Add1~10_combout\ & (!\dd|Tms1\(5) & !\dd|T1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~10_combout\,
	datab => \dd|Tms1\(5),
	datad => VCC,
	cin => \dd|T1|LessThan1~5_cout\,
	cout => \dd|T1|LessThan1~7_cout\);

-- Location: LCCOMB_X55_Y51_N22
\dd|T1|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~9_cout\ = CARRY((\dd|Tms1\(6) & ((!\dd|T1|LessThan1~7_cout\) # (!\dd|T1|Add1~12_combout\))) # (!\dd|Tms1\(6) & (!\dd|T1|Add1~12_combout\ & !\dd|T1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(6),
	datab => \dd|T1|Add1~12_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~7_cout\,
	cout => \dd|T1|LessThan1~9_cout\);

-- Location: LCCOMB_X55_Y51_N24
\dd|T1|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~11_cout\ = CARRY((\dd|T1|Add1~14_combout\ & ((!\dd|T1|LessThan1~9_cout\) # (!\dd|Tms1\(7)))) # (!\dd|T1|Add1~14_combout\ & (!\dd|Tms1\(7) & !\dd|T1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~14_combout\,
	datab => \dd|Tms1\(7),
	datad => VCC,
	cin => \dd|T1|LessThan1~9_cout\,
	cout => \dd|T1|LessThan1~11_cout\);

-- Location: LCCOMB_X55_Y51_N26
\dd|T1|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~13_cout\ = CARRY((\dd|T1|Add1~16_combout\ & (\dd|Tms1\(8) & !\dd|T1|LessThan1~11_cout\)) # (!\dd|T1|Add1~16_combout\ & ((\dd|Tms1\(8)) # (!\dd|T1|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~16_combout\,
	datab => \dd|Tms1\(8),
	datad => VCC,
	cin => \dd|T1|LessThan1~11_cout\,
	cout => \dd|T1|LessThan1~13_cout\);

-- Location: LCCOMB_X55_Y51_N28
\dd|T1|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~15_cout\ = CARRY((\dd|Tms1\(9) & (\dd|T1|Add1~18_combout\ & !\dd|T1|LessThan1~13_cout\)) # (!\dd|Tms1\(9) & ((\dd|T1|Add1~18_combout\) # (!\dd|T1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(9),
	datab => \dd|T1|Add1~18_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~13_cout\,
	cout => \dd|T1|LessThan1~15_cout\);

-- Location: LCCOMB_X55_Y51_N30
\dd|T1|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~17_cout\ = CARRY((\dd|T1|Add1~20_combout\ & (\dd|Tms1\(10) & !\dd|T1|LessThan1~15_cout\)) # (!\dd|T1|Add1~20_combout\ & ((\dd|Tms1\(10)) # (!\dd|T1|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~20_combout\,
	datab => \dd|Tms1\(10),
	datad => VCC,
	cin => \dd|T1|LessThan1~15_cout\,
	cout => \dd|T1|LessThan1~17_cout\);

-- Location: LCCOMB_X55_Y50_N0
\dd|T1|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~19_cout\ = CARRY((\dd|Tms1\(11) & (\dd|T1|Add1~22_combout\ & !\dd|T1|LessThan1~17_cout\)) # (!\dd|Tms1\(11) & ((\dd|T1|Add1~22_combout\) # (!\dd|T1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(11),
	datab => \dd|T1|Add1~22_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~17_cout\,
	cout => \dd|T1|LessThan1~19_cout\);

-- Location: LCCOMB_X55_Y50_N2
\dd|T1|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~21_cout\ = CARRY((\dd|Tms1\(12) & ((!\dd|T1|LessThan1~19_cout\) # (!\dd|T1|Add1~24_combout\))) # (!\dd|Tms1\(12) & (!\dd|T1|Add1~24_combout\ & !\dd|T1|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(12),
	datab => \dd|T1|Add1~24_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~19_cout\,
	cout => \dd|T1|LessThan1~21_cout\);

-- Location: LCCOMB_X55_Y50_N4
\dd|T1|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~23_cout\ = CARRY((\dd|Tms1\(13) & (\dd|T1|Add1~26_combout\ & !\dd|T1|LessThan1~21_cout\)) # (!\dd|Tms1\(13) & ((\dd|T1|Add1~26_combout\) # (!\dd|T1|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(13),
	datab => \dd|T1|Add1~26_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~21_cout\,
	cout => \dd|T1|LessThan1~23_cout\);

-- Location: LCCOMB_X55_Y50_N6
\dd|T1|LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~25_cout\ = CARRY((\dd|T1|Add1~28_combout\ & (\dd|Tms1\(14) & !\dd|T1|LessThan1~23_cout\)) # (!\dd|T1|Add1~28_combout\ & ((\dd|Tms1\(14)) # (!\dd|T1|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~28_combout\,
	datab => \dd|Tms1\(14),
	datad => VCC,
	cin => \dd|T1|LessThan1~23_cout\,
	cout => \dd|T1|LessThan1~25_cout\);

-- Location: LCCOMB_X55_Y50_N8
\dd|T1|LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~27_cout\ = CARRY((\dd|T1|Add1~30_combout\ & ((!\dd|T1|LessThan1~25_cout\) # (!\dd|Tms1\(19)))) # (!\dd|T1|Add1~30_combout\ & (!\dd|Tms1\(19) & !\dd|T1|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~30_combout\,
	datab => \dd|Tms1\(19),
	datad => VCC,
	cin => \dd|T1|LessThan1~25_cout\,
	cout => \dd|T1|LessThan1~27_cout\);

-- Location: LCCOMB_X55_Y50_N10
\dd|T1|LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~29_cout\ = CARRY((\dd|T1|Add1~32_combout\ & (\dd|Tms1\(19) & !\dd|T1|LessThan1~27_cout\)) # (!\dd|T1|Add1~32_combout\ & ((\dd|Tms1\(19)) # (!\dd|T1|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~32_combout\,
	datab => \dd|Tms1\(19),
	datad => VCC,
	cin => \dd|T1|LessThan1~27_cout\,
	cout => \dd|T1|LessThan1~29_cout\);

-- Location: LCCOMB_X55_Y50_N12
\dd|T1|LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~31_cout\ = CARRY((\dd|Tms1\(19) & (\dd|T1|Add1~34_combout\ & !\dd|T1|LessThan1~29_cout\)) # (!\dd|Tms1\(19) & ((\dd|T1|Add1~34_combout\) # (!\dd|T1|LessThan1~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms1\(19),
	datab => \dd|T1|Add1~34_combout\,
	datad => VCC,
	cin => \dd|T1|LessThan1~29_cout\,
	cout => \dd|T1|LessThan1~31_cout\);

-- Location: LCCOMB_X55_Y50_N14
\dd|T1|LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~33_cout\ = CARRY((\dd|T1|Add1~36_combout\ & (\dd|Tms1\(19) & !\dd|T1|LessThan1~31_cout\)) # (!\dd|T1|Add1~36_combout\ & ((\dd|Tms1\(19)) # (!\dd|T1|LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|Add1~36_combout\,
	datab => \dd|Tms1\(19),
	datad => VCC,
	cin => \dd|T1|LessThan1~31_cout\,
	cout => \dd|T1|LessThan1~33_cout\);

-- Location: LCCOMB_X55_Y50_N16
\dd|T1|LessThan1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|LessThan1~34_combout\ = (\dd|Tms1\(19) & ((\dd|T1|LessThan1~33_cout\) # (!\dd|T1|Add1~38_combout\))) # (!\dd|Tms1\(19) & (\dd|T1|LessThan1~33_cout\ & !\dd|T1|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms1\(19),
	datad => \dd|T1|Add1~38_combout\,
	cin => \dd|T1|LessThan1~33_cout\,
	combout => \dd|T1|LessThan1~34_combout\);

-- Location: LCCOMB_X55_Y50_N24
\dd|T1|P~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|P~0_combout\ = (\dd|T1|contando~q\ & (((\dd|T1|LessThan1~34_combout\)))) # (!\dd|T1|contando~q\ & (!\dd|T1|previo~q\ & (\start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T1|previo~q\,
	datab => \start~input_o\,
	datac => \dd|T1|contando~q\,
	datad => \dd|T1|LessThan1~34_combout\,
	combout => \dd|T1|P~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\dd|T1|P~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T1|P~feeder_combout\ = \dd|T1|P~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dd|T1|P~0_combout\,
	combout => \dd|T1|P~feeder_combout\);

-- Location: FF_X55_Y50_N31
\dd|T1|P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T1|clk1ms~clkctrl_outclk\,
	d => \dd|T1|P~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T1|P~q\);

-- Location: LCCOMB_X1_Y38_N20
\dd|T2|clk1ms~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|clk1ms~feeder_combout\ = \dd|T1|LessThan0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T1|LessThan0~10_combout\,
	combout => \dd|T2|clk1ms~feeder_combout\);

-- Location: FF_X1_Y38_N21
\dd|T2|clk1ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \dd|T2|clk1ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|clk1ms~q\);

-- Location: CLKCTRL_G4
\dd|T2|clk1ms~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dd|T2|clk1ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dd|T2|clk1ms~clkctrl_outclk\);

-- Location: FF_X50_Y53_N31
\dd|T2|previo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	asdata => \start~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|previo~q\);

-- Location: FF_X52_Y52_N29
\dd|T2|contando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|P~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|contando~q\);

-- Location: LCCOMB_X55_Y53_N24
\dd|Tms2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~22_combout\ = (!\RX|tipo\(1) & (\RX|tipo\(0) & \dd|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~26_combout\,
	combout => \dd|Tms2~22_combout\);

-- Location: LCCOMB_X55_Y53_N14
\dd|Tms2[19]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(19) = (\start~input_o\ & ((\dd|Tms2~22_combout\))) # (!\start~input_o\ & (\dd|Tms2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms2\(19),
	datad => \dd|Tms2~22_combout\,
	combout => \dd|Tms2\(19));

-- Location: LCCOMB_X50_Y53_N28
\dd|T2|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~0_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~38_combout\,
	combout => \dd|T2|cuenta~0_combout\);

-- Location: LCCOMB_X50_Y53_N30
\dd|T2|process_1:cuenta[13]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|process_1:cuenta[13]~0_combout\ = (\dd|T2|contando~q\) # ((\start~input_o\ & !\dd|T2|previo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|T2|previo~q\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|process_1:cuenta[13]~0_combout\);

-- Location: FF_X50_Y53_N29
\dd|T2|process_1:cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~0_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[19]~q\);

-- Location: LCCOMB_X51_Y53_N12
\dd|T2|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~0_combout\ = \dd|T2|process_1:cuenta[0]~q\ $ (VCC)
-- \dd|T2|Add1~1\ = CARRY(\dd|T2|process_1:cuenta[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[0]~q\,
	datad => VCC,
	combout => \dd|T2|Add1~0_combout\,
	cout => \dd|T2|Add1~1\);

-- Location: LCCOMB_X51_Y53_N4
\dd|T2|cuenta~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~19_combout\ = (\dd|T2|Add1~0_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~0_combout\,
	datac => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~19_combout\);

-- Location: FF_X51_Y53_N5
\dd|T2|process_1:cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~19_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[0]~q\);

-- Location: LCCOMB_X51_Y53_N14
\dd|T2|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~2_combout\ = (\dd|T2|process_1:cuenta[1]~q\ & (!\dd|T2|Add1~1\)) # (!\dd|T2|process_1:cuenta[1]~q\ & ((\dd|T2|Add1~1\) # (GND)))
-- \dd|T2|Add1~3\ = CARRY((!\dd|T2|Add1~1\) # (!\dd|T2|process_1:cuenta[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[1]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~1\,
	combout => \dd|T2|Add1~2_combout\,
	cout => \dd|T2|Add1~3\);

-- Location: LCCOMB_X51_Y53_N6
\dd|T2|cuenta~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~18_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|contando~q\,
	datac => \dd|T2|Add1~2_combout\,
	combout => \dd|T2|cuenta~18_combout\);

-- Location: FF_X51_Y53_N7
\dd|T2|process_1:cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~18_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[1]~q\);

-- Location: LCCOMB_X51_Y53_N16
\dd|T2|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~4_combout\ = (\dd|T2|process_1:cuenta[2]~q\ & (\dd|T2|Add1~3\ $ (GND))) # (!\dd|T2|process_1:cuenta[2]~q\ & (!\dd|T2|Add1~3\ & VCC))
-- \dd|T2|Add1~5\ = CARRY((\dd|T2|process_1:cuenta[2]~q\ & !\dd|T2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[2]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~3\,
	combout => \dd|T2|Add1~4_combout\,
	cout => \dd|T2|Add1~5\);

-- Location: LCCOMB_X50_Y53_N16
\dd|T2|cuenta~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~17_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~4_combout\,
	combout => \dd|T2|cuenta~17_combout\);

-- Location: FF_X50_Y53_N17
\dd|T2|process_1:cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~17_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[2]~q\);

-- Location: LCCOMB_X51_Y53_N18
\dd|T2|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~6_combout\ = (\dd|T2|process_1:cuenta[3]~q\ & (!\dd|T2|Add1~5\)) # (!\dd|T2|process_1:cuenta[3]~q\ & ((\dd|T2|Add1~5\) # (GND)))
-- \dd|T2|Add1~7\ = CARRY((!\dd|T2|Add1~5\) # (!\dd|T2|process_1:cuenta[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[3]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~5\,
	combout => \dd|T2|Add1~6_combout\,
	cout => \dd|T2|Add1~7\);

-- Location: LCCOMB_X50_Y53_N6
\dd|T2|cuenta~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~16_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~6_combout\,
	combout => \dd|T2|cuenta~16_combout\);

-- Location: FF_X50_Y53_N7
\dd|T2|process_1:cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~16_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[3]~q\);

-- Location: LCCOMB_X51_Y53_N20
\dd|T2|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~8_combout\ = (\dd|T2|process_1:cuenta[4]~q\ & (\dd|T2|Add1~7\ $ (GND))) # (!\dd|T2|process_1:cuenta[4]~q\ & (!\dd|T2|Add1~7\ & VCC))
-- \dd|T2|Add1~9\ = CARRY((\dd|T2|process_1:cuenta[4]~q\ & !\dd|T2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[4]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~7\,
	combout => \dd|T2|Add1~8_combout\,
	cout => \dd|T2|Add1~9\);

-- Location: LCCOMB_X50_Y53_N8
\dd|T2|cuenta~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~15_combout\ = (\dd|T2|Add1~8_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~8_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~15_combout\);

-- Location: FF_X50_Y53_N9
\dd|T2|process_1:cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~15_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[4]~q\);

-- Location: LCCOMB_X51_Y53_N22
\dd|T2|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~10_combout\ = (\dd|T2|process_1:cuenta[5]~q\ & (!\dd|T2|Add1~9\)) # (!\dd|T2|process_1:cuenta[5]~q\ & ((\dd|T2|Add1~9\) # (GND)))
-- \dd|T2|Add1~11\ = CARRY((!\dd|T2|Add1~9\) # (!\dd|T2|process_1:cuenta[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[5]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~9\,
	combout => \dd|T2|Add1~10_combout\,
	cout => \dd|T2|Add1~11\);

-- Location: LCCOMB_X50_Y53_N14
\dd|T2|cuenta~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~14_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~10_combout\,
	combout => \dd|T2|cuenta~14_combout\);

-- Location: FF_X50_Y53_N15
\dd|T2|process_1:cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~14_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[5]~q\);

-- Location: LCCOMB_X51_Y53_N24
\dd|T2|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~12_combout\ = (\dd|T2|process_1:cuenta[6]~q\ & (\dd|T2|Add1~11\ $ (GND))) # (!\dd|T2|process_1:cuenta[6]~q\ & (!\dd|T2|Add1~11\ & VCC))
-- \dd|T2|Add1~13\ = CARRY((\dd|T2|process_1:cuenta[6]~q\ & !\dd|T2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[6]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~11\,
	combout => \dd|T2|Add1~12_combout\,
	cout => \dd|T2|Add1~13\);

-- Location: LCCOMB_X51_Y53_N8
\dd|T2|cuenta~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~13_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~12_combout\,
	combout => \dd|T2|cuenta~13_combout\);

-- Location: FF_X51_Y53_N9
\dd|T2|process_1:cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~13_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[6]~q\);

-- Location: LCCOMB_X51_Y53_N26
\dd|T2|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~14_combout\ = (\dd|T2|process_1:cuenta[7]~q\ & (!\dd|T2|Add1~13\)) # (!\dd|T2|process_1:cuenta[7]~q\ & ((\dd|T2|Add1~13\) # (GND)))
-- \dd|T2|Add1~15\ = CARRY((!\dd|T2|Add1~13\) # (!\dd|T2|process_1:cuenta[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[7]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~13\,
	combout => \dd|T2|Add1~14_combout\,
	cout => \dd|T2|Add1~15\);

-- Location: LCCOMB_X50_Y53_N0
\dd|T2|cuenta~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~12_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~14_combout\,
	combout => \dd|T2|cuenta~12_combout\);

-- Location: FF_X50_Y53_N1
\dd|T2|process_1:cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~12_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[7]~q\);

-- Location: LCCOMB_X51_Y53_N28
\dd|T2|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~16_combout\ = (\dd|T2|process_1:cuenta[8]~q\ & (\dd|T2|Add1~15\ $ (GND))) # (!\dd|T2|process_1:cuenta[8]~q\ & (!\dd|T2|Add1~15\ & VCC))
-- \dd|T2|Add1~17\ = CARRY((\dd|T2|process_1:cuenta[8]~q\ & !\dd|T2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[8]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~15\,
	combout => \dd|T2|Add1~16_combout\,
	cout => \dd|T2|Add1~17\);

-- Location: LCCOMB_X51_Y53_N10
\dd|T2|cuenta~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~11_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~16_combout\,
	combout => \dd|T2|cuenta~11_combout\);

-- Location: FF_X51_Y53_N11
\dd|T2|process_1:cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~11_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[8]~q\);

-- Location: LCCOMB_X51_Y53_N30
\dd|T2|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~18_combout\ = (\dd|T2|process_1:cuenta[9]~q\ & (!\dd|T2|Add1~17\)) # (!\dd|T2|process_1:cuenta[9]~q\ & ((\dd|T2|Add1~17\) # (GND)))
-- \dd|T2|Add1~19\ = CARRY((!\dd|T2|Add1~17\) # (!\dd|T2|process_1:cuenta[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[9]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~17\,
	combout => \dd|T2|Add1~18_combout\,
	cout => \dd|T2|Add1~19\);

-- Location: LCCOMB_X51_Y53_N0
\dd|T2|cuenta~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~10_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|contando~q\,
	datac => \dd|T2|Add1~18_combout\,
	combout => \dd|T2|cuenta~10_combout\);

-- Location: FF_X51_Y53_N1
\dd|T2|process_1:cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~10_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[9]~q\);

-- Location: LCCOMB_X51_Y52_N0
\dd|T2|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~20_combout\ = (\dd|T2|process_1:cuenta[10]~q\ & (\dd|T2|Add1~19\ $ (GND))) # (!\dd|T2|process_1:cuenta[10]~q\ & (!\dd|T2|Add1~19\ & VCC))
-- \dd|T2|Add1~21\ = CARRY((\dd|T2|process_1:cuenta[10]~q\ & !\dd|T2|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[10]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~19\,
	combout => \dd|T2|Add1~20_combout\,
	cout => \dd|T2|Add1~21\);

-- Location: LCCOMB_X51_Y52_N26
\dd|T2|cuenta~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~9_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~20_combout\,
	combout => \dd|T2|cuenta~9_combout\);

-- Location: FF_X51_Y52_N27
\dd|T2|process_1:cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~9_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[10]~q\);

-- Location: LCCOMB_X51_Y52_N2
\dd|T2|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~22_combout\ = (\dd|T2|process_1:cuenta[11]~q\ & (!\dd|T2|Add1~21\)) # (!\dd|T2|process_1:cuenta[11]~q\ & ((\dd|T2|Add1~21\) # (GND)))
-- \dd|T2|Add1~23\ = CARRY((!\dd|T2|Add1~21\) # (!\dd|T2|process_1:cuenta[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[11]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~21\,
	combout => \dd|T2|Add1~22_combout\,
	cout => \dd|T2|Add1~23\);

-- Location: LCCOMB_X51_Y52_N24
\dd|T2|cuenta~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~8_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~22_combout\,
	combout => \dd|T2|cuenta~8_combout\);

-- Location: FF_X51_Y52_N25
\dd|T2|process_1:cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~8_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[11]~q\);

-- Location: LCCOMB_X51_Y52_N4
\dd|T2|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~24_combout\ = (\dd|T2|process_1:cuenta[12]~q\ & (\dd|T2|Add1~23\ $ (GND))) # (!\dd|T2|process_1:cuenta[12]~q\ & (!\dd|T2|Add1~23\ & VCC))
-- \dd|T2|Add1~25\ = CARRY((\dd|T2|process_1:cuenta[12]~q\ & !\dd|T2|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[12]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~23\,
	combout => \dd|T2|Add1~24_combout\,
	cout => \dd|T2|Add1~25\);

-- Location: LCCOMB_X50_Y53_N10
\dd|T2|cuenta~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~7_combout\ = (\dd|T2|contando~q\ & \dd|T2|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|contando~q\,
	datad => \dd|T2|Add1~24_combout\,
	combout => \dd|T2|cuenta~7_combout\);

-- Location: FF_X50_Y53_N11
\dd|T2|process_1:cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~7_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[12]~q\);

-- Location: LCCOMB_X51_Y52_N6
\dd|T2|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~26_combout\ = (\dd|T2|process_1:cuenta[13]~q\ & (!\dd|T2|Add1~25\)) # (!\dd|T2|process_1:cuenta[13]~q\ & ((\dd|T2|Add1~25\) # (GND)))
-- \dd|T2|Add1~27\ = CARRY((!\dd|T2|Add1~25\) # (!\dd|T2|process_1:cuenta[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[13]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~25\,
	combout => \dd|T2|Add1~26_combout\,
	cout => \dd|T2|Add1~27\);

-- Location: LCCOMB_X50_Y53_N12
\dd|T2|cuenta~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~6_combout\ = (\dd|T2|Add1~26_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~26_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~6_combout\);

-- Location: FF_X50_Y53_N13
\dd|T2|process_1:cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~6_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[13]~q\);

-- Location: LCCOMB_X51_Y52_N8
\dd|T2|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~28_combout\ = (\dd|T2|process_1:cuenta[14]~q\ & (\dd|T2|Add1~27\ $ (GND))) # (!\dd|T2|process_1:cuenta[14]~q\ & (!\dd|T2|Add1~27\ & VCC))
-- \dd|T2|Add1~29\ = CARRY((\dd|T2|process_1:cuenta[14]~q\ & !\dd|T2|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[14]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~27\,
	combout => \dd|T2|Add1~28_combout\,
	cout => \dd|T2|Add1~29\);

-- Location: LCCOMB_X51_Y52_N30
\dd|T2|cuenta~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~5_combout\ = (\dd|T2|Add1~28_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~28_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~5_combout\);

-- Location: FF_X51_Y52_N31
\dd|T2|process_1:cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~5_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[14]~q\);

-- Location: LCCOMB_X51_Y52_N10
\dd|T2|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~30_combout\ = (\dd|T2|process_1:cuenta[15]~q\ & (!\dd|T2|Add1~29\)) # (!\dd|T2|process_1:cuenta[15]~q\ & ((\dd|T2|Add1~29\) # (GND)))
-- \dd|T2|Add1~31\ = CARRY((!\dd|T2|Add1~29\) # (!\dd|T2|process_1:cuenta[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[15]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~29\,
	combout => \dd|T2|Add1~30_combout\,
	cout => \dd|T2|Add1~31\);

-- Location: LCCOMB_X50_Y53_N18
\dd|T2|cuenta~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~4_combout\ = (\dd|T2|Add1~30_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~30_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~4_combout\);

-- Location: FF_X50_Y53_N19
\dd|T2|process_1:cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~4_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[15]~q\);

-- Location: LCCOMB_X51_Y52_N12
\dd|T2|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~32_combout\ = (\dd|T2|process_1:cuenta[16]~q\ & (\dd|T2|Add1~31\ $ (GND))) # (!\dd|T2|process_1:cuenta[16]~q\ & (!\dd|T2|Add1~31\ & VCC))
-- \dd|T2|Add1~33\ = CARRY((\dd|T2|process_1:cuenta[16]~q\ & !\dd|T2|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[16]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~31\,
	combout => \dd|T2|Add1~32_combout\,
	cout => \dd|T2|Add1~33\);

-- Location: LCCOMB_X50_Y53_N24
\dd|T2|cuenta~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~3_combout\ = (\dd|T2|Add1~32_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~32_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~3_combout\);

-- Location: FF_X50_Y53_N25
\dd|T2|process_1:cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~3_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[16]~q\);

-- Location: LCCOMB_X51_Y52_N14
\dd|T2|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~34_combout\ = (\dd|T2|process_1:cuenta[17]~q\ & (!\dd|T2|Add1~33\)) # (!\dd|T2|process_1:cuenta[17]~q\ & ((\dd|T2|Add1~33\) # (GND)))
-- \dd|T2|Add1~35\ = CARRY((!\dd|T2|Add1~33\) # (!\dd|T2|process_1:cuenta[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|T2|process_1:cuenta[17]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~33\,
	combout => \dd|T2|Add1~34_combout\,
	cout => \dd|T2|Add1~35\);

-- Location: LCCOMB_X51_Y52_N28
\dd|T2|cuenta~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~2_combout\ = (\dd|T2|Add1~34_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~34_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~2_combout\);

-- Location: FF_X51_Y52_N29
\dd|T2|process_1:cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~2_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[17]~q\);

-- Location: LCCOMB_X51_Y52_N16
\dd|T2|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~36_combout\ = (\dd|T2|process_1:cuenta[18]~q\ & (\dd|T2|Add1~35\ $ (GND))) # (!\dd|T2|process_1:cuenta[18]~q\ & (!\dd|T2|Add1~35\ & VCC))
-- \dd|T2|Add1~37\ = CARRY((\dd|T2|process_1:cuenta[18]~q\ & !\dd|T2|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|process_1:cuenta[18]~q\,
	datad => VCC,
	cin => \dd|T2|Add1~35\,
	combout => \dd|T2|Add1~36_combout\,
	cout => \dd|T2|Add1~37\);

-- Location: LCCOMB_X50_Y53_N22
\dd|T2|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|cuenta~1_combout\ = (\dd|T2|Add1~36_combout\ & \dd|T2|contando~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dd|T2|Add1~36_combout\,
	datad => \dd|T2|contando~q\,
	combout => \dd|T2|cuenta~1_combout\);

-- Location: FF_X50_Y53_N23
\dd|T2|process_1:cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|cuenta~1_combout\,
	ena => \dd|T2|process_1:cuenta[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|process_1:cuenta[18]~q\);

-- Location: LCCOMB_X51_Y52_N18
\dd|T2|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|Add1~38_combout\ = \dd|T2|Add1~37\ $ (\dd|T2|process_1:cuenta[19]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dd|T2|process_1:cuenta[19]~q\,
	cin => \dd|T2|Add1~37\,
	combout => \dd|T2|Add1~38_combout\);

-- Location: LCCOMB_X55_Y53_N6
\dd|Tms2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~24_combout\ = (!\RX|tipo\(1) & (\RX|tipo\(0) & \dd|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~24_combout\,
	combout => \dd|Tms2~24_combout\);

-- Location: LCCOMB_X55_Y53_N8
\dd|Tms2[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(14) = (\start~input_o\ & ((\dd|Tms2~24_combout\))) # (!\start~input_o\ & (\dd|Tms2\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(14),
	datac => \start~input_o\,
	datad => \dd|Tms2~24_combout\,
	combout => \dd|Tms2\(14));

-- Location: LCCOMB_X54_Y52_N2
\dd|Tms2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~25_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|porcentaje\(13))) # (!\RX|tipo\(1) & ((\dd|Add0~22_combout\))))) # (!\RX|tipo\(0) & (((\dd|porcentaje\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(0),
	datab => \RX|tipo\(1),
	datac => \dd|porcentaje\(13),
	datad => \dd|Add0~22_combout\,
	combout => \dd|Tms2~25_combout\);

-- Location: LCCOMB_X54_Y52_N10
\dd|Tms2[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(13) = (\start~input_o\ & ((\dd|Tms2~25_combout\))) # (!\start~input_o\ & (\dd|Tms2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(13),
	datac => \start~input_o\,
	datad => \dd|Tms2~25_combout\,
	combout => \dd|Tms2\(13));

-- Location: LCCOMB_X55_Y53_N18
\dd|Tms2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~23_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|porcentaje\(12))) # (!\RX|tipo\(1) & ((\dd|Add0~20_combout\))))) # (!\RX|tipo\(0) & (\dd|porcentaje\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(12),
	datab => \RX|tipo\(0),
	datac => \dd|Add0~20_combout\,
	datad => \RX|tipo\(1),
	combout => \dd|Tms2~23_combout\);

-- Location: LCCOMB_X55_Y53_N30
\dd|Tms2[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(12) = (\start~input_o\ & ((\dd|Tms2~23_combout\))) # (!\start~input_o\ & (\dd|Tms2\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms2\(12),
	datad => \dd|Tms2~23_combout\,
	combout => \dd|Tms2\(12));

-- Location: LCCOMB_X54_Y52_N24
\dd|Tms2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~26_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|porcentaje\(11))) # (!\RX|tipo\(1) & ((\dd|Add0~18_combout\))))) # (!\RX|tipo\(0) & (\dd|porcentaje\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(11),
	datab => \dd|Add0~18_combout\,
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms2~26_combout\);

-- Location: LCCOMB_X54_Y52_N4
\dd|Tms2[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(11) = (\start~input_o\ & ((\dd|Tms2~26_combout\))) # (!\start~input_o\ & (\dd|Tms2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms2\(11),
	datac => \start~input_o\,
	datad => \dd|Tms2~26_combout\,
	combout => \dd|Tms2\(11));

-- Location: LCCOMB_X54_Y52_N14
\dd|Tms2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~27_combout\ = (\RX|tipo\(1) & (\dd|porcentaje\(10))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & ((\dd|Add0~16_combout\))) # (!\RX|tipo\(0) & (\dd|porcentaje\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(10),
	datab => \RX|tipo\(1),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~16_combout\,
	combout => \dd|Tms2~27_combout\);

-- Location: LCCOMB_X54_Y52_N18
\dd|Tms2[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(10) = (\start~input_o\ & ((\dd|Tms2~27_combout\))) # (!\start~input_o\ & (\dd|Tms2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms2\(10),
	datac => \dd|Tms2~27_combout\,
	datad => \start~input_o\,
	combout => \dd|Tms2\(10));

-- Location: LCCOMB_X54_Y53_N28
\dd|Tms2~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~28_combout\ = (\RX|tipo\(1) & (((\dd|porcentaje\(9))))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & (\dd|Add0~14_combout\)) # (!\RX|tipo\(0) & ((\dd|porcentaje\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datab => \RX|tipo\(0),
	datac => \dd|Add0~14_combout\,
	datad => \dd|porcentaje\(9),
	combout => \dd|Tms2~28_combout\);

-- Location: LCCOMB_X54_Y53_N20
\dd|Tms2[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(9) = (\start~input_o\ & ((\dd|Tms2~28_combout\))) # (!\start~input_o\ & (\dd|Tms2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms2\(9),
	datac => \start~input_o\,
	datad => \dd|Tms2~28_combout\,
	combout => \dd|Tms2\(9));

-- Location: LCCOMB_X55_Y53_N28
\dd|Tms2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~29_combout\ = (\RX|tipo\(1) & (\dd|porcentaje\(8))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & ((\dd|Add0~12_combout\))) # (!\RX|tipo\(0) & (\dd|porcentaje\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datab => \dd|porcentaje\(8),
	datac => \RX|tipo\(0),
	datad => \dd|Add0~12_combout\,
	combout => \dd|Tms2~29_combout\);

-- Location: LCCOMB_X55_Y53_N0
\dd|Tms2[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(8) = (\start~input_o\ & (\dd|Tms2~29_combout\)) # (!\start~input_o\ & ((\dd|Tms2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms2~29_combout\,
	datac => \dd|Tms2\(8),
	datad => \start~input_o\,
	combout => \dd|Tms2\(8));

-- Location: LCCOMB_X52_Y53_N12
\dd|Tms2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~30_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|porcentaje\(7))) # (!\RX|tipo\(1) & ((\dd|Add0~10_combout\))))) # (!\RX|tipo\(0) & (\dd|porcentaje\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(0),
	datab => \dd|porcentaje\(7),
	datac => \RX|tipo\(1),
	datad => \dd|Add0~10_combout\,
	combout => \dd|Tms2~30_combout\);

-- Location: LCCOMB_X52_Y53_N4
\dd|Tms2[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(7) = (\start~input_o\ & ((\dd|Tms2~30_combout\))) # (!\start~input_o\ & (\dd|Tms2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms2\(7),
	datad => \dd|Tms2~30_combout\,
	combout => \dd|Tms2\(7));

-- Location: LCCOMB_X55_Y53_N10
\dd|Tms2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~31_combout\ = (\RX|tipo\(1) & (\dd|porcentaje\(6))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & ((\dd|Add0~8_combout\))) # (!\RX|tipo\(0) & (\dd|porcentaje\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(6),
	datab => \dd|Add0~8_combout\,
	datac => \RX|tipo\(1),
	datad => \RX|tipo\(0),
	combout => \dd|Tms2~31_combout\);

-- Location: LCCOMB_X55_Y53_N22
\dd|Tms2[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(6) = (\start~input_o\ & (\dd|Tms2~31_combout\)) # (!\start~input_o\ & ((\dd|Tms2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2~31_combout\,
	datac => \dd|Tms2\(6),
	datad => \start~input_o\,
	combout => \dd|Tms2\(6));

-- Location: LCCOMB_X54_Y53_N30
\dd|Tms2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~32_combout\ = (\RX|tipo\(1) & (((\dd|porcentaje\(5))))) # (!\RX|tipo\(1) & ((\RX|tipo\(0) & ((\dd|Add0~6_combout\))) # (!\RX|tipo\(0) & (\dd|porcentaje\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX|tipo\(1),
	datab => \RX|tipo\(0),
	datac => \dd|porcentaje\(5),
	datad => \dd|Add0~6_combout\,
	combout => \dd|Tms2~32_combout\);

-- Location: LCCOMB_X54_Y53_N10
\dd|Tms2[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(5) = (\start~input_o\ & (\dd|Tms2~32_combout\)) # (!\start~input_o\ & ((\dd|Tms2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2~32_combout\,
	datac => \start~input_o\,
	datad => \dd|Tms2\(5),
	combout => \dd|Tms2\(5));

-- Location: LCCOMB_X52_Y53_N6
\dd|Tms2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~33_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & (\dd|porcentaje\(4))) # (!\RX|tipo\(1) & ((\dd|Add0~4_combout\))))) # (!\RX|tipo\(0) & (\dd|porcentaje\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|porcentaje\(4),
	datab => \dd|Add0~4_combout\,
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms2~33_combout\);

-- Location: LCCOMB_X52_Y53_N10
\dd|Tms2[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(4) = (\start~input_o\ & ((\dd|Tms2~33_combout\))) # (!\start~input_o\ & (\dd|Tms2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(4),
	datac => \start~input_o\,
	datad => \dd|Tms2~33_combout\,
	combout => \dd|Tms2\(4));

-- Location: LCCOMB_X52_Y53_N0
\dd|Tms2~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2~34_combout\ = (\RX|tipo\(0) & ((\RX|tipo\(1) & ((\dd|porcentaje\(3)))) # (!\RX|tipo\(1) & (\dd|Add0~2_combout\)))) # (!\RX|tipo\(0) & (((\dd|porcentaje\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Add0~2_combout\,
	datab => \dd|porcentaje\(3),
	datac => \RX|tipo\(0),
	datad => \RX|tipo\(1),
	combout => \dd|Tms2~34_combout\);

-- Location: LCCOMB_X52_Y53_N8
\dd|Tms2[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|Tms2\(3) = (\start~input_o\ & ((\dd|Tms2~34_combout\))) # (!\start~input_o\ & (\dd|Tms2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datac => \dd|Tms2\(3),
	datad => \dd|Tms2~34_combout\,
	combout => \dd|Tms2\(3));

-- Location: LCCOMB_X52_Y53_N14
\dd|T2|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~1_cout\ = CARRY((!\dd|T2|Add1~4_combout\ & \dd|Tms1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~4_combout\,
	datab => \dd|Tms1\(2),
	datad => VCC,
	cout => \dd|T2|LessThan1~1_cout\);

-- Location: LCCOMB_X52_Y53_N16
\dd|T2|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~3_cout\ = CARRY((\dd|Tms2\(3) & (\dd|T2|Add1~6_combout\ & !\dd|T2|LessThan1~1_cout\)) # (!\dd|Tms2\(3) & ((\dd|T2|Add1~6_combout\) # (!\dd|T2|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(3),
	datab => \dd|T2|Add1~6_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~1_cout\,
	cout => \dd|T2|LessThan1~3_cout\);

-- Location: LCCOMB_X52_Y53_N18
\dd|T2|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~5_cout\ = CARRY((\dd|Tms2\(4) & ((!\dd|T2|LessThan1~3_cout\) # (!\dd|T2|Add1~8_combout\))) # (!\dd|Tms2\(4) & (!\dd|T2|Add1~8_combout\ & !\dd|T2|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(4),
	datab => \dd|T2|Add1~8_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~3_cout\,
	cout => \dd|T2|LessThan1~5_cout\);

-- Location: LCCOMB_X52_Y53_N20
\dd|T2|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~7_cout\ = CARRY((\dd|T2|Add1~10_combout\ & ((!\dd|T2|LessThan1~5_cout\) # (!\dd|Tms2\(5)))) # (!\dd|T2|Add1~10_combout\ & (!\dd|Tms2\(5) & !\dd|T2|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~10_combout\,
	datab => \dd|Tms2\(5),
	datad => VCC,
	cin => \dd|T2|LessThan1~5_cout\,
	cout => \dd|T2|LessThan1~7_cout\);

-- Location: LCCOMB_X52_Y53_N22
\dd|T2|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~9_cout\ = CARRY((\dd|Tms2\(6) & ((!\dd|T2|LessThan1~7_cout\) # (!\dd|T2|Add1~12_combout\))) # (!\dd|Tms2\(6) & (!\dd|T2|Add1~12_combout\ & !\dd|T2|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(6),
	datab => \dd|T2|Add1~12_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~7_cout\,
	cout => \dd|T2|LessThan1~9_cout\);

-- Location: LCCOMB_X52_Y53_N24
\dd|T2|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~11_cout\ = CARRY((\dd|T2|Add1~14_combout\ & ((!\dd|T2|LessThan1~9_cout\) # (!\dd|Tms2\(7)))) # (!\dd|T2|Add1~14_combout\ & (!\dd|Tms2\(7) & !\dd|T2|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~14_combout\,
	datab => \dd|Tms2\(7),
	datad => VCC,
	cin => \dd|T2|LessThan1~9_cout\,
	cout => \dd|T2|LessThan1~11_cout\);

-- Location: LCCOMB_X52_Y53_N26
\dd|T2|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~13_cout\ = CARRY((\dd|Tms2\(8) & ((!\dd|T2|LessThan1~11_cout\) # (!\dd|T2|Add1~16_combout\))) # (!\dd|Tms2\(8) & (!\dd|T2|Add1~16_combout\ & !\dd|T2|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(8),
	datab => \dd|T2|Add1~16_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~11_cout\,
	cout => \dd|T2|LessThan1~13_cout\);

-- Location: LCCOMB_X52_Y53_N28
\dd|T2|LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~15_cout\ = CARRY((\dd|Tms2\(9) & (\dd|T2|Add1~18_combout\ & !\dd|T2|LessThan1~13_cout\)) # (!\dd|Tms2\(9) & ((\dd|T2|Add1~18_combout\) # (!\dd|T2|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(9),
	datab => \dd|T2|Add1~18_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~13_cout\,
	cout => \dd|T2|LessThan1~15_cout\);

-- Location: LCCOMB_X52_Y53_N30
\dd|T2|LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~17_cout\ = CARRY((\dd|Tms2\(10) & ((!\dd|T2|LessThan1~15_cout\) # (!\dd|T2|Add1~20_combout\))) # (!\dd|Tms2\(10) & (!\dd|T2|Add1~20_combout\ & !\dd|T2|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(10),
	datab => \dd|T2|Add1~20_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~15_cout\,
	cout => \dd|T2|LessThan1~17_cout\);

-- Location: LCCOMB_X52_Y52_N0
\dd|T2|LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~19_cout\ = CARRY((\dd|T2|Add1~22_combout\ & ((!\dd|T2|LessThan1~17_cout\) # (!\dd|Tms2\(11)))) # (!\dd|T2|Add1~22_combout\ & (!\dd|Tms2\(11) & !\dd|T2|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~22_combout\,
	datab => \dd|Tms2\(11),
	datad => VCC,
	cin => \dd|T2|LessThan1~17_cout\,
	cout => \dd|T2|LessThan1~19_cout\);

-- Location: LCCOMB_X52_Y52_N2
\dd|T2|LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~21_cout\ = CARRY((\dd|Tms2\(12) & ((!\dd|T2|LessThan1~19_cout\) # (!\dd|T2|Add1~24_combout\))) # (!\dd|Tms2\(12) & (!\dd|T2|Add1~24_combout\ & !\dd|T2|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(12),
	datab => \dd|T2|Add1~24_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~19_cout\,
	cout => \dd|T2|LessThan1~21_cout\);

-- Location: LCCOMB_X52_Y52_N4
\dd|T2|LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~23_cout\ = CARRY((\dd|Tms2\(13) & (\dd|T2|Add1~26_combout\ & !\dd|T2|LessThan1~21_cout\)) # (!\dd|Tms2\(13) & ((\dd|T2|Add1~26_combout\) # (!\dd|T2|LessThan1~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|Tms2\(13),
	datab => \dd|T2|Add1~26_combout\,
	datad => VCC,
	cin => \dd|T2|LessThan1~21_cout\,
	cout => \dd|T2|LessThan1~23_cout\);

-- Location: LCCOMB_X52_Y52_N6
\dd|T2|LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~25_cout\ = CARRY((\dd|T2|Add1~28_combout\ & (\dd|Tms2\(14) & !\dd|T2|LessThan1~23_cout\)) # (!\dd|T2|Add1~28_combout\ & ((\dd|Tms2\(14)) # (!\dd|T2|LessThan1~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~28_combout\,
	datab => \dd|Tms2\(14),
	datad => VCC,
	cin => \dd|T2|LessThan1~23_cout\,
	cout => \dd|T2|LessThan1~25_cout\);

-- Location: LCCOMB_X52_Y52_N8
\dd|T2|LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~27_cout\ = CARRY((\dd|T2|Add1~30_combout\ & ((!\dd|T2|LessThan1~25_cout\) # (!\dd|Tms2\(19)))) # (!\dd|T2|Add1~30_combout\ & (!\dd|Tms2\(19) & !\dd|T2|LessThan1~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~30_combout\,
	datab => \dd|Tms2\(19),
	datad => VCC,
	cin => \dd|T2|LessThan1~25_cout\,
	cout => \dd|T2|LessThan1~27_cout\);

-- Location: LCCOMB_X52_Y52_N10
\dd|T2|LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~29_cout\ = CARRY((\dd|T2|Add1~32_combout\ & (\dd|Tms2\(19) & !\dd|T2|LessThan1~27_cout\)) # (!\dd|T2|Add1~32_combout\ & ((\dd|Tms2\(19)) # (!\dd|T2|LessThan1~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~32_combout\,
	datab => \dd|Tms2\(19),
	datad => VCC,
	cin => \dd|T2|LessThan1~27_cout\,
	cout => \dd|T2|LessThan1~29_cout\);

-- Location: LCCOMB_X52_Y52_N12
\dd|T2|LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~31_cout\ = CARRY((\dd|T2|Add1~34_combout\ & ((!\dd|T2|LessThan1~29_cout\) # (!\dd|Tms2\(19)))) # (!\dd|T2|Add1~34_combout\ & (!\dd|Tms2\(19) & !\dd|T2|LessThan1~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~34_combout\,
	datab => \dd|Tms2\(19),
	datad => VCC,
	cin => \dd|T2|LessThan1~29_cout\,
	cout => \dd|T2|LessThan1~31_cout\);

-- Location: LCCOMB_X52_Y52_N14
\dd|T2|LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~33_cout\ = CARRY((\dd|T2|Add1~36_combout\ & (\dd|Tms2\(19) & !\dd|T2|LessThan1~31_cout\)) # (!\dd|T2|Add1~36_combout\ & ((\dd|Tms2\(19)) # (!\dd|T2|LessThan1~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dd|T2|Add1~36_combout\,
	datab => \dd|Tms2\(19),
	datad => VCC,
	cin => \dd|T2|LessThan1~31_cout\,
	cout => \dd|T2|LessThan1~33_cout\);

-- Location: LCCOMB_X52_Y52_N16
\dd|T2|LessThan1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|LessThan1~34_combout\ = (\dd|Tms2\(19) & ((\dd|T2|LessThan1~33_cout\) # (!\dd|T2|Add1~38_combout\))) # (!\dd|Tms2\(19) & (\dd|T2|LessThan1~33_cout\ & !\dd|T2|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dd|Tms2\(19),
	datad => \dd|T2|Add1~38_combout\,
	cin => \dd|T2|LessThan1~33_cout\,
	combout => \dd|T2|LessThan1~34_combout\);

-- Location: LCCOMB_X52_Y52_N28
\dd|T2|P~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|P~0_combout\ = (\dd|T2|contando~q\ & (((\dd|T2|LessThan1~34_combout\)))) # (!\dd|T2|contando~q\ & (\start~input_o\ & (!\dd|T2|previo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \dd|T2|previo~q\,
	datac => \dd|T2|contando~q\,
	datad => \dd|T2|LessThan1~34_combout\,
	combout => \dd|T2|P~0_combout\);

-- Location: LCCOMB_X52_Y52_N30
\dd|T2|P~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dd|T2|P~feeder_combout\ = \dd|T2|P~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dd|T2|P~0_combout\,
	combout => \dd|T2|P~feeder_combout\);

-- Location: FF_X52_Y52_N31
\dd|T2|P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dd|T2|clk1ms~clkctrl_outclk\,
	d => \dd|T2|P~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dd|T2|P~q\);

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

ww_disp_unidades(0) <= \disp_unidades[0]~output_o\;

ww_disp_unidades(1) <= \disp_unidades[1]~output_o\;

ww_disp_unidades(2) <= \disp_unidades[2]~output_o\;

ww_disp_unidades(3) <= \disp_unidades[3]~output_o\;

ww_disp_unidades(4) <= \disp_unidades[4]~output_o\;

ww_disp_unidades(5) <= \disp_unidades[5]~output_o\;

ww_disp_unidades(6) <= \disp_unidades[6]~output_o\;

ww_disp_decenas(0) <= \disp_decenas[0]~output_o\;

ww_disp_decenas(1) <= \disp_decenas[1]~output_o\;

ww_disp_decenas(2) <= \disp_decenas[2]~output_o\;

ww_disp_decenas(3) <= \disp_decenas[3]~output_o\;

ww_disp_decenas(4) <= \disp_decenas[4]~output_o\;

ww_disp_decenas(5) <= \disp_decenas[5]~output_o\;

ww_disp_decenas(6) <= \disp_decenas[6]~output_o\;

ww_disp_centenas(0) <= \disp_centenas[0]~output_o\;

ww_disp_centenas(1) <= \disp_centenas[1]~output_o\;

ww_disp_centenas(2) <= \disp_centenas[2]~output_o\;

ww_disp_centenas(3) <= \disp_centenas[3]~output_o\;

ww_disp_centenas(4) <= \disp_centenas[4]~output_o\;

ww_disp_centenas(5) <= \disp_centenas[5]~output_o\;

ww_disp_centenas(6) <= \disp_centenas[6]~output_o\;

ww_disp_tipo(0) <= \disp_tipo[0]~output_o\;

ww_disp_tipo(1) <= \disp_tipo[1]~output_o\;

ww_disp_tipo(2) <= \disp_tipo[2]~output_o\;

ww_disp_tipo(3) <= \disp_tipo[3]~output_o\;

ww_disp_tipo(4) <= \disp_tipo[4]~output_o\;

ww_disp_tipo(5) <= \disp_tipo[5]~output_o\;

ww_disp_tipo(6) <= \disp_tipo[6]~output_o\;

ww_debug(0) <= \debug[0]~output_o\;

ww_debug(1) <= \debug[1]~output_o\;

ww_debug(2) <= \debug[2]~output_o\;

ww_debug(3) <= \debug[3]~output_o\;

ww_debug_bin(0) <= \debug_bin[0]~output_o\;

ww_debug_bin(1) <= \debug_bin[1]~output_o\;

ww_debug_bin(2) <= \debug_bin[2]~output_o\;

ww_debug_bin(3) <= \debug_bin[3]~output_o\;

ww_debug_bin(4) <= \debug_bin[4]~output_o\;

ww_debug_bin(5) <= \debug_bin[5]~output_o\;

ww_debug_bin(6) <= \debug_bin[6]~output_o\;

ww_debug_state(0) <= \debug_state[0]~output_o\;

ww_debug_state(1) <= \debug_state[1]~output_o\;

ww_debug_state(2) <= \debug_state[2]~output_o\;

ww_debug_state(3) <= \debug_state[3]~output_o\;

ww_bomba1 <= \bomba1~output_o\;

ww_bomba2 <= \bomba2~output_o\;
END structure;


