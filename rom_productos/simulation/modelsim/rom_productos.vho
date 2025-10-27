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

-- DATE "10/27/2025 15:32:52"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	rom_productos IS
    PORT (
	clk : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0);
	precio : OUT STD.STANDARD.integer range 0 TO 9500
	);
END rom_productos;

-- Design Ports Information
-- precio[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[4]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[8]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[9]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[11]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[12]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[13]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rom_productos IS
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
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_precio : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \precio[10]~output_o\ : std_logic;
SIGNAL \precio[11]~output_o\ : std_logic;
SIGNAL \precio[12]~output_o\ : std_logic;
SIGNAL \precio[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \precio_reg[8]~feeder_combout\ : std_logic;
SIGNAL \precio_reg[9]~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL precio_reg : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_address <= address;
precio <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_precio));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X23_Y29_N2
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

-- Location: IOOBUF_X39_Y29_N16
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

-- Location: IOOBUF_X7_Y29_N9
\precio[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(2),
	devoe => ww_devoe,
	o => \precio[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\precio[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(3),
	devoe => ww_devoe,
	o => \precio[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\precio[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(4),
	devoe => ww_devoe,
	o => \precio[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\precio[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(5),
	devoe => ww_devoe,
	o => \precio[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\precio[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(6),
	devoe => ww_devoe,
	o => \precio[6]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\precio[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(7),
	devoe => ww_devoe,
	o => \precio[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\precio[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(8),
	devoe => ww_devoe,
	o => \precio[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\precio[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(9),
	devoe => ww_devoe,
	o => \precio[9]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\precio[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(10),
	devoe => ww_devoe,
	o => \precio[10]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\precio[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(11),
	devoe => ww_devoe,
	o => \precio[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\precio[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(12),
	devoe => ww_devoe,
	o => \precio[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\precio[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => precio_reg(13),
	devoe => ww_devoe,
	o => \precio[13]~output_o\);

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

-- Location: IOIBUF_X0_Y4_N22
\address[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\address[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\address[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\address[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\address[0]~input_o\ & ((\address[2]~input_o\ & ((\address[3]~input_o\) # (!\address[1]~input_o\))) # (!\address[2]~input_o\ & ((!\address[3]~input_o\))))) # (!\address[0]~input_o\ & (\address[2]~input_o\ & ((\address[1]~input_o\) # 
-- (!\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: FF_X1_Y4_N25
\precio_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(2));

-- Location: LCCOMB_X1_Y4_N10
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\ & ((\address[3]~input_o\)))) # (!\address[0]~input_o\ & (((\address[2]~input_o\)) # (!\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: FF_X1_Y4_N11
\precio_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(3));

-- Location: LCCOMB_X1_Y4_N12
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\address[1]~input_o\ & ((\address[2]~input_o\ & (!\address[0]~input_o\)) # (!\address[2]~input_o\ & ((\address[3]~input_o\))))) # (!\address[1]~input_o\ & ((\address[0]~input_o\) # (\address[2]~input_o\ $ (\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X1_Y4_N13
\precio_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(4));

-- Location: LCCOMB_X1_Y4_N22
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\address[0]~input_o\ & (\address[2]~input_o\ & ((!\address[3]~input_o\) # (!\address[1]~input_o\)))) # (!\address[0]~input_o\ & ((\address[3]~input_o\) # ((!\address[1]~input_o\ & !\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: FF_X1_Y4_N23
\precio_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(5));

-- Location: LCCOMB_X1_Y4_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ $ (((\address[0]~input_o\ & !\address[3]~input_o\))))) # (!\address[2]~input_o\ & ((\address[1]~input_o\) # (\address[0]~input_o\ $ (!\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: FF_X1_Y4_N9
\precio_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(6));

-- Location: LCCOMB_X1_Y4_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\address[3]~input_o\ & (((!\address[1]~input_o\ & !\address[2]~input_o\)))) # (!\address[3]~input_o\ & ((\address[0]~input_o\) # (\address[1]~input_o\ $ (!\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: FF_X1_Y4_N27
\precio_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(7));

-- Location: LCCOMB_X22_Y17_N24
\precio_reg[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio_reg[8]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \precio_reg[8]~feeder_combout\);

-- Location: FF_X22_Y17_N25
\precio_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \precio_reg[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(8));

-- Location: LCCOMB_X1_Y4_N20
\precio_reg[9]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \precio_reg[9]~4_combout\ = !\Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux10~0_combout\,
	combout => \precio_reg[9]~4_combout\);

-- Location: FF_X1_Y4_N21
\precio_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \precio_reg[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(9));

-- Location: LCCOMB_X1_Y4_N30
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\address[0]~input_o\ & ((\address[1]~input_o\ & (\address[2]~input_o\)) # (!\address[1]~input_o\ & (!\address[2]~input_o\ & \address[3]~input_o\)))) # (!\address[0]~input_o\ & ((\address[1]~input_o\) # ((\address[2]~input_o\ & 
-- !\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: FF_X1_Y4_N31
\precio_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(10));

-- Location: LCCOMB_X1_Y4_N0
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[0]~input_o\ & (\address[1]~input_o\)) # (!\address[0]~input_o\ & (!\address[2]~input_o\ & (\address[1]~input_o\ $ (\address[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X1_Y4_N1
\precio_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(11));

-- Location: LCCOMB_X1_Y4_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[3]~input_o\ & (((\address[1]~input_o\)))) # (!\address[3]~input_o\ & (!\address[2]~input_o\ & (\address[0]~input_o\ $ (\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: FF_X1_Y4_N3
\precio_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(12));

-- Location: LCCOMB_X1_Y4_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\address[1]~input_o\ & (\address[2]~input_o\ & ((\address[3]~input_o\) # (!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y4_N5
\precio_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => precio_reg(13));

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

ww_precio(10) <= \precio[10]~output_o\;

ww_precio(11) <= \precio[11]~output_o\;

ww_precio(12) <= \precio[12]~output_o\;

ww_precio(13) <= \precio[13]~output_o\;
END structure;


