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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/24/2025 23:27:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SelectorProducto IS
    PORT (
	codigo_producto : IN std_logic_vector(5 DOWNTO 0);
	precio : OUT std_logic_vector(9 DOWNTO 0)
	);
END SelectorProducto;

-- Design Ports Information
-- precio[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[3]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[5]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[3]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[5]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codigo_producto[4]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SelectorProducto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_codigo_producto : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_precio : std_logic_vector(9 DOWNTO 0);
SIGNAL \precio[0]~output_o\ : std_logic;
SIGNAL \precio[1]~output_o\ : std_logic;
SIGNAL \precio[2]~output_o\ : std_logic;
SIGNAL \precio[3]~output_o\ : std_logic;
SIGNAL \precio[4]~output_o\ : std_logic;
SIGNAL \precio[5]~output_o\ : std_logic;
SIGNAL \precio[6]~output_o\ : std_logic;
SIGNAL \precio[7]~output_o\ : std_logic;
SIGNAL \precio[8]~output_o\ : std_logic;
SIGNAL \precio[9]~output_o\ : std_logic;
SIGNAL \codigo_producto[0]~input_o\ : std_logic;
SIGNAL \codigo_producto[2]~input_o\ : std_logic;
SIGNAL \codigo_producto[1]~input_o\ : std_logic;
SIGNAL \codigo_producto[3]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \codigo_producto[5]~input_o\ : std_logic;
SIGNAL \codigo_producto[4]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \precio~0_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \precio~1_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \precio~2_combout\ : std_logic;
SIGNAL \precio~3_combout\ : std_logic;
SIGNAL \precio~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \precio~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \precio~6_combout\ : std_logic;
SIGNAL \precio~7_combout\ : std_logic;
SIGNAL \precio~8_combout\ : std_logic;

BEGIN

ww_codigo_producto <= codigo_producto;
precio <= ww_precio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X3_Y29_N16
\precio[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \precio[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\precio[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \precio[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\precio[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \precio[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\precio[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \precio[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\precio[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \precio[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\precio[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \precio~1_combout\,
	devoe => ww_devoe,
	o => \precio[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\precio[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \precio~2_combout\,
	devoe => ww_devoe,
	o => \precio[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\precio[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \precio~5_combout\,
	devoe => ww_devoe,
	o => \precio[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\precio[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \precio~6_combout\,
	devoe => ww_devoe,
	o => \precio[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\precio[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \precio~8_combout\,
	devoe => ww_devoe,
	o => \precio[9]~output_o\);

-- Location: IOIBUF_X0_Y5_N8
\codigo_producto[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(0),
	o => \codigo_producto[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\codigo_producto[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(2),
	o => \codigo_producto[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\codigo_producto[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(1),
	o => \codigo_producto[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\codigo_producto[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(3),
	o => \codigo_producto[3]~input_o\);

-- Location: LCCOMB_X6_Y3_N30
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\codigo_producto[2]~input_o\ & (\codigo_producto[0]~input_o\ $ (((\codigo_producto[1]~input_o\) # (\codigo_producto[3]~input_o\))))) # (!\codigo_producto[2]~input_o\ & (\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ $ 
-- (!\codigo_producto[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X5_Y0_N8
\codigo_producto[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(5),
	o => \codigo_producto[5]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\codigo_producto[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_codigo_producto(4),
	o => \codigo_producto[4]~input_o\);

-- Location: LCCOMB_X6_Y3_N8
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\codigo_producto[1]~input_o\ & (\codigo_producto[2]~input_o\ $ (((\codigo_producto[0]~input_o\) # (\codigo_producto[3]~input_o\))))) # (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ $ (((\codigo_producto[2]~input_o\ & 
-- \codigo_producto[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X6_Y3_N10
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\codigo_producto[2]~input_o\ & (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ $ (!\codigo_producto[3]~input_o\)))) # (!\codigo_producto[2]~input_o\ & (\codigo_producto[0]~input_o\ $ (((\codigo_producto[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X6_Y3_N4
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & (\Mux11~0_combout\)) # (!\codigo_producto[5]~input_o\ & ((!\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \Mux11~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X5_Y3_N16
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\codigo_producto[4]~input_o\ & !\codigo_producto[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \codigo_producto[4]~input_o\,
	datac => \codigo_producto[5]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X6_Y3_N26
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!\codigo_producto[3]~input_o\ & !\codigo_producto[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X6_Y3_N16
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\codigo_producto[5]~input_o\ & (!\codigo_producto[4]~input_o\ & (\codigo_producto[0]~input_o\ & \codigo_producto[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \codigo_producto[0]~input_o\,
	datad => \codigo_producto[2]~input_o\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y3_N14
\Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\codigo_producto[2]~input_o\ & ((\codigo_producto[3]~input_o\) # (\codigo_producto[0]~input_o\ $ (\codigo_producto[1]~input_o\)))) # (!\codigo_producto[2]~input_o\ & ((\codigo_producto[0]~input_o\) # ((\codigo_producto[1]~input_o\ & 
-- \codigo_producto[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X6_Y3_N6
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ((\codigo_producto[1]~input_o\ & ((!\codigo_producto[3]~input_o\))) # (!\codigo_producto[1]~input_o\ & (!\codigo_producto[0]~input_o\))) # (!\codigo_producto[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X6_Y3_N0
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~6_combout\ & (\LessThan0~5_combout\ & ((\LessThan0~8_combout\) # (!\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => \LessThan0~5_combout\,
	datac => \Mux4~2_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X6_Y3_N2
\Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (!\LessThan0~7_combout\ & ((\Mux11~1_combout\) # ((!\Mux4~1_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux11~2_combout\,
	datad => \LessThan0~7_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X5_Y3_N18
\Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\codigo_producto[2]~input_o\ & (\codigo_producto[3]~input_o\ & ((\codigo_producto[0]~input_o\) # (!\codigo_producto[1]~input_o\)))) # (!\codigo_producto[2]~input_o\ & (\codigo_producto[3]~input_o\ $ (\codigo_producto[0]~input_o\ $ 
-- (\codigo_producto[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X5_Y3_N22
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\codigo_producto[0]~input_o\ & (\codigo_producto[3]~input_o\ $ ((!\codigo_producto[2]~input_o\)))) # (!\codigo_producto[0]~input_o\ & (((\codigo_producto[2]~input_o\ & \codigo_producto[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X5_Y3_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\codigo_producto[3]~input_o\ & (((!\codigo_producto[0]~input_o\ & \codigo_producto[1]~input_o\)) # (!\codigo_producto[2]~input_o\))) # (!\codigo_producto[3]~input_o\ & (\codigo_producto[0]~input_o\ $ (((\codigo_producto[2]~input_o\) # 
-- (\codigo_producto[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X5_Y3_N8
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & (!\Mux10~1_combout\)) # (!\codigo_producto[5]~input_o\ & ((\Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \codigo_producto[4]~input_o\,
	datac => \codigo_producto[5]~input_o\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X5_Y3_N12
\Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\LessThan0~7_combout\ & ((\Mux10~2_combout\) # ((\Mux10~3_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \LessThan0~7_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X5_Y3_N14
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\codigo_producto[0]~input_o\ & ((\codigo_producto[3]~input_o\ & (!\codigo_producto[2]~input_o\ & !\codigo_producto[1]~input_o\)) # (!\codigo_producto[3]~input_o\ & ((!\codigo_producto[1]~input_o\) # (!\codigo_producto[2]~input_o\))))) 
-- # (!\codigo_producto[0]~input_o\ & (\codigo_producto[1]~input_o\ $ (((\codigo_producto[3]~input_o\ & \codigo_producto[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X5_Y3_N0
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\codigo_producto[3]~input_o\ & ((\codigo_producto[0]~input_o\ & (\codigo_producto[2]~input_o\ & !\codigo_producto[1]~input_o\)) # (!\codigo_producto[0]~input_o\ & (!\codigo_producto[2]~input_o\ & \codigo_producto[1]~input_o\)))) # 
-- (!\codigo_producto[3]~input_o\ & ((\codigo_producto[0]~input_o\ & (\codigo_producto[2]~input_o\ $ (!\codigo_producto[1]~input_o\))) # (!\codigo_producto[0]~input_o\ & (\codigo_producto[2]~input_o\ & !\codigo_producto[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X5_Y3_N2
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & (\Mux9~0_combout\)) # (!\codigo_producto[5]~input_o\ & ((!\Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \Mux9~0_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X5_Y3_N4
\Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\codigo_producto[3]~input_o\ & ((\codigo_producto[0]~input_o\ & (!\codigo_producto[2]~input_o\ & \codigo_producto[1]~input_o\)) # (!\codigo_producto[0]~input_o\ & (\codigo_producto[2]~input_o\ & !\codigo_producto[1]~input_o\)))) # 
-- (!\codigo_producto[3]~input_o\ & (\codigo_producto[1]~input_o\ & ((\codigo_producto[0]~input_o\) # (!\codigo_producto[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X5_Y3_N6
\Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\LessThan0~7_combout\ & ((\Mux9~2_combout\) # ((!\Mux9~3_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Mux9~3_combout\,
	datac => \LessThan0~7_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X5_Y3_N26
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\codigo_producto[1]~input_o\ & ((\codigo_producto[2]~input_o\ & (\codigo_producto[3]~input_o\)) # (!\codigo_producto[2]~input_o\ & ((!\codigo_producto[0]~input_o\))))) # (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ & 
-- ((\codigo_producto[3]~input_o\) # (\codigo_producto[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X5_Y3_N24
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\codigo_producto[3]~input_o\ & (\codigo_producto[0]~input_o\ & (!\codigo_producto[2]~input_o\))) # (!\codigo_producto[3]~input_o\ & (((\codigo_producto[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X5_Y3_N10
\precio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~0_combout\ = (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & (!\Mux8~0_combout\)) # (!\codigo_producto[5]~input_o\ & ((!\Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \codigo_producto[4]~input_o\,
	datac => \codigo_producto[5]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \precio~0_combout\);

-- Location: LCCOMB_X5_Y3_N20
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\codigo_producto[1]~input_o\ & (((\codigo_producto[2]~input_o\)))) # (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ $ (((\codigo_producto[3]~input_o\ & !\codigo_producto[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[3]~input_o\,
	datab => \codigo_producto[0]~input_o\,
	datac => \codigo_producto[2]~input_o\,
	datad => \codigo_producto[1]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X5_Y3_N30
\precio~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~1_combout\ = (!\LessThan0~7_combout\ & ((\precio~0_combout\) # ((!\Mux8~2_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \precio~0_combout\,
	datab => \Mux8~2_combout\,
	datac => \LessThan0~7_combout\,
	datad => \Mux11~2_combout\,
	combout => \precio~1_combout\);

-- Location: LCCOMB_X4_Y5_N12
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\codigo_producto[3]~input_o\ & (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ $ (!\codigo_producto[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[3]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X4_Y5_N0
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\codigo_producto[1]~input_o\ & (\codigo_producto[3]~input_o\ & ((\codigo_producto[0]~input_o\) # (\codigo_producto[2]~input_o\)))) # (!\codigo_producto[1]~input_o\ & (\codigo_producto[0]~input_o\ & ((\codigo_producto[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[3]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[2]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X4_Y5_N6
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\codigo_producto[4]~input_o\ & (((!\codigo_producto[5]~input_o\)))) # (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & ((!\Mux7~0_combout\))) # (!\codigo_producto[5]~input_o\ & (!\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~0_combout\,
	datac => \codigo_producto[4]~input_o\,
	datad => \codigo_producto[5]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X4_Y5_N8
\precio~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~2_combout\ = (\Mux7~2_combout\ & !\LessThan0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datac => \LessThan0~7_combout\,
	combout => \precio~2_combout\);

-- Location: LCCOMB_X6_Y3_N12
\precio~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~3_combout\ = (\codigo_producto[1]~input_o\ & ((\codigo_producto[0]~input_o\ & (!\codigo_producto[2]~input_o\ & !\codigo_producto[3]~input_o\)) # (!\codigo_producto[0]~input_o\ & (\codigo_producto[2]~input_o\ & \codigo_producto[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \precio~3_combout\);

-- Location: LCCOMB_X6_Y3_N22
\precio~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~4_combout\ = (\codigo_producto[5]~input_o\ & (\codigo_producto[4]~input_o\)) # (!\codigo_producto[5]~input_o\ & (\precio~3_combout\ & (\codigo_producto[4]~input_o\ $ (!\codigo_producto[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \codigo_producto[0]~input_o\,
	datad => \precio~3_combout\,
	combout => \precio~4_combout\);

-- Location: LCCOMB_X6_Y3_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\codigo_producto[2]~input_o\ & ((\codigo_producto[3]~input_o\) # ((\codigo_producto[0]~input_o\ & !\codigo_producto[1]~input_o\)))) # (!\codigo_producto[2]~input_o\ & (!\codigo_producto[0]~input_o\ & (\codigo_producto[1]~input_o\ & 
-- !\codigo_producto[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[2]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X6_Y3_N24
\precio~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~5_combout\ = (!\precio~4_combout\ & (!\LessThan0~7_combout\ & ((!\codigo_producto[5]~input_o\) # (!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \precio~4_combout\,
	datab => \Mux6~0_combout\,
	datac => \codigo_producto[5]~input_o\,
	datad => \LessThan0~7_combout\,
	combout => \precio~5_combout\);

-- Location: LCCOMB_X4_Y5_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\codigo_producto[3]~input_o\ & (\codigo_producto[2]~input_o\ & ((\codigo_producto[0]~input_o\) # (\codigo_producto[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[0]~input_o\,
	datab => \codigo_producto[3]~input_o\,
	datac => \codigo_producto[1]~input_o\,
	datad => \codigo_producto[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X4_Y5_N26
\precio~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~6_combout\ = (!\LessThan0~7_combout\ & (((!\codigo_producto[4]~input_o\ & !\Mux5~0_combout\)) # (!\codigo_producto[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \LessThan0~7_combout\,
	datad => \Mux5~0_combout\,
	combout => \precio~6_combout\);

-- Location: LCCOMB_X6_Y3_N18
\precio~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~7_combout\ = (!\codigo_producto[4]~input_o\ & ((\codigo_producto[5]~input_o\ & (!\Mux4~2_combout\)) # (!\codigo_producto[5]~input_o\ & ((\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \codigo_producto[5]~input_o\,
	datab => \codigo_producto[4]~input_o\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~0_combout\,
	combout => \precio~7_combout\);

-- Location: LCCOMB_X6_Y3_N28
\precio~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio~8_combout\ = (!\LessThan0~7_combout\ & ((\precio~7_combout\) # ((\Mux4~1_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \precio~7_combout\,
	datac => \Mux11~2_combout\,
	datad => \LessThan0~7_combout\,
	combout => \precio~8_combout\);

ww_precio(0) <= \precio[0]~output_o\;

ww_precio(1) <= \precio[1]~output_o\;

ww_precio(2) <= \precio[2]~output_o\;

ww_precio(3) <= \precio[3]~output_o\;

ww_precio(4) <= \precio[4]~output_o\;

ww_precio(5) <= \precio[5]~output_o\;

ww_precio(6) <= \precio[6]~output_o\;

ww_precio(7) <= \precio[7]~output_o\;

ww_precio(8) <= \precio[8]~output_o\;

ww_precio(9) <= \precio[9]~output_o\;
END structure;


