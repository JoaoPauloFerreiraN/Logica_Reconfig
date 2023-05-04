-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/02/2023 17:24:01"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
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

ENTITY 	circuitoSomaSub IS
    PORT (
	a : IN std_logic_vector(2 DOWNTO 0);
	b : IN std_logic_vector(2 DOWNTO 0);
	op : IN std_logic;
	y : BUFFER std_logic_vector(3 DOWNTO 0);
	Hex1 : BUFFER std_logic_vector(0 TO 6);
	Hex2 : BUFFER std_logic_vector(0 TO 6);
	Hex3 : BUFFER std_logic_vector(0 TO 6);
	Hex4 : BUFFER std_logic_vector(0 TO 6);
	SIG : BUFFER std_logic_vector(0 TO 6)
	);
END circuitoSomaSub;

-- Design Ports Information
-- y[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex1[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex2[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex3[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hex4[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIG[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuitoSomaSub IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_op : std_logic;
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Hex1 : std_logic_vector(0 TO 6);
SIGNAL ww_Hex2 : std_logic_vector(0 TO 6);
SIGNAL ww_Hex3 : std_logic_vector(0 TO 6);
SIGNAL ww_Hex4 : std_logic_vector(0 TO 6);
SIGNAL ww_SIG : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \Hex1[6]~output_o\ : std_logic;
SIGNAL \Hex1[5]~output_o\ : std_logic;
SIGNAL \Hex1[4]~output_o\ : std_logic;
SIGNAL \Hex1[3]~output_o\ : std_logic;
SIGNAL \Hex1[2]~output_o\ : std_logic;
SIGNAL \Hex1[1]~output_o\ : std_logic;
SIGNAL \Hex1[0]~output_o\ : std_logic;
SIGNAL \Hex2[6]~output_o\ : std_logic;
SIGNAL \Hex2[5]~output_o\ : std_logic;
SIGNAL \Hex2[4]~output_o\ : std_logic;
SIGNAL \Hex2[3]~output_o\ : std_logic;
SIGNAL \Hex2[2]~output_o\ : std_logic;
SIGNAL \Hex2[1]~output_o\ : std_logic;
SIGNAL \Hex2[0]~output_o\ : std_logic;
SIGNAL \Hex3[6]~output_o\ : std_logic;
SIGNAL \Hex3[5]~output_o\ : std_logic;
SIGNAL \Hex3[4]~output_o\ : std_logic;
SIGNAL \Hex3[3]~output_o\ : std_logic;
SIGNAL \Hex3[2]~output_o\ : std_logic;
SIGNAL \Hex3[1]~output_o\ : std_logic;
SIGNAL \Hex3[0]~output_o\ : std_logic;
SIGNAL \Hex4[6]~output_o\ : std_logic;
SIGNAL \Hex4[5]~output_o\ : std_logic;
SIGNAL \Hex4[4]~output_o\ : std_logic;
SIGNAL \Hex4[3]~output_o\ : std_logic;
SIGNAL \Hex4[2]~output_o\ : std_logic;
SIGNAL \Hex4[1]~output_o\ : std_logic;
SIGNAL \Hex4[0]~output_o\ : std_logic;
SIGNAL \SIG[6]~output_o\ : std_logic;
SIGNAL \SIG[5]~output_o\ : std_logic;
SIGNAL \SIG[4]~output_o\ : std_logic;
SIGNAL \SIG[3]~output_o\ : std_logic;
SIGNAL \SIG[2]~output_o\ : std_logic;
SIGNAL \SIG[1]~output_o\ : std_logic;
SIGNAL \SIG[0]~output_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \op~input_o\ : std_logic;
SIGNAL \map_6|HEX4[3]~0_combout\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \map_1|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \map_4|HEX[6]~0_combout\ : std_logic;
SIGNAL \map_4|HEX[5]~1_combout\ : std_logic;
SIGNAL \map_4|HEX[4]~2_combout\ : std_logic;
SIGNAL \map_4|HEX[3]~3_combout\ : std_logic;
SIGNAL \map_4|Equal6~0_combout\ : std_logic;
SIGNAL \map_4|HEX[1]~4_combout\ : std_logic;
SIGNAL \map_4|HEX[0]~5_combout\ : std_logic;
SIGNAL \map_5|HEX[6]~0_combout\ : std_logic;
SIGNAL \map_5|HEX[5]~1_combout\ : std_logic;
SIGNAL \map_5|HEX[4]~2_combout\ : std_logic;
SIGNAL \map_5|HEX[3]~3_combout\ : std_logic;
SIGNAL \map_5|Equal6~0_combout\ : std_logic;
SIGNAL \map_5|HEX[1]~4_combout\ : std_logic;
SIGNAL \map_5|HEX[0]~5_combout\ : std_logic;
SIGNAL \map_2|Add0~0_combout\ : std_logic;
SIGNAL \map_6|comb~0_combout\ : std_logic;
SIGNAL \map_6|comb~1_combout\ : std_logic;
SIGNAL \map_6|HEX3[0]~0_combout\ : std_logic;
SIGNAL \map_6|HEX3[0]~1_combout\ : std_logic;
SIGNAL \map_6|HEX3[0]~2_combout\ : std_logic;
SIGNAL \map_6|HEX3[0]~3_combout\ : std_logic;
SIGNAL \map_6|Equal3~0_combout\ : std_logic;
SIGNAL \map_6|comb~2_combout\ : std_logic;
SIGNAL \map_6|comb~3_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~3_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~4_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~5_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~2_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~6_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~7_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~1_combout\ : std_logic;
SIGNAL \map_6|HEX4[6]~8_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~13_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~9_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~11_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~10_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~12_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~14_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~19_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~15_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~17_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~16_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~18_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~20_combout\ : std_logic;
SIGNAL \map_6|HEX4[5]~21_combout\ : std_logic;
SIGNAL \map_6|Equal3~1_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~25_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~27_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~24_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~26_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~22_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~23_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~66_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~67_combout\ : std_logic;
SIGNAL \map_6|HEX4[4]~28_combout\ : std_logic;
SIGNAL \map_6|HEX4~30_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~36_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~37_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~39_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~38_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~40_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~41_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~42_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~32_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~33_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~34_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~29_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~31_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~35_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~43_combout\ : std_logic;
SIGNAL \map_6|HEX4[2]~44_combout\ : std_logic;
SIGNAL \map_6|HEX4[2]~45_combout\ : std_logic;
SIGNAL \map_6|HEX4[2]~46_combout\ : std_logic;
SIGNAL \map_6|HEX4[2]~47_combout\ : std_logic;
SIGNAL \map_6|HEX4[2]~48_combout\ : std_logic;
SIGNAL \map_6|HEX4[1]~51_combout\ : std_logic;
SIGNAL \map_6|HEX4[1]~50_combout\ : std_logic;
SIGNAL \map_6|HEX4[1]~64_combout\ : std_logic;
SIGNAL \map_6|HEX4[1]~49_combout\ : std_logic;
SIGNAL \map_6|HEX4[1]~65_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~52_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~53_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~60_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~58_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~59_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~61_combout\ : std_logic;
SIGNAL \map_6|HEX4[0]~62_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~54_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~55_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~56_combout\ : std_logic;
SIGNAL \map_6|HEX4[3]~57_combout\ : std_logic;
SIGNAL \map_6|HEX4[0]~63_combout\ : std_logic;
SIGNAL \map_6|HEX3\ : std_logic_vector(0 TO 6);
SIGNAL \map_5|ALT_INV_HEX[6]~0_combout\ : std_logic;
SIGNAL \map_4|ALT_INV_HEX[6]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
y <= ww_y;
Hex1 <= ww_Hex1;
Hex2 <= ww_Hex2;
Hex3 <= ww_Hex3;
Hex4 <= ww_Hex4;
SIG <= ww_SIG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\map_5|ALT_INV_HEX[6]~0_combout\ <= NOT \map_5|HEX[6]~0_combout\;
\map_4|ALT_INV_HEX[6]~0_combout\ <= NOT \map_4|HEX[6]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X43_Y38_N24
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

-- Location: IOOBUF_X58_Y54_N23
\y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_1|Add0|auto_generated|result_int[1]~2_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_1|Add0|auto_generated|result_int[4]~8_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\Hex1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|ALT_INV_HEX[6]~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\Hex1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|HEX[5]~1_combout\,
	devoe => ww_devoe,
	o => \Hex1[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\Hex1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|HEX[4]~2_combout\,
	devoe => ww_devoe,
	o => \Hex1[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\Hex1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|HEX[3]~3_combout\,
	devoe => ww_devoe,
	o => \Hex1[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\Hex1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \Hex1[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\Hex1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|HEX[1]~4_combout\,
	devoe => ww_devoe,
	o => \Hex1[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\Hex1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_4|HEX[0]~5_combout\,
	devoe => ww_devoe,
	o => \Hex1[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\Hex2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|ALT_INV_HEX[6]~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\Hex2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|HEX[5]~1_combout\,
	devoe => ww_devoe,
	o => \Hex2[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\Hex2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|HEX[4]~2_combout\,
	devoe => ww_devoe,
	o => \Hex2[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\Hex2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|HEX[3]~3_combout\,
	devoe => ww_devoe,
	o => \Hex2[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\Hex2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \Hex2[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\Hex2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|HEX[1]~4_combout\,
	devoe => ww_devoe,
	o => \Hex2[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\Hex2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_5|HEX[0]~5_combout\,
	devoe => ww_devoe,
	o => \Hex2[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\Hex3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX3\(6),
	devoe => ww_devoe,
	o => \Hex3[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Hex3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX3\(5),
	devoe => ww_devoe,
	o => \Hex3[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\Hex3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX3\(4),
	devoe => ww_devoe,
	o => \Hex3[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Hex3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX3\(3),
	devoe => ww_devoe,
	o => \Hex3[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\Hex3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hex3[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\Hex3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Hex3[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\Hex3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX3\(0),
	devoe => ww_devoe,
	o => \Hex3[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\Hex4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[6]~8_combout\,
	devoe => ww_devoe,
	o => \Hex4[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\Hex4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[5]~21_combout\,
	devoe => ww_devoe,
	o => \Hex4[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\Hex4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[4]~28_combout\,
	devoe => ww_devoe,
	o => \Hex4[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Hex4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[3]~43_combout\,
	devoe => ww_devoe,
	o => \Hex4[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\Hex4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[2]~48_combout\,
	devoe => ww_devoe,
	o => \Hex4[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\Hex4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[1]~65_combout\,
	devoe => ww_devoe,
	o => \Hex4[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\Hex4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_6|HEX4[0]~63_combout\,
	devoe => ww_devoe,
	o => \Hex4[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\SIG[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SIG[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\SIG[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SIG[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\SIG[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SIG[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\SIG[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SIG[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\SIG[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op~input_o\,
	devoe => ww_devoe,
	o => \SIG[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\SIG[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op~input_o\,
	devoe => ww_devoe,
	o => \SIG[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\SIG[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SIG[0]~output_o\);

-- Location: IOIBUF_X54_Y54_N15
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\op~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op,
	o => \op~input_o\);

-- Location: LCCOMB_X57_Y50_N16
\map_6|HEX4[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~0_combout\ = \b[0]~input_o\ $ (\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~0_combout\);

-- Location: LCCOMB_X58_Y52_N14
\map_1|Add0|auto_generated|result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|result_int[0]~1_cout\ = CARRY(\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op~input_o\,
	datad => VCC,
	cout => \map_1|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X58_Y52_N16
\map_1|Add0|auto_generated|result_int[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|result_int[1]~2_combout\ = (\a[0]~input_o\ & ((\map_6|HEX4[3]~0_combout\ & (\map_1|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\map_6|HEX4[3]~0_combout\ & (!\map_1|Add0|auto_generated|result_int[0]~1_cout\)))) # 
-- (!\a[0]~input_o\ & ((\map_6|HEX4[3]~0_combout\ & (!\map_1|Add0|auto_generated|result_int[0]~1_cout\)) # (!\map_6|HEX4[3]~0_combout\ & ((\map_1|Add0|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \map_1|Add0|auto_generated|result_int[1]~3\ = CARRY((\a[0]~input_o\ & (!\map_6|HEX4[3]~0_combout\ & !\map_1|Add0|auto_generated|result_int[0]~1_cout\)) # (!\a[0]~input_o\ & ((!\map_1|Add0|auto_generated|result_int[0]~1_cout\) # 
-- (!\map_6|HEX4[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \map_6|HEX4[3]~0_combout\,
	datad => VCC,
	cin => \map_1|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \map_1|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \map_1|Add0|auto_generated|result_int[1]~3\);

-- Location: IOIBUF_X58_Y54_N29
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X57_Y50_N26
\map_1|Add0|auto_generated|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|_~0_combout\ = \b[1]~input_o\ $ (\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datad => \op~input_o\,
	combout => \map_1|Add0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X58_Y52_N18
\map_1|Add0|auto_generated|result_int[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|result_int[2]~4_combout\ = ((\a[1]~input_o\ $ (\map_1|Add0|auto_generated|_~0_combout\ $ (!\map_1|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \map_1|Add0|auto_generated|result_int[2]~5\ = CARRY((\a[1]~input_o\ & ((\map_1|Add0|auto_generated|_~0_combout\) # (!\map_1|Add0|auto_generated|result_int[1]~3\))) # (!\a[1]~input_o\ & (\map_1|Add0|auto_generated|_~0_combout\ & 
-- !\map_1|Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \map_1|Add0|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \map_1|Add0|auto_generated|result_int[1]~3\,
	combout => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \map_1|Add0|auto_generated|result_int[2]~5\);

-- Location: IOIBUF_X56_Y54_N1
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X58_Y52_N8
\map_1|Add0|auto_generated|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|_~1_combout\ = \b[2]~input_o\ $ (\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_1|Add0|auto_generated|_~1_combout\);

-- Location: LCCOMB_X58_Y52_N20
\map_1|Add0|auto_generated|result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|result_int[3]~6_combout\ = (\a[2]~input_o\ & ((\map_1|Add0|auto_generated|_~1_combout\ & (\map_1|Add0|auto_generated|result_int[2]~5\ & VCC)) # (!\map_1|Add0|auto_generated|_~1_combout\ & 
-- (!\map_1|Add0|auto_generated|result_int[2]~5\)))) # (!\a[2]~input_o\ & ((\map_1|Add0|auto_generated|_~1_combout\ & (!\map_1|Add0|auto_generated|result_int[2]~5\)) # (!\map_1|Add0|auto_generated|_~1_combout\ & ((\map_1|Add0|auto_generated|result_int[2]~5\) 
-- # (GND)))))
-- \map_1|Add0|auto_generated|result_int[3]~7\ = CARRY((\a[2]~input_o\ & (!\map_1|Add0|auto_generated|_~1_combout\ & !\map_1|Add0|auto_generated|result_int[2]~5\)) # (!\a[2]~input_o\ & ((!\map_1|Add0|auto_generated|result_int[2]~5\) # 
-- (!\map_1|Add0|auto_generated|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \map_1|Add0|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \map_1|Add0|auto_generated|result_int[2]~5\,
	combout => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \map_1|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X58_Y52_N22
\map_1|Add0|auto_generated|result_int[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0|auto_generated|result_int[4]~8_combout\ = \map_1|Add0|auto_generated|result_int[3]~7\ $ (!\op~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \op~input_o\,
	cin => \map_1|Add0|auto_generated|result_int[3]~7\,
	combout => \map_1|Add0|auto_generated|result_int[4]~8_combout\);

-- Location: LCCOMB_X67_Y50_N24
\map_4|HEX[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[6]~0_combout\ = (\a[2]~input_o\ & ((!\a[1]~input_o\) # (!\a[0]~input_o\))) # (!\a[2]~input_o\ & ((\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_4|HEX[6]~0_combout\);

-- Location: LCCOMB_X67_Y50_N26
\map_4|HEX[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[5]~1_combout\ = (\a[2]~input_o\ & (\a[0]~input_o\ & \a[1]~input_o\)) # (!\a[2]~input_o\ & ((\a[0]~input_o\) # (\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_4|HEX[5]~1_combout\);

-- Location: LCCOMB_X67_Y50_N28
\map_4|HEX[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[4]~2_combout\ = (\a[0]~input_o\) # ((\a[2]~input_o\ & !\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_4|HEX[4]~2_combout\);

-- Location: LCCOMB_X57_Y50_N12
\map_4|HEX[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[3]~3_combout\ = (\a[1]~input_o\ & (\a[2]~input_o\ & \a[0]~input_o\)) # (!\a[1]~input_o\ & (\a[2]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	combout => \map_4|HEX[3]~3_combout\);

-- Location: LCCOMB_X67_Y50_N22
\map_4|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|Equal6~0_combout\ = (!\a[2]~input_o\ & (!\a[0]~input_o\ & \a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_4|Equal6~0_combout\);

-- Location: LCCOMB_X66_Y52_N8
\map_4|HEX[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[1]~4_combout\ = (\a[2]~input_o\ & (\a[1]~input_o\ $ (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_4|HEX[1]~4_combout\);

-- Location: LCCOMB_X61_Y50_N24
\map_4|HEX[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_4|HEX[0]~5_combout\ = (!\a[1]~input_o\ & (\a[0]~input_o\ $ (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_4|HEX[0]~5_combout\);

-- Location: LCCOMB_X72_Y44_N0
\map_5|HEX[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[6]~0_combout\ = (\b[2]~input_o\ & ((!\b[0]~input_o\) # (!\b[1]~input_o\))) # (!\b[2]~input_o\ & (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[6]~0_combout\);

-- Location: LCCOMB_X72_Y44_N2
\map_5|HEX[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[5]~1_combout\ = (\b[2]~input_o\ & (\b[1]~input_o\ & \b[0]~input_o\)) # (!\b[2]~input_o\ & ((\b[1]~input_o\) # (\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[5]~1_combout\);

-- Location: LCCOMB_X72_Y44_N20
\map_5|HEX[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[4]~2_combout\ = (\b[0]~input_o\) # ((\b[2]~input_o\ & !\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[4]~2_combout\);

-- Location: LCCOMB_X72_Y44_N6
\map_5|HEX[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[3]~3_combout\ = (\b[2]~input_o\ & (\b[1]~input_o\ $ (!\b[0]~input_o\))) # (!\b[2]~input_o\ & (!\b[1]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[3]~3_combout\);

-- Location: LCCOMB_X72_Y44_N24
\map_5|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|Equal6~0_combout\ = (!\b[2]~input_o\ & (\b[1]~input_o\ & !\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|Equal6~0_combout\);

-- Location: LCCOMB_X72_Y44_N26
\map_5|HEX[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[1]~4_combout\ = (\b[2]~input_o\ & (\b[1]~input_o\ $ (\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[1]~4_combout\);

-- Location: LCCOMB_X72_Y44_N12
\map_5|HEX[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_5|HEX[0]~5_combout\ = (!\b[1]~input_o\ & (\b[2]~input_o\ $ (\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \map_5|HEX[0]~5_combout\);

-- Location: LCCOMB_X66_Y52_N4
\map_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~0_combout\ = (\b[1]~input_o\ & (\a[1]~input_o\ & ((\a[0]~input_o\) # (!\b[0]~input_o\)))) # (!\b[1]~input_o\ & (((\a[1]~input_o\) # (\a[0]~input_o\)) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_2|Add0~0_combout\);

-- Location: LCCOMB_X58_Y52_N28
\map_6|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|comb~0_combout\ = (\op~input_o\ & ((\map_2|Add0~0_combout\ & (\b[2]~input_o\ & !\a[2]~input_o\)) # (!\map_2|Add0~0_combout\ & ((\b[2]~input_o\) # (!\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~0_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|comb~0_combout\);

-- Location: LCCOMB_X58_Y52_N4
\map_6|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|comb~1_combout\ = (\map_6|comb~0_combout\ & ((\map_1|Add0|auto_generated|result_int[3]~6_combout\) # ((\map_1|Add0|auto_generated|result_int[1]~2_combout\) # (\map_1|Add0|auto_generated|result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	datab => \map_1|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \map_6|comb~0_combout\,
	datad => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	combout => \map_6|comb~1_combout\);

-- Location: LCCOMB_X58_Y52_N6
\map_6|HEX3[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3\(6) = (!\map_6|comb~1_combout\ & ((\map_6|HEX3\(6)) # (!\map_6|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|comb~1_combout\,
	datab => \map_6|comb~0_combout\,
	datad => \map_6|HEX3\(6),
	combout => \map_6|HEX3\(6));

-- Location: LCCOMB_X57_Y50_N2
\map_6|HEX3[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (\op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX3[0]~0_combout\);

-- Location: LCCOMB_X57_Y50_N20
\map_6|HEX3[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3[0]~1_combout\ = (\a[1]~input_o\ & ((\b[2]~input_o\) # (\a[2]~input_o\ $ (\op~input_o\)))) # (!\a[1]~input_o\ & (!\a[2]~input_o\ & (\b[2]~input_o\ & \op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX3[0]~1_combout\);

-- Location: LCCOMB_X58_Y52_N24
\map_6|HEX3[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3[0]~2_combout\ = (\a[2]~input_o\ & (\b[2]~input_o\ & ((!\op~input_o\) # (!\a[1]~input_o\)))) # (!\a[2]~input_o\ & (\op~input_o\ & ((\b[2]~input_o\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[1]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX3[0]~2_combout\);

-- Location: LCCOMB_X57_Y52_N14
\map_6|HEX3[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3[0]~3_combout\ = (\map_6|HEX3[0]~0_combout\ & ((\map_6|HEX3[0]~2_combout\) # ((\map_6|HEX3[0]~1_combout\ & \b[1]~input_o\)))) # (!\map_6|HEX3[0]~0_combout\ & (\map_6|HEX3[0]~2_combout\ & ((\map_6|HEX3[0]~1_combout\) # (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX3[0]~0_combout\,
	datab => \map_6|HEX3[0]~1_combout\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX3[0]~2_combout\,
	combout => \map_6|HEX3[0]~3_combout\);

-- Location: LCCOMB_X58_Y52_N26
\map_6|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|Equal3~0_combout\ = (!\map_1|Add0|auto_generated|result_int[1]~2_combout\ & !\map_1|Add0|auto_generated|result_int[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_1|Add0|auto_generated|result_int[1]~2_combout\,
	datad => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	combout => \map_6|Equal3~0_combout\);

-- Location: LCCOMB_X58_Y52_N2
\map_6|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|comb~2_combout\ = (!\map_6|HEX3[0]~3_combout\ & (((\map_1|Add0|auto_generated|result_int[3]~6_combout\) # (!\map_6|Equal3~0_combout\)) # (!\map_6|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX3[0]~3_combout\,
	datab => \map_6|comb~0_combout\,
	datac => \map_6|Equal3~0_combout\,
	datad => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \map_6|comb~2_combout\);

-- Location: LCCOMB_X58_Y52_N12
\map_6|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|comb~3_combout\ = (\map_6|HEX3[0]~3_combout\ & (((\map_1|Add0|auto_generated|result_int[3]~6_combout\) # (!\map_6|Equal3~0_combout\)) # (!\map_6|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX3[0]~3_combout\,
	datab => \map_6|comb~0_combout\,
	datac => \map_6|Equal3~0_combout\,
	datad => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \map_6|comb~3_combout\);

-- Location: LCCOMB_X59_Y53_N0
\map_6|HEX3[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3\(5) = (!\map_6|comb~2_combout\ & ((\map_6|comb~3_combout\) # (\map_6|HEX3\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|comb~2_combout\,
	datac => \map_6|comb~3_combout\,
	datad => \map_6|HEX3\(5),
	combout => \map_6|HEX3\(5));

-- Location: LCCOMB_X59_Y53_N2
\map_6|HEX3[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3\(4) = (!\map_6|comb~2_combout\ & ((\map_6|comb~3_combout\) # (\map_6|HEX3\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|comb~2_combout\,
	datac => \map_6|comb~3_combout\,
	datad => \map_6|HEX3\(4),
	combout => \map_6|HEX3\(4));

-- Location: LCCOMB_X59_Y53_N12
\map_6|HEX3[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3\(3) = (!\map_6|comb~2_combout\ & ((\map_6|comb~3_combout\) # (\map_6|HEX3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|comb~2_combout\,
	datac => \map_6|comb~3_combout\,
	datad => \map_6|HEX3\(3),
	combout => \map_6|HEX3\(3));

-- Location: LCCOMB_X59_Y53_N6
\map_6|HEX3[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX3\(0) = (!\map_6|comb~2_combout\ & ((\map_6|comb~3_combout\) # (\map_6|HEX3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|comb~2_combout\,
	datac => \map_6|comb~3_combout\,
	datad => \map_6|HEX3\(0),
	combout => \map_6|HEX3\(0));

-- Location: LCCOMB_X67_Y50_N20
\map_6|HEX4[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~3_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & (\b[0]~input_o\ & \b[1]~input_o\)) # (!\a[0]~input_o\ & ((!\b[1]~input_o\))))) # (!\a[1]~input_o\ & ((\b[0]~input_o\ & (\a[0]~input_o\ & !\b[1]~input_o\)) # (!\b[0]~input_o\ & 
-- ((\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \map_6|HEX4[6]~3_combout\);

-- Location: LCCOMB_X67_Y50_N6
\map_6|HEX4[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~4_combout\ = (\a[2]~input_o\ & (\b[2]~input_o\ & ((\map_6|HEX4[6]~3_combout\) # (\op~input_o\)))) # (!\a[2]~input_o\ & (((!\b[2]~input_o\ & \op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \map_6|HEX4[6]~3_combout\,
	datac => \b[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[6]~4_combout\);

-- Location: LCCOMB_X67_Y50_N8
\map_6|HEX4[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~5_combout\ = (\op~input_o\ & (!\map_6|HEX4[6]~3_combout\ & (\a[2]~input_o\ $ (\b[2]~input_o\)))) # (!\op~input_o\ & ((\a[2]~input_o\) # ((\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \map_6|HEX4[6]~3_combout\,
	datac => \b[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[6]~5_combout\);

-- Location: LCCOMB_X67_Y50_N10
\map_6|HEX4[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~2_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\) # ((\b[1]~input_o\)))) # (!\a[1]~input_o\ & (((\a[0]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \map_6|HEX4[6]~2_combout\);

-- Location: LCCOMB_X67_Y50_N2
\map_6|HEX4[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~6_combout\ = (\map_6|HEX4[6]~3_combout\ & ((\map_6|HEX4[6]~5_combout\ $ (\map_6|HEX4[6]~2_combout\)) # (!\map_6|HEX4[6]~4_combout\))) # (!\map_6|HEX4[6]~3_combout\ & (\map_6|HEX4[6]~2_combout\ & ((\map_6|HEX4[6]~5_combout\) # 
-- (!\map_6|HEX4[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[6]~4_combout\,
	datab => \map_6|HEX4[6]~3_combout\,
	datac => \map_6|HEX4[6]~5_combout\,
	datad => \map_6|HEX4[6]~2_combout\,
	combout => \map_6|HEX4[6]~6_combout\);

-- Location: LCCOMB_X67_Y50_N4
\map_6|HEX4[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~7_combout\ = (\map_6|HEX4[6]~4_combout\ & (\map_6|HEX4[6]~3_combout\ & ((!\map_6|HEX4[6]~2_combout\) # (!\map_6|HEX4[6]~5_combout\)))) # (!\map_6|HEX4[6]~4_combout\ & (\map_6|HEX4[6]~5_combout\ & (\map_6|HEX4[6]~3_combout\ $ 
-- (!\map_6|HEX4[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[6]~4_combout\,
	datab => \map_6|HEX4[6]~3_combout\,
	datac => \map_6|HEX4[6]~5_combout\,
	datad => \map_6|HEX4[6]~2_combout\,
	combout => \map_6|HEX4[6]~7_combout\);

-- Location: LCCOMB_X67_Y50_N0
\map_6|HEX4[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~1_combout\ = (\a[1]~input_o\ & (\a[0]~input_o\ & ((\b[0]~input_o\) # (!\b[1]~input_o\)))) # (!\a[1]~input_o\ & (\b[0]~input_o\ & ((\a[0]~input_o\) # (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \map_6|HEX4[6]~1_combout\);

-- Location: LCCOMB_X67_Y50_N14
\map_6|HEX4[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[6]~8_combout\ = \map_6|HEX4[6]~7_combout\ $ (((!\map_6|HEX4[6]~6_combout\ & !\map_6|HEX4[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_6|HEX4[6]~6_combout\,
	datac => \map_6|HEX4[6]~7_combout\,
	datad => \map_6|HEX4[6]~1_combout\,
	combout => \map_6|HEX4[6]~8_combout\);

-- Location: LCCOMB_X66_Y52_N10
\map_6|HEX4[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~13_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\ & (\a[2]~input_o\ & !\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\a[0]~input_o\))))) # (!\a[1]~input_o\ & ((\a[2]~input_o\) # ((\b[0]~input_o\ & !\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~13_combout\);

-- Location: LCCOMB_X66_Y52_N26
\map_6|HEX4[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~9_combout\ = (\a[1]~input_o\) # ((\b[0]~input_o\ & (\a[2]~input_o\ & !\a[0]~input_o\)) # (!\b[0]~input_o\ & ((\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~9_combout\);

-- Location: LCCOMB_X66_Y52_N6
\map_6|HEX4[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~11_combout\ = (\a[1]~input_o\ & (((!\b[0]~input_o\ & \a[0]~input_o\)) # (!\a[2]~input_o\))) # (!\a[1]~input_o\ & ((\b[0]~input_o\ & ((!\a[0]~input_o\))) # (!\b[0]~input_o\ & (!\a[2]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~11_combout\);

-- Location: LCCOMB_X66_Y52_N12
\map_6|HEX4[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~10_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\ & ((\a[0]~input_o\))) # (!\b[0]~input_o\ & ((\a[2]~input_o\) # (!\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~10_combout\);

-- Location: LCCOMB_X66_Y52_N16
\map_6|HEX4[5]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~12_combout\ = (\b[2]~input_o\ & (((\b[1]~input_o\)))) # (!\b[2]~input_o\ & ((\b[1]~input_o\ & ((!\map_6|HEX4[5]~10_combout\))) # (!\b[1]~input_o\ & (\map_6|HEX4[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[5]~11_combout\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[5]~10_combout\,
	combout => \map_6|HEX4[5]~12_combout\);

-- Location: LCCOMB_X66_Y52_N28
\map_6|HEX4[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~14_combout\ = (\b[2]~input_o\ & ((\map_6|HEX4[5]~12_combout\ & (\map_6|HEX4[5]~13_combout\)) # (!\map_6|HEX4[5]~12_combout\ & ((\map_6|HEX4[5]~9_combout\))))) # (!\b[2]~input_o\ & (((\map_6|HEX4[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[5]~13_combout\,
	datab => \b[2]~input_o\,
	datac => \map_6|HEX4[5]~9_combout\,
	datad => \map_6|HEX4[5]~12_combout\,
	combout => \map_6|HEX4[5]~14_combout\);

-- Location: LCCOMB_X66_Y52_N22
\map_6|HEX4[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~19_combout\ = (\a[1]~input_o\ & (\a[2]~input_o\ & ((!\a[0]~input_o\) # (!\b[0]~input_o\)))) # (!\a[1]~input_o\ & ((\b[0]~input_o\ & ((\a[2]~input_o\) # (!\a[0]~input_o\))) # (!\b[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~19_combout\);

-- Location: LCCOMB_X66_Y52_N30
\map_6|HEX4[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~15_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\ & ((\a[2]~input_o\) # (!\a[0]~input_o\))) # (!\b[0]~input_o\ & ((\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~15_combout\);

-- Location: LCCOMB_X66_Y52_N18
\map_6|HEX4[5]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~17_combout\ = (\a[1]~input_o\ & ((\b[0]~input_o\ & ((!\a[0]~input_o\))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (!\a[2]~input_o\))))) # (!\a[1]~input_o\ & (!\a[2]~input_o\ & ((\b[0]~input_o\) # (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~17_combout\);

-- Location: LCCOMB_X66_Y52_N24
\map_6|HEX4[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~16_combout\ = (\a[1]~input_o\) # ((\b[0]~input_o\ & ((\a[0]~input_o\))) # (!\b[0]~input_o\ & (\a[2]~input_o\ & !\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[1]~input_o\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[5]~16_combout\);

-- Location: LCCOMB_X66_Y52_N20
\map_6|HEX4[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~18_combout\ = (\b[2]~input_o\ & (((\b[1]~input_o\)))) # (!\b[2]~input_o\ & ((\b[1]~input_o\ & ((!\map_6|HEX4[5]~16_combout\))) # (!\b[1]~input_o\ & (\map_6|HEX4[5]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \map_6|HEX4[5]~17_combout\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[5]~16_combout\,
	combout => \map_6|HEX4[5]~18_combout\);

-- Location: LCCOMB_X66_Y52_N0
\map_6|HEX4[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~20_combout\ = (\b[2]~input_o\ & ((\map_6|HEX4[5]~18_combout\ & (\map_6|HEX4[5]~19_combout\)) # (!\map_6|HEX4[5]~18_combout\ & ((\map_6|HEX4[5]~15_combout\))))) # (!\b[2]~input_o\ & (((\map_6|HEX4[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[5]~19_combout\,
	datab => \b[2]~input_o\,
	datac => \map_6|HEX4[5]~15_combout\,
	datad => \map_6|HEX4[5]~18_combout\,
	combout => \map_6|HEX4[5]~20_combout\);

-- Location: LCCOMB_X66_Y52_N2
\map_6|HEX4[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[5]~21_combout\ = (\op~input_o\ & (\map_6|HEX4[5]~14_combout\)) # (!\op~input_o\ & ((\map_6|HEX4[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_6|HEX4[5]~14_combout\,
	datac => \op~input_o\,
	datad => \map_6|HEX4[5]~20_combout\,
	combout => \map_6|HEX4[5]~21_combout\);

-- Location: LCCOMB_X58_Y52_N30
\map_6|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|Equal3~1_combout\ = (\map_6|Equal3~0_combout\ & (!\map_6|comb~0_combout\ & (\map_1|Add0|auto_generated|result_int[4]~8_combout\ & \map_1|Add0|auto_generated|result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|Equal3~0_combout\,
	datab => \map_6|comb~0_combout\,
	datac => \map_1|Add0|auto_generated|result_int[4]~8_combout\,
	datad => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \map_6|Equal3~1_combout\);

-- Location: LCCOMB_X61_Y50_N16
\map_6|HEX4[4]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~25_combout\ = (\a[0]~input_o\ & (((\a[2]~input_o\) # (\b[2]~input_o\)) # (!\b[0]~input_o\))) # (!\a[0]~input_o\ & (!\b[0]~input_o\ & (\a[2]~input_o\ & \b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \map_6|HEX4[4]~25_combout\);

-- Location: LCCOMB_X61_Y50_N12
\map_6|HEX4[4]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~27_combout\ = (\map_6|HEX4[4]~25_combout\) # ((\a[1]~input_o\ & (\b[1]~input_o\ & !\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \map_6|HEX4[4]~25_combout\,
	combout => \map_6|HEX4[4]~27_combout\);

-- Location: LCCOMB_X61_Y50_N14
\map_6|HEX4[4]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~24_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ & (\a[2]~input_o\ $ (!\b[2]~input_o\)))) # (!\a[0]~input_o\ & (!\b[0]~input_o\ & ((\a[2]~input_o\) # (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \b[2]~input_o\,
	combout => \map_6|HEX4[4]~24_combout\);

-- Location: LCCOMB_X61_Y50_N18
\map_6|HEX4[4]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~26_combout\ = (\b[0]~input_o\ & (\a[1]~input_o\ $ ((\b[1]~input_o\)))) # (!\b[0]~input_o\ & ((\map_6|HEX4[4]~25_combout\) # (\a[1]~input_o\ $ (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \map_6|HEX4[4]~25_combout\,
	combout => \map_6|HEX4[4]~26_combout\);

-- Location: LCCOMB_X61_Y50_N2
\map_6|HEX4[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~22_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\) # ((\a[0]~input_o\ & \b[0]~input_o\)))) # (!\b[1]~input_o\ & (\a[0]~input_o\ & (\b[0]~input_o\ & \a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_6|HEX4[4]~22_combout\);

-- Location: LCCOMB_X61_Y50_N20
\map_6|HEX4[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~23_combout\ = (\op~input_o\) # ((\b[2]~input_o\ & (\a[2]~input_o\ & \map_6|HEX4[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \op~input_o\,
	datad => \map_6|HEX4[4]~22_combout\,
	combout => \map_6|HEX4[4]~23_combout\);

-- Location: LCCOMB_X61_Y50_N28
\map_6|HEX4[4]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~66_combout\ = (\map_6|HEX4[4]~27_combout\ & (\b[0]~input_o\ $ (((\map_6|HEX4[4]~26_combout\) # (!\map_6|HEX4[4]~23_combout\))))) # (!\map_6|HEX4[4]~27_combout\ & ((\map_6|HEX4[4]~26_combout\ & (\b[0]~input_o\ & !\map_6|HEX4[4]~23_combout\)) 
-- # (!\map_6|HEX4[4]~26_combout\ & (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[4]~27_combout\,
	datab => \map_6|HEX4[4]~26_combout\,
	datac => \b[0]~input_o\,
	datad => \map_6|HEX4[4]~23_combout\,
	combout => \map_6|HEX4[4]~66_combout\);

-- Location: LCCOMB_X61_Y50_N22
\map_6|HEX4[4]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~67_combout\ = (\map_6|HEX4[4]~27_combout\ & ((\map_6|HEX4[4]~24_combout\ & (!\b[0]~input_o\ & !\map_6|HEX4[4]~66_combout\)) # (!\map_6|HEX4[4]~24_combout\ & ((\map_6|HEX4[4]~66_combout\))))) # (!\map_6|HEX4[4]~27_combout\ & 
-- ((\map_6|HEX4[4]~24_combout\ & ((\map_6|HEX4[4]~66_combout\))) # (!\map_6|HEX4[4]~24_combout\ & (\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[4]~27_combout\,
	datab => \b[0]~input_o\,
	datac => \map_6|HEX4[4]~24_combout\,
	datad => \map_6|HEX4[4]~66_combout\,
	combout => \map_6|HEX4[4]~67_combout\);

-- Location: LCCOMB_X61_Y50_N6
\map_6|HEX4[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[4]~28_combout\ = (\op~input_o\ & (((\map_6|HEX4[4]~67_combout\)))) # (!\op~input_o\ & ((\map_6|HEX4[4]~23_combout\ & (!\map_6|Equal3~1_combout\)) # (!\map_6|HEX4[4]~23_combout\ & ((\map_6|HEX4[4]~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datab => \map_6|Equal3~1_combout\,
	datac => \map_6|HEX4[4]~67_combout\,
	datad => \map_6|HEX4[4]~23_combout\,
	combout => \map_6|HEX4[4]~28_combout\);

-- Location: LCCOMB_X58_Y52_N0
\map_6|HEX4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4~30_combout\ = (\map_1|Add0|auto_generated|result_int[4]~8_combout\ & (!\map_6|comb~0_combout\ & (\map_1|Add0|auto_generated|result_int[1]~2_combout\ $ (\map_1|Add0|auto_generated|result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0|auto_generated|result_int[4]~8_combout\,
	datab => \map_1|Add0|auto_generated|result_int[1]~2_combout\,
	datac => \map_6|comb~0_combout\,
	datad => \map_1|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \map_6|HEX4~30_combout\);

-- Location: LCCOMB_X57_Y52_N24
\map_6|HEX4[3]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~36_combout\ = (\map_6|HEX4~30_combout\ & \map_1|Add0|auto_generated|result_int[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4~30_combout\,
	datad => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	combout => \map_6|HEX4[3]~36_combout\);

-- Location: LCCOMB_X57_Y52_N26
\map_6|HEX4[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~37_combout\ = (\a[0]~input_o\ & (!\op~input_o\ & ((\map_6|HEX4[3]~36_combout\) # (!\b[0]~input_o\)))) # (!\a[0]~input_o\ & (((\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \map_6|HEX4[3]~36_combout\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~37_combout\);

-- Location: LCCOMB_X57_Y52_N22
\map_6|HEX4[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~39_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ & \op~input_o\)) # (!\a[0]~input_o\ & (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~39_combout\);

-- Location: LCCOMB_X57_Y52_N28
\map_6|HEX4[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~38_combout\ = (\b[0]~input_o\ & (!\op~input_o\ & ((\map_6|HEX4[3]~36_combout\) # (!\a[0]~input_o\)))) # (!\b[0]~input_o\ & (\a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \map_6|HEX4[3]~36_combout\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~38_combout\);

-- Location: LCCOMB_X57_Y52_N16
\map_6|HEX4[3]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~40_combout\ = (\a[1]~input_o\ & (((\b[1]~input_o\) # (\map_6|HEX4[3]~38_combout\)))) # (!\a[1]~input_o\ & (\map_6|HEX4[3]~39_combout\ & (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~39_combout\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[3]~38_combout\,
	combout => \map_6|HEX4[3]~40_combout\);

-- Location: LCCOMB_X57_Y52_N10
\map_6|HEX4[3]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~41_combout\ = (\op~input_o\ & (\a[0]~input_o\ $ (((!\b[0]~input_o\))))) # (!\op~input_o\ & (((\map_6|HEX4[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \map_6|HEX4[3]~36_combout\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~41_combout\);

-- Location: LCCOMB_X57_Y52_N20
\map_6|HEX4[3]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~42_combout\ = (\map_6|HEX4[3]~40_combout\ & (((\map_6|HEX4[3]~41_combout\) # (!\b[1]~input_o\)))) # (!\map_6|HEX4[3]~40_combout\ & (\map_6|HEX4[3]~37_combout\ & (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~37_combout\,
	datab => \map_6|HEX4[3]~40_combout\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[3]~41_combout\,
	combout => \map_6|HEX4[3]~42_combout\);

-- Location: LCCOMB_X57_Y50_N10
\map_6|HEX4[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~32_combout\ = (\b[0]~input_o\ & ((\a[0]~input_o\ & (!\b[1]~input_o\ & !\op~input_o\)) # (!\a[0]~input_o\ & ((\op~input_o\))))) # (!\b[0]~input_o\ & (\b[1]~input_o\ & (\a[0]~input_o\ $ (!\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~32_combout\);

-- Location: LCCOMB_X57_Y50_N28
\map_6|HEX4[3]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~33_combout\ = (\b[1]~input_o\ & (\a[0]~input_o\ & (\b[0]~input_o\ $ (\op~input_o\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ $ ((\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~33_combout\);

-- Location: LCCOMB_X57_Y50_N30
\map_6|HEX4[3]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~34_combout\ = (\a[1]~input_o\ & (\map_6|HEX4[3]~32_combout\)) # (!\a[1]~input_o\ & ((\map_6|HEX4[3]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~32_combout\,
	datab => \map_6|HEX4[3]~33_combout\,
	datac => \a[1]~input_o\,
	combout => \map_6|HEX4[3]~34_combout\);

-- Location: LCCOMB_X57_Y50_N14
\map_6|HEX4[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~29_combout\ = (\b[0]~input_o\ & (!\a[0]~input_o\ & ((\a[1]~input_o\) # (!\b[1]~input_o\)))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & ((\b[1]~input_o\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \map_6|HEX4[3]~29_combout\);

-- Location: LCCOMB_X57_Y50_N24
\map_6|HEX4[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~31_combout\ = (\op~input_o\ & (((\map_6|HEX4[3]~29_combout\)))) # (!\op~input_o\ & (\map_1|Add0|auto_generated|result_int[2]~4_combout\ & (\map_6|HEX4~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	datab => \map_6|HEX4~30_combout\,
	datac => \map_6|HEX4[3]~29_combout\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~31_combout\);

-- Location: LCCOMB_X57_Y50_N0
\map_6|HEX4[3]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~35_combout\ = (\a[2]~input_o\ & (((\b[2]~input_o\ & \map_6|HEX4[3]~31_combout\)))) # (!\a[2]~input_o\ & (\map_6|HEX4[3]~34_combout\ & (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~34_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \map_6|HEX4[3]~31_combout\,
	combout => \map_6|HEX4[3]~35_combout\);

-- Location: LCCOMB_X57_Y50_N18
\map_6|HEX4[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~43_combout\ = (\map_6|HEX4[3]~35_combout\) # ((\map_6|HEX4[3]~42_combout\ & (\a[2]~input_o\ $ (\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~42_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \map_6|HEX4[3]~35_combout\,
	combout => \map_6|HEX4[3]~43_combout\);

-- Location: LCCOMB_X61_Y50_N8
\map_6|HEX4[2]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[2]~44_combout\ = (\b[2]~input_o\) # ((\a[2]~input_o\) # ((\b[1]~input_o\ & \a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_6|HEX4[2]~44_combout\);

-- Location: LCCOMB_X61_Y50_N26
\map_6|HEX4[2]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[2]~45_combout\ = (\map_6|HEX4[4]~23_combout\ & (\op~input_o\)) # (!\map_6|HEX4[4]~23_combout\ & ((\map_6|HEX4[2]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op~input_o\,
	datab => \map_6|HEX4[4]~23_combout\,
	datac => \map_6|HEX4[2]~44_combout\,
	combout => \map_6|HEX4[2]~45_combout\);

-- Location: LCCOMB_X61_Y50_N4
\map_6|HEX4[2]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[2]~46_combout\ = (\b[1]~input_o\ & (!\a[1]~input_o\ & ((\a[2]~input_o\) # (!\b[2]~input_o\)))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & ((\b[2]~input_o\) # (!\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_6|HEX4[2]~46_combout\);

-- Location: LCCOMB_X61_Y50_N30
\map_6|HEX4[2]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[2]~47_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ & (\map_6|HEX4[2]~46_combout\ $ (!\map_6|HEX4[4]~23_combout\)))) # (!\a[0]~input_o\ & (!\b[0]~input_o\ & (\map_6|HEX4[2]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datac => \map_6|HEX4[2]~46_combout\,
	datad => \map_6|HEX4[4]~23_combout\,
	combout => \map_6|HEX4[2]~47_combout\);

-- Location: LCCOMB_X61_Y50_N0
\map_6|HEX4[2]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[2]~48_combout\ = (\map_6|HEX4[2]~45_combout\ & (((\map_6|HEX4[2]~47_combout\ & \map_6|HEX4[4]~23_combout\)))) # (!\map_6|HEX4[2]~45_combout\ & ((\map_6|HEX4[4]~23_combout\ & (\map_6|Equal3~1_combout\)) # (!\map_6|HEX4[4]~23_combout\ & 
-- ((\map_6|HEX4[2]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[2]~45_combout\,
	datab => \map_6|Equal3~1_combout\,
	datac => \map_6|HEX4[2]~47_combout\,
	datad => \map_6|HEX4[4]~23_combout\,
	combout => \map_6|HEX4[2]~48_combout\);

-- Location: LCCOMB_X61_Y50_N10
\map_6|HEX4[1]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[1]~51_combout\ = (\b[2]~input_o\ & (\a[1]~input_o\ & (\b[1]~input_o\ $ (\op~input_o\)))) # (!\b[2]~input_o\ & (\b[1]~input_o\ & (\op~input_o\ $ (\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \op~input_o\,
	datad => \a[1]~input_o\,
	combout => \map_6|HEX4[1]~51_combout\);

-- Location: LCCOMB_X67_Y50_N18
\map_6|HEX4[1]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[1]~50_combout\ = (\a[1]~input_o\ & (!\b[1]~input_o\ & ((!\op~input_o\) # (!\b[2]~input_o\)))) # (!\a[1]~input_o\ & (\b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[1]~50_combout\);

-- Location: LCCOMB_X67_Y50_N12
\map_6|HEX4[1]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[1]~64_combout\ = (\map_6|HEX4[1]~51_combout\ & (!\a[2]~input_o\ & (\b[2]~input_o\ $ (!\map_6|HEX4[1]~50_combout\)))) # (!\map_6|HEX4[1]~51_combout\ & (\a[2]~input_o\ $ ((\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[1]~51_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \map_6|HEX4[1]~50_combout\,
	combout => \map_6|HEX4[1]~64_combout\);

-- Location: LCCOMB_X67_Y50_N16
\map_6|HEX4[1]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[1]~49_combout\ = (\b[0]~input_o\ & (((!\a[0]~input_o\ & !\a[2]~input_o\)) # (!\op~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\ & ((\a[2]~input_o\) # (!\op~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[1]~49_combout\);

-- Location: LCCOMB_X67_Y50_N30
\map_6|HEX4[1]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[1]~65_combout\ = (\map_6|HEX4[1]~64_combout\ & (\map_6|HEX4[1]~49_combout\ $ (((!\map_6|HEX4[1]~51_combout\ & \map_6|HEX4[1]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[1]~64_combout\,
	datab => \map_6|HEX4[1]~49_combout\,
	datac => \map_6|HEX4[1]~51_combout\,
	datad => \map_6|HEX4[1]~50_combout\,
	combout => \map_6|HEX4[1]~65_combout\);

-- Location: LCCOMB_X57_Y50_N4
\map_6|HEX4[3]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~52_combout\ = (\a[0]~input_o\ & \b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	combout => \map_6|HEX4[3]~52_combout\);

-- Location: LCCOMB_X57_Y52_N30
\map_6|HEX4[3]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~53_combout\ = (\map_6|HEX4~30_combout\ & (\map_1|Add0|auto_generated|result_int[2]~4_combout\ & (\map_6|HEX4[3]~52_combout\ & !\op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4~30_combout\,
	datab => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \map_6|HEX4[3]~52_combout\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~53_combout\);

-- Location: LCCOMB_X57_Y52_N2
\map_6|HEX4[3]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~60_combout\ = (\a[1]~input_o\ & ((\map_6|HEX4[3]~53_combout\) # ((\b[1]~input_o\)))) # (!\a[1]~input_o\ & (((\map_6|HEX4[3]~39_combout\ & !\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~53_combout\,
	datab => \a[1]~input_o\,
	datac => \map_6|HEX4[3]~39_combout\,
	datad => \b[1]~input_o\,
	combout => \map_6|HEX4[3]~60_combout\);

-- Location: LCCOMB_X57_Y52_N8
\map_6|HEX4[3]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~58_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (\op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~58_combout\);

-- Location: LCCOMB_X58_Y52_N10
\map_6|HEX4[3]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~59_combout\ = (\map_6|HEX4[3]~58_combout\ & (((\map_1|Add0|auto_generated|result_int[2]~4_combout\ & \map_6|HEX4~30_combout\)) # (!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~58_combout\,
	datab => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	datac => \map_6|HEX4~30_combout\,
	datad => \a[0]~input_o\,
	combout => \map_6|HEX4[3]~59_combout\);

-- Location: LCCOMB_X57_Y52_N4
\map_6|HEX4[3]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~61_combout\ = (\map_6|HEX4[3]~60_combout\ & ((\map_6|HEX4[3]~41_combout\) # ((!\b[1]~input_o\)))) # (!\map_6|HEX4[3]~60_combout\ & (((\b[1]~input_o\ & \map_6|HEX4[3]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~41_combout\,
	datab => \map_6|HEX4[3]~60_combout\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[3]~59_combout\,
	combout => \map_6|HEX4[3]~61_combout\);

-- Location: LCCOMB_X57_Y50_N22
\map_6|HEX4[0]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[0]~62_combout\ = (\a[2]~input_o\ & (((\b[2]~input_o\) # (\map_6|HEX4[3]~61_combout\)))) # (!\a[2]~input_o\ & (\map_6|HEX4[3]~34_combout\ & (!\b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~34_combout\,
	datab => \a[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \map_6|HEX4[3]~61_combout\,
	combout => \map_6|HEX4[0]~62_combout\);

-- Location: LCCOMB_X57_Y52_N0
\map_6|HEX4[3]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~54_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ $ (\op~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datac => \b[0]~input_o\,
	datad => \op~input_o\,
	combout => \map_6|HEX4[3]~54_combout\);

-- Location: LCCOMB_X57_Y52_N18
\map_6|HEX4[3]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~55_combout\ = (\map_6|HEX4[3]~54_combout\ & (((\map_6|HEX4~30_combout\ & \map_1|Add0|auto_generated|result_int[2]~4_combout\)) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4~30_combout\,
	datab => \b[0]~input_o\,
	datac => \map_6|HEX4[3]~54_combout\,
	datad => \map_1|Add0|auto_generated|result_int[2]~4_combout\,
	combout => \map_6|HEX4[3]~55_combout\);

-- Location: LCCOMB_X57_Y52_N12
\map_6|HEX4[3]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~56_combout\ = (\a[1]~input_o\ & (((\b[1]~input_o\) # (\map_6|HEX4[3]~55_combout\)))) # (!\a[1]~input_o\ & (\map_6|HEX4[3]~39_combout\ & (!\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~39_combout\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \map_6|HEX4[3]~55_combout\,
	combout => \map_6|HEX4[3]~56_combout\);

-- Location: LCCOMB_X57_Y52_N6
\map_6|HEX4[3]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[3]~57_combout\ = (\b[1]~input_o\ & ((\map_6|HEX4[3]~56_combout\ & (\map_6|HEX4[3]~41_combout\)) # (!\map_6|HEX4[3]~56_combout\ & ((\map_6|HEX4[3]~53_combout\))))) # (!\b[1]~input_o\ & (((\map_6|HEX4[3]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[3]~41_combout\,
	datab => \b[1]~input_o\,
	datac => \map_6|HEX4[3]~53_combout\,
	datad => \map_6|HEX4[3]~56_combout\,
	combout => \map_6|HEX4[3]~57_combout\);

-- Location: LCCOMB_X57_Y50_N8
\map_6|HEX4[0]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_6|HEX4[0]~63_combout\ = (\map_6|HEX4[0]~62_combout\ & ((\map_6|HEX4[3]~31_combout\) # ((!\b[2]~input_o\)))) # (!\map_6|HEX4[0]~62_combout\ & (((\b[2]~input_o\ & \map_6|HEX4[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_6|HEX4[0]~62_combout\,
	datab => \map_6|HEX4[3]~31_combout\,
	datac => \b[2]~input_o\,
	datad => \map_6|HEX4[3]~57_combout\,
	combout => \map_6|HEX4[0]~63_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_Hex1(6) <= \Hex1[6]~output_o\;

ww_Hex1(5) <= \Hex1[5]~output_o\;

ww_Hex1(4) <= \Hex1[4]~output_o\;

ww_Hex1(3) <= \Hex1[3]~output_o\;

ww_Hex1(2) <= \Hex1[2]~output_o\;

ww_Hex1(1) <= \Hex1[1]~output_o\;

ww_Hex1(0) <= \Hex1[0]~output_o\;

ww_Hex2(6) <= \Hex2[6]~output_o\;

ww_Hex2(5) <= \Hex2[5]~output_o\;

ww_Hex2(4) <= \Hex2[4]~output_o\;

ww_Hex2(3) <= \Hex2[3]~output_o\;

ww_Hex2(2) <= \Hex2[2]~output_o\;

ww_Hex2(1) <= \Hex2[1]~output_o\;

ww_Hex2(0) <= \Hex2[0]~output_o\;

ww_Hex3(6) <= \Hex3[6]~output_o\;

ww_Hex3(5) <= \Hex3[5]~output_o\;

ww_Hex3(4) <= \Hex3[4]~output_o\;

ww_Hex3(3) <= \Hex3[3]~output_o\;

ww_Hex3(2) <= \Hex3[2]~output_o\;

ww_Hex3(1) <= \Hex3[1]~output_o\;

ww_Hex3(0) <= \Hex3[0]~output_o\;

ww_Hex4(6) <= \Hex4[6]~output_o\;

ww_Hex4(5) <= \Hex4[5]~output_o\;

ww_Hex4(4) <= \Hex4[4]~output_o\;

ww_Hex4(3) <= \Hex4[3]~output_o\;

ww_Hex4(2) <= \Hex4[2]~output_o\;

ww_Hex4(1) <= \Hex4[1]~output_o\;

ww_Hex4(0) <= \Hex4[0]~output_o\;

ww_SIG(6) <= \SIG[6]~output_o\;

ww_SIG(5) <= \SIG[5]~output_o\;

ww_SIG(4) <= \SIG[4]~output_o\;

ww_SIG(3) <= \SIG[3]~output_o\;

ww_SIG(2) <= \SIG[2]~output_o\;

ww_SIG(1) <= \SIG[1]~output_o\;

ww_SIG(0) <= \SIG[0]~output_o\;
END structure;


