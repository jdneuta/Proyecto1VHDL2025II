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

-- DATE "09/25/2025 21:37:39"

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

ENTITY 	top_productos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sw_sel : IN std_logic_vector(3 DOWNTO 0);
	buy : IN std_logic;
	disp2 : BUFFER std_logic_vector(6 DOWNTO 0);
	disp3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END top_productos;

-- Design Ports Information
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buy	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sel[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sel[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sel[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_sel[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_productos IS
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
SIGNAL ww_sw_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_buy : std_logic;
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \buy~input_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \disp3[0]~output_o\ : std_logic;
SIGNAL \disp3[1]~output_o\ : std_logic;
SIGNAL \disp3[2]~output_o\ : std_logic;
SIGNAL \disp3[3]~output_o\ : std_logic;
SIGNAL \disp3[4]~output_o\ : std_logic;
SIGNAL \disp3[5]~output_o\ : std_logic;
SIGNAL \disp3[6]~output_o\ : std_logic;
SIGNAL \sw_sel[0]~input_o\ : std_logic;
SIGNAL \sw_sel[3]~input_o\ : std_logic;
SIGNAL \sw_sel[2]~input_o\ : std_logic;
SIGNAL \sw_sel[1]~input_o\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~7\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27_cout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\ : std_logic;
SIGNAL \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ : std_logic;
SIGNAL \U_disp2|Mux6~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux5~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux4~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux3~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux2~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux1~0_combout\ : std_logic;
SIGNAL \U_disp2|Mux0~0_combout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \U_disp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sw_sel <= sw_sel;
ww_buy <= buy;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U_disp2|ALT_INV_Mux0~0_combout\ <= NOT \U_disp2|Mux0~0_combout\;
\U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\ <= NOT \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\;

-- Location: IOOBUF_X21_Y29_N23
\disp2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\disp2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\disp2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\disp2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\disp2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\disp2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\disp2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\disp3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\disp3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp3[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\disp3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \disp3[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\disp3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\disp3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\disp3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_bcd_prod|Div2|auto_generated|divider|divider|ALT_INV_add_sub_13_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\disp3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \disp3[6]~output_o\);

-- Location: IOIBUF_X0_Y25_N15
\sw_sel[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_sel(0),
	o => \sw_sel[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\sw_sel[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_sel(3),
	o => \sw_sel[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sw_sel[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_sel(2),
	o => \sw_sel[2]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sw_sel[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_sel(1),
	o => \sw_sel[1]~input_o\);

-- Location: LCCOMB_X7_Y27_N0
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\ = \sw_sel[1]~input_o\ $ (VCC)
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\ = CARRY(\sw_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[1]~input_o\,
	datad => VCC,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\);

-- Location: LCCOMB_X7_Y27_N2
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\ = (\sw_sel[2]~input_o\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\ & VCC)) # (!\sw_sel[2]~input_o\ & 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\))
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ = CARRY((!\sw_sel[2]~input_o\ & !\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[2]~input_o\,
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~3\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\);

-- Location: LCCOMB_X7_Y27_N4
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\ = (\sw_sel[3]~input_o\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ $ (GND))) # (!\sw_sel[3]~input_o\ & 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\ & VCC))
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~7\ = CARRY((\sw_sel[3]~input_o\ & !\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[3]~input_o\,
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~5\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~7\);

-- Location: LCCOMB_X7_Y27_N6
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~7\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9_cout\);

-- Location: LCCOMB_X7_Y27_N8
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[4]~9_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11_cout\);

-- Location: LCCOMB_X7_Y27_N10
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[5]~11_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13_cout\);

-- Location: LCCOMB_X7_Y27_N12
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[6]~13_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15_cout\);

-- Location: LCCOMB_X7_Y27_N14
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[7]~15_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17_cout\);

-- Location: LCCOMB_X7_Y27_N16
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[8]~17_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19_cout\);

-- Location: LCCOMB_X7_Y27_N18
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[9]~19_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21_cout\);

-- Location: LCCOMB_X7_Y27_N20
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[10]~21_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23_cout\);

-- Location: LCCOMB_X7_Y27_N22
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[11]~23_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25_cout\);

-- Location: LCCOMB_X7_Y27_N24
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27_cout\ = CARRY(!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[12]~25_cout\,
	cout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27_cout\);

-- Location: LCCOMB_X7_Y27_N26
\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ = !\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[13]~27_cout\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\);

-- Location: LCCOMB_X28_Y28_N16
\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\sw_sel[0]~input_o\)) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\sw_sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[0]~input_o\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datac => \sw_sel[0]~input_o\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\);

-- Location: LCCOMB_X28_Y28_N28
\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\sw_sel[3]~input_o\)) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[3]~input_o\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[3]~6_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\);

-- Location: LCCOMB_X7_Y27_N28
\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\sw_sel[2]~input_o\)) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[2]~input_o\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[2]~4_combout\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\);

-- Location: LCCOMB_X28_Y28_N18
\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & ((\sw_sel[1]~input_o\))) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[1]~2_combout\,
	datab => \sw_sel[1]~input_o\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|add_sub_13_result_int[14]~28_combout\,
	combout => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\);

-- Location: LCCOMB_X28_Y28_N24
\U_disp2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux6~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & (((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)))) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ $ (((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ & 
-- !\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y28_N26
\U_disp2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux5~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ & (((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\) # 
-- (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\)))) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & 
-- (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ $ (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y28_N4
\U_disp2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux4~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & (((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)))) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\) # 
-- (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N22
\U_disp2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux3~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\) # ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ 
-- & \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\)))) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ $ 
-- (((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ & !\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y28_N0
\U_disp2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux2~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\) # ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & 
-- (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\U_disp2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux1~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\) # (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ 
-- $ (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\)))) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & 
-- (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\)) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N20
\U_disp2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp2|Mux0~0_combout\ = (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ & 
-- ((!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\)))) # (!\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\ & 
-- ((\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\ $ (\U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[182]~0_combout\,
	datab => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[185]~3_combout\,
	datac => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[184]~2_combout\,
	datad => \U_bcd_prod|Mod2|auto_generated|divider|divider|StageOut[183]~1_combout\,
	combout => \U_disp2|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y28_N6
\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\ = CARRY(\sw_sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_sel[1]~input_o\,
	datad => VCC,
	cout => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\);

-- Location: LCCOMB_X28_Y28_N8
\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\ = CARRY((!\sw_sel[2]~input_o\ & !\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sw_sel[2]~input_o\,
	datad => VCC,
	cin => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1_cout\,
	cout => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\);

-- Location: LCCOMB_X28_Y28_N10
\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\ = CARRY((\sw_sel[3]~input_o\ & !\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sw_sel[3]~input_o\,
	datad => VCC,
	cin => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3_cout\,
	cout => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\);

-- Location: LCCOMB_X28_Y28_N12
\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\ = CARRY(!\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5_cout\,
	cout => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y28_N14
\U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7_cout\,
	combout => \U_bcd_prod|Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\buy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buy,
	o => \buy~input_o\);

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_disp3(0) <= \disp3[0]~output_o\;

ww_disp3(1) <= \disp3[1]~output_o\;

ww_disp3(2) <= \disp3[2]~output_o\;

ww_disp3(3) <= \disp3[3]~output_o\;

ww_disp3(4) <= \disp3[4]~output_o\;

ww_disp3(5) <= \disp3[5]~output_o\;

ww_disp3(6) <= \disp3[6]~output_o\;
END structure;


