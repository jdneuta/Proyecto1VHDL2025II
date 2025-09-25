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

-- DATE "09/23/2025 17:08:24"

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

ENTITY 	cont30 IS
    PORT (
	enable : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic;
	D4 : OUT std_logic;
	Fin : OUT std_logic
	);
END cont30;

-- Design Ports Information
-- D0	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Fin	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cont30 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_D4 : std_logic;
SIGNAL ww_Fin : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \D4~output_o\ : std_logic;
SIGNAL \Fin~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \count[1]~5_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[2]~10\ : std_logic;
SIGNAL \count[3]~11_combout\ : std_logic;
SIGNAL \count[3]~12\ : std_logic;
SIGNAL \count[4]~13_combout\ : std_logic;
SIGNAL \count[0]~7_combout\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \count[1]~6\ : std_logic;
SIGNAL \count[2]~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[0]~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_enable <= enable;
ww_reset <= reset;
ww_clk <= clk;
D0 <= ww_D0;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
D4 <= ww_D4;
Fin <= ww_Fin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N16
\D0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\D1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\D2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\D4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \D4~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\Fin~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \Fin~output_o\);

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

-- Location: IOIBUF_X1_Y0_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y2_N16
\count[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~5_combout\ = (count(0) & (count(1) $ (VCC))) # (!count(0) & (count(1) & VCC))
-- \count[1]~6\ = CARRY((count(0) & count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => VCC,
	combout => \count[1]~5_combout\,
	cout => \count[1]~6\);

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

-- Location: LCCOMB_X1_Y2_N18
\count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~9_combout\ = (count(2) & (!\count[1]~6\)) # (!count(2) & ((\count[1]~6\) # (GND)))
-- \count[2]~10\ = CARRY((!\count[1]~6\) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~6\,
	combout => \count[2]~9_combout\,
	cout => \count[2]~10\);

-- Location: LCCOMB_X1_Y2_N20
\count[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~11_combout\ = (count(3) & (\count[2]~10\ $ (GND))) # (!count(3) & (!\count[2]~10\ & VCC))
-- \count[3]~12\ = CARRY((count(3) & !\count[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~10\,
	combout => \count[3]~11_combout\,
	cout => \count[3]~12\);

-- Location: FF_X1_Y2_N21
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y2_N22
\count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~13_combout\ = count(4) $ (\count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	cin => \count[3]~12\,
	combout => \count[4]~13_combout\);

-- Location: FF_X1_Y2_N23
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[4]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X1_Y2_N6
\count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~7_combout\ = (!count(2)) # (!count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(4),
	datad => count(2),
	combout => \count[0]~7_combout\);

-- Location: LCCOMB_X1_Y2_N0
\count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = (\enable~input_o\ & (((\count[0]~7_combout\) # (!count(3))) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => count(1),
	datac => count(3),
	datad => \count[0]~7_combout\,
	combout => \count[0]~8_combout\);

-- Location: FF_X1_Y2_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: FF_X1_Y2_N19
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y2_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(2) & (count(1) & (count(4) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(4),
	datad => count(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y2_N12
\count[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~4_combout\ = count(0) $ (((\enable~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => count(0),
	datad => \Equal0~0_combout\,
	combout => \count[0]~4_combout\);

-- Location: FF_X1_Y2_N13
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y2_N8
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(0) & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

ww_D0 <= \D0~output_o\;

ww_D1 <= \D1~output_o\;

ww_D2 <= \D2~output_o\;

ww_D3 <= \D3~output_o\;

ww_D4 <= \D4~output_o\;

ww_Fin <= \Fin~output_o\;
END structure;


