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

-- DATE "09/26/2025 15:35:01"

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

ENTITY 	top_restador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	saldo_in : IN STD.STANDARD.integer range 0 TO 9500;
	precio_in : IN STD.STANDARD.integer range 0 TO 9500;
	confirmar : IN std_logic;
	saldo_out : OUT STD.STANDARD.integer range 0 TO 9500;
	compra_ok : OUT std_logic;
	sin_saldo : OUT std_logic
	);
END top_restador;

-- Design Ports Information
-- saldo_out[0]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[6]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[8]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[12]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_out[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- compra_ok	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin_saldo	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[13]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[12]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[11]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[10]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[8]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[6]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[4]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_in[1]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_in[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_restador IS
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
SIGNAL ww_saldo_in : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_precio_in : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_confirmar : std_logic;
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
SIGNAL \precio_in[0]~input_o\ : std_logic;
SIGNAL \saldo_in[0]~input_o\ : std_logic;
SIGNAL \saldo_reg[0]~14_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \precio_in[13]~input_o\ : std_logic;
SIGNAL \saldo_in[13]~input_o\ : std_logic;
SIGNAL \precio_in[12]~input_o\ : std_logic;
SIGNAL \saldo_in[12]~input_o\ : std_logic;
SIGNAL \precio_in[11]~input_o\ : std_logic;
SIGNAL \saldo_in[11]~input_o\ : std_logic;
SIGNAL \saldo_in[10]~input_o\ : std_logic;
SIGNAL \precio_in[10]~input_o\ : std_logic;
SIGNAL \precio_in[9]~input_o\ : std_logic;
SIGNAL \saldo_in[9]~input_o\ : std_logic;
SIGNAL \precio_in[8]~input_o\ : std_logic;
SIGNAL \saldo_in[8]~input_o\ : std_logic;
SIGNAL \precio_in[7]~input_o\ : std_logic;
SIGNAL \saldo_in[7]~input_o\ : std_logic;
SIGNAL \saldo_in[6]~input_o\ : std_logic;
SIGNAL \precio_in[6]~input_o\ : std_logic;
SIGNAL \precio_in[5]~input_o\ : std_logic;
SIGNAL \saldo_in[5]~input_o\ : std_logic;
SIGNAL \precio_in[4]~input_o\ : std_logic;
SIGNAL \saldo_in[4]~input_o\ : std_logic;
SIGNAL \precio_in[3]~input_o\ : std_logic;
SIGNAL \saldo_in[3]~input_o\ : std_logic;
SIGNAL \precio_in[2]~input_o\ : std_logic;
SIGNAL \saldo_in[2]~input_o\ : std_logic;
SIGNAL \precio_in[1]~input_o\ : std_logic;
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
SIGNAL \ok_reg~0_combout\ : std_logic;
SIGNAL \ok_reg~q\ : std_logic;
SIGNAL \no_reg~0_combout\ : std_logic;
SIGNAL \no_reg~q\ : std_logic;
SIGNAL saldo_reg : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_saldo_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(saldo_in, 14);
ww_precio_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(precio_in, 14);
ww_confirmar <= confirmar;
saldo_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_saldo_out));
compra_ok <= ww_compra_ok;
sin_saldo <= ww_sin_saldo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X41_Y3_N23
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

-- Location: IOOBUF_X30_Y29_N16
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X28_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X37_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X35_Y0_N9
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X28_Y0_N2
\compra_ok~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ok_reg~q\,
	devoe => ww_devoe,
	o => \compra_ok~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sin_saldo~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \no_reg~q\,
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

-- Location: IOIBUF_X21_Y0_N8
\precio_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(0),
	o => \precio_in[0]~input_o\);

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

-- Location: LCCOMB_X30_Y3_N4
\saldo_reg[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[0]~14_combout\ = (\precio_in[0]~input_o\ & (\saldo_in[0]~input_o\ $ (VCC))) # (!\precio_in[0]~input_o\ & ((\saldo_in[0]~input_o\) # (GND)))
-- \saldo_reg[0]~15\ = CARRY((\saldo_in[0]~input_o\) # (!\precio_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[0]~input_o\,
	datab => \saldo_in[0]~input_o\,
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

-- Location: IOIBUF_X28_Y0_N22
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\precio_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(13),
	o => \precio_in[13]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\saldo_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(13),
	o => \saldo_in[13]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\precio_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(12),
	o => \precio_in[12]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\saldo_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(12),
	o => \saldo_in[12]~input_o\);

-- Location: IOIBUF_X30_Y29_N29
\precio_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(11),
	o => \precio_in[11]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\saldo_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(11),
	o => \saldo_in[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\saldo_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(10),
	o => \saldo_in[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\precio_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(10),
	o => \precio_in[10]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\precio_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(9),
	o => \precio_in[9]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\saldo_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(9),
	o => \saldo_in[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\precio_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(8),
	o => \precio_in[8]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\saldo_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(8),
	o => \saldo_in[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\precio_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(7),
	o => \precio_in[7]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\saldo_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(7),
	o => \saldo_in[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\saldo_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(6),
	o => \saldo_in[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\precio_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(6),
	o => \precio_in[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\precio_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(5),
	o => \precio_in[5]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\saldo_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(5),
	o => \saldo_in[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\precio_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(4),
	o => \precio_in[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\saldo_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(4),
	o => \saldo_in[4]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\precio_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(3),
	o => \precio_in[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\saldo_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(3),
	o => \saldo_in[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\precio_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(2),
	o => \precio_in[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\saldo_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(2),
	o => \saldo_in[2]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\precio_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_in(1),
	o => \precio_in[1]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\saldo_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_in(1),
	o => \saldo_in[1]~input_o\);

-- Location: LCCOMB_X31_Y3_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\precio_in[0]~input_o\ & !\saldo_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[0]~input_o\,
	datab => \saldo_in[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y3_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\precio_in[1]~input_o\ & (\saldo_in[1]~input_o\ & !\LessThan0~1_cout\)) # (!\precio_in[1]~input_o\ & ((\saldo_in[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[1]~input_o\,
	datab => \saldo_in[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y3_N6
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\precio_in[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\saldo_in[2]~input_o\))) # (!\precio_in[2]~input_o\ & (!\saldo_in[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[2]~input_o\,
	datab => \saldo_in[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y3_N8
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\precio_in[3]~input_o\ & (\saldo_in[3]~input_o\ & !\LessThan0~5_cout\)) # (!\precio_in[3]~input_o\ & ((\saldo_in[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[3]~input_o\,
	datab => \saldo_in[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y3_N10
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\precio_in[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\saldo_in[4]~input_o\))) # (!\precio_in[4]~input_o\ & (!\saldo_in[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[4]~input_o\,
	datab => \saldo_in[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y3_N12
\LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\precio_in[5]~input_o\ & (\saldo_in[5]~input_o\ & !\LessThan0~9_cout\)) # (!\precio_in[5]~input_o\ & ((\saldo_in[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[5]~input_o\,
	datab => \saldo_in[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y3_N14
\LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\saldo_in[6]~input_o\ & (\precio_in[6]~input_o\ & !\LessThan0~11_cout\)) # (!\saldo_in[6]~input_o\ & ((\precio_in[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[6]~input_o\,
	datab => \precio_in[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y3_N16
\LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\precio_in[7]~input_o\ & (\saldo_in[7]~input_o\ & !\LessThan0~13_cout\)) # (!\precio_in[7]~input_o\ & ((\saldo_in[7]~input_o\) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[7]~input_o\,
	datab => \saldo_in[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X31_Y3_N18
\LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\precio_in[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\saldo_in[8]~input_o\))) # (!\precio_in[8]~input_o\ & (!\saldo_in[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[8]~input_o\,
	datab => \saldo_in[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X31_Y3_N20
\LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\precio_in[9]~input_o\ & (\saldo_in[9]~input_o\ & !\LessThan0~17_cout\)) # (!\precio_in[9]~input_o\ & ((\saldo_in[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[9]~input_o\,
	datab => \saldo_in[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X31_Y3_N22
\LessThan0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\saldo_in[10]~input_o\ & (\precio_in[10]~input_o\ & !\LessThan0~19_cout\)) # (!\saldo_in[10]~input_o\ & ((\precio_in[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[10]~input_o\,
	datab => \precio_in[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X31_Y3_N24
\LessThan0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\precio_in[11]~input_o\ & (\saldo_in[11]~input_o\ & !\LessThan0~21_cout\)) # (!\precio_in[11]~input_o\ & ((\saldo_in[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[11]~input_o\,
	datab => \saldo_in[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X31_Y3_N26
\LessThan0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\precio_in[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\saldo_in[12]~input_o\))) # (!\precio_in[12]~input_o\ & (!\saldo_in[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[12]~input_o\,
	datab => \saldo_in[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X31_Y3_N28
\LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = (\precio_in[13]~input_o\ & ((\LessThan0~25_cout\) # (!\saldo_in[13]~input_o\))) # (!\precio_in[13]~input_o\ & (\LessThan0~25_cout\ & !\saldo_in[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \precio_in[13]~input_o\,
	datad => \saldo_in[13]~input_o\,
	cin => \LessThan0~25_cout\,
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X31_Y3_N30
\saldo_reg[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[0]~16_combout\ = (\LessThan0~26_combout\) # (!\confirmar~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \confirmar~input_o\,
	datad => \LessThan0~26_combout\,
	combout => \saldo_reg[0]~16_combout\);

-- Location: FF_X30_Y3_N5
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

-- Location: LCCOMB_X30_Y3_N6
\saldo_reg[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[1]~17_combout\ = (\saldo_in[1]~input_o\ & ((\precio_in[1]~input_o\ & (!\saldo_reg[0]~15\)) # (!\precio_in[1]~input_o\ & (\saldo_reg[0]~15\ & VCC)))) # (!\saldo_in[1]~input_o\ & ((\precio_in[1]~input_o\ & ((\saldo_reg[0]~15\) # (GND))) # 
-- (!\precio_in[1]~input_o\ & (!\saldo_reg[0]~15\))))
-- \saldo_reg[1]~18\ = CARRY((\saldo_in[1]~input_o\ & (\precio_in[1]~input_o\ & !\saldo_reg[0]~15\)) # (!\saldo_in[1]~input_o\ & ((\precio_in[1]~input_o\) # (!\saldo_reg[0]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[1]~input_o\,
	datab => \precio_in[1]~input_o\,
	datad => VCC,
	cin => \saldo_reg[0]~15\,
	combout => \saldo_reg[1]~17_combout\,
	cout => \saldo_reg[1]~18\);

-- Location: FF_X30_Y3_N7
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

-- Location: LCCOMB_X30_Y3_N8
\saldo_reg[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[2]~19_combout\ = ((\precio_in[2]~input_o\ $ (\saldo_in[2]~input_o\ $ (\saldo_reg[1]~18\)))) # (GND)
-- \saldo_reg[2]~20\ = CARRY((\precio_in[2]~input_o\ & (\saldo_in[2]~input_o\ & !\saldo_reg[1]~18\)) # (!\precio_in[2]~input_o\ & ((\saldo_in[2]~input_o\) # (!\saldo_reg[1]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[2]~input_o\,
	datab => \saldo_in[2]~input_o\,
	datad => VCC,
	cin => \saldo_reg[1]~18\,
	combout => \saldo_reg[2]~19_combout\,
	cout => \saldo_reg[2]~20\);

-- Location: FF_X30_Y3_N9
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

-- Location: LCCOMB_X30_Y3_N10
\saldo_reg[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[3]~21_combout\ = (\saldo_in[3]~input_o\ & ((\precio_in[3]~input_o\ & (!\saldo_reg[2]~20\)) # (!\precio_in[3]~input_o\ & (\saldo_reg[2]~20\ & VCC)))) # (!\saldo_in[3]~input_o\ & ((\precio_in[3]~input_o\ & ((\saldo_reg[2]~20\) # (GND))) # 
-- (!\precio_in[3]~input_o\ & (!\saldo_reg[2]~20\))))
-- \saldo_reg[3]~22\ = CARRY((\saldo_in[3]~input_o\ & (\precio_in[3]~input_o\ & !\saldo_reg[2]~20\)) # (!\saldo_in[3]~input_o\ & ((\precio_in[3]~input_o\) # (!\saldo_reg[2]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[3]~input_o\,
	datab => \precio_in[3]~input_o\,
	datad => VCC,
	cin => \saldo_reg[2]~20\,
	combout => \saldo_reg[3]~21_combout\,
	cout => \saldo_reg[3]~22\);

-- Location: FF_X30_Y3_N11
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

-- Location: LCCOMB_X30_Y3_N12
\saldo_reg[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[4]~23_combout\ = ((\precio_in[4]~input_o\ $ (\saldo_in[4]~input_o\ $ (\saldo_reg[3]~22\)))) # (GND)
-- \saldo_reg[4]~24\ = CARRY((\precio_in[4]~input_o\ & (\saldo_in[4]~input_o\ & !\saldo_reg[3]~22\)) # (!\precio_in[4]~input_o\ & ((\saldo_in[4]~input_o\) # (!\saldo_reg[3]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[4]~input_o\,
	datab => \saldo_in[4]~input_o\,
	datad => VCC,
	cin => \saldo_reg[3]~22\,
	combout => \saldo_reg[4]~23_combout\,
	cout => \saldo_reg[4]~24\);

-- Location: FF_X30_Y3_N13
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

-- Location: LCCOMB_X30_Y3_N14
\saldo_reg[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[5]~25_combout\ = (\precio_in[5]~input_o\ & ((\saldo_in[5]~input_o\ & (!\saldo_reg[4]~24\)) # (!\saldo_in[5]~input_o\ & ((\saldo_reg[4]~24\) # (GND))))) # (!\precio_in[5]~input_o\ & ((\saldo_in[5]~input_o\ & (\saldo_reg[4]~24\ & VCC)) # 
-- (!\saldo_in[5]~input_o\ & (!\saldo_reg[4]~24\))))
-- \saldo_reg[5]~26\ = CARRY((\precio_in[5]~input_o\ & ((!\saldo_reg[4]~24\) # (!\saldo_in[5]~input_o\))) # (!\precio_in[5]~input_o\ & (!\saldo_in[5]~input_o\ & !\saldo_reg[4]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[5]~input_o\,
	datab => \saldo_in[5]~input_o\,
	datad => VCC,
	cin => \saldo_reg[4]~24\,
	combout => \saldo_reg[5]~25_combout\,
	cout => \saldo_reg[5]~26\);

-- Location: FF_X30_Y3_N15
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

-- Location: LCCOMB_X30_Y3_N16
\saldo_reg[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[6]~27_combout\ = ((\saldo_in[6]~input_o\ $ (\precio_in[6]~input_o\ $ (\saldo_reg[5]~26\)))) # (GND)
-- \saldo_reg[6]~28\ = CARRY((\saldo_in[6]~input_o\ & ((!\saldo_reg[5]~26\) # (!\precio_in[6]~input_o\))) # (!\saldo_in[6]~input_o\ & (!\precio_in[6]~input_o\ & !\saldo_reg[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[6]~input_o\,
	datab => \precio_in[6]~input_o\,
	datad => VCC,
	cin => \saldo_reg[5]~26\,
	combout => \saldo_reg[6]~27_combout\,
	cout => \saldo_reg[6]~28\);

-- Location: FF_X30_Y3_N17
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

-- Location: LCCOMB_X30_Y3_N18
\saldo_reg[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[7]~29_combout\ = (\precio_in[7]~input_o\ & ((\saldo_in[7]~input_o\ & (!\saldo_reg[6]~28\)) # (!\saldo_in[7]~input_o\ & ((\saldo_reg[6]~28\) # (GND))))) # (!\precio_in[7]~input_o\ & ((\saldo_in[7]~input_o\ & (\saldo_reg[6]~28\ & VCC)) # 
-- (!\saldo_in[7]~input_o\ & (!\saldo_reg[6]~28\))))
-- \saldo_reg[7]~30\ = CARRY((\precio_in[7]~input_o\ & ((!\saldo_reg[6]~28\) # (!\saldo_in[7]~input_o\))) # (!\precio_in[7]~input_o\ & (!\saldo_in[7]~input_o\ & !\saldo_reg[6]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[7]~input_o\,
	datab => \saldo_in[7]~input_o\,
	datad => VCC,
	cin => \saldo_reg[6]~28\,
	combout => \saldo_reg[7]~29_combout\,
	cout => \saldo_reg[7]~30\);

-- Location: FF_X30_Y3_N19
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

-- Location: LCCOMB_X30_Y3_N20
\saldo_reg[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[8]~31_combout\ = ((\saldo_in[8]~input_o\ $ (\precio_in[8]~input_o\ $ (\saldo_reg[7]~30\)))) # (GND)
-- \saldo_reg[8]~32\ = CARRY((\saldo_in[8]~input_o\ & ((!\saldo_reg[7]~30\) # (!\precio_in[8]~input_o\))) # (!\saldo_in[8]~input_o\ & (!\precio_in[8]~input_o\ & !\saldo_reg[7]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[8]~input_o\,
	datab => \precio_in[8]~input_o\,
	datad => VCC,
	cin => \saldo_reg[7]~30\,
	combout => \saldo_reg[8]~31_combout\,
	cout => \saldo_reg[8]~32\);

-- Location: FF_X30_Y3_N21
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

-- Location: LCCOMB_X30_Y3_N22
\saldo_reg[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[9]~33_combout\ = (\saldo_in[9]~input_o\ & ((\precio_in[9]~input_o\ & (!\saldo_reg[8]~32\)) # (!\precio_in[9]~input_o\ & (\saldo_reg[8]~32\ & VCC)))) # (!\saldo_in[9]~input_o\ & ((\precio_in[9]~input_o\ & ((\saldo_reg[8]~32\) # (GND))) # 
-- (!\precio_in[9]~input_o\ & (!\saldo_reg[8]~32\))))
-- \saldo_reg[9]~34\ = CARRY((\saldo_in[9]~input_o\ & (\precio_in[9]~input_o\ & !\saldo_reg[8]~32\)) # (!\saldo_in[9]~input_o\ & ((\precio_in[9]~input_o\) # (!\saldo_reg[8]~32\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[9]~input_o\,
	datab => \precio_in[9]~input_o\,
	datad => VCC,
	cin => \saldo_reg[8]~32\,
	combout => \saldo_reg[9]~33_combout\,
	cout => \saldo_reg[9]~34\);

-- Location: FF_X30_Y3_N23
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

-- Location: LCCOMB_X30_Y3_N24
\saldo_reg[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[10]~35_combout\ = ((\saldo_in[10]~input_o\ $ (\precio_in[10]~input_o\ $ (\saldo_reg[9]~34\)))) # (GND)
-- \saldo_reg[10]~36\ = CARRY((\saldo_in[10]~input_o\ & ((!\saldo_reg[9]~34\) # (!\precio_in[10]~input_o\))) # (!\saldo_in[10]~input_o\ & (!\precio_in[10]~input_o\ & !\saldo_reg[9]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[10]~input_o\,
	datab => \precio_in[10]~input_o\,
	datad => VCC,
	cin => \saldo_reg[9]~34\,
	combout => \saldo_reg[10]~35_combout\,
	cout => \saldo_reg[10]~36\);

-- Location: FF_X30_Y3_N25
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

-- Location: LCCOMB_X30_Y3_N26
\saldo_reg[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[11]~37_combout\ = (\saldo_in[11]~input_o\ & ((\precio_in[11]~input_o\ & (!\saldo_reg[10]~36\)) # (!\precio_in[11]~input_o\ & (\saldo_reg[10]~36\ & VCC)))) # (!\saldo_in[11]~input_o\ & ((\precio_in[11]~input_o\ & ((\saldo_reg[10]~36\) # (GND))) 
-- # (!\precio_in[11]~input_o\ & (!\saldo_reg[10]~36\))))
-- \saldo_reg[11]~38\ = CARRY((\saldo_in[11]~input_o\ & (\precio_in[11]~input_o\ & !\saldo_reg[10]~36\)) # (!\saldo_in[11]~input_o\ & ((\precio_in[11]~input_o\) # (!\saldo_reg[10]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_in[11]~input_o\,
	datab => \precio_in[11]~input_o\,
	datad => VCC,
	cin => \saldo_reg[10]~36\,
	combout => \saldo_reg[11]~37_combout\,
	cout => \saldo_reg[11]~38\);

-- Location: FF_X30_Y3_N27
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

-- Location: LCCOMB_X30_Y3_N28
\saldo_reg[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[12]~39_combout\ = ((\precio_in[12]~input_o\ $ (\saldo_in[12]~input_o\ $ (\saldo_reg[11]~38\)))) # (GND)
-- \saldo_reg[12]~40\ = CARRY((\precio_in[12]~input_o\ & (\saldo_in[12]~input_o\ & !\saldo_reg[11]~38\)) # (!\precio_in[12]~input_o\ & ((\saldo_in[12]~input_o\) # (!\saldo_reg[11]~38\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_in[12]~input_o\,
	datab => \saldo_in[12]~input_o\,
	datad => VCC,
	cin => \saldo_reg[11]~38\,
	combout => \saldo_reg[12]~39_combout\,
	cout => \saldo_reg[12]~40\);

-- Location: FF_X30_Y3_N29
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

-- Location: LCCOMB_X30_Y3_N30
\saldo_reg[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[13]~41_combout\ = \saldo_in[13]~input_o\ $ (\saldo_reg[12]~40\ $ (!\precio_in[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \saldo_in[13]~input_o\,
	datad => \precio_in[13]~input_o\,
	cin => \saldo_reg[12]~40\,
	combout => \saldo_reg[13]~41_combout\);

-- Location: FF_X30_Y3_N31
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

-- Location: LCCOMB_X30_Y3_N0
\ok_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ok_reg~0_combout\ = !\saldo_reg[0]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \saldo_reg[0]~16_combout\,
	combout => \ok_reg~0_combout\);

-- Location: FF_X30_Y3_N1
ok_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ok_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ok_reg~q\);

-- Location: LCCOMB_X31_Y3_N0
\no_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \no_reg~0_combout\ = (\confirmar~input_o\ & \LessThan0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \confirmar~input_o\,
	datad => \LessThan0~26_combout\,
	combout => \no_reg~0_combout\);

-- Location: FF_X31_Y3_N1
no_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \no_reg~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \no_reg~q\);

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


