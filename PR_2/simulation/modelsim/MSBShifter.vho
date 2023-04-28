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

-- DATE "04/25/2023 16:51:59"

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

ENTITY 	MSBShifter IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	catodosEntrada : BUFFER std_logic_vector(0 TO 6);
	catodosSaida : BUFFER std_logic_vector(0 TO 6);
	s : BUFFER std_logic_vector(3 DOWNTO 0);
	ledEntrada : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END MSBShifter;

-- Design Ports Information
-- catodosEntrada[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosEntrada[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- catodosSaida[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledEntrada[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledEntrada[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledEntrada[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledEntrada[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MSBShifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_catodosEntrada : std_logic_vector(0 TO 6);
SIGNAL ww_catodosSaida : std_logic_vector(0 TO 6);
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledEntrada : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \catodosEntrada[6]~output_o\ : std_logic;
SIGNAL \catodosEntrada[5]~output_o\ : std_logic;
SIGNAL \catodosEntrada[4]~output_o\ : std_logic;
SIGNAL \catodosEntrada[3]~output_o\ : std_logic;
SIGNAL \catodosEntrada[2]~output_o\ : std_logic;
SIGNAL \catodosEntrada[1]~output_o\ : std_logic;
SIGNAL \catodosEntrada[0]~output_o\ : std_logic;
SIGNAL \catodosSaida[6]~output_o\ : std_logic;
SIGNAL \catodosSaida[5]~output_o\ : std_logic;
SIGNAL \catodosSaida[4]~output_o\ : std_logic;
SIGNAL \catodosSaida[3]~output_o\ : std_logic;
SIGNAL \catodosSaida[2]~output_o\ : std_logic;
SIGNAL \catodosSaida[1]~output_o\ : std_logic;
SIGNAL \catodosSaida[0]~output_o\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \ledEntrada[0]~output_o\ : std_logic;
SIGNAL \ledEntrada[1]~output_o\ : std_logic;
SIGNAL \ledEntrada[2]~output_o\ : std_logic;
SIGNAL \ledEntrada[3]~output_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \catodosEntrada~0_combout\ : std_logic;
SIGNAL \catodosEntrada~1_combout\ : std_logic;
SIGNAL \catodosEntrada~2_combout\ : std_logic;
SIGNAL \catodosEntrada~3_combout\ : std_logic;
SIGNAL \catodosEntrada~4_combout\ : std_logic;
SIGNAL \catodosEntrada~5_combout\ : std_logic;
SIGNAL \catodosEntrada~6_combout\ : std_logic;
SIGNAL \catodosSaida~0_combout\ : std_logic;
SIGNAL \catodosSaida~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \ALT_INV_catodosEntrada~4_combout\ : std_logic;
SIGNAL \ALT_INV_catodosEntrada~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
catodosEntrada <= ww_catodosEntrada;
catodosSaida <= ww_catodosSaida;
s <= ww_s;
ledEntrada <= ww_ledEntrada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
\ALT_INV_catodosEntrada~4_combout\ <= NOT \catodosEntrada~4_combout\;
\ALT_INV_catodosEntrada~0_combout\ <= NOT \catodosEntrada~0_combout\;
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

-- Location: IOOBUF_X78_Y34_N2
\catodosEntrada[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_catodosEntrada~0_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\catodosEntrada[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosEntrada~1_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\catodosEntrada[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosEntrada~2_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\catodosEntrada[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosEntrada~3_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\catodosEntrada[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_catodosEntrada~4_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\catodosEntrada[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosEntrada~5_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\catodosEntrada[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosEntrada~6_combout\,
	devoe => ww_devoe,
	o => \catodosEntrada[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\catodosSaida[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosSaida~0_combout\,
	devoe => ww_devoe,
	o => \catodosSaida[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\catodosSaida[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \catodosSaida[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\catodosSaida[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \catodosSaida[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\catodosSaida[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosSaida~1_combout\,
	devoe => ww_devoe,
	o => \catodosSaida[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\catodosSaida[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan3~0_combout\,
	devoe => ww_devoe,
	o => \catodosSaida[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\catodosSaida[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan3~0_combout\,
	devoe => ww_devoe,
	o => \catodosSaida[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\catodosSaida[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \catodosSaida[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\s[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \catodosSaida~1_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\s[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan5~0_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\s[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan3~0_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\s[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal18~0_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\ledEntrada[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[0]~input_o\,
	devoe => ww_devoe,
	o => \ledEntrada[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\ledEntrada[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[1]~input_o\,
	devoe => ww_devoe,
	o => \ledEntrada[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\ledEntrada[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[2]~input_o\,
	devoe => ww_devoe,
	o => \ledEntrada[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\ledEntrada[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a[3]~input_o\,
	devoe => ww_devoe,
	o => \ledEntrada[3]~output_o\);

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

-- Location: IOIBUF_X69_Y54_N1
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X71_Y53_N16
\catodosEntrada~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~0_combout\ = (\a[0]~input_o\ & ((\a[3]~input_o\) # (\a[1]~input_o\ $ (\a[2]~input_o\)))) # (!\a[0]~input_o\ & ((\a[1]~input_o\) # (\a[2]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~0_combout\);

-- Location: LCCOMB_X71_Y53_N26
\catodosEntrada~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~1_combout\ = (\a[1]~input_o\ & (!\a[3]~input_o\ & ((\a[0]~input_o\) # (!\a[2]~input_o\)))) # (!\a[1]~input_o\ & (\a[0]~input_o\ & (\a[2]~input_o\ $ (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~1_combout\);

-- Location: LCCOMB_X71_Y53_N20
\catodosEntrada~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~2_combout\ = (\a[1]~input_o\ & (\a[0]~input_o\ & ((!\a[3]~input_o\)))) # (!\a[1]~input_o\ & ((\a[2]~input_o\ & ((!\a[3]~input_o\))) # (!\a[2]~input_o\ & (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~2_combout\);

-- Location: LCCOMB_X71_Y53_N14
\catodosEntrada~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~3_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & (\a[2]~input_o\)) # (!\a[0]~input_o\ & (!\a[2]~input_o\ & \a[3]~input_o\)))) # (!\a[1]~input_o\ & (!\a[3]~input_o\ & (\a[0]~input_o\ $ (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~3_combout\);

-- Location: LCCOMB_X71_Y53_N24
\catodosEntrada~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~4_combout\ = (\a[2]~input_o\ & (((!\a[1]~input_o\ & \a[0]~input_o\)) # (!\a[3]~input_o\))) # (!\a[2]~input_o\ & (((\a[0]~input_o\) # (\a[3]~input_o\)) # (!\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~4_combout\);

-- Location: LCCOMB_X71_Y53_N10
\catodosEntrada~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~5_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & ((\a[3]~input_o\))) # (!\a[0]~input_o\ & (\a[2]~input_o\)))) # (!\a[1]~input_o\ & (\a[2]~input_o\ & (\a[0]~input_o\ $ (\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~5_combout\);

-- Location: LCCOMB_X71_Y53_N12
\catodosEntrada~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosEntrada~6_combout\ = (\a[2]~input_o\ & (!\a[1]~input_o\ & (\a[0]~input_o\ $ (!\a[3]~input_o\)))) # (!\a[2]~input_o\ & (\a[0]~input_o\ & (\a[1]~input_o\ $ (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosEntrada~6_combout\);

-- Location: LCCOMB_X71_Y53_N6
\catodosSaida~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosSaida~0_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[3]~input_o\)) # (!\a[0]~input_o\ & (\a[2]~input_o\ $ (\a[3]~input_o\))))) # (!\a[1]~input_o\ & (\a[0]~input_o\ $ (\a[2]~input_o\ $ (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosSaida~0_combout\);

-- Location: LCCOMB_X71_Y53_N8
\catodosSaida~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \catodosSaida~1_combout\ = (\a[1]~input_o\ & (\a[0]~input_o\ & (\a[2]~input_o\ & \a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \catodosSaida~1_combout\);

-- Location: LCCOMB_X71_Y53_N2
\LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\a[1]~input_o\ & (!\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[3]~input_o\))) # (!\a[1]~input_o\ & ((\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[3]~input_o\)) # (!\a[0]~input_o\ & ((!\a[3]~input_o\) # (!\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X71_Y53_N4
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\a[1]~input_o\ & ((\a[0]~input_o\ & (!\a[2]~input_o\ & !\a[3]~input_o\)) # (!\a[0]~input_o\ & ((!\a[3]~input_o\) # (!\a[2]~input_o\))))) # (!\a[1]~input_o\ & (((!\a[3]~input_o\) # (!\a[2]~input_o\)) # (!\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X71_Y53_N22
\Equal18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\a[1]~input_o\) # ((\a[0]~input_o\) # ((\a[2]~input_o\) # (\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Equal18~0_combout\);

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

ww_catodosEntrada(6) <= \catodosEntrada[6]~output_o\;

ww_catodosEntrada(5) <= \catodosEntrada[5]~output_o\;

ww_catodosEntrada(4) <= \catodosEntrada[4]~output_o\;

ww_catodosEntrada(3) <= \catodosEntrada[3]~output_o\;

ww_catodosEntrada(2) <= \catodosEntrada[2]~output_o\;

ww_catodosEntrada(1) <= \catodosEntrada[1]~output_o\;

ww_catodosEntrada(0) <= \catodosEntrada[0]~output_o\;

ww_catodosSaida(6) <= \catodosSaida[6]~output_o\;

ww_catodosSaida(5) <= \catodosSaida[5]~output_o\;

ww_catodosSaida(4) <= \catodosSaida[4]~output_o\;

ww_catodosSaida(3) <= \catodosSaida[3]~output_o\;

ww_catodosSaida(2) <= \catodosSaida[2]~output_o\;

ww_catodosSaida(1) <= \catodosSaida[1]~output_o\;

ww_catodosSaida(0) <= \catodosSaida[0]~output_o\;

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_ledEntrada(0) <= \ledEntrada[0]~output_o\;

ww_ledEntrada(1) <= \ledEntrada[1]~output_o\;

ww_ledEntrada(2) <= \ledEntrada[2]~output_o\;

ww_ledEntrada(3) <= \ledEntrada[3]~output_o\;
END structure;


