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

-- DATE "09/25/2025 10:40:04"

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

ENTITY 	sumador_saldo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sw500 : IN std_logic;
	sw1000 : IN std_logic;
	saldo : OUT STD.STANDARD.integer range 0 TO 9500
	);
END sumador_saldo;

-- Design Ports Information
-- saldo[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[6]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[9]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[10]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[11]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[12]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo[13]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1000	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw500	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sumador_saldo IS
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
SIGNAL ww_sw500 : std_logic;
SIGNAL ww_sw1000 : std_logic;
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
SIGNAL \sw500~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sw1000~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \saldo_reg~2_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \saldo_reg~21_combout\ : std_logic;
SIGNAL \saldo_reg~22_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \saldo_reg[3]~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \saldo_reg~23_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \saldo_reg~24_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \saldo_reg~9_combout\ : std_logic;
SIGNAL \saldo_reg~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \saldo_reg~11_combout\ : std_logic;
SIGNAL \saldo_reg~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \saldo_reg~13_combout\ : std_logic;
SIGNAL \saldo_reg~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \saldo_reg~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \saldo_reg~5_combout\ : std_logic;
SIGNAL \saldo_reg~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \saldo_reg~7_combout\ : std_logic;
SIGNAL \saldo_reg~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \saldo_reg~15_combout\ : std_logic;
SIGNAL \saldo_reg~16_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \saldo_reg~17_combout\ : std_logic;
SIGNAL \saldo_reg~18_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \saldo_reg~19_combout\ : std_logic;
SIGNAL \saldo_reg~20_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \saldo_reg~0_combout\ : std_logic;
SIGNAL \saldo_reg~1_combout\ : std_logic;
SIGNAL saldo_reg : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sw500 <= sw500;
ww_sw1000 <= sw1000;
saldo <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_saldo));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X39_Y29_N16
\saldo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saldo[0]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\saldo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saldo[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOIBUF_X16_Y0_N1
\sw500~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw500,
	o => \sw500~input_o\);

-- Location: LCCOMB_X14_Y10_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = saldo_reg(2) $ (VCC)
-- \Add0~1\ = CARRY(saldo_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(2),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y10_N1
\sw1000~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1000,
	o => \sw1000~input_o\);

-- Location: LCCOMB_X16_Y10_N6
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

-- Location: LCCOMB_X14_Y10_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (saldo_reg(3) & (!\Add0~1\)) # (!saldo_reg(3) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!saldo_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(3),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X17_Y10_N2
\saldo_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~2_combout\ = (\sw500~input_o\ & ((\Add0~2_combout\))) # (!\sw500~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~2_combout\,
	combout => \saldo_reg~2_combout\);

-- Location: LCCOMB_X16_Y10_N20
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (saldo_reg(10) & (!\Add1~13\)) # (!saldo_reg(10) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!saldo_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(10),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X16_Y10_N22
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (saldo_reg(11) & (\Add1~15\ $ (GND))) # (!saldo_reg(11) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((saldo_reg(11) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(11),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X16_Y10_N24
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (saldo_reg(12) & (!\Add1~17\)) # (!saldo_reg(12) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!saldo_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(12),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X14_Y10_N22
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

-- Location: LCCOMB_X14_Y10_N24
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (saldo_reg(12) & (\Add0~19\ $ (GND))) # (!saldo_reg(12) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((saldo_reg(12) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(12),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X17_Y10_N12
\saldo_reg~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~21_combout\ = (\sw500~input_o\ & ((\Add0~20_combout\))) # (!\sw500~input_o\ & (\Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => \sw500~input_o\,
	datad => \Add0~20_combout\,
	combout => \saldo_reg~21_combout\);

-- Location: LCCOMB_X15_Y10_N0
\saldo_reg~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~22_combout\ = (\saldo_reg~21_combout\ & ((\sw500~input_o\ & ((!\LessThan0~2_combout\))) # (!\sw500~input_o\ & (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \LessThan1~4_combout\,
	datac => \saldo_reg~21_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~22_combout\);

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

-- Location: LCCOMB_X17_Y10_N24
\saldo_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg[3]~4_combout\ = (\sw500~input_o\) # (\sw1000~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw500~input_o\,
	datad => \sw1000~input_o\,
	combout => \saldo_reg[3]~4_combout\);

-- Location: FF_X15_Y10_N1
\saldo_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(12));

-- Location: LCCOMB_X16_Y10_N26
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (saldo_reg(13) & (\Add1~19\ $ (GND))) # (!saldo_reg(13) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((saldo_reg(13) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(13),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X16_Y10_N28
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X17_Y10_N18
\saldo_reg~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~23_combout\ = (!\sw500~input_o\ & ((\Add1~20_combout\) # (\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add1~20_combout\,
	datad => \Add1~22_combout\,
	combout => \saldo_reg~23_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (saldo_reg(13) & (!\Add0~21\)) # (!saldo_reg(13) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!saldo_reg(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(13),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X14_Y10_N28
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = !\Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X17_Y10_N20
\saldo_reg~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~24_combout\ = (\saldo_reg~23_combout\) # ((\sw500~input_o\ & ((\Add0~22_combout\) # (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \saldo_reg~23_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~24_combout\,
	combout => \saldo_reg~24_combout\);

-- Location: FF_X17_Y10_N21
\saldo_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(13));

-- Location: LCCOMB_X16_Y10_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (saldo_reg(4) & (!\Add1~1\)) # (!saldo_reg(4) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!saldo_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(4),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X16_Y10_N10
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (saldo_reg(5) & ((GND) # (!\Add1~3\))) # (!saldo_reg(5) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((saldo_reg(5)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(5),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X16_Y10_N12
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (saldo_reg(6) & (\Add1~5\ & VCC)) # (!saldo_reg(6) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!saldo_reg(6) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(6),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X14_Y10_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (saldo_reg(5) & (\Add0~5\ & VCC)) # (!saldo_reg(5) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!saldo_reg(5) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(5),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X14_Y10_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (saldo_reg(6) & ((GND) # (!\Add0~7\))) # (!saldo_reg(6) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((saldo_reg(6)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(6),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X17_Y10_N22
\saldo_reg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~9_combout\ = (\sw500~input_o\ & ((\Add0~8_combout\))) # (!\sw500~input_o\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \sw500~input_o\,
	datad => \Add0~8_combout\,
	combout => \saldo_reg~9_combout\);

-- Location: LCCOMB_X15_Y10_N6
\saldo_reg~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~10_combout\ = (\saldo_reg~9_combout\ & ((\sw500~input_o\ & ((!\LessThan0~2_combout\))) # (!\sw500~input_o\ & (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~9_combout\,
	datab => \sw500~input_o\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~10_combout\);

-- Location: FF_X15_Y10_N7
\saldo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(6));

-- Location: LCCOMB_X14_Y10_N14
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

-- Location: LCCOMB_X16_Y10_N14
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (saldo_reg(7) & ((GND) # (!\Add1~7\))) # (!saldo_reg(7) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((saldo_reg(7)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(7),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X17_Y10_N8
\saldo_reg~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~11_combout\ = (\sw500~input_o\ & (\Add0~10_combout\)) # (!\sw500~input_o\ & ((\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add0~10_combout\,
	datad => \Add1~8_combout\,
	combout => \saldo_reg~11_combout\);

-- Location: LCCOMB_X16_Y10_N30
\saldo_reg~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~12_combout\ = (\saldo_reg~11_combout\ & ((\sw500~input_o\ & (!\LessThan0~2_combout\)) # (!\sw500~input_o\ & ((!\LessThan1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \saldo_reg~11_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \saldo_reg~12_combout\);

-- Location: FF_X16_Y10_N31
\saldo_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(7));

-- Location: LCCOMB_X14_Y10_N16
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

-- Location: LCCOMB_X16_Y10_N16
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (saldo_reg(8) & (\Add1~9\ & VCC)) # (!saldo_reg(8) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!saldo_reg(8) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(8),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X15_Y10_N14
\saldo_reg~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~13_combout\ = (\sw500~input_o\ & (\Add0~12_combout\)) # (!\sw500~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add0~12_combout\,
	datad => \Add1~10_combout\,
	combout => \saldo_reg~13_combout\);

-- Location: LCCOMB_X15_Y10_N12
\saldo_reg~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~14_combout\ = (\saldo_reg~13_combout\) # ((\sw500~input_o\ & ((\LessThan0~2_combout\))) # (!\sw500~input_o\ & (\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \saldo_reg~13_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~14_combout\);

-- Location: FF_X15_Y10_N13
\saldo_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(8));

-- Location: LCCOMB_X14_Y10_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (saldo_reg(9) & (!\Add0~13\)) # (!saldo_reg(9) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!saldo_reg(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => saldo_reg(9),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X14_Y10_N20
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

-- Location: LCCOMB_X14_Y10_N0
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~12_combout\ & ((\Add0~8_combout\) # ((\Add0~10_combout\) # (\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~6_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y10_N2
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~18_combout\) # ((\Add0~16_combout\ & ((\Add0~14_combout\) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~16_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y10_N30
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~24_combout\) # ((\Add0~22_combout\ & ((\Add0~20_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~24_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y10_N4
\saldo_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~3_combout\ = (\saldo_reg~2_combout\) # ((\sw500~input_o\ & (\LessThan0~2_combout\)) # (!\sw500~input_o\ & ((\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~2_combout\,
	datab => \sw500~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \saldo_reg~3_combout\);

-- Location: FF_X16_Y10_N5
\saldo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(3));

-- Location: LCCOMB_X14_Y10_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (saldo_reg(4) & ((GND) # (!\Add0~3\))) # (!saldo_reg(4) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((saldo_reg(4)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(4),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X17_Y10_N30
\saldo_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~5_combout\ = (\sw500~input_o\ & ((\Add0~4_combout\))) # (!\sw500~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \sw500~input_o\,
	datad => \Add0~4_combout\,
	combout => \saldo_reg~5_combout\);

-- Location: LCCOMB_X16_Y10_N2
\saldo_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~6_combout\ = (\saldo_reg~5_combout\) # ((\sw500~input_o\ & (\LessThan0~2_combout\)) # (!\sw500~input_o\ & ((\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~5_combout\,
	datab => \sw500~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \saldo_reg~6_combout\);

-- Location: FF_X16_Y10_N3
\saldo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(4));

-- Location: LCCOMB_X17_Y10_N4
\saldo_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~7_combout\ = (\sw500~input_o\ & ((\Add0~6_combout\))) # (!\sw500~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => \sw500~input_o\,
	datad => \Add0~6_combout\,
	combout => \saldo_reg~7_combout\);

-- Location: LCCOMB_X16_Y10_N0
\saldo_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~8_combout\ = (\saldo_reg~7_combout\ & ((\sw500~input_o\ & (!\LessThan0~2_combout\)) # (!\sw500~input_o\ & ((!\LessThan1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_reg~7_combout\,
	datab => \sw500~input_o\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \saldo_reg~8_combout\);

-- Location: FF_X16_Y10_N1
\saldo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(5));

-- Location: LCCOMB_X15_Y10_N22
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\Add1~10_combout\ & ((\Add1~4_combout\) # ((\Add1~8_combout\) # (\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~8_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~10_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y10_N18
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (saldo_reg(9) & ((GND) # (!\Add1~11\))) # (!saldo_reg(9) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((saldo_reg(9)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => saldo_reg(9),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X15_Y10_N18
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\Add1~14_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Add1~20_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y10_N8
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~2_combout\) # ((\LessThan1~3_combout\ & ((\LessThan1~0_combout\) # (\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Add1~12_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X17_Y10_N6
\saldo_reg~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~15_combout\ = (\sw500~input_o\ & (\Add0~14_combout\)) # (!\sw500~input_o\ & ((\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add0~14_combout\,
	datad => \Add1~12_combout\,
	combout => \saldo_reg~15_combout\);

-- Location: LCCOMB_X15_Y10_N26
\saldo_reg~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~16_combout\ = (\saldo_reg~15_combout\ & ((\sw500~input_o\ & ((!\LessThan0~2_combout\))) # (!\sw500~input_o\ & (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \LessThan1~4_combout\,
	datac => \saldo_reg~15_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~16_combout\);

-- Location: FF_X15_Y10_N27
\saldo_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(9));

-- Location: LCCOMB_X15_Y10_N24
\saldo_reg~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~17_combout\ = (\sw500~input_o\ & ((\Add0~16_combout\))) # (!\sw500~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add1~14_combout\,
	datad => \Add0~16_combout\,
	combout => \saldo_reg~17_combout\);

-- Location: LCCOMB_X15_Y10_N16
\saldo_reg~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~18_combout\ = (\saldo_reg~17_combout\) # ((\sw500~input_o\ & ((\LessThan0~2_combout\))) # (!\sw500~input_o\ & (\LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \saldo_reg~17_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~18_combout\);

-- Location: FF_X15_Y10_N17
\saldo_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(10));

-- Location: LCCOMB_X15_Y10_N2
\saldo_reg~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~19_combout\ = (\sw500~input_o\ & ((\Add0~18_combout\))) # (!\sw500~input_o\ & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \Add1~16_combout\,
	datad => \Add0~18_combout\,
	combout => \saldo_reg~19_combout\);

-- Location: LCCOMB_X15_Y10_N10
\saldo_reg~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~20_combout\ = (\saldo_reg~19_combout\ & ((\sw500~input_o\ & ((!\LessThan0~2_combout\))) # (!\sw500~input_o\ & (!\LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \saldo_reg~19_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~20_combout\);

-- Location: FF_X15_Y10_N11
\saldo_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \saldo_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(11));

-- Location: LCCOMB_X15_Y10_N30
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Add1~22_combout\) # ((\Add1~20_combout\ & ((\Add1~16_combout\) # (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~20_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~22_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X15_Y10_N28
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Add1~14_combout\ & (\Add1~20_combout\ & ((\Add1~12_combout\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~12_combout\,
	datac => \LessThan1~0_combout\,
	datad => \Add1~20_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X15_Y10_N4
\saldo_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~0_combout\ = (saldo_reg(2)) # ((\sw1000~input_o\ & ((\LessThan1~2_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1000~input_o\,
	datab => saldo_reg(2),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~1_combout\,
	combout => \saldo_reg~0_combout\);

-- Location: LCCOMB_X15_Y10_N20
\saldo_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \saldo_reg~1_combout\ = (\sw500~input_o\ & ((\Add0~0_combout\) # ((\LessThan0~2_combout\)))) # (!\sw500~input_o\ & (((\saldo_reg~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datab => \Add0~0_combout\,
	datac => \saldo_reg~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \saldo_reg~1_combout\);

-- Location: FF_X15_Y10_N21
\saldo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saldo_reg~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => saldo_reg(2));

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


