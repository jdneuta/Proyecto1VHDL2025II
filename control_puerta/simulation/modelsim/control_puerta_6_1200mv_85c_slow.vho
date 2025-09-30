-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/30/2025 10:20:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_puerta IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirmar : IN std_logic;
	anomaly_sw : IN std_logic;
	door_led : OUT std_logic;
	anomaly_led : OUT std_logic;
	permitir_compra : OUT std_logic
	);
END control_puerta;

-- Design Ports Information
-- door_led	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomaly_led	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- permitir_compra	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomaly_sw	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_puerta IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_confirmar : std_logic;
SIGNAL ww_anomaly_sw : std_logic;
SIGNAL ww_door_led : std_logic;
SIGNAL ww_anomaly_led : std_logic;
SIGNAL ww_permitir_compra : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \door_led~output_o\ : std_logic;
SIGNAL \anomaly_led~output_o\ : std_logic;
SIGNAL \permitir_compra~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \anomaly_sw~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[4]~1_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \contador~6_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \contador~5_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \contador~4_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \contador[4]~2_combout\ : std_logic;
SIGNAL \activo~0_combout\ : std_logic;
SIGNAL \activo~1_combout\ : std_logic;
SIGNAL \activo~q\ : std_logic;
SIGNAL \puerta_int~0_combout\ : std_logic;
SIGNAL \puerta_int~1_combout\ : std_logic;
SIGNAL \puerta_int~q\ : std_logic;
SIGNAL \anomaly_reg~0_combout\ : std_logic;
SIGNAL \anomaly_reg~q\ : std_logic;
SIGNAL contador : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_anomaly_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirmar <= confirmar;
ww_anomaly_sw <= anomaly_sw;
door_led <= ww_door_led;
anomaly_led <= ww_anomaly_led;
permitir_compra <= ww_permitir_compra;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_anomaly_reg~q\ <= NOT \anomaly_reg~q\;

-- Location: IOOBUF_X0_Y11_N23
\door_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \puerta_int~q\,
	devoe => ww_devoe,
	o => \door_led~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\anomaly_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \anomaly_reg~q\,
	devoe => ww_devoe,
	o => \anomaly_led~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\permitir_compra~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_anomaly_reg~q\,
	devoe => ww_devoe,
	o => \permitir_compra~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y10_N8
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\anomaly_sw~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomaly_sw,
	o => \anomaly_sw~input_o\);

-- Location: LCCOMB_X2_Y10_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador(0) $ (VCC)
-- \Add0~1\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y10_N12
\contador~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (!\anomaly_sw~input_o\ & (\Add0~0_combout\ & ((\activo~q\) # (!\confirmar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \activo~q\,
	datac => \confirmar~input_o\,
	datad => \Add0~0_combout\,
	combout => \contador~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X2_Y10_N26
\contador[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~1_combout\ = (\activo~q\ & (\anomaly_sw~input_o\)) # (!\activo~q\ & ((\confirmar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datac => \confirmar~input_o\,
	datad => \activo~q\,
	combout => \contador[4]~1_combout\);

-- Location: LCCOMB_X2_Y10_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (contador(1) & (\Add0~1\ & VCC)) # (!contador(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!contador(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y10_N4
\contador~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~6_combout\ = (\anomaly_sw~input_o\ & (!\activo~q\ & (\confirmar~input_o\))) # (!\anomaly_sw~input_o\ & ((\Add0~2_combout\) # ((!\activo~q\ & \confirmar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \activo~q\,
	datac => \confirmar~input_o\,
	datad => \Add0~2_combout\,
	combout => \contador~6_combout\);

-- Location: FF_X2_Y10_N5
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X2_Y10_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (contador(2) & ((GND) # (!\Add0~3\))) # (!contador(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((contador(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y10_N30
\contador~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~5_combout\ = (\anomaly_sw~input_o\ & (!\activo~q\ & (\confirmar~input_o\))) # (!\anomaly_sw~input_o\ & ((\Add0~4_combout\) # ((!\activo~q\ & \confirmar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \activo~q\,
	datac => \confirmar~input_o\,
	datad => \Add0~4_combout\,
	combout => \contador~5_combout\);

-- Location: FF_X2_Y10_N31
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X2_Y10_N22
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (contador(3) & (\Add0~5\ & VCC)) # (!contador(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!contador(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y10_N8
\contador~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~4_combout\ = (\anomaly_sw~input_o\ & (\confirmar~input_o\ & ((!\activo~q\)))) # (!\anomaly_sw~input_o\ & ((\Add0~6_combout\) # ((\confirmar~input_o\ & !\activo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \confirmar~input_o\,
	datac => \Add0~6_combout\,
	datad => \activo~q\,
	combout => \contador~4_combout\);

-- Location: FF_X2_Y10_N9
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X2_Y10_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (contador(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X2_Y10_N6
\contador~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = (\anomaly_sw~input_o\ & (!\activo~q\ & (\confirmar~input_o\))) # (!\anomaly_sw~input_o\ & ((\Add0~8_combout\) # ((!\activo~q\ & \confirmar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \activo~q\,
	datac => \confirmar~input_o\,
	datad => \Add0~8_combout\,
	combout => \contador~3_combout\);

-- Location: FF_X2_Y10_N7
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X2_Y10_N10
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador(2) & (!contador(1) & (!contador(3) & !contador(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datac => contador(3),
	datad => contador(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y10_N14
\contador[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~2_combout\ = (\contador[4]~1_combout\) # ((\activo~q\ & ((contador(0)) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \activo~q\,
	datab => contador(0),
	datac => \contador[4]~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \contador[4]~2_combout\);

-- Location: FF_X2_Y10_N13
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \contador[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X2_Y10_N28
\activo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \activo~0_combout\ = (!\anomaly_sw~input_o\ & (\activo~q\ & ((!\Equal0~0_combout\) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => \activo~q\,
	datac => contador(0),
	datad => \Equal0~0_combout\,
	combout => \activo~0_combout\);

-- Location: LCCOMB_X2_Y10_N0
\activo~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \activo~1_combout\ = (\activo~0_combout\) # ((\confirmar~input_o\ & !\activo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \confirmar~input_o\,
	datac => \activo~q\,
	datad => \activo~0_combout\,
	combout => \activo~1_combout\);

-- Location: FF_X2_Y10_N1
activo : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \activo~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \activo~q\);

-- Location: LCCOMB_X1_Y10_N28
\puerta_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_int~0_combout\ = (!\anomaly_sw~input_o\ & (\puerta_int~q\ & ((!\Equal0~0_combout\) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomaly_sw~input_o\,
	datab => contador(0),
	datac => \Equal0~0_combout\,
	datad => \puerta_int~q\,
	combout => \puerta_int~0_combout\);

-- Location: LCCOMB_X1_Y10_N0
\puerta_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \puerta_int~1_combout\ = (\puerta_int~0_combout\) # ((!\activo~q\ & ((\confirmar~input_o\) # (\puerta_int~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \activo~q\,
	datac => \puerta_int~q\,
	datad => \puerta_int~0_combout\,
	combout => \puerta_int~1_combout\);

-- Location: FF_X1_Y10_N1
puerta_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \puerta_int~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \puerta_int~q\);

-- Location: LCCOMB_X1_Y10_N14
\anomaly_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \anomaly_reg~0_combout\ = (\activo~q\ & (((\anomaly_reg~q\) # (\anomaly_sw~input_o\)))) # (!\activo~q\ & (!\confirmar~input_o\ & (\anomaly_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \activo~q\,
	datac => \anomaly_reg~q\,
	datad => \anomaly_sw~input_o\,
	combout => \anomaly_reg~0_combout\);

-- Location: FF_X1_Y10_N15
anomaly_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \anomaly_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anomaly_reg~q\);

ww_door_led <= \door_led~output_o\;

ww_anomaly_led <= \anomaly_led~output_o\;

ww_permitir_compra <= \permitir_compra~output_o\;
END structure;


