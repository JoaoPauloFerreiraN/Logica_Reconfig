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

-- DATE "05/25/2023 15:19:30"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pisc_led IS
    PORT (
	mclk : IN std_logic;
	reset : IN std_logic;
	clk1 : OUT std_logic;
	clk2 : OUT std_logic
	);
END pisc_led;

-- Design Ports Information
-- clk1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pisc_led IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_clk2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk1~output_o\ : std_logic;
SIGNAL \clk2~output_o\ : std_logic;
SIGNAL \mclk~input_o\ : std_logic;
SIGNAL \mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \map_1|v_clk~q\ : std_logic;
SIGNAL \map_1|Add0~0_combout\ : std_logic;
SIGNAL \map_1|i~13_combout\ : std_logic;
SIGNAL \map_1|Add0~1\ : std_logic;
SIGNAL \map_1|Add0~2_combout\ : std_logic;
SIGNAL \map_1|Add0~3\ : std_logic;
SIGNAL \map_1|Add0~4_combout\ : std_logic;
SIGNAL \map_1|Add0~5\ : std_logic;
SIGNAL \map_1|Add0~6_combout\ : std_logic;
SIGNAL \map_1|Add0~7\ : std_logic;
SIGNAL \map_1|Add0~8_combout\ : std_logic;
SIGNAL \map_1|Add0~9\ : std_logic;
SIGNAL \map_1|Add0~10_combout\ : std_logic;
SIGNAL \map_1|Add0~11\ : std_logic;
SIGNAL \map_1|Add0~12_combout\ : std_logic;
SIGNAL \map_1|i~12_combout\ : std_logic;
SIGNAL \map_1|Add0~13\ : std_logic;
SIGNAL \map_1|Add0~14_combout\ : std_logic;
SIGNAL \map_1|Add0~15\ : std_logic;
SIGNAL \map_1|Add0~16_combout\ : std_logic;
SIGNAL \map_1|Add0~17\ : std_logic;
SIGNAL \map_1|Add0~18_combout\ : std_logic;
SIGNAL \map_1|Add0~19\ : std_logic;
SIGNAL \map_1|Add0~20_combout\ : std_logic;
SIGNAL \map_1|Add0~21\ : std_logic;
SIGNAL \map_1|Add0~22_combout\ : std_logic;
SIGNAL \map_1|i~11_combout\ : std_logic;
SIGNAL \map_1|Add0~23\ : std_logic;
SIGNAL \map_1|Add0~24_combout\ : std_logic;
SIGNAL \map_1|i~10_combout\ : std_logic;
SIGNAL \map_1|Add0~25\ : std_logic;
SIGNAL \map_1|Add0~26_combout\ : std_logic;
SIGNAL \map_1|i~9_combout\ : std_logic;
SIGNAL \map_1|Add0~27\ : std_logic;
SIGNAL \map_1|Add0~28_combout\ : std_logic;
SIGNAL \map_1|i~8_combout\ : std_logic;
SIGNAL \map_1|Add0~29\ : std_logic;
SIGNAL \map_1|Add0~30_combout\ : std_logic;
SIGNAL \map_1|Add0~31\ : std_logic;
SIGNAL \map_1|Add0~32_combout\ : std_logic;
SIGNAL \map_1|i~7_combout\ : std_logic;
SIGNAL \map_1|Add0~33\ : std_logic;
SIGNAL \map_1|Add0~34_combout\ : std_logic;
SIGNAL \map_1|Add0~35\ : std_logic;
SIGNAL \map_1|Add0~36_combout\ : std_logic;
SIGNAL \map_1|i~6_combout\ : std_logic;
SIGNAL \map_1|Add0~37\ : std_logic;
SIGNAL \map_1|Add0~38_combout\ : std_logic;
SIGNAL \map_1|i~5_combout\ : std_logic;
SIGNAL \map_1|Add0~39\ : std_logic;
SIGNAL \map_1|Add0~40_combout\ : std_logic;
SIGNAL \map_1|i~4_combout\ : std_logic;
SIGNAL \map_1|Add0~41\ : std_logic;
SIGNAL \map_1|Add0~42_combout\ : std_logic;
SIGNAL \map_1|i~3_combout\ : std_logic;
SIGNAL \map_1|Add0~43\ : std_logic;
SIGNAL \map_1|Add0~44_combout\ : std_logic;
SIGNAL \map_1|i~2_combout\ : std_logic;
SIGNAL \map_1|Add0~45\ : std_logic;
SIGNAL \map_1|Add0~46_combout\ : std_logic;
SIGNAL \map_1|Add0~47\ : std_logic;
SIGNAL \map_1|Add0~49\ : std_logic;
SIGNAL \map_1|Add0~50_combout\ : std_logic;
SIGNAL \map_1|Equal0~0_combout\ : std_logic;
SIGNAL \map_1|Equal0~1_combout\ : std_logic;
SIGNAL \map_1|Equal0~2_combout\ : std_logic;
SIGNAL \map_1|Equal0~3_combout\ : std_logic;
SIGNAL \map_1|Equal0~4_combout\ : std_logic;
SIGNAL \map_1|Equal0~5_combout\ : std_logic;
SIGNAL \map_1|Equal0~6_combout\ : std_logic;
SIGNAL \map_1|Equal0~7_combout\ : std_logic;
SIGNAL \map_1|i~14_combout\ : std_logic;
SIGNAL \map_1|Add0~48_combout\ : std_logic;
SIGNAL \map_1|Equal0~8_combout\ : std_logic;
SIGNAL \map_1|v_clk~0_combout\ : std_logic;
SIGNAL \map_1|clk~feeder_combout\ : std_logic;
SIGNAL \map_1|clk~q\ : std_logic;
SIGNAL \map_2|v_clk~q\ : std_logic;
SIGNAL \map_2|Add0~0_combout\ : std_logic;
SIGNAL \map_2|i~13_combout\ : std_logic;
SIGNAL \map_2|Add0~1\ : std_logic;
SIGNAL \map_2|Add0~2_combout\ : std_logic;
SIGNAL \map_2|Add0~3\ : std_logic;
SIGNAL \map_2|Add0~4_combout\ : std_logic;
SIGNAL \map_2|Add0~5\ : std_logic;
SIGNAL \map_2|Add0~6_combout\ : std_logic;
SIGNAL \map_2|Add0~7\ : std_logic;
SIGNAL \map_2|Add0~8_combout\ : std_logic;
SIGNAL \map_2|Add0~9\ : std_logic;
SIGNAL \map_2|Add0~10_combout\ : std_logic;
SIGNAL \map_2|i~12_combout\ : std_logic;
SIGNAL \map_2|Add0~11\ : std_logic;
SIGNAL \map_2|Add0~12_combout\ : std_logic;
SIGNAL \map_2|Add0~13\ : std_logic;
SIGNAL \map_2|Add0~14_combout\ : std_logic;
SIGNAL \map_2|Add0~15\ : std_logic;
SIGNAL \map_2|Add0~16_combout\ : std_logic;
SIGNAL \map_2|Add0~17\ : std_logic;
SIGNAL \map_2|Add0~18_combout\ : std_logic;
SIGNAL \map_2|Add0~19\ : std_logic;
SIGNAL \map_2|Add0~20_combout\ : std_logic;
SIGNAL \map_2|i~11_combout\ : std_logic;
SIGNAL \map_2|Add0~21\ : std_logic;
SIGNAL \map_2|Add0~22_combout\ : std_logic;
SIGNAL \map_2|i~10_combout\ : std_logic;
SIGNAL \map_2|Add0~23\ : std_logic;
SIGNAL \map_2|Add0~24_combout\ : std_logic;
SIGNAL \map_2|i~9_combout\ : std_logic;
SIGNAL \map_2|Add0~25\ : std_logic;
SIGNAL \map_2|Add0~26_combout\ : std_logic;
SIGNAL \map_2|i~8_combout\ : std_logic;
SIGNAL \map_2|Add0~27\ : std_logic;
SIGNAL \map_2|Add0~28_combout\ : std_logic;
SIGNAL \map_2|Add0~29\ : std_logic;
SIGNAL \map_2|Add0~30_combout\ : std_logic;
SIGNAL \map_2|i~7_combout\ : std_logic;
SIGNAL \map_2|Add0~31\ : std_logic;
SIGNAL \map_2|Add0~32_combout\ : std_logic;
SIGNAL \map_2|Add0~33\ : std_logic;
SIGNAL \map_2|Add0~34_combout\ : std_logic;
SIGNAL \map_2|i~6_combout\ : std_logic;
SIGNAL \map_2|Add0~35\ : std_logic;
SIGNAL \map_2|Add0~36_combout\ : std_logic;
SIGNAL \map_2|i~5_combout\ : std_logic;
SIGNAL \map_2|Add0~37\ : std_logic;
SIGNAL \map_2|Add0~38_combout\ : std_logic;
SIGNAL \map_2|i~4_combout\ : std_logic;
SIGNAL \map_2|Add0~39\ : std_logic;
SIGNAL \map_2|Add0~40_combout\ : std_logic;
SIGNAL \map_2|i~3_combout\ : std_logic;
SIGNAL \map_2|Add0~41\ : std_logic;
SIGNAL \map_2|Add0~42_combout\ : std_logic;
SIGNAL \map_2|i~2_combout\ : std_logic;
SIGNAL \map_2|Add0~43\ : std_logic;
SIGNAL \map_2|Add0~44_combout\ : std_logic;
SIGNAL \map_2|Add0~45\ : std_logic;
SIGNAL \map_2|Add0~46_combout\ : std_logic;
SIGNAL \map_2|Equal0~0_combout\ : std_logic;
SIGNAL \map_2|Equal0~1_combout\ : std_logic;
SIGNAL \map_2|Equal0~2_combout\ : std_logic;
SIGNAL \map_2|Equal0~3_combout\ : std_logic;
SIGNAL \map_2|Equal0~4_combout\ : std_logic;
SIGNAL \map_2|Equal0~5_combout\ : std_logic;
SIGNAL \map_2|Equal0~6_combout\ : std_logic;
SIGNAL \map_2|Equal0~7_combout\ : std_logic;
SIGNAL \map_2|i~14_combout\ : std_logic;
SIGNAL \map_2|Add0~47\ : std_logic;
SIGNAL \map_2|Add0~48_combout\ : std_logic;
SIGNAL \map_2|Add0~49\ : std_logic;
SIGNAL \map_2|Add0~50_combout\ : std_logic;
SIGNAL \map_2|Equal0~8_combout\ : std_logic;
SIGNAL \map_2|v_clk~0_combout\ : std_logic;
SIGNAL \map_2|clk~feeder_combout\ : std_logic;
SIGNAL \map_2|clk~q\ : std_logic;
SIGNAL \map_1|i\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \map_2|i\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_mclk <= mclk;
ww_reset <= reset;
clk1 <= ww_clk1;
clk2 <= ww_clk2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mclk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X46_Y54_N23
\clk1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_1|clk~q\,
	devoe => ww_devoe,
	o => \clk1~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\clk2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \map_2|clk~q\,
	devoe => ww_devoe,
	o => \clk2~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\mclk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk,
	o => \mclk~input_o\);

-- Location: CLKCTRL_G19
\mclk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk~inputclkctrl_outclk\);

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

-- Location: FF_X50_Y53_N19
\map_1|v_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|v_clk~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|v_clk~q\);

-- Location: FF_X51_Y52_N21
\map_1|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(23));

-- Location: LCCOMB_X51_Y53_N6
\map_1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~0_combout\ = \map_1|i\(0) $ (GND)
-- \map_1|Add0~1\ = CARRY(!\map_1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(0),
	datad => VCC,
	combout => \map_1|Add0~0_combout\,
	cout => \map_1|Add0~1\);

-- Location: LCCOMB_X50_Y53_N14
\map_1|i~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~13_combout\ = (!\map_1|Add0~0_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_1|Add0~0_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~13_combout\);

-- Location: FF_X50_Y53_N15
\map_1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(0));

-- Location: LCCOMB_X51_Y53_N8
\map_1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~2_combout\ = (\map_1|i\(1) & (!\map_1|Add0~1\)) # (!\map_1|i\(1) & ((\map_1|Add0~1\) # (GND)))
-- \map_1|Add0~3\ = CARRY((!\map_1|Add0~1\) # (!\map_1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(1),
	datad => VCC,
	cin => \map_1|Add0~1\,
	combout => \map_1|Add0~2_combout\,
	cout => \map_1|Add0~3\);

-- Location: FF_X51_Y53_N9
\map_1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(1));

-- Location: LCCOMB_X51_Y53_N10
\map_1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~4_combout\ = (\map_1|i\(2) & (\map_1|Add0~3\ $ (GND))) # (!\map_1|i\(2) & (!\map_1|Add0~3\ & VCC))
-- \map_1|Add0~5\ = CARRY((\map_1|i\(2) & !\map_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(2),
	datad => VCC,
	cin => \map_1|Add0~3\,
	combout => \map_1|Add0~4_combout\,
	cout => \map_1|Add0~5\);

-- Location: FF_X51_Y53_N11
\map_1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(2));

-- Location: LCCOMB_X51_Y53_N12
\map_1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~6_combout\ = (\map_1|i\(3) & (!\map_1|Add0~5\)) # (!\map_1|i\(3) & ((\map_1|Add0~5\) # (GND)))
-- \map_1|Add0~7\ = CARRY((!\map_1|Add0~5\) # (!\map_1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(3),
	datad => VCC,
	cin => \map_1|Add0~5\,
	combout => \map_1|Add0~6_combout\,
	cout => \map_1|Add0~7\);

-- Location: FF_X51_Y53_N13
\map_1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(3));

-- Location: LCCOMB_X51_Y53_N14
\map_1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~8_combout\ = (\map_1|i\(4) & (\map_1|Add0~7\ $ (GND))) # (!\map_1|i\(4) & (!\map_1|Add0~7\ & VCC))
-- \map_1|Add0~9\ = CARRY((\map_1|i\(4) & !\map_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(4),
	datad => VCC,
	cin => \map_1|Add0~7\,
	combout => \map_1|Add0~8_combout\,
	cout => \map_1|Add0~9\);

-- Location: FF_X51_Y53_N15
\map_1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(4));

-- Location: LCCOMB_X51_Y53_N16
\map_1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~10_combout\ = (\map_1|i\(5) & (!\map_1|Add0~9\)) # (!\map_1|i\(5) & ((\map_1|Add0~9\) # (GND)))
-- \map_1|Add0~11\ = CARRY((!\map_1|Add0~9\) # (!\map_1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(5),
	datad => VCC,
	cin => \map_1|Add0~9\,
	combout => \map_1|Add0~10_combout\,
	cout => \map_1|Add0~11\);

-- Location: FF_X51_Y53_N17
\map_1|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(5));

-- Location: LCCOMB_X51_Y53_N18
\map_1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~12_combout\ = (\map_1|i\(6) & (\map_1|Add0~11\ $ (GND))) # (!\map_1|i\(6) & (!\map_1|Add0~11\ & VCC))
-- \map_1|Add0~13\ = CARRY((\map_1|i\(6) & !\map_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(6),
	datad => VCC,
	cin => \map_1|Add0~11\,
	combout => \map_1|Add0~12_combout\,
	cout => \map_1|Add0~13\);

-- Location: LCCOMB_X50_Y53_N16
\map_1|i~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~12_combout\ = (\map_1|Add0~12_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_1|Add0~12_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~12_combout\);

-- Location: FF_X50_Y53_N17
\map_1|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(6));

-- Location: LCCOMB_X51_Y53_N20
\map_1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~14_combout\ = (\map_1|i\(7) & (!\map_1|Add0~13\)) # (!\map_1|i\(7) & ((\map_1|Add0~13\) # (GND)))
-- \map_1|Add0~15\ = CARRY((!\map_1|Add0~13\) # (!\map_1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(7),
	datad => VCC,
	cin => \map_1|Add0~13\,
	combout => \map_1|Add0~14_combout\,
	cout => \map_1|Add0~15\);

-- Location: FF_X51_Y53_N21
\map_1|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(7));

-- Location: LCCOMB_X51_Y53_N22
\map_1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~16_combout\ = (\map_1|i\(8) & (\map_1|Add0~15\ $ (GND))) # (!\map_1|i\(8) & (!\map_1|Add0~15\ & VCC))
-- \map_1|Add0~17\ = CARRY((\map_1|i\(8) & !\map_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(8),
	datad => VCC,
	cin => \map_1|Add0~15\,
	combout => \map_1|Add0~16_combout\,
	cout => \map_1|Add0~17\);

-- Location: FF_X51_Y53_N23
\map_1|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(8));

-- Location: LCCOMB_X51_Y53_N24
\map_1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~18_combout\ = (\map_1|i\(9) & (!\map_1|Add0~17\)) # (!\map_1|i\(9) & ((\map_1|Add0~17\) # (GND)))
-- \map_1|Add0~19\ = CARRY((!\map_1|Add0~17\) # (!\map_1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(9),
	datad => VCC,
	cin => \map_1|Add0~17\,
	combout => \map_1|Add0~18_combout\,
	cout => \map_1|Add0~19\);

-- Location: FF_X51_Y53_N25
\map_1|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(9));

-- Location: LCCOMB_X51_Y53_N26
\map_1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~20_combout\ = (\map_1|i\(10) & (\map_1|Add0~19\ $ (GND))) # (!\map_1|i\(10) & (!\map_1|Add0~19\ & VCC))
-- \map_1|Add0~21\ = CARRY((\map_1|i\(10) & !\map_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(10),
	datad => VCC,
	cin => \map_1|Add0~19\,
	combout => \map_1|Add0~20_combout\,
	cout => \map_1|Add0~21\);

-- Location: FF_X51_Y53_N27
\map_1|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(10));

-- Location: LCCOMB_X51_Y53_N28
\map_1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~22_combout\ = (\map_1|i\(11) & (!\map_1|Add0~21\)) # (!\map_1|i\(11) & ((\map_1|Add0~21\) # (GND)))
-- \map_1|Add0~23\ = CARRY((!\map_1|Add0~21\) # (!\map_1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(11),
	datad => VCC,
	cin => \map_1|Add0~21\,
	combout => \map_1|Add0~22_combout\,
	cout => \map_1|Add0~23\);

-- Location: LCCOMB_X51_Y53_N4
\map_1|i~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~11_combout\ = (\map_1|Add0~22_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_1|Add0~22_combout\,
	datac => \map_1|Equal0~8_combout\,
	combout => \map_1|i~11_combout\);

-- Location: FF_X51_Y53_N5
\map_1|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(11));

-- Location: LCCOMB_X51_Y53_N30
\map_1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~24_combout\ = (\map_1|i\(12) & (\map_1|Add0~23\ $ (GND))) # (!\map_1|i\(12) & (!\map_1|Add0~23\ & VCC))
-- \map_1|Add0~25\ = CARRY((\map_1|i\(12) & !\map_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(12),
	datad => VCC,
	cin => \map_1|Add0~23\,
	combout => \map_1|Add0~24_combout\,
	cout => \map_1|Add0~25\);

-- Location: LCCOMB_X50_Y53_N26
\map_1|i~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~10_combout\ = (\map_1|Add0~24_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_1|Add0~24_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~10_combout\);

-- Location: FF_X50_Y53_N27
\map_1|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(12));

-- Location: LCCOMB_X51_Y52_N0
\map_1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~26_combout\ = (\map_1|i\(13) & (!\map_1|Add0~25\)) # (!\map_1|i\(13) & ((\map_1|Add0~25\) # (GND)))
-- \map_1|Add0~27\ = CARRY((!\map_1|Add0~25\) # (!\map_1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(13),
	datad => VCC,
	cin => \map_1|Add0~25\,
	combout => \map_1|Add0~26_combout\,
	cout => \map_1|Add0~27\);

-- Location: LCCOMB_X51_Y52_N26
\map_1|i~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~9_combout\ = (\map_1|Add0~26_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_1|Add0~26_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~9_combout\);

-- Location: FF_X51_Y52_N27
\map_1|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(13));

-- Location: LCCOMB_X51_Y52_N2
\map_1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~28_combout\ = (\map_1|i\(14) & (\map_1|Add0~27\ $ (GND))) # (!\map_1|i\(14) & (!\map_1|Add0~27\ & VCC))
-- \map_1|Add0~29\ = CARRY((\map_1|i\(14) & !\map_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(14),
	datad => VCC,
	cin => \map_1|Add0~27\,
	combout => \map_1|Add0~28_combout\,
	cout => \map_1|Add0~29\);

-- Location: LCCOMB_X51_Y52_N28
\map_1|i~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~8_combout\ = (\map_1|Add0~28_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_1|Add0~28_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~8_combout\);

-- Location: FF_X51_Y52_N29
\map_1|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(14));

-- Location: LCCOMB_X51_Y52_N4
\map_1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~30_combout\ = (\map_1|i\(15) & (!\map_1|Add0~29\)) # (!\map_1|i\(15) & ((\map_1|Add0~29\) # (GND)))
-- \map_1|Add0~31\ = CARRY((!\map_1|Add0~29\) # (!\map_1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(15),
	datad => VCC,
	cin => \map_1|Add0~29\,
	combout => \map_1|Add0~30_combout\,
	cout => \map_1|Add0~31\);

-- Location: FF_X51_Y52_N5
\map_1|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(15));

-- Location: LCCOMB_X51_Y52_N6
\map_1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~32_combout\ = (\map_1|i\(16) & (\map_1|Add0~31\ $ (GND))) # (!\map_1|i\(16) & (!\map_1|Add0~31\ & VCC))
-- \map_1|Add0~33\ = CARRY((\map_1|i\(16) & !\map_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(16),
	datad => VCC,
	cin => \map_1|Add0~31\,
	combout => \map_1|Add0~32_combout\,
	cout => \map_1|Add0~33\);

-- Location: LCCOMB_X50_Y53_N8
\map_1|i~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~7_combout\ = (\map_1|Add0~32_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~32_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~7_combout\);

-- Location: FF_X50_Y53_N9
\map_1|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(16));

-- Location: LCCOMB_X51_Y52_N8
\map_1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~34_combout\ = (\map_1|i\(17) & (!\map_1|Add0~33\)) # (!\map_1|i\(17) & ((\map_1|Add0~33\) # (GND)))
-- \map_1|Add0~35\ = CARRY((!\map_1|Add0~33\) # (!\map_1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(17),
	datad => VCC,
	cin => \map_1|Add0~33\,
	combout => \map_1|Add0~34_combout\,
	cout => \map_1|Add0~35\);

-- Location: FF_X51_Y52_N9
\map_1|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(17));

-- Location: LCCOMB_X51_Y52_N10
\map_1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~36_combout\ = (\map_1|i\(18) & (\map_1|Add0~35\ $ (GND))) # (!\map_1|i\(18) & (!\map_1|Add0~35\ & VCC))
-- \map_1|Add0~37\ = CARRY((\map_1|i\(18) & !\map_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(18),
	datad => VCC,
	cin => \map_1|Add0~35\,
	combout => \map_1|Add0~36_combout\,
	cout => \map_1|Add0~37\);

-- Location: LCCOMB_X51_Y52_N30
\map_1|i~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~6_combout\ = (\map_1|Add0~36_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~36_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~6_combout\);

-- Location: FF_X51_Y52_N31
\map_1|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(18));

-- Location: LCCOMB_X51_Y52_N12
\map_1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~38_combout\ = (\map_1|i\(19) & (!\map_1|Add0~37\)) # (!\map_1|i\(19) & ((\map_1|Add0~37\) # (GND)))
-- \map_1|Add0~39\ = CARRY((!\map_1|Add0~37\) # (!\map_1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(19),
	datad => VCC,
	cin => \map_1|Add0~37\,
	combout => \map_1|Add0~38_combout\,
	cout => \map_1|Add0~39\);

-- Location: LCCOMB_X50_Y53_N30
\map_1|i~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~5_combout\ = (\map_1|Add0~38_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_1|Add0~38_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~5_combout\);

-- Location: FF_X50_Y53_N31
\map_1|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(19));

-- Location: LCCOMB_X51_Y52_N14
\map_1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~40_combout\ = (\map_1|i\(20) & (\map_1|Add0~39\ $ (GND))) # (!\map_1|i\(20) & (!\map_1|Add0~39\ & VCC))
-- \map_1|Add0~41\ = CARRY((\map_1|i\(20) & !\map_1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|i\(20),
	datad => VCC,
	cin => \map_1|Add0~39\,
	combout => \map_1|Add0~40_combout\,
	cout => \map_1|Add0~41\);

-- Location: LCCOMB_X50_Y53_N24
\map_1|i~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~4_combout\ = (\map_1|Add0~40_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~40_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~4_combout\);

-- Location: FF_X50_Y53_N25
\map_1|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(20));

-- Location: LCCOMB_X51_Y52_N16
\map_1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~42_combout\ = (\map_1|i\(21) & (!\map_1|Add0~41\)) # (!\map_1|i\(21) & ((\map_1|Add0~41\) # (GND)))
-- \map_1|Add0~43\ = CARRY((!\map_1|Add0~41\) # (!\map_1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(21),
	datad => VCC,
	cin => \map_1|Add0~41\,
	combout => \map_1|Add0~42_combout\,
	cout => \map_1|Add0~43\);

-- Location: LCCOMB_X49_Y53_N4
\map_1|i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~3_combout\ = (\map_1|Add0~42_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~42_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~3_combout\);

-- Location: FF_X49_Y53_N5
\map_1|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(21));

-- Location: LCCOMB_X51_Y52_N18
\map_1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~44_combout\ = (\map_1|i\(22) & (\map_1|Add0~43\ $ (GND))) # (!\map_1|i\(22) & (!\map_1|Add0~43\ & VCC))
-- \map_1|Add0~45\ = CARRY((\map_1|i\(22) & !\map_1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(22),
	datad => VCC,
	cin => \map_1|Add0~43\,
	combout => \map_1|Add0~44_combout\,
	cout => \map_1|Add0~45\);

-- Location: LCCOMB_X50_Y53_N22
\map_1|i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~2_combout\ = (\map_1|Add0~44_combout\ & !\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~44_combout\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|i~2_combout\);

-- Location: FF_X50_Y53_N23
\map_1|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(22));

-- Location: LCCOMB_X51_Y52_N20
\map_1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~46_combout\ = (\map_1|i\(23) & (!\map_1|Add0~45\)) # (!\map_1|i\(23) & ((\map_1|Add0~45\) # (GND)))
-- \map_1|Add0~47\ = CARRY((!\map_1|Add0~45\) # (!\map_1|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(23),
	datad => VCC,
	cin => \map_1|Add0~45\,
	combout => \map_1|Add0~46_combout\,
	cout => \map_1|Add0~47\);

-- Location: FF_X51_Y52_N25
\map_1|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|Add0~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(25));

-- Location: LCCOMB_X51_Y52_N22
\map_1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~48_combout\ = (\map_1|i\(24) & (\map_1|Add0~47\ $ (GND))) # (!\map_1|i\(24) & (!\map_1|Add0~47\ & VCC))
-- \map_1|Add0~49\ = CARRY((\map_1|i\(24) & !\map_1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_1|i\(24),
	datad => VCC,
	cin => \map_1|Add0~47\,
	combout => \map_1|Add0~48_combout\,
	cout => \map_1|Add0~49\);

-- Location: LCCOMB_X51_Y52_N24
\map_1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Add0~50_combout\ = \map_1|Add0~49\ $ (\map_1|i\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \map_1|i\(25),
	cin => \map_1|Add0~49\,
	combout => \map_1|Add0~50_combout\);

-- Location: LCCOMB_X51_Y53_N2
\map_1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~0_combout\ = (!\map_1|Add0~0_combout\ & (!\map_1|Add0~4_combout\ & (!\map_1|Add0~6_combout\ & !\map_1|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~0_combout\,
	datab => \map_1|Add0~4_combout\,
	datac => \map_1|Add0~6_combout\,
	datad => \map_1|Add0~2_combout\,
	combout => \map_1|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\map_1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~1_combout\ = (!\map_1|Add0~8_combout\ & (!\map_1|Add0~14_combout\ & (!\map_1|Add0~10_combout\ & \map_1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~8_combout\,
	datab => \map_1|Add0~14_combout\,
	datac => \map_1|Add0~10_combout\,
	datad => \map_1|Add0~12_combout\,
	combout => \map_1|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y53_N0
\map_1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~2_combout\ = (!\map_1|Add0~16_combout\ & (!\map_1|Add0~18_combout\ & (!\map_1|Add0~20_combout\ & \map_1|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~16_combout\,
	datab => \map_1|Add0~18_combout\,
	datac => \map_1|Add0~20_combout\,
	datad => \map_1|Add0~22_combout\,
	combout => \map_1|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y53_N28
\map_1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~3_combout\ = (!\map_1|Add0~30_combout\ & (\map_1|Add0~24_combout\ & (\map_1|Add0~26_combout\ & \map_1|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~30_combout\,
	datab => \map_1|Add0~24_combout\,
	datac => \map_1|Add0~26_combout\,
	datad => \map_1|Add0~28_combout\,
	combout => \map_1|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y53_N2
\map_1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~4_combout\ = (\map_1|Equal0~0_combout\ & (\map_1|Equal0~1_combout\ & (\map_1|Equal0~2_combout\ & \map_1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Equal0~0_combout\,
	datab => \map_1|Equal0~1_combout\,
	datac => \map_1|Equal0~2_combout\,
	datad => \map_1|Equal0~3_combout\,
	combout => \map_1|Equal0~4_combout\);

-- Location: LCCOMB_X50_Y53_N0
\map_1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~5_combout\ = (\map_1|Add0~38_combout\ & (\map_1|Add0~36_combout\ & (!\map_1|Add0~34_combout\ & \map_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~38_combout\,
	datab => \map_1|Add0~36_combout\,
	datac => \map_1|Add0~34_combout\,
	datad => \map_1|Equal0~4_combout\,
	combout => \map_1|Equal0~5_combout\);

-- Location: LCCOMB_X50_Y53_N10
\map_1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~6_combout\ = (\map_1|Add0~40_combout\ & (\map_1|Add0~32_combout\ & (\map_1|Add0~42_combout\ & \map_1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~40_combout\,
	datab => \map_1|Add0~32_combout\,
	datac => \map_1|Add0~42_combout\,
	datad => \map_1|Equal0~5_combout\,
	combout => \map_1|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y53_N20
\map_1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~7_combout\ = (\map_1|Add0~44_combout\ & \map_1|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~44_combout\,
	datad => \map_1|Equal0~6_combout\,
	combout => \map_1|Equal0~7_combout\);

-- Location: LCCOMB_X50_Y53_N4
\map_1|i~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|i~14_combout\ = (\map_1|Add0~48_combout\ & ((\map_1|Add0~46_combout\) # ((\map_1|Add0~50_combout\) # (!\map_1|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~46_combout\,
	datab => \map_1|Add0~48_combout\,
	datac => \map_1|Add0~50_combout\,
	datad => \map_1|Equal0~7_combout\,
	combout => \map_1|i~14_combout\);

-- Location: FF_X50_Y53_N5
\map_1|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|i~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|i\(24));

-- Location: LCCOMB_X50_Y53_N6
\map_1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|Equal0~8_combout\ = (!\map_1|Add0~46_combout\ & (\map_1|Add0~48_combout\ & (!\map_1|Add0~50_combout\ & \map_1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_1|Add0~46_combout\,
	datab => \map_1|Add0~48_combout\,
	datac => \map_1|Add0~50_combout\,
	datad => \map_1|Equal0~7_combout\,
	combout => \map_1|Equal0~8_combout\);

-- Location: LCCOMB_X50_Y53_N18
\map_1|v_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|v_clk~0_combout\ = \map_1|v_clk~q\ $ (\map_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_1|v_clk~q\,
	datad => \map_1|Equal0~8_combout\,
	combout => \map_1|v_clk~0_combout\);

-- Location: LCCOMB_X50_Y53_N12
\map_1|clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_1|clk~feeder_combout\ = \map_1|v_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \map_1|v_clk~0_combout\,
	combout => \map_1|clk~feeder_combout\);

-- Location: FF_X50_Y53_N13
\map_1|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_1|clk~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_1|clk~q\);

-- Location: FF_X51_Y48_N19
\map_2|v_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|v_clk~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|v_clk~q\);

-- Location: FF_X50_Y47_N25
\map_2|i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~50_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(25));

-- Location: LCCOMB_X50_Y48_N6
\map_2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~0_combout\ = \map_2|i\(0) $ (GND)
-- \map_2|Add0~1\ = CARRY(!\map_2|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(0),
	datad => VCC,
	combout => \map_2|Add0~0_combout\,
	cout => \map_2|Add0~1\);

-- Location: LCCOMB_X50_Y48_N2
\map_2|i~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~13_combout\ = (!\map_2|Add0~0_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~0_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~13_combout\);

-- Location: FF_X50_Y48_N3
\map_2|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~13_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(0));

-- Location: LCCOMB_X50_Y48_N8
\map_2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~2_combout\ = (\map_2|i\(1) & (!\map_2|Add0~1\)) # (!\map_2|i\(1) & ((\map_2|Add0~1\) # (GND)))
-- \map_2|Add0~3\ = CARRY((!\map_2|Add0~1\) # (!\map_2|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(1),
	datad => VCC,
	cin => \map_2|Add0~1\,
	combout => \map_2|Add0~2_combout\,
	cout => \map_2|Add0~3\);

-- Location: FF_X50_Y48_N9
\map_2|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(1));

-- Location: LCCOMB_X50_Y48_N10
\map_2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~4_combout\ = (\map_2|i\(2) & (\map_2|Add0~3\ $ (GND))) # (!\map_2|i\(2) & (!\map_2|Add0~3\ & VCC))
-- \map_2|Add0~5\ = CARRY((\map_2|i\(2) & !\map_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(2),
	datad => VCC,
	cin => \map_2|Add0~3\,
	combout => \map_2|Add0~4_combout\,
	cout => \map_2|Add0~5\);

-- Location: FF_X50_Y48_N11
\map_2|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(2));

-- Location: LCCOMB_X50_Y48_N12
\map_2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~6_combout\ = (\map_2|i\(3) & (!\map_2|Add0~5\)) # (!\map_2|i\(3) & ((\map_2|Add0~5\) # (GND)))
-- \map_2|Add0~7\ = CARRY((!\map_2|Add0~5\) # (!\map_2|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(3),
	datad => VCC,
	cin => \map_2|Add0~5\,
	combout => \map_2|Add0~6_combout\,
	cout => \map_2|Add0~7\);

-- Location: FF_X50_Y48_N13
\map_2|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(3));

-- Location: LCCOMB_X50_Y48_N14
\map_2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~8_combout\ = (\map_2|i\(4) & (\map_2|Add0~7\ $ (GND))) # (!\map_2|i\(4) & (!\map_2|Add0~7\ & VCC))
-- \map_2|Add0~9\ = CARRY((\map_2|i\(4) & !\map_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(4),
	datad => VCC,
	cin => \map_2|Add0~7\,
	combout => \map_2|Add0~8_combout\,
	cout => \map_2|Add0~9\);

-- Location: FF_X50_Y48_N15
\map_2|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(4));

-- Location: LCCOMB_X50_Y48_N16
\map_2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~10_combout\ = (\map_2|i\(5) & (!\map_2|Add0~9\)) # (!\map_2|i\(5) & ((\map_2|Add0~9\) # (GND)))
-- \map_2|Add0~11\ = CARRY((!\map_2|Add0~9\) # (!\map_2|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(5),
	datad => VCC,
	cin => \map_2|Add0~9\,
	combout => \map_2|Add0~10_combout\,
	cout => \map_2|Add0~11\);

-- Location: LCCOMB_X51_Y48_N30
\map_2|i~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~12_combout\ = (\map_2|Add0~10_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~10_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~12_combout\);

-- Location: FF_X51_Y48_N31
\map_2|i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(5));

-- Location: LCCOMB_X50_Y48_N18
\map_2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~12_combout\ = (\map_2|i\(6) & (\map_2|Add0~11\ $ (GND))) # (!\map_2|i\(6) & (!\map_2|Add0~11\ & VCC))
-- \map_2|Add0~13\ = CARRY((\map_2|i\(6) & !\map_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(6),
	datad => VCC,
	cin => \map_2|Add0~11\,
	combout => \map_2|Add0~12_combout\,
	cout => \map_2|Add0~13\);

-- Location: FF_X50_Y48_N19
\map_2|i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(6));

-- Location: LCCOMB_X50_Y48_N20
\map_2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~14_combout\ = (\map_2|i\(7) & (!\map_2|Add0~13\)) # (!\map_2|i\(7) & ((\map_2|Add0~13\) # (GND)))
-- \map_2|Add0~15\ = CARRY((!\map_2|Add0~13\) # (!\map_2|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(7),
	datad => VCC,
	cin => \map_2|Add0~13\,
	combout => \map_2|Add0~14_combout\,
	cout => \map_2|Add0~15\);

-- Location: FF_X50_Y48_N21
\map_2|i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(7));

-- Location: LCCOMB_X50_Y48_N22
\map_2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~16_combout\ = (\map_2|i\(8) & (\map_2|Add0~15\ $ (GND))) # (!\map_2|i\(8) & (!\map_2|Add0~15\ & VCC))
-- \map_2|Add0~17\ = CARRY((\map_2|i\(8) & !\map_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(8),
	datad => VCC,
	cin => \map_2|Add0~15\,
	combout => \map_2|Add0~16_combout\,
	cout => \map_2|Add0~17\);

-- Location: FF_X50_Y48_N23
\map_2|i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(8));

-- Location: LCCOMB_X50_Y48_N24
\map_2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~18_combout\ = (\map_2|i\(9) & (!\map_2|Add0~17\)) # (!\map_2|i\(9) & ((\map_2|Add0~17\) # (GND)))
-- \map_2|Add0~19\ = CARRY((!\map_2|Add0~17\) # (!\map_2|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(9),
	datad => VCC,
	cin => \map_2|Add0~17\,
	combout => \map_2|Add0~18_combout\,
	cout => \map_2|Add0~19\);

-- Location: FF_X50_Y48_N25
\map_2|i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(9));

-- Location: LCCOMB_X50_Y48_N26
\map_2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~20_combout\ = (\map_2|i\(10) & (\map_2|Add0~19\ $ (GND))) # (!\map_2|i\(10) & (!\map_2|Add0~19\ & VCC))
-- \map_2|Add0~21\ = CARRY((\map_2|i\(10) & !\map_2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(10),
	datad => VCC,
	cin => \map_2|Add0~19\,
	combout => \map_2|Add0~20_combout\,
	cout => \map_2|Add0~21\);

-- Location: LCCOMB_X51_Y48_N4
\map_2|i~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~11_combout\ = (\map_2|Add0~20_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~20_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~11_combout\);

-- Location: FF_X51_Y48_N5
\map_2|i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(10));

-- Location: LCCOMB_X50_Y48_N28
\map_2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~22_combout\ = (\map_2|i\(11) & (!\map_2|Add0~21\)) # (!\map_2|i\(11) & ((\map_2|Add0~21\) # (GND)))
-- \map_2|Add0~23\ = CARRY((!\map_2|Add0~21\) # (!\map_2|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(11),
	datad => VCC,
	cin => \map_2|Add0~21\,
	combout => \map_2|Add0~22_combout\,
	cout => \map_2|Add0~23\);

-- Location: LCCOMB_X50_Y48_N4
\map_2|i~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~10_combout\ = (\map_2|Add0~22_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_2|Add0~22_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~10_combout\);

-- Location: FF_X50_Y48_N5
\map_2|i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(11));

-- Location: LCCOMB_X50_Y48_N30
\map_2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~24_combout\ = (\map_2|i\(12) & (\map_2|Add0~23\ $ (GND))) # (!\map_2|i\(12) & (!\map_2|Add0~23\ & VCC))
-- \map_2|Add0~25\ = CARRY((\map_2|i\(12) & !\map_2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(12),
	datad => VCC,
	cin => \map_2|Add0~23\,
	combout => \map_2|Add0~24_combout\,
	cout => \map_2|Add0~25\);

-- Location: LCCOMB_X51_Y48_N14
\map_2|i~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~9_combout\ = (\map_2|Add0~24_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_2|Add0~24_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~9_combout\);

-- Location: FF_X51_Y48_N15
\map_2|i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(12));

-- Location: LCCOMB_X50_Y47_N0
\map_2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~26_combout\ = (\map_2|i\(13) & (!\map_2|Add0~25\)) # (!\map_2|i\(13) & ((\map_2|Add0~25\) # (GND)))
-- \map_2|Add0~27\ = CARRY((!\map_2|Add0~25\) # (!\map_2|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(13),
	datad => VCC,
	cin => \map_2|Add0~25\,
	combout => \map_2|Add0~26_combout\,
	cout => \map_2|Add0~27\);

-- Location: LCCOMB_X50_Y47_N26
\map_2|i~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~8_combout\ = (\map_2|Add0~26_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \map_2|Add0~26_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~8_combout\);

-- Location: FF_X50_Y47_N27
\map_2|i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(13));

-- Location: LCCOMB_X50_Y47_N2
\map_2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~28_combout\ = (\map_2|i\(14) & (\map_2|Add0~27\ $ (GND))) # (!\map_2|i\(14) & (!\map_2|Add0~27\ & VCC))
-- \map_2|Add0~29\ = CARRY((\map_2|i\(14) & !\map_2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(14),
	datad => VCC,
	cin => \map_2|Add0~27\,
	combout => \map_2|Add0~28_combout\,
	cout => \map_2|Add0~29\);

-- Location: FF_X50_Y47_N3
\map_2|i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~28_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(14));

-- Location: LCCOMB_X50_Y47_N4
\map_2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~30_combout\ = (\map_2|i\(15) & (!\map_2|Add0~29\)) # (!\map_2|i\(15) & ((\map_2|Add0~29\) # (GND)))
-- \map_2|Add0~31\ = CARRY((!\map_2|Add0~29\) # (!\map_2|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(15),
	datad => VCC,
	cin => \map_2|Add0~29\,
	combout => \map_2|Add0~30_combout\,
	cout => \map_2|Add0~31\);

-- Location: LCCOMB_X50_Y47_N28
\map_2|i~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~7_combout\ = (\map_2|Add0~30_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~30_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~7_combout\);

-- Location: FF_X50_Y47_N29
\map_2|i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(15));

-- Location: LCCOMB_X50_Y47_N6
\map_2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~32_combout\ = (\map_2|i\(16) & (\map_2|Add0~31\ $ (GND))) # (!\map_2|i\(16) & (!\map_2|Add0~31\ & VCC))
-- \map_2|Add0~33\ = CARRY((\map_2|i\(16) & !\map_2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(16),
	datad => VCC,
	cin => \map_2|Add0~31\,
	combout => \map_2|Add0~32_combout\,
	cout => \map_2|Add0~33\);

-- Location: FF_X50_Y47_N7
\map_2|i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~32_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(16));

-- Location: LCCOMB_X50_Y47_N8
\map_2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~34_combout\ = (\map_2|i\(17) & (!\map_2|Add0~33\)) # (!\map_2|i\(17) & ((\map_2|Add0~33\) # (GND)))
-- \map_2|Add0~35\ = CARRY((!\map_2|Add0~33\) # (!\map_2|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(17),
	datad => VCC,
	cin => \map_2|Add0~33\,
	combout => \map_2|Add0~34_combout\,
	cout => \map_2|Add0~35\);

-- Location: LCCOMB_X51_Y48_N20
\map_2|i~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~6_combout\ = (\map_2|Add0~34_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~34_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~6_combout\);

-- Location: FF_X51_Y48_N21
\map_2|i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(17));

-- Location: LCCOMB_X50_Y47_N10
\map_2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~36_combout\ = (\map_2|i\(18) & (\map_2|Add0~35\ $ (GND))) # (!\map_2|i\(18) & (!\map_2|Add0~35\ & VCC))
-- \map_2|Add0~37\ = CARRY((\map_2|i\(18) & !\map_2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(18),
	datad => VCC,
	cin => \map_2|Add0~35\,
	combout => \map_2|Add0~36_combout\,
	cout => \map_2|Add0~37\);

-- Location: LCCOMB_X50_Y47_N30
\map_2|i~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~5_combout\ = (\map_2|Add0~36_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~36_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~5_combout\);

-- Location: FF_X50_Y47_N31
\map_2|i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(18));

-- Location: LCCOMB_X50_Y47_N12
\map_2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~38_combout\ = (\map_2|i\(19) & (!\map_2|Add0~37\)) # (!\map_2|i\(19) & ((\map_2|Add0~37\) # (GND)))
-- \map_2|Add0~39\ = CARRY((!\map_2|Add0~37\) # (!\map_2|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(19),
	datad => VCC,
	cin => \map_2|Add0~37\,
	combout => \map_2|Add0~38_combout\,
	cout => \map_2|Add0~39\);

-- Location: LCCOMB_X51_Y48_N26
\map_2|i~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~4_combout\ = (\map_2|Add0~38_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~38_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~4_combout\);

-- Location: FF_X51_Y48_N27
\map_2|i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(19));

-- Location: LCCOMB_X50_Y47_N14
\map_2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~40_combout\ = (\map_2|i\(20) & (\map_2|Add0~39\ $ (GND))) # (!\map_2|i\(20) & (!\map_2|Add0~39\ & VCC))
-- \map_2|Add0~41\ = CARRY((\map_2|i\(20) & !\map_2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(20),
	datad => VCC,
	cin => \map_2|Add0~39\,
	combout => \map_2|Add0~40_combout\,
	cout => \map_2|Add0~41\);

-- Location: LCCOMB_X51_Y48_N28
\map_2|i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~3_combout\ = (\map_2|Add0~40_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~40_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~3_combout\);

-- Location: FF_X51_Y48_N29
\map_2|i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(20));

-- Location: LCCOMB_X50_Y47_N16
\map_2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~42_combout\ = (\map_2|i\(21) & (!\map_2|Add0~41\)) # (!\map_2|i\(21) & ((\map_2|Add0~41\) # (GND)))
-- \map_2|Add0~43\ = CARRY((!\map_2|Add0~41\) # (!\map_2|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(21),
	datad => VCC,
	cin => \map_2|Add0~41\,
	combout => \map_2|Add0~42_combout\,
	cout => \map_2|Add0~43\);

-- Location: LCCOMB_X51_Y48_N22
\map_2|i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~2_combout\ = (\map_2|Add0~42_combout\ & !\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~42_combout\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|i~2_combout\);

-- Location: FF_X51_Y48_N23
\map_2|i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(21));

-- Location: LCCOMB_X50_Y47_N18
\map_2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~44_combout\ = (\map_2|i\(22) & (\map_2|Add0~43\ $ (GND))) # (!\map_2|i\(22) & (!\map_2|Add0~43\ & VCC))
-- \map_2|Add0~45\ = CARRY((\map_2|i\(22) & !\map_2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \map_2|i\(22),
	datad => VCC,
	cin => \map_2|Add0~43\,
	combout => \map_2|Add0~44_combout\,
	cout => \map_2|Add0~45\);

-- Location: FF_X50_Y47_N19
\map_2|i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~44_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(22));

-- Location: LCCOMB_X50_Y47_N20
\map_2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~46_combout\ = (\map_2|i\(23) & (!\map_2|Add0~45\)) # (!\map_2|i\(23) & ((\map_2|Add0~45\) # (GND)))
-- \map_2|Add0~47\ = CARRY((!\map_2|Add0~45\) # (!\map_2|i\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(23),
	datad => VCC,
	cin => \map_2|Add0~45\,
	combout => \map_2|Add0~46_combout\,
	cout => \map_2|Add0~47\);

-- Location: LCCOMB_X49_Y48_N20
\map_2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~0_combout\ = (!\map_2|Add0~0_combout\ & (!\map_2|Add0~2_combout\ & (!\map_2|Add0~4_combout\ & !\map_2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~0_combout\,
	datab => \map_2|Add0~2_combout\,
	datac => \map_2|Add0~4_combout\,
	datad => \map_2|Add0~6_combout\,
	combout => \map_2|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y48_N28
\map_2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~1_combout\ = (!\map_2|Add0~12_combout\ & (!\map_2|Add0~8_combout\ & (!\map_2|Add0~14_combout\ & \map_2|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~12_combout\,
	datab => \map_2|Add0~8_combout\,
	datac => \map_2|Add0~14_combout\,
	datad => \map_2|Add0~10_combout\,
	combout => \map_2|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y48_N0
\map_2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~2_combout\ = (!\map_2|Add0~16_combout\ & (!\map_2|Add0~18_combout\ & (\map_2|Add0~20_combout\ & \map_2|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~16_combout\,
	datab => \map_2|Add0~18_combout\,
	datac => \map_2|Add0~20_combout\,
	datad => \map_2|Add0~22_combout\,
	combout => \map_2|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y48_N12
\map_2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~3_combout\ = (\map_2|Add0~26_combout\ & (\map_2|Add0~24_combout\ & (!\map_2|Add0~28_combout\ & \map_2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~26_combout\,
	datab => \map_2|Add0~24_combout\,
	datac => \map_2|Add0~28_combout\,
	datad => \map_2|Add0~30_combout\,
	combout => \map_2|Equal0~3_combout\);

-- Location: LCCOMB_X51_Y48_N10
\map_2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~4_combout\ = (\map_2|Equal0~0_combout\ & (\map_2|Equal0~1_combout\ & (\map_2|Equal0~2_combout\ & \map_2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Equal0~0_combout\,
	datab => \map_2|Equal0~1_combout\,
	datac => \map_2|Equal0~2_combout\,
	datad => \map_2|Equal0~3_combout\,
	combout => \map_2|Equal0~4_combout\);

-- Location: LCCOMB_X51_Y48_N16
\map_2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~5_combout\ = (\map_2|Add0~36_combout\ & (!\map_2|Add0~32_combout\ & (\map_2|Add0~38_combout\ & \map_2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~36_combout\,
	datab => \map_2|Add0~32_combout\,
	datac => \map_2|Add0~38_combout\,
	datad => \map_2|Equal0~4_combout\,
	combout => \map_2|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y48_N2
\map_2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~6_combout\ = (\map_2|Add0~42_combout\ & (\map_2|Add0~40_combout\ & (\map_2|Add0~34_combout\ & \map_2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~42_combout\,
	datab => \map_2|Add0~40_combout\,
	datac => \map_2|Add0~34_combout\,
	datad => \map_2|Equal0~5_combout\,
	combout => \map_2|Equal0~6_combout\);

-- Location: LCCOMB_X51_Y48_N0
\map_2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~7_combout\ = (!\map_2|Add0~44_combout\ & \map_2|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|Add0~44_combout\,
	datad => \map_2|Equal0~6_combout\,
	combout => \map_2|Equal0~7_combout\);

-- Location: LCCOMB_X51_Y48_N24
\map_2|i~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|i~14_combout\ = (\map_2|Add0~46_combout\ & ((\map_2|Add0~50_combout\) # ((\map_2|Add0~48_combout\) # (!\map_2|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~50_combout\,
	datab => \map_2|Add0~48_combout\,
	datac => \map_2|Add0~46_combout\,
	datad => \map_2|Equal0~7_combout\,
	combout => \map_2|i~14_combout\);

-- Location: FF_X51_Y48_N25
\map_2|i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|i~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(23));

-- Location: LCCOMB_X50_Y47_N22
\map_2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~48_combout\ = (\map_2|i\(24) & (\map_2|Add0~47\ $ (GND))) # (!\map_2|i\(24) & (!\map_2|Add0~47\ & VCC))
-- \map_2|Add0~49\ = CARRY((\map_2|i\(24) & !\map_2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|i\(24),
	datad => VCC,
	cin => \map_2|Add0~47\,
	combout => \map_2|Add0~48_combout\,
	cout => \map_2|Add0~49\);

-- Location: FF_X50_Y47_N23
\map_2|i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|Add0~48_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|i\(24));

-- Location: LCCOMB_X50_Y47_N24
\map_2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Add0~50_combout\ = \map_2|Add0~49\ $ (\map_2|i\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \map_2|i\(25),
	cin => \map_2|Add0~49\,
	combout => \map_2|Add0~50_combout\);

-- Location: LCCOMB_X51_Y48_N6
\map_2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|Equal0~8_combout\ = (!\map_2|Add0~50_combout\ & (!\map_2|Add0~48_combout\ & (\map_2|Add0~46_combout\ & \map_2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \map_2|Add0~50_combout\,
	datab => \map_2|Add0~48_combout\,
	datac => \map_2|Add0~46_combout\,
	datad => \map_2|Equal0~7_combout\,
	combout => \map_2|Equal0~8_combout\);

-- Location: LCCOMB_X51_Y48_N18
\map_2|v_clk~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|v_clk~0_combout\ = \map_2|v_clk~q\ $ (\map_2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \map_2|v_clk~q\,
	datad => \map_2|Equal0~8_combout\,
	combout => \map_2|v_clk~0_combout\);

-- Location: LCCOMB_X51_Y48_N8
\map_2|clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \map_2|clk~feeder_combout\ = \map_2|v_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \map_2|v_clk~0_combout\,
	combout => \map_2|clk~feeder_combout\);

-- Location: FF_X51_Y48_N9
\map_2|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \map_2|clk~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \map_2|clk~q\);

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

ww_clk1 <= \clk1~output_o\;

ww_clk2 <= \clk2~output_o\;
END structure;


