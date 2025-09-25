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

-- DATE "09/25/2025 07:44:08"

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

ENTITY 	sumador_1000_500 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	coin500 : IN std_logic;
	coin1000 : IN std_logic;
	saldo : OUT STD.STANDARD.integer range 0 TO 9999
	);
END sumador_1000_500;

-- Design Ports Information
-- saldo[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[4]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[8]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[9]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[10]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[12]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[13]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin1000	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin500	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_1000_500 IS
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
SIGNAL ww_coin500 : std_logic;
SIGNAL ww_coin1000 : std_logic;
SIGNAL ww_saldo : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saldo[0]~output_o\ : std_logic;
SIGNAL \saldo[1]~output_o\ : std_logic;
SIGNAL \saldo[2]~output_o\ : std_logic;
SIGNAL \saldo[3]~output_o\ : std_logic;
SIGNAL \saldo[4]~output_o\ : std_logic;
SIGNAL \saldo[5]~output_o\ : std_logic;
SIGNAL \saldo[6]~output_o\ : std_logic;
SIGNAL \saldo[7]~output_o\ : std_logic;
SIGNAL \saldo[8]~output_o\ : std_logic;
SIGNAL \saldo[9]~output_o\ : std_logic;
SIGNAL \saldo[10]~output_o\ : std_logic;
SIGNAL \saldo[11]~output_o\ : std_logic;
SIGNAL \saldo[12]~output_o\ : std_logic;
SIGNAL \saldo[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \coin1000~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \coin500~input_o\ : std_logic;
SIGNAL \saldo_reg~1_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \saldo_reg~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \saldo_reg[2]~4_combout\ : std_logic;
SIGNAL \saldo_reg[2]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \saldo_reg~8_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \saldo_reg[3]~9_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \saldo_reg~6_combout\ : std_logic;
SIGNAL \saldo_reg~7_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \saldo_reg~2_combout\ : std_logic;
SIGNAL \saldo_reg[0]~3_combout\ : std_logic;
SIGNAL saldo_reg : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_coin500 <= coin500;
ww_coin1000 <= coin1000;
saldo <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_saldo));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X32_Y0_N9
\saldo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(0),
	devoe => ww_devoe,
	o => \saldo[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\saldo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(0),
	devoe => ww_devoe,
	o => \saldo[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\saldo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(2),
	devoe => ww_devoe,
	o => \saldo[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\saldo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(3),
	devoe => ww_devoe,
	o => \saldo[3]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\saldo[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(4),
	devoe => ww_devoe,
	o => \saldo[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\saldo[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(5),
	devoe => ww_devoe,
	o => \saldo[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\saldo[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(6),
	devoe => ww_devoe,
	o => \saldo[6]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\saldo[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(7),
	devoe => ww_devoe,
	o => \saldo[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\saldo[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(8),
	devoe => ww_devoe,
	o => \saldo[8]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\saldo[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(9),
	devoe => ww_devoe,
	o => \saldo[9]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\saldo[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(10),
	devoe => ww_devoe,
	o => \saldo[10]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\saldo[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(11),
	devoe => ww_devoe,
	o => \saldo[11]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\saldo[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(12),
	devoe => ww_devoe,
	o => \saldo[12]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\saldo[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => saldo_reg(13),
	devoe => ww_devoe,
	o => \saldo[13]~output_o\);

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

-- Location: IOIBUF_X39_Y0_N8
\coin1000~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin1000,
	o => \coin1000~input_o\);

-- Location: LCCOMB_X36_Y1_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = saldo_reg(3) $ (VCC)
-- \Add1~1\ = CARRY(saldo_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(3),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X39_Y0_N15
\coin500~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin500,
	o => \coin500~input_o\);

-- Location: LCCOMB_X39_Y1_N0
\saldo_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~1_combout\ = (!\coin1000~input_o\ & \coin500~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coin1000~input_o\,
	datad => \coin500~input_o\,
	combout => \saldo_reg~1_combout\);

-- Location: LCCOMB_X39_Y1_N12
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (saldo_reg(11)) # ((saldo_reg(10)) # (saldo_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(11),
	datac => saldo_reg(10),
	datad => saldo_reg(12),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X37_Y1_N26
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (saldo_reg(7)) # ((saldo_reg(6)) # ((saldo_reg(5) & saldo_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(7),
	datab => saldo_reg(5),
	datac => saldo_reg(4),
	datad => saldo_reg(6),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y1_N28
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (saldo_reg(5) & (saldo_reg(3) & ((saldo_reg(2)) # (saldo_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(2),
	datab => saldo_reg(5),
	datac => saldo_reg(0),
	datad => saldo_reg(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y1_N20
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (saldo_reg(8) & (saldo_reg(9) & ((\LessThan1~1_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(8),
	datab => saldo_reg(9),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X39_Y1_N26
\saldo_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~0_combout\ = (\coin1000~input_o\ & (saldo_reg(13) & ((\LessThan1~3_combout\) # (\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \coin1000~input_o\,
	datac => saldo_reg(13),
	datad => \LessThan1~2_combout\,
	combout => \saldo_reg~0_combout\);

-- Location: LCCOMB_X38_Y1_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = saldo_reg(2) $ (VCC)
-- \Add0~1\ = CARRY(saldo_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X36_Y1_N30
\saldo_reg[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[2]~4_combout\ = (\coin1000~input_o\) # ((\Add0~0_combout\) # (\saldo_reg~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datac => \Add0~0_combout\,
	datad => \saldo_reg~2_combout\,
	combout => \saldo_reg[2]~4_combout\);

-- Location: LCCOMB_X37_Y1_N6
\saldo_reg[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[2]~5_combout\ = (\saldo_reg~1_combout\ & (((\saldo_reg[2]~4_combout\)))) # (!\saldo_reg~1_combout\ & ((\saldo_reg~0_combout\ & ((\saldo_reg[2]~4_combout\))) # (!\saldo_reg~0_combout\ & (saldo_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~1_combout\,
	datab => \saldo_reg~0_combout\,
	datac => saldo_reg(2),
	datad => \saldo_reg[2]~4_combout\,
	combout => \saldo_reg[2]~5_combout\);

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

-- Location: FF_X37_Y1_N7
\saldo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[2]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(2));

-- Location: LCCOMB_X38_Y1_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (saldo_reg(3) & (!\Add0~1\)) # (!saldo_reg(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!saldo_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X36_Y1_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (saldo_reg(4) & (saldo_reg(2) & (saldo_reg(3) & saldo_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(4),
	datab => saldo_reg(2),
	datac => saldo_reg(3),
	datad => saldo_reg(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y1_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (saldo_reg(5)) # ((saldo_reg(6)) # ((saldo_reg(7)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(5),
	datab => saldo_reg(6),
	datac => saldo_reg(7),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y1_N4
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (saldo_reg(10) & ((saldo_reg(9)) # ((saldo_reg(8) & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(8),
	datab => saldo_reg(10),
	datac => saldo_reg(9),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y1_N2
\saldo_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~8_combout\ = (\saldo_reg~7_combout\) # ((!\coin1000~input_o\ & (saldo_reg(13) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => saldo_reg(13),
	datac => \LessThan0~2_combout\,
	datad => \saldo_reg~7_combout\,
	combout => \saldo_reg~8_combout\);

-- Location: LCCOMB_X37_Y1_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\saldo_reg~8_combout\) # ((\coin1000~input_o\ & (\Add1~0_combout\)) # (!\coin1000~input_o\ & ((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add1~0_combout\,
	datac => \Add0~2_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X39_Y1_N14
\saldo_reg[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[3]~9_combout\ = (\coin1000~input_o\) # (\coin500~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coin1000~input_o\,
	datad => \coin500~input_o\,
	combout => \saldo_reg[3]~9_combout\);

-- Location: FF_X37_Y1_N9
\saldo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(3));

-- Location: LCCOMB_X38_Y1_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (saldo_reg(4) & ((GND) # (!\Add0~3\))) # (!saldo_reg(4) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((saldo_reg(4)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X36_Y1_N8
\Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (saldo_reg(4) & (!\Add1~1\)) # (!saldo_reg(4) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!saldo_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(4),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X37_Y1_N30
\Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & ((\Add1~3_combout\))) # (!\coin1000~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add0~4_combout\,
	datac => \Add1~3_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X37_Y1_N31
\saldo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(4));

-- Location: LCCOMB_X38_Y1_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (saldo_reg(5) & (\Add0~5\ & VCC)) # (!saldo_reg(5) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!saldo_reg(5) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X36_Y1_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (saldo_reg(5) & ((GND) # (!\Add1~4\))) # (!saldo_reg(5) & (\Add1~4\ $ (GND)))
-- \Add1~7\ = CARRY((saldo_reg(5)) # (!\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(5),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y1_N16
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & ((\Add1~6_combout\))) # (!\coin1000~input_o\ & (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add0~6_combout\,
	datac => \Add1~6_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X37_Y1_N17
\saldo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(5));

-- Location: LCCOMB_X38_Y1_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (saldo_reg(6) & ((GND) # (!\Add0~7\))) # (!saldo_reg(6) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((saldo_reg(6)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X36_Y1_N12
\Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (saldo_reg(6) & (\Add1~7\ & VCC)) # (!saldo_reg(6) & (!\Add1~7\))
-- \Add1~10\ = CARRY((!saldo_reg(6) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(6),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X37_Y1_N14
\Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & ((\Add1~9_combout\))) # (!\coin1000~input_o\ & (\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add1~9_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X37_Y1_N15
\saldo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(6));

-- Location: LCCOMB_X38_Y1_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (saldo_reg(7) & (\Add0~9\ & VCC)) # (!saldo_reg(7) & (!\Add0~9\))
-- \Add0~11\ = CARRY((!saldo_reg(7) & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(7),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X36_Y1_N14
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (saldo_reg(7) & ((GND) # (!\Add1~10\))) # (!saldo_reg(7) & (\Add1~10\ $ (GND)))
-- \Add1~13\ = CARRY((saldo_reg(7)) # (!\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(7),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X37_Y1_N12
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & ((\Add1~12_combout\))) # (!\coin1000~input_o\ & (\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add0~10_combout\,
	datac => \Add1~12_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X37_Y1_N13
\saldo_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(7));

-- Location: LCCOMB_X38_Y1_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (saldo_reg(8) & ((GND) # (!\Add0~11\))) # (!saldo_reg(8) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((saldo_reg(8)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(8),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X36_Y1_N16
\Add1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (saldo_reg(8) & (\Add1~13\ & VCC)) # (!saldo_reg(8) & (!\Add1~13\))
-- \Add1~16\ = CARRY((!saldo_reg(8) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(8),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X37_Y1_N22
\Add1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\saldo_reg~8_combout\) # ((\coin1000~input_o\ & ((\Add1~15_combout\))) # (!\coin1000~input_o\ & (\Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add0~12_combout\,
	datac => \Add1~15_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X37_Y1_N23
\saldo_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(8));

-- Location: LCCOMB_X36_Y1_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (saldo_reg(9) & ((GND) # (!\Add1~16\))) # (!saldo_reg(9) & (\Add1~16\ $ (GND)))
-- \Add1~19\ = CARRY((saldo_reg(9)) # (!\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(9),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X38_Y1_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (saldo_reg(9) & (!\Add0~13\)) # (!saldo_reg(9) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!saldo_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(9),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X37_Y1_N0
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\saldo_reg~8_combout\) # ((\coin1000~input_o\ & (\Add1~18_combout\)) # (!\coin1000~input_o\ & ((\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add1~18_combout\,
	datac => \Add0~14_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X37_Y1_N1
\saldo_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(9));

-- Location: LCCOMB_X36_Y1_N20
\Add1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (saldo_reg(10) & (!\Add1~19\)) # (!saldo_reg(10) & ((\Add1~19\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~19\) # (!saldo_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X38_Y1_N22
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (saldo_reg(10) & (\Add0~15\ $ (GND))) # (!saldo_reg(10) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((saldo_reg(10) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(10),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X37_Y1_N18
\Add1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\saldo_reg~8_combout\) # ((\coin1000~input_o\ & (\Add1~21_combout\)) # (!\coin1000~input_o\ & ((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add1~21_combout\,
	datac => \Add0~16_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X37_Y1_N19
\saldo_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(10));

-- Location: LCCOMB_X36_Y1_N22
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (saldo_reg(11) & (\Add1~22\ $ (GND))) # (!saldo_reg(11) & (!\Add1~22\ & VCC))
-- \Add1~25\ = CARRY((saldo_reg(11) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(11),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X38_Y1_N24
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (saldo_reg(11) & (!\Add0~17\)) # (!saldo_reg(11) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!saldo_reg(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(11),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X38_Y1_N0
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & (\Add1~24_combout\)) # (!\coin1000~input_o\ & ((\Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \Add1~24_combout\,
	datac => \Add0~18_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X38_Y1_N1
\saldo_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(11));

-- Location: LCCOMB_X38_Y1_N26
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (saldo_reg(12) & (\Add0~19\ $ (GND))) # (!saldo_reg(12) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((saldo_reg(12) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(12),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X36_Y1_N24
\Add1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (saldo_reg(12) & (!\Add1~25\)) # (!saldo_reg(12) & ((\Add1~25\) # (GND)))
-- \Add1~28\ = CARRY((!\Add1~25\) # (!saldo_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(12),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X38_Y1_N30
\Add1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (!\saldo_reg~8_combout\ & ((\coin1000~input_o\ & ((\Add1~27_combout\))) # (!\coin1000~input_o\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \coin1000~input_o\,
	datac => \Add1~27_combout\,
	datad => \saldo_reg~8_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X38_Y1_N31
\saldo_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(12));

-- Location: LCCOMB_X37_Y1_N10
\saldo_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~6_combout\ = (\coin1000~input_o\ & ((saldo_reg(10)) # (\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datac => saldo_reg(10),
	datad => \LessThan1~2_combout\,
	combout => \saldo_reg~6_combout\);

-- Location: LCCOMB_X37_Y1_N24
\saldo_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~7_combout\ = (saldo_reg(13) & ((saldo_reg(12)) # ((saldo_reg(11)) # (\saldo_reg~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(12),
	datab => saldo_reg(13),
	datac => saldo_reg(11),
	datad => \saldo_reg~6_combout\,
	combout => \saldo_reg~7_combout\);

-- Location: LCCOMB_X36_Y1_N26
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = \Add1~28\ $ (!saldo_reg(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => saldo_reg(13),
	cin => \Add1~28\,
	combout => \Add1~30_combout\);

-- Location: LCCOMB_X38_Y1_N28
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = \Add0~21\ $ (saldo_reg(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => saldo_reg(13),
	cin => \Add0~21\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X38_Y1_N2
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\Add0~22_combout\) # ((saldo_reg(13) & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(13),
	datac => \LessThan0~2_combout\,
	datad => \Add0~22_combout\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X38_Y1_N4
\Add1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (\saldo_reg~7_combout\) # ((\coin1000~input_o\ & (\Add1~30_combout\)) # (!\coin1000~input_o\ & ((\Add1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin1000~input_o\,
	datab => \saldo_reg~7_combout\,
	datac => \Add1~30_combout\,
	datad => \Add1~32_combout\,
	combout => \Add1~33_combout\);

-- Location: FF_X38_Y1_N5
\saldo_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(13));

-- Location: LCCOMB_X36_Y1_N0
\saldo_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~2_combout\ = (saldo_reg(13) & ((saldo_reg(11)) # ((\LessThan0~2_combout\) # (saldo_reg(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(13),
	datab => saldo_reg(11),
	datac => \LessThan0~2_combout\,
	datad => saldo_reg(12),
	combout => \saldo_reg~2_combout\);

-- Location: LCCOMB_X37_Y1_N4
\saldo_reg[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[0]~3_combout\ = (saldo_reg(0)) # ((\saldo_reg~0_combout\) # ((\saldo_reg~2_combout\ & \saldo_reg~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~2_combout\,
	datab => \saldo_reg~1_combout\,
	datac => saldo_reg(0),
	datad => \saldo_reg~0_combout\,
	combout => \saldo_reg[0]~3_combout\);

-- Location: FF_X37_Y1_N5
\saldo_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(0));

ww_saldo(0) <= \saldo[0]~output_o\;

ww_saldo(1) <= \saldo[1]~output_o\;

ww_saldo(2) <= \saldo[2]~output_o\;

ww_saldo(3) <= \saldo[3]~output_o\;

ww_saldo(4) <= \saldo[4]~output_o\;

ww_saldo(5) <= \saldo[5]~output_o\;

ww_saldo(6) <= \saldo[6]~output_o\;

ww_saldo(7) <= \saldo[7]~output_o\;

ww_saldo(8) <= \saldo[8]~output_o\;

ww_saldo(9) <= \saldo[9]~output_o\;

ww_saldo(10) <= \saldo[10]~output_o\;

ww_saldo(11) <= \saldo[11]~output_o\;

ww_saldo(12) <= \saldo[12]~output_o\;

ww_saldo(13) <= \saldo[13]~output_o\;
END structure;


