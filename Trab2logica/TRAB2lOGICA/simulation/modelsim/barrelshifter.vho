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

-- DATE "04/25/2023 16:05:03"

-- 
-- Device: Altera 10M50DCF484C7G Package FBGA484
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

ENTITY 	barrelshifter IS
    PORT (
	x : IN std_logic_vector(3 DOWNTO 0);
	led_entrada : OUT std_logic_vector(3 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0);
	aux7segm1 : OUT std_logic_vector(0 TO 6);
	aux7segm2 : OUT std_logic_vector(0 TO 6)
	);
END barrelshifter;

-- Design Ports Information
-- led_entrada[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrada[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrada[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrada[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[2]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm1[0]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aux7segm2[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF barrelshifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_aux7segm1 : std_logic_vector(0 TO 6);
SIGNAL ww_aux7segm2 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_entrada[0]~output_o\ : std_logic;
SIGNAL \led_entrada[1]~output_o\ : std_logic;
SIGNAL \led_entrada[2]~output_o\ : std_logic;
SIGNAL \led_entrada[3]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \aux7segm1[6]~output_o\ : std_logic;
SIGNAL \aux7segm1[5]~output_o\ : std_logic;
SIGNAL \aux7segm1[4]~output_o\ : std_logic;
SIGNAL \aux7segm1[3]~output_o\ : std_logic;
SIGNAL \aux7segm1[2]~output_o\ : std_logic;
SIGNAL \aux7segm1[1]~output_o\ : std_logic;
SIGNAL \aux7segm1[0]~output_o\ : std_logic;
SIGNAL \aux7segm2[6]~output_o\ : std_logic;
SIGNAL \aux7segm2[5]~output_o\ : std_logic;
SIGNAL \aux7segm2[4]~output_o\ : std_logic;
SIGNAL \aux7segm2[3]~output_o\ : std_logic;
SIGNAL \aux7segm2[2]~output_o\ : std_logic;
SIGNAL \aux7segm2[1]~output_o\ : std_logic;
SIGNAL \aux7segm2[0]~output_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \aux7segm1~0_combout\ : std_logic;
SIGNAL \aux7segm1~1_combout\ : std_logic;
SIGNAL \aux7segm1~2_combout\ : std_logic;
SIGNAL \aux7segm1~3_combout\ : std_logic;
SIGNAL \aux7segm1~4_combout\ : std_logic;
SIGNAL \aux7segm1~5_combout\ : std_logic;
SIGNAL \aux7segm1~6_combout\ : std_logic;
SIGNAL \aux7segm2~0_combout\ : std_logic;
SIGNAL \ALT_INV_aux7segm1~4_combout\ : std_logic;
SIGNAL \ALT_INV_aux7segm1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan4~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_x <= x;
led_entrada <= ww_led_entrada;
y <= ww_y;
aux7segm1 <= ww_aux7segm1;
aux7segm2 <= ww_aux7segm2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_aux7segm1~4_combout\ <= NOT \aux7segm1~4_combout\;
\ALT_INV_aux7segm1~0_combout\ <= NOT \aux7segm1~0_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_LessThan4~0_combout\ <= NOT \LessThan4~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: IOOBUF_X49_Y54_N9
\led_entrada[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[0]~input_o\,
	devoe => ww_devoe,
	o => \led_entrada[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\led_entrada[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[1]~input_o\,
	devoe => ww_devoe,
	o => \led_entrada[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\led_entrada[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[2]~input_o\,
	devoe => ww_devoe,
	o => \led_entrada[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\led_entrada[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x[3]~input_o\,
	devoe => ww_devoe,
	o => \led_entrada[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\y[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\y[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan4~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\y[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\y[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\aux7segm1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_aux7segm1~0_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\aux7segm1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm1~1_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\aux7segm1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm1~2_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\aux7segm1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm1~3_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\aux7segm1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_aux7segm1~4_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\aux7segm1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm1~5_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\aux7segm1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm1~6_combout\,
	devoe => ww_devoe,
	o => \aux7segm1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\aux7segm2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \aux7segm2~0_combout\,
	devoe => ww_devoe,
	o => \aux7segm2[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\aux7segm2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aux7segm2[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\aux7segm2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aux7segm2[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\aux7segm2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \aux7segm2[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\aux7segm2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \aux7segm2[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\aux7segm2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \aux7segm2[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\aux7segm2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \aux7segm2[0]~output_o\);

-- Location: IOIBUF_X54_Y54_N15
\x[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\x[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\x[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\x[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: LCCOMB_X77_Y50_N24
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\x[0]~input_o\ & (\x[2]~input_o\ & (\x[3]~input_o\ & \x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X77_Y50_N10
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\x[0]~input_o\ & ((\x[2]~input_o\ & (!\x[3]~input_o\ & !\x[1]~input_o\)) # (!\x[2]~input_o\ & ((!\x[1]~input_o\) # (!\x[3]~input_o\))))) # (!\x[0]~input_o\ & (((!\x[1]~input_o\) # (!\x[3]~input_o\)) # (!\x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X77_Y50_N28
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\x[0]~input_o\ & (!\x[2]~input_o\ & (!\x[3]~input_o\ & !\x[1]~input_o\))) # (!\x[0]~input_o\ & ((\x[2]~input_o\ & (!\x[3]~input_o\ & !\x[1]~input_o\)) # (!\x[2]~input_o\ & ((!\x[1]~input_o\) # (!\x[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X77_Y50_N14
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\x[0]~input_o\) # ((\x[2]~input_o\) # ((\x[3]~input_o\) # (\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y50_N16
\aux7segm1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~0_combout\ = (\x[0]~input_o\ & ((\x[3]~input_o\) # (\x[2]~input_o\ $ (\x[1]~input_o\)))) # (!\x[0]~input_o\ & ((\x[1]~input_o\) # (\x[2]~input_o\ $ (\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~0_combout\);

-- Location: LCCOMB_X77_Y50_N26
\aux7segm1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~1_combout\ = (\x[0]~input_o\ & ((\x[2]~input_o\ & ((\x[1]~input_o\))) # (!\x[2]~input_o\ & (!\x[3]~input_o\)))) # (!\x[0]~input_o\ & (\x[1]~input_o\ & (\x[2]~input_o\ $ (!\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~1_combout\);

-- Location: LCCOMB_X77_Y50_N12
\aux7segm1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~2_combout\ = (\x[0]~input_o\ & ((\x[2]~input_o\ $ (!\x[1]~input_o\)) # (!\x[3]~input_o\))) # (!\x[0]~input_o\ & (\x[2]~input_o\ & (\x[3]~input_o\ $ (!\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~2_combout\);

-- Location: LCCOMB_X77_Y50_N22
\aux7segm1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~3_combout\ = (\x[1]~input_o\ & ((\x[0]~input_o\ & (\x[2]~input_o\)) # (!\x[0]~input_o\ & ((\x[3]~input_o\))))) # (!\x[1]~input_o\ & (!\x[3]~input_o\ & (\x[0]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~3_combout\);

-- Location: LCCOMB_X77_Y50_N8
\aux7segm1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~4_combout\ = (\x[2]~input_o\ & (((!\x[3]~input_o\)))) # (!\x[2]~input_o\ & ((\x[0]~input_o\) # ((\x[3]~input_o\) # (!\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~4_combout\);

-- Location: LCCOMB_X77_Y50_N18
\aux7segm1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~5_combout\ = (\x[0]~input_o\ & ((\x[1]~input_o\ & ((\x[3]~input_o\))) # (!\x[1]~input_o\ & (\x[2]~input_o\)))) # (!\x[0]~input_o\ & (\x[2]~input_o\ & ((\x[3]~input_o\) # (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~5_combout\);

-- Location: LCCOMB_X77_Y50_N4
\aux7segm1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm1~6_combout\ = (\x[3]~input_o\ & (\x[1]~input_o\ & ((\x[0]~input_o\) # (\x[2]~input_o\)))) # (!\x[3]~input_o\ & (!\x[1]~input_o\ & (\x[0]~input_o\ $ (\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm1~6_combout\);

-- Location: LCCOMB_X77_Y50_N6
\aux7segm2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \aux7segm2~0_combout\ = (\x[0]~input_o\ & ((\x[2]~input_o\ & (!\x[3]~input_o\ & !\x[1]~input_o\)) # (!\x[2]~input_o\ & (\x[3]~input_o\ $ (\x[1]~input_o\))))) # (!\x[0]~input_o\ & (\x[2]~input_o\ $ (\x[3]~input_o\ $ (!\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[0]~input_o\,
	datab => \x[2]~input_o\,
	datac => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \aux7segm2~0_combout\);

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

ww_led_entrada(0) <= \led_entrada[0]~output_o\;

ww_led_entrada(1) <= \led_entrada[1]~output_o\;

ww_led_entrada(2) <= \led_entrada[2]~output_o\;

ww_led_entrada(3) <= \led_entrada[3]~output_o\;

ww_y(0) <= \y[0]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_aux7segm1(6) <= \aux7segm1[6]~output_o\;

ww_aux7segm1(5) <= \aux7segm1[5]~output_o\;

ww_aux7segm1(4) <= \aux7segm1[4]~output_o\;

ww_aux7segm1(3) <= \aux7segm1[3]~output_o\;

ww_aux7segm1(2) <= \aux7segm1[2]~output_o\;

ww_aux7segm1(1) <= \aux7segm1[1]~output_o\;

ww_aux7segm1(0) <= \aux7segm1[0]~output_o\;

ww_aux7segm2(6) <= \aux7segm2[6]~output_o\;

ww_aux7segm2(5) <= \aux7segm2[5]~output_o\;

ww_aux7segm2(4) <= \aux7segm2[4]~output_o\;

ww_aux7segm2(3) <= \aux7segm2[3]~output_o\;

ww_aux7segm2(2) <= \aux7segm2[2]~output_o\;

ww_aux7segm2(1) <= \aux7segm2[1]~output_o\;

ww_aux7segm2(0) <= \aux7segm2[0]~output_o\;
END structure;


