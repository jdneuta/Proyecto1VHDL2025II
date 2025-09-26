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

-- DATE "09/26/2025 15:14:28"

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

ENTITY 	restador_saldo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirmar : IN std_logic;
	saldo_in : IN STD.STANDARD.integer range 0 TO 9999;
	precio : IN STD.STANDARD.integer range 0 TO 9999;
	saldo_out : OUT STD.STANDARD.integer range 0 TO 9999;
	compra_ok : OUT std_logic;
	sin_saldo : OUT std_logic
	);
END restador_saldo;

-- Design Ports Information
-- saldo_out[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[3]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[8]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[9]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[10]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[11]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[12]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[13]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- compra_ok	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_saldo	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[13]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[13]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[12]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[12]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[11]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[11]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[10]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[10]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[9]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[8]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[7]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[5]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF restador_saldo IS
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
SIGNAL ww_saldo_in : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_precio : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_saldo_out : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_compra_ok : std_logic;
SIGNAL ww_sin_saldo : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saldo_out[0]~output_o\ : std_logic;
SIGNAL \saldo_out[1]~output_o\ : std_logic;
SIGNAL \saldo_out[2]~output_o\ : std_logic;
SIGNAL \saldo_out[3]~output_o\ : std_logic;
SIGNAL \saldo_out[4]~output_o\ : std_logic;
SIGNAL \saldo_out[5]~output_o\ : std_logic;
SIGNAL \saldo_out[6]~output_o\ : std_logic;
SIGNAL \saldo_out[7]~output_o\ : std_logic;
SIGNAL \saldo_out[8]~output_o\ : std_logic;
SIGNAL \saldo_out[9]~output_o\ : std_logic;
SIGNAL \saldo_out[10]~output_o\ : std_logic;
SIGNAL \saldo_out[11]~output_o\ : std_logic;
SIGNAL \saldo_out[12]~output_o\ : std_logic;
SIGNAL \saldo_out[13]~output_o\ : std_logic;
SIGNAL \compra_ok~output_o\ : std_logic;
SIGNAL \sin_saldo~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \saldo_in[0]~input_o\ : std_logic;
SIGNAL \precio[0]~input_o\ : std_logic;
SIGNAL \saldo_reg[0]~14_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \prev_conf~q\ : std_logic;
SIGNAL \precio[13]~input_o\ : std_logic;
SIGNAL \saldo_in[13]~input_o\ : std_logic;
SIGNAL \saldo_in[12]~input_o\ : std_logic;
SIGNAL \precio[12]~input_o\ : std_logic;
SIGNAL \saldo_in[11]~input_o\ : std_logic;
SIGNAL \precio[11]~input_o\ : std_logic;
SIGNAL \precio[10]~input_o\ : std_logic;
SIGNAL \saldo_in[10]~input_o\ : std_logic;
SIGNAL \saldo_in[9]~input_o\ : std_logic;
SIGNAL \precio[9]~input_o\ : std_logic;
SIGNAL \precio[8]~input_o\ : std_logic;
SIGNAL \saldo_in[8]~input_o\ : std_logic;
SIGNAL \saldo_in[7]~input_o\ : std_logic;
SIGNAL \precio[7]~input_o\ : std_logic;
SIGNAL \precio[6]~input_o\ : std_logic;
SIGNAL \saldo_in[6]~input_o\ : std_logic;
SIGNAL \saldo_in[5]~input_o\ : std_logic;
SIGNAL \precio[5]~input_o\ : std_logic;
SIGNAL \saldo_in[4]~input_o\ : std_logic;
SIGNAL \precio[4]~input_o\ : std_logic;
SIGNAL \precio[3]~input_o\ : std_logic;
SIGNAL \saldo_in[3]~input_o\ : std_logic;
SIGNAL \precio[2]~input_o\ : std_logic;
SIGNAL \saldo_in[2]~input_o\ : std_logic;
SIGNAL \precio[1]~input_o\ : std_logic;
SIGNAL \saldo_in[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \saldo_reg[0]~16_combout\ : std_logic;
SIGNAL \saldo_reg[0]~15\ : std_logic;
SIGNAL \saldo_reg[1]~17_combout\ : std_logic;
SIGNAL \saldo_reg[1]~18\ : std_logic;
SIGNAL \saldo_reg[2]~19_combout\ : std_logic;
SIGNAL \saldo_reg[2]~20\ : std_logic;
SIGNAL \saldo_reg[3]~21_combout\ : std_logic;
SIGNAL \saldo_reg[3]~22\ : std_logic;
SIGNAL \saldo_reg[4]~23_combout\ : std_logic;
SIGNAL \saldo_reg[4]~24\ : std_logic;
SIGNAL \saldo_reg[5]~25_combout\ : std_logic;
SIGNAL \saldo_reg[5]~26\ : std_logic;
SIGNAL \saldo_reg[6]~27_combout\ : std_logic;
SIGNAL \saldo_reg[6]~28\ : std_logic;
SIGNAL \saldo_reg[7]~29_combout\ : std_logic;
SIGNAL \saldo_reg[7]~30\ : std_logic;
SIGNAL \saldo_reg[8]~31_combout\ : std_logic;
SIGNAL \saldo_reg[8]~32\ : std_logic;
SIGNAL \saldo_reg[9]~33_combout\ : std_logic;
SIGNAL \saldo_reg[9]~34\ : std_logic;
SIGNAL \saldo_reg[10]~35_combout\ : std_logic;
SIGNAL \saldo_reg[10]~36\ : std_logic;
SIGNAL \saldo_reg[11]~37_combout\ : std_logic;
SIGNAL \saldo_reg[11]~38\ : std_logic;
SIGNAL \saldo_reg[12]~39_combout\ : std_logic;
SIGNAL \saldo_reg[12]~40\ : std_logic;
SIGNAL \saldo_reg[13]~41_combout\ : std_logic;
SIGNAL \compra_ok~0_combout\ : std_logic;
SIGNAL \compra_ok~reg0_q\ : std_logic;
SIGNAL \sin_saldo~0_combout\ : std_logic;
SIGNAL \sin_saldo~reg0_q\ : std_logic;
SIGNAL saldo_reg : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirmar <= confirmar;
ww_saldo_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(saldo_in, 14);
ww_precio <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(precio, 14);
saldo_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_saldo_out));
compra_ok <= ww_compra_ok;
sin_saldo <= ww_sin_saldo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X35_Y29_N16
\saldo_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(0),
	devoe => ww_devoe,
	o => \saldo_out[0]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\saldo_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(1),
	devoe => ww_devoe,
	o => \saldo_out[1]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\saldo_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(2),
	devoe => ww_devoe,
	o => \saldo_out[2]~output_o\);

-- Location: IOOBUF_X41_Y27_N23
\saldo_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(3),
	devoe => ww_devoe,
	o => \saldo_out[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\saldo_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(4),
	devoe => ww_devoe,
	o => \saldo_out[4]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\saldo_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(5),
	devoe => ww_devoe,
	o => \saldo_out[5]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\saldo_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(6),
	devoe => ww_devoe,
	o => \saldo_out[6]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\saldo_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(7),
	devoe => ww_devoe,
	o => \saldo_out[7]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\saldo_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(8),
	devoe => ww_devoe,
	o => \saldo_out[8]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\saldo_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(9),
	devoe => ww_devoe,
	o => \saldo_out[9]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\saldo_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(10),
	devoe => ww_devoe,
	o => \saldo_out[10]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\saldo_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(11),
	devoe => ww_devoe,
	o => \saldo_out[11]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\saldo_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(12),
	devoe => ww_devoe,
	o => \saldo_out[12]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\saldo_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(13),
	devoe => ww_devoe,
	o => \saldo_out[13]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\compra_ok~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \compra_ok~reg0_q\,
	devoe => ww_devoe,
	o => \compra_ok~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\sin_saldo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sin_saldo~reg0_q\,
	devoe => ww_devoe,
	o => \sin_saldo~output_o\);

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

-- Location: IOIBUF_X21_Y0_N1
\saldo_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(0),
	o => \saldo_in[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\precio[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(0),
	o => \precio[0]~input_o\);

-- Location: LCCOMB_X40_Y26_N4
\saldo_reg[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[0]~14_combout\ = (\saldo_in[0]~input_o\ & ((GND) # (!\precio[0]~input_o\))) # (!\saldo_in[0]~input_o\ & (\precio[0]~input_o\ $ (GND)))
-- \saldo_reg[0]~15\ = CARRY((\saldo_in[0]~input_o\) # (!\precio[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[0]~input_o\,
	datab => \precio[0]~input_o\,
	datad => VCC,
	combout => \saldo_reg[0]~14_combout\,
	cout => \saldo_reg[0]~15\);

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

-- Location: IOIBUF_X35_Y29_N22
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: FF_X39_Y26_N31
prev_conf : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \confirmar~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_conf~q\);

-- Location: IOIBUF_X37_Y29_N8
\precio[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(13),
	o => \precio[13]~input_o\);

-- Location: IOIBUF_X41_Y26_N15
\saldo_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(13),
	o => \saldo_in[13]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\saldo_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(12),
	o => \saldo_in[12]~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\precio[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(12),
	o => \precio[12]~input_o\);

-- Location: IOIBUF_X41_Y24_N22
\saldo_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(11),
	o => \saldo_in[11]~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\precio[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(11),
	o => \precio[11]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\precio[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(10),
	o => \precio[10]~input_o\);

-- Location: IOIBUF_X39_Y29_N1
\saldo_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(10),
	o => \saldo_in[10]~input_o\);

-- Location: IOIBUF_X41_Y27_N15
\saldo_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(9),
	o => \saldo_in[9]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\precio[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(9),
	o => \precio[9]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\precio[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(8),
	o => \precio[8]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\saldo_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(8),
	o => \saldo_in[8]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\saldo_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(7),
	o => \saldo_in[7]~input_o\);

-- Location: IOIBUF_X41_Y26_N22
\precio[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(7),
	o => \precio[7]~input_o\);

-- Location: IOIBUF_X41_Y24_N1
\precio[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(6),
	o => \precio[6]~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\saldo_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(6),
	o => \saldo_in[6]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\saldo_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(5),
	o => \saldo_in[5]~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\precio[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(5),
	o => \precio[5]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\saldo_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(4),
	o => \saldo_in[4]~input_o\);

-- Location: IOIBUF_X41_Y27_N8
\precio[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(4),
	o => \precio[4]~input_o\);

-- Location: IOIBUF_X35_Y29_N29
\precio[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(3),
	o => \precio[3]~input_o\);

-- Location: IOIBUF_X41_Y21_N8
\saldo_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(3),
	o => \saldo_in[3]~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\precio[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(2),
	o => \precio[2]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\saldo_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(2),
	o => \saldo_in[2]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\precio[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio(1),
	o => \precio[1]~input_o\);

-- Location: IOIBUF_X41_Y27_N1
\saldo_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(1),
	o => \saldo_in[1]~input_o\);

-- Location: LCCOMB_X39_Y26_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\saldo_in[0]~input_o\ & \precio[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[0]~input_o\,
	datab => \precio[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X39_Y26_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\precio[1]~input_o\ & (\saldo_in[1]~input_o\ & !\LessThan0~1_cout\)) # (!\precio[1]~input_o\ & ((\saldo_in[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[1]~input_o\,
	datab => \saldo_in[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X39_Y26_N6
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\precio[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\saldo_in[2]~input_o\))) # (!\precio[2]~input_o\ & (!\saldo_in[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[2]~input_o\,
	datab => \saldo_in[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X39_Y26_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\precio[3]~input_o\ & (\saldo_in[3]~input_o\ & !\LessThan0~5_cout\)) # (!\precio[3]~input_o\ & ((\saldo_in[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[3]~input_o\,
	datab => \saldo_in[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X39_Y26_N10
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\saldo_in[4]~input_o\ & (\precio[4]~input_o\ & !\LessThan0~7_cout\)) # (!\saldo_in[4]~input_o\ & ((\precio[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[4]~input_o\,
	datab => \precio[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X39_Y26_N12
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\saldo_in[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\precio[5]~input_o\))) # (!\saldo_in[5]~input_o\ & (!\precio[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[5]~input_o\,
	datab => \precio[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X39_Y26_N14
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\precio[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\saldo_in[6]~input_o\))) # (!\precio[6]~input_o\ & (!\saldo_in[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[6]~input_o\,
	datab => \saldo_in[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X39_Y26_N16
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\saldo_in[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\precio[7]~input_o\))) # (!\saldo_in[7]~input_o\ & (!\precio[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[7]~input_o\,
	datab => \precio[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X39_Y26_N18
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\precio[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\saldo_in[8]~input_o\))) # (!\precio[8]~input_o\ & (!\saldo_in[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[8]~input_o\,
	datab => \saldo_in[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X39_Y26_N20
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\saldo_in[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\precio[9]~input_o\))) # (!\saldo_in[9]~input_o\ & (!\precio[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[9]~input_o\,
	datab => \precio[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X39_Y26_N22
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\precio[10]~input_o\ & ((!\LessThan0~19_cout\) # (!\saldo_in[10]~input_o\))) # (!\precio[10]~input_o\ & (!\saldo_in[10]~input_o\ & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[10]~input_o\,
	datab => \saldo_in[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X39_Y26_N24
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\saldo_in[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\precio[11]~input_o\))) # (!\saldo_in[11]~input_o\ & (!\precio[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[11]~input_o\,
	datab => \precio[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X39_Y26_N26
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\saldo_in[12]~input_o\ & (\precio[12]~input_o\ & !\LessThan0~23_cout\)) # (!\saldo_in[12]~input_o\ & ((\precio[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[12]~input_o\,
	datab => \precio[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X39_Y26_N28
\LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = (\precio[13]~input_o\ & ((\LessThan0~25_cout\) # (!\saldo_in[13]~input_o\))) # (!\precio[13]~input_o\ & (\LessThan0~25_cout\ & !\saldo_in[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[13]~input_o\,
	datad => \saldo_in[13]~input_o\,
	cin => \LessThan0~25_cout\,
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X39_Y26_N30
\saldo_reg[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[0]~16_combout\ = ((\prev_conf~q\) # (\LessThan0~26_combout\)) # (!\confirmar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \confirmar~input_o\,
	datac => \prev_conf~q\,
	datad => \LessThan0~26_combout\,
	combout => \saldo_reg[0]~16_combout\);

-- Location: FF_X40_Y26_N5
\saldo_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[0]~14_combout\,
	asdata => \saldo_in[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(0));

-- Location: LCCOMB_X40_Y26_N6
\saldo_reg[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[1]~17_combout\ = (\saldo_in[1]~input_o\ & ((\precio[1]~input_o\ & (!\saldo_reg[0]~15\)) # (!\precio[1]~input_o\ & (\saldo_reg[0]~15\ & VCC)))) # (!\saldo_in[1]~input_o\ & ((\precio[1]~input_o\ & ((\saldo_reg[0]~15\) # (GND))) # 
-- (!\precio[1]~input_o\ & (!\saldo_reg[0]~15\))))
-- \saldo_reg[1]~18\ = CARRY((\saldo_in[1]~input_o\ & (\precio[1]~input_o\ & !\saldo_reg[0]~15\)) # (!\saldo_in[1]~input_o\ & ((\precio[1]~input_o\) # (!\saldo_reg[0]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[1]~input_o\,
	datab => \precio[1]~input_o\,
	datad => VCC,
	cin => \saldo_reg[0]~15\,
	combout => \saldo_reg[1]~17_combout\,
	cout => \saldo_reg[1]~18\);

-- Location: FF_X40_Y26_N7
\saldo_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[1]~17_combout\,
	asdata => \saldo_in[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(1));

-- Location: LCCOMB_X40_Y26_N8
\saldo_reg[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[2]~19_combout\ = ((\precio[2]~input_o\ $ (\saldo_in[2]~input_o\ $ (\saldo_reg[1]~18\)))) # (GND)
-- \saldo_reg[2]~20\ = CARRY((\precio[2]~input_o\ & (\saldo_in[2]~input_o\ & !\saldo_reg[1]~18\)) # (!\precio[2]~input_o\ & ((\saldo_in[2]~input_o\) # (!\saldo_reg[1]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[2]~input_o\,
	datab => \saldo_in[2]~input_o\,
	datad => VCC,
	cin => \saldo_reg[1]~18\,
	combout => \saldo_reg[2]~19_combout\,
	cout => \saldo_reg[2]~20\);

-- Location: FF_X40_Y26_N9
\saldo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[2]~19_combout\,
	asdata => \saldo_in[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(2));

-- Location: LCCOMB_X40_Y26_N10
\saldo_reg[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[3]~21_combout\ = (\precio[3]~input_o\ & ((\saldo_in[3]~input_o\ & (!\saldo_reg[2]~20\)) # (!\saldo_in[3]~input_o\ & ((\saldo_reg[2]~20\) # (GND))))) # (!\precio[3]~input_o\ & ((\saldo_in[3]~input_o\ & (\saldo_reg[2]~20\ & VCC)) # 
-- (!\saldo_in[3]~input_o\ & (!\saldo_reg[2]~20\))))
-- \saldo_reg[3]~22\ = CARRY((\precio[3]~input_o\ & ((!\saldo_reg[2]~20\) # (!\saldo_in[3]~input_o\))) # (!\precio[3]~input_o\ & (!\saldo_in[3]~input_o\ & !\saldo_reg[2]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[3]~input_o\,
	datab => \saldo_in[3]~input_o\,
	datad => VCC,
	cin => \saldo_reg[2]~20\,
	combout => \saldo_reg[3]~21_combout\,
	cout => \saldo_reg[3]~22\);

-- Location: FF_X40_Y26_N11
\saldo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[3]~21_combout\,
	asdata => \saldo_in[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(3));

-- Location: LCCOMB_X40_Y26_N12
\saldo_reg[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[4]~23_combout\ = ((\precio[4]~input_o\ $ (\saldo_in[4]~input_o\ $ (\saldo_reg[3]~22\)))) # (GND)
-- \saldo_reg[4]~24\ = CARRY((\precio[4]~input_o\ & (\saldo_in[4]~input_o\ & !\saldo_reg[3]~22\)) # (!\precio[4]~input_o\ & ((\saldo_in[4]~input_o\) # (!\saldo_reg[3]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[4]~input_o\,
	datab => \saldo_in[4]~input_o\,
	datad => VCC,
	cin => \saldo_reg[3]~22\,
	combout => \saldo_reg[4]~23_combout\,
	cout => \saldo_reg[4]~24\);

-- Location: FF_X40_Y26_N13
\saldo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[4]~23_combout\,
	asdata => \saldo_in[4]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(4));

-- Location: LCCOMB_X40_Y26_N14
\saldo_reg[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[5]~25_combout\ = (\saldo_in[5]~input_o\ & ((\precio[5]~input_o\ & (!\saldo_reg[4]~24\)) # (!\precio[5]~input_o\ & (\saldo_reg[4]~24\ & VCC)))) # (!\saldo_in[5]~input_o\ & ((\precio[5]~input_o\ & ((\saldo_reg[4]~24\) # (GND))) # 
-- (!\precio[5]~input_o\ & (!\saldo_reg[4]~24\))))
-- \saldo_reg[5]~26\ = CARRY((\saldo_in[5]~input_o\ & (\precio[5]~input_o\ & !\saldo_reg[4]~24\)) # (!\saldo_in[5]~input_o\ & ((\precio[5]~input_o\) # (!\saldo_reg[4]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[5]~input_o\,
	datab => \precio[5]~input_o\,
	datad => VCC,
	cin => \saldo_reg[4]~24\,
	combout => \saldo_reg[5]~25_combout\,
	cout => \saldo_reg[5]~26\);

-- Location: FF_X40_Y26_N15
\saldo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[5]~25_combout\,
	asdata => \saldo_in[5]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(5));

-- Location: LCCOMB_X40_Y26_N16
\saldo_reg[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[6]~27_combout\ = ((\saldo_in[6]~input_o\ $ (\precio[6]~input_o\ $ (\saldo_reg[5]~26\)))) # (GND)
-- \saldo_reg[6]~28\ = CARRY((\saldo_in[6]~input_o\ & ((!\saldo_reg[5]~26\) # (!\precio[6]~input_o\))) # (!\saldo_in[6]~input_o\ & (!\precio[6]~input_o\ & !\saldo_reg[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[6]~input_o\,
	datab => \precio[6]~input_o\,
	datad => VCC,
	cin => \saldo_reg[5]~26\,
	combout => \saldo_reg[6]~27_combout\,
	cout => \saldo_reg[6]~28\);

-- Location: FF_X40_Y26_N17
\saldo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[6]~27_combout\,
	asdata => \saldo_in[6]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(6));

-- Location: LCCOMB_X40_Y26_N18
\saldo_reg[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[7]~29_combout\ = (\precio[7]~input_o\ & ((\saldo_in[7]~input_o\ & (!\saldo_reg[6]~28\)) # (!\saldo_in[7]~input_o\ & ((\saldo_reg[6]~28\) # (GND))))) # (!\precio[7]~input_o\ & ((\saldo_in[7]~input_o\ & (\saldo_reg[6]~28\ & VCC)) # 
-- (!\saldo_in[7]~input_o\ & (!\saldo_reg[6]~28\))))
-- \saldo_reg[7]~30\ = CARRY((\precio[7]~input_o\ & ((!\saldo_reg[6]~28\) # (!\saldo_in[7]~input_o\))) # (!\precio[7]~input_o\ & (!\saldo_in[7]~input_o\ & !\saldo_reg[6]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[7]~input_o\,
	datab => \saldo_in[7]~input_o\,
	datad => VCC,
	cin => \saldo_reg[6]~28\,
	combout => \saldo_reg[7]~29_combout\,
	cout => \saldo_reg[7]~30\);

-- Location: FF_X40_Y26_N19
\saldo_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[7]~29_combout\,
	asdata => \saldo_in[7]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(7));

-- Location: LCCOMB_X40_Y26_N20
\saldo_reg[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[8]~31_combout\ = ((\saldo_in[8]~input_o\ $ (\precio[8]~input_o\ $ (\saldo_reg[7]~30\)))) # (GND)
-- \saldo_reg[8]~32\ = CARRY((\saldo_in[8]~input_o\ & ((!\saldo_reg[7]~30\) # (!\precio[8]~input_o\))) # (!\saldo_in[8]~input_o\ & (!\precio[8]~input_o\ & !\saldo_reg[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[8]~input_o\,
	datab => \precio[8]~input_o\,
	datad => VCC,
	cin => \saldo_reg[7]~30\,
	combout => \saldo_reg[8]~31_combout\,
	cout => \saldo_reg[8]~32\);

-- Location: FF_X40_Y26_N21
\saldo_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[8]~31_combout\,
	asdata => \saldo_in[8]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(8));

-- Location: LCCOMB_X40_Y26_N22
\saldo_reg[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[9]~33_combout\ = (\precio[9]~input_o\ & ((\saldo_in[9]~input_o\ & (!\saldo_reg[8]~32\)) # (!\saldo_in[9]~input_o\ & ((\saldo_reg[8]~32\) # (GND))))) # (!\precio[9]~input_o\ & ((\saldo_in[9]~input_o\ & (\saldo_reg[8]~32\ & VCC)) # 
-- (!\saldo_in[9]~input_o\ & (!\saldo_reg[8]~32\))))
-- \saldo_reg[9]~34\ = CARRY((\precio[9]~input_o\ & ((!\saldo_reg[8]~32\) # (!\saldo_in[9]~input_o\))) # (!\precio[9]~input_o\ & (!\saldo_in[9]~input_o\ & !\saldo_reg[8]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[9]~input_o\,
	datab => \saldo_in[9]~input_o\,
	datad => VCC,
	cin => \saldo_reg[8]~32\,
	combout => \saldo_reg[9]~33_combout\,
	cout => \saldo_reg[9]~34\);

-- Location: FF_X40_Y26_N23
\saldo_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[9]~33_combout\,
	asdata => \saldo_in[9]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(9));

-- Location: LCCOMB_X40_Y26_N24
\saldo_reg[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[10]~35_combout\ = ((\saldo_in[10]~input_o\ $ (\precio[10]~input_o\ $ (\saldo_reg[9]~34\)))) # (GND)
-- \saldo_reg[10]~36\ = CARRY((\saldo_in[10]~input_o\ & ((!\saldo_reg[9]~34\) # (!\precio[10]~input_o\))) # (!\saldo_in[10]~input_o\ & (!\precio[10]~input_o\ & !\saldo_reg[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[10]~input_o\,
	datab => \precio[10]~input_o\,
	datad => VCC,
	cin => \saldo_reg[9]~34\,
	combout => \saldo_reg[10]~35_combout\,
	cout => \saldo_reg[10]~36\);

-- Location: FF_X40_Y26_N25
\saldo_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[10]~35_combout\,
	asdata => \saldo_in[10]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(10));

-- Location: LCCOMB_X40_Y26_N26
\saldo_reg[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[11]~37_combout\ = (\precio[11]~input_o\ & ((\saldo_in[11]~input_o\ & (!\saldo_reg[10]~36\)) # (!\saldo_in[11]~input_o\ & ((\saldo_reg[10]~36\) # (GND))))) # (!\precio[11]~input_o\ & ((\saldo_in[11]~input_o\ & (\saldo_reg[10]~36\ & VCC)) # 
-- (!\saldo_in[11]~input_o\ & (!\saldo_reg[10]~36\))))
-- \saldo_reg[11]~38\ = CARRY((\precio[11]~input_o\ & ((!\saldo_reg[10]~36\) # (!\saldo_in[11]~input_o\))) # (!\precio[11]~input_o\ & (!\saldo_in[11]~input_o\ & !\saldo_reg[10]~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[11]~input_o\,
	datab => \saldo_in[11]~input_o\,
	datad => VCC,
	cin => \saldo_reg[10]~36\,
	combout => \saldo_reg[11]~37_combout\,
	cout => \saldo_reg[11]~38\);

-- Location: FF_X40_Y26_N27
\saldo_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[11]~37_combout\,
	asdata => \saldo_in[11]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(11));

-- Location: LCCOMB_X40_Y26_N28
\saldo_reg[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[12]~39_combout\ = ((\precio[12]~input_o\ $ (\saldo_in[12]~input_o\ $ (\saldo_reg[11]~38\)))) # (GND)
-- \saldo_reg[12]~40\ = CARRY((\precio[12]~input_o\ & (\saldo_in[12]~input_o\ & !\saldo_reg[11]~38\)) # (!\precio[12]~input_o\ & ((\saldo_in[12]~input_o\) # (!\saldo_reg[11]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio[12]~input_o\,
	datab => \saldo_in[12]~input_o\,
	datad => VCC,
	cin => \saldo_reg[11]~38\,
	combout => \saldo_reg[12]~39_combout\,
	cout => \saldo_reg[12]~40\);

-- Location: FF_X40_Y26_N29
\saldo_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[12]~39_combout\,
	asdata => \saldo_in[12]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(12));

-- Location: LCCOMB_X40_Y26_N30
\saldo_reg[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[13]~41_combout\ = \saldo_in[13]~input_o\ $ (\saldo_reg[12]~40\ $ (!\precio[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[13]~input_o\,
	datad => \precio[13]~input_o\,
	cin => \saldo_reg[12]~40\,
	combout => \saldo_reg[13]~41_combout\);

-- Location: FF_X40_Y26_N31
\saldo_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[13]~41_combout\,
	asdata => \saldo_in[13]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \saldo_reg[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(13));

-- Location: LCCOMB_X40_Y26_N0
\compra_ok~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \compra_ok~0_combout\ = !\saldo_reg[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \saldo_reg[0]~16_combout\,
	combout => \compra_ok~0_combout\);

-- Location: FF_X40_Y26_N1
\compra_ok~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compra_ok~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \compra_ok~reg0_q\);

-- Location: LCCOMB_X39_Y26_N0
\sin_saldo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sin_saldo~0_combout\ = (\prev_conf~q\ & (((\sin_saldo~reg0_q\)))) # (!\prev_conf~q\ & ((\confirmar~input_o\ & ((\LessThan0~26_combout\))) # (!\confirmar~input_o\ & (\sin_saldo~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_conf~q\,
	datab => \confirmar~input_o\,
	datac => \sin_saldo~reg0_q\,
	datad => \LessThan0~26_combout\,
	combout => \sin_saldo~0_combout\);

-- Location: FF_X39_Y26_N1
\sin_saldo~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sin_saldo~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sin_saldo~reg0_q\);

ww_saldo_out(0) <= \saldo_out[0]~output_o\;

ww_saldo_out(1) <= \saldo_out[1]~output_o\;

ww_saldo_out(2) <= \saldo_out[2]~output_o\;

ww_saldo_out(3) <= \saldo_out[3]~output_o\;

ww_saldo_out(4) <= \saldo_out[4]~output_o\;

ww_saldo_out(5) <= \saldo_out[5]~output_o\;

ww_saldo_out(6) <= \saldo_out[6]~output_o\;

ww_saldo_out(7) <= \saldo_out[7]~output_o\;

ww_saldo_out(8) <= \saldo_out[8]~output_o\;

ww_saldo_out(9) <= \saldo_out[9]~output_o\;

ww_saldo_out(10) <= \saldo_out[10]~output_o\;

ww_saldo_out(11) <= \saldo_out[11]~output_o\;

ww_saldo_out(12) <= \saldo_out[12]~output_o\;

ww_saldo_out(13) <= \saldo_out[13]~output_o\;

ww_compra_ok <= \compra_ok~output_o\;

ww_sin_saldo <= \sin_saldo~output_o\;
END structure;


