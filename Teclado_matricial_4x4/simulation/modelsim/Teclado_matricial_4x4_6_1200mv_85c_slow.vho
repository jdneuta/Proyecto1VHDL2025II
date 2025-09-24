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

-- DATE "09/23/2025 16:49:25"

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

ENTITY 	Teclado_matricial_4x4 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	row_in : IN std_logic_vector(3 DOWNTO 0);
	col_out : OUT std_logic_vector(3 DOWNTO 0);
	key_pressed : OUT std_logic;
	key_code : OUT std_logic_vector(3 DOWNTO 0)
	);
END Teclado_matricial_4x4;

-- Design Ports Information
-- col_out[0]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_pressed	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_code[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_code[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_code[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_code[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[0]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[1]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[3]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Teclado_matricial_4x4 IS
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
SIGNAL ww_row_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_col_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_pressed : std_logic;
SIGNAL ww_key_code : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \col_out[0]~output_o\ : std_logic;
SIGNAL \col_out[1]~output_o\ : std_logic;
SIGNAL \col_out[2]~output_o\ : std_logic;
SIGNAL \col_out[3]~output_o\ : std_logic;
SIGNAL \key_pressed~output_o\ : std_logic;
SIGNAL \key_code[0]~output_o\ : std_logic;
SIGNAL \key_code[1]~output_o\ : std_logic;
SIGNAL \key_code[2]~output_o\ : std_logic;
SIGNAL \key_code[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \row_counter[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \row_counter[1]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \debounce_cnt[0]~20_combout\ : std_logic;
SIGNAL \row_in[1]~input_o\ : std_logic;
SIGNAL \row_in[2]~input_o\ : std_logic;
SIGNAL \row_in[3]~input_o\ : std_logic;
SIGNAL \row_in[0]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \latched_key_code[0]~2_combout\ : std_logic;
SIGNAL \key_valid~feeder_combout\ : std_logic;
SIGNAL \key_valid~q\ : std_logic;
SIGNAL \debounce_cnt[19]~50_combout\ : std_logic;
SIGNAL \debounce_cnt[0]~21\ : std_logic;
SIGNAL \debounce_cnt[1]~22_combout\ : std_logic;
SIGNAL \debounce_cnt[1]~23\ : std_logic;
SIGNAL \debounce_cnt[2]~24_combout\ : std_logic;
SIGNAL \debounce_cnt[2]~25\ : std_logic;
SIGNAL \debounce_cnt[3]~26_combout\ : std_logic;
SIGNAL \debounce_cnt[3]~27\ : std_logic;
SIGNAL \debounce_cnt[4]~28_combout\ : std_logic;
SIGNAL \debounce_cnt[4]~29\ : std_logic;
SIGNAL \debounce_cnt[5]~30_combout\ : std_logic;
SIGNAL \debounce_cnt[5]~31\ : std_logic;
SIGNAL \debounce_cnt[6]~32_combout\ : std_logic;
SIGNAL \debounce_cnt[6]~33\ : std_logic;
SIGNAL \debounce_cnt[7]~34_combout\ : std_logic;
SIGNAL \debounce_cnt[7]~35\ : std_logic;
SIGNAL \debounce_cnt[8]~36_combout\ : std_logic;
SIGNAL \debounce_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \debounce_cnt[8]~37\ : std_logic;
SIGNAL \debounce_cnt[9]~38_combout\ : std_logic;
SIGNAL \debounce_cnt[9]~feeder_combout\ : std_logic;
SIGNAL \debounce_cnt[9]~39\ : std_logic;
SIGNAL \debounce_cnt[10]~40_combout\ : std_logic;
SIGNAL \debounce_cnt[10]~41\ : std_logic;
SIGNAL \debounce_cnt[11]~42_combout\ : std_logic;
SIGNAL \debounce_cnt[11]~43\ : std_logic;
SIGNAL \debounce_cnt[12]~44_combout\ : std_logic;
SIGNAL \debounce_cnt[12]~45\ : std_logic;
SIGNAL \debounce_cnt[13]~46_combout\ : std_logic;
SIGNAL \debounce_cnt[13]~47\ : std_logic;
SIGNAL \debounce_cnt[14]~48_combout\ : std_logic;
SIGNAL \debounce_cnt[14]~49\ : std_logic;
SIGNAL \debounce_cnt[15]~51_combout\ : std_logic;
SIGNAL \debounce_cnt[15]~52\ : std_logic;
SIGNAL \debounce_cnt[16]~53_combout\ : std_logic;
SIGNAL \debounce_cnt[16]~54\ : std_logic;
SIGNAL \debounce_cnt[17]~55_combout\ : std_logic;
SIGNAL \debounce_cnt[17]~56\ : std_logic;
SIGNAL \debounce_cnt[18]~57_combout\ : std_logic;
SIGNAL \debounce_cnt[18]~58\ : std_logic;
SIGNAL \debounce_cnt[19]~59_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \key_stable~0_combout\ : std_logic;
SIGNAL \key_stable~q\ : std_logic;
SIGNAL \latched_key_code~0_combout\ : std_logic;
SIGNAL \latched_key_code~1_combout\ : std_logic;
SIGNAL \latched_key_code~3_combout\ : std_logic;
SIGNAL \latched_key_code~4_combout\ : std_logic;
SIGNAL row_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL latched_key_code : std_logic_vector(3 DOWNTO 0);
SIGNAL debounce_cnt : std_logic_vector(19 DOWNTO 0);
SIGNAL current_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_key_valid~q\ : std_logic;
SIGNAL ALT_INV_current_row : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_row_in <= row_in;
col_out <= ww_col_out;
key_pressed <= ww_key_pressed;
key_code <= ww_key_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_key_valid~q\ <= NOT \key_valid~q\;
ALT_INV_current_row(3) <= NOT current_row(3);
ALT_INV_current_row(2) <= NOT current_row(2);
ALT_INV_current_row(1) <= NOT current_row(1);
ALT_INV_current_row(0) <= NOT current_row(0);

-- Location: IOOBUF_X41_Y20_N23
\col_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_current_row(0),
	devoe => ww_devoe,
	o => \col_out[0]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\col_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_current_row(1),
	devoe => ww_devoe,
	o => \col_out[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\col_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_current_row(2),
	devoe => ww_devoe,
	o => \col_out[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\col_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_current_row(3),
	devoe => ww_devoe,
	o => \col_out[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N23
\key_pressed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_stable~q\,
	devoe => ww_devoe,
	o => \key_pressed~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\key_code[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => latched_key_code(0),
	devoe => ww_devoe,
	o => \key_code[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\key_code[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => latched_key_code(1),
	devoe => ww_devoe,
	o => \key_code[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\key_code[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => latched_key_code(2),
	devoe => ww_devoe,
	o => \key_code[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\key_code[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => latched_key_code(3),
	devoe => ww_devoe,
	o => \key_code[3]~output_o\);

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

-- Location: LCCOMB_X40_Y20_N30
\row_counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row_counter[0]~1_combout\ = !row_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => row_counter(0),
	combout => \row_counter[0]~1_combout\);

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

-- Location: FF_X40_Y20_N31
\row_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_counter[0]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_counter(0));

-- Location: LCCOMB_X40_Y20_N12
\row_counter[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \row_counter[1]~0_combout\ = row_counter(0) $ (row_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(0),
	datac => row_counter(1),
	combout => \row_counter[1]~0_combout\);

-- Location: FF_X40_Y20_N13
\row_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_counter[1]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_counter(1));

-- Location: LCCOMB_X40_Y20_N16
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!row_counter(0) & !row_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => row_counter(0),
	datad => row_counter(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X40_Y20_N17
\current_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_row(0));

-- Location: LCCOMB_X40_Y20_N6
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (row_counter(0) & !row_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => row_counter(0),
	datad => row_counter(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X40_Y20_N7
\current_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_row(1));

-- Location: LCCOMB_X40_Y20_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!row_counter(0) & row_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => row_counter(0),
	datad => row_counter(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X40_Y20_N9
\current_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_row(2));

-- Location: LCCOMB_X40_Y20_N22
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (row_counter(0) & row_counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => row_counter(0),
	datad => row_counter(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X40_Y20_N23
\current_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => current_row(3));

-- Location: LCCOMB_X39_Y20_N12
\debounce_cnt[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[0]~20_combout\ = debounce_cnt(0) $ (VCC)
-- \debounce_cnt[0]~21\ = CARRY(debounce_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(0),
	datad => VCC,
	combout => \debounce_cnt[0]~20_combout\,
	cout => \debounce_cnt[0]~21\);

-- Location: IOIBUF_X41_Y20_N1
\row_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(1),
	o => \row_in[1]~input_o\);

-- Location: IOIBUF_X41_Y20_N15
\row_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(2),
	o => \row_in[2]~input_o\);

-- Location: IOIBUF_X41_Y19_N8
\row_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(3),
	o => \row_in[3]~input_o\);

-- Location: IOIBUF_X41_Y21_N8
\row_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(0),
	o => \row_in[0]~input_o\);

-- Location: LCCOMB_X40_Y20_N26
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\row_in[2]~input_o\ & (\row_in[3]~input_o\ & (\row_in[1]~input_o\ $ (\row_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_in[1]~input_o\,
	datab => \row_in[2]~input_o\,
	datac => \row_in[3]~input_o\,
	datad => \row_in[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X40_Y20_N24
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\row_in[1]~input_o\ & (\row_in[3]~input_o\ & (\row_in[2]~input_o\ $ (\row_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_in[1]~input_o\,
	datab => \row_in[2]~input_o\,
	datac => \row_in[3]~input_o\,
	datad => \row_in[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X40_Y20_N14
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!current_row(1) & (!current_row(2) & (!current_row(3) & !current_row(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => current_row(1),
	datab => current_row(2),
	datac => current_row(3),
	datad => current_row(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y20_N28
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\row_in[1]~input_o\ & ((\row_in[2]~input_o\ & (\row_in[3]~input_o\ $ (\row_in[0]~input_o\))) # (!\row_in[2]~input_o\ & (\row_in[3]~input_o\ & \row_in[0]~input_o\)))) # (!\row_in[1]~input_o\ & (\row_in[2]~input_o\ & (\row_in[3]~input_o\ 
-- & \row_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \row_in[1]~input_o\,
	datab => \row_in[2]~input_o\,
	datac => \row_in[3]~input_o\,
	datad => \row_in[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X40_Y20_N4
\latched_key_code[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \latched_key_code[0]~2_combout\ = (!\Equal0~0_combout\ & ((\Mux5~0_combout\) # ((\Mux6~0_combout\) # (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \latched_key_code[0]~2_combout\);

-- Location: LCCOMB_X39_Y20_N10
\key_valid~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key_valid~feeder_combout\ = \latched_key_code[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \latched_key_code[0]~2_combout\,
	combout => \key_valid~feeder_combout\);

-- Location: FF_X39_Y20_N11
key_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_valid~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_valid~q\);

-- Location: LCCOMB_X39_Y19_N22
\debounce_cnt[19]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[19]~50_combout\ = (!\LessThan0~4_combout\) # (!\key_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_valid~q\,
	datad => \LessThan0~4_combout\,
	combout => \debounce_cnt[19]~50_combout\);

-- Location: FF_X39_Y20_N13
\debounce_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[0]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(0));

-- Location: LCCOMB_X39_Y20_N14
\debounce_cnt[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[1]~22_combout\ = (debounce_cnt(1) & (!\debounce_cnt[0]~21\)) # (!debounce_cnt(1) & ((\debounce_cnt[0]~21\) # (GND)))
-- \debounce_cnt[1]~23\ = CARRY((!\debounce_cnt[0]~21\) # (!debounce_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(1),
	datad => VCC,
	cin => \debounce_cnt[0]~21\,
	combout => \debounce_cnt[1]~22_combout\,
	cout => \debounce_cnt[1]~23\);

-- Location: FF_X39_Y20_N15
\debounce_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[1]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(1));

-- Location: LCCOMB_X39_Y20_N16
\debounce_cnt[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[2]~24_combout\ = (debounce_cnt(2) & (\debounce_cnt[1]~23\ $ (GND))) # (!debounce_cnt(2) & (!\debounce_cnt[1]~23\ & VCC))
-- \debounce_cnt[2]~25\ = CARRY((debounce_cnt(2) & !\debounce_cnt[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(2),
	datad => VCC,
	cin => \debounce_cnt[1]~23\,
	combout => \debounce_cnt[2]~24_combout\,
	cout => \debounce_cnt[2]~25\);

-- Location: FF_X39_Y20_N17
\debounce_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[2]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(2));

-- Location: LCCOMB_X39_Y20_N18
\debounce_cnt[3]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[3]~26_combout\ = (debounce_cnt(3) & (!\debounce_cnt[2]~25\)) # (!debounce_cnt(3) & ((\debounce_cnt[2]~25\) # (GND)))
-- \debounce_cnt[3]~27\ = CARRY((!\debounce_cnt[2]~25\) # (!debounce_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(3),
	datad => VCC,
	cin => \debounce_cnt[2]~25\,
	combout => \debounce_cnt[3]~26_combout\,
	cout => \debounce_cnt[3]~27\);

-- Location: FF_X39_Y20_N19
\debounce_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[3]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(3));

-- Location: LCCOMB_X39_Y20_N20
\debounce_cnt[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[4]~28_combout\ = (debounce_cnt(4) & (\debounce_cnt[3]~27\ $ (GND))) # (!debounce_cnt(4) & (!\debounce_cnt[3]~27\ & VCC))
-- \debounce_cnt[4]~29\ = CARRY((debounce_cnt(4) & !\debounce_cnt[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(4),
	datad => VCC,
	cin => \debounce_cnt[3]~27\,
	combout => \debounce_cnt[4]~28_combout\,
	cout => \debounce_cnt[4]~29\);

-- Location: FF_X39_Y20_N21
\debounce_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[4]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(4));

-- Location: LCCOMB_X39_Y20_N22
\debounce_cnt[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[5]~30_combout\ = (debounce_cnt(5) & (!\debounce_cnt[4]~29\)) # (!debounce_cnt(5) & ((\debounce_cnt[4]~29\) # (GND)))
-- \debounce_cnt[5]~31\ = CARRY((!\debounce_cnt[4]~29\) # (!debounce_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(5),
	datad => VCC,
	cin => \debounce_cnt[4]~29\,
	combout => \debounce_cnt[5]~30_combout\,
	cout => \debounce_cnt[5]~31\);

-- Location: FF_X39_Y20_N23
\debounce_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[5]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(5));

-- Location: LCCOMB_X39_Y20_N24
\debounce_cnt[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[6]~32_combout\ = (debounce_cnt(6) & (\debounce_cnt[5]~31\ $ (GND))) # (!debounce_cnt(6) & (!\debounce_cnt[5]~31\ & VCC))
-- \debounce_cnt[6]~33\ = CARRY((debounce_cnt(6) & !\debounce_cnt[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(6),
	datad => VCC,
	cin => \debounce_cnt[5]~31\,
	combout => \debounce_cnt[6]~32_combout\,
	cout => \debounce_cnt[6]~33\);

-- Location: FF_X39_Y20_N25
\debounce_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[6]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(6));

-- Location: LCCOMB_X39_Y20_N26
\debounce_cnt[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[7]~34_combout\ = (debounce_cnt(7) & (!\debounce_cnt[6]~33\)) # (!debounce_cnt(7) & ((\debounce_cnt[6]~33\) # (GND)))
-- \debounce_cnt[7]~35\ = CARRY((!\debounce_cnt[6]~33\) # (!debounce_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(7),
	datad => VCC,
	cin => \debounce_cnt[6]~33\,
	combout => \debounce_cnt[7]~34_combout\,
	cout => \debounce_cnt[7]~35\);

-- Location: FF_X39_Y20_N27
\debounce_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[7]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(7));

-- Location: LCCOMB_X39_Y20_N28
\debounce_cnt[8]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[8]~36_combout\ = (debounce_cnt(8) & (\debounce_cnt[7]~35\ $ (GND))) # (!debounce_cnt(8) & (!\debounce_cnt[7]~35\ & VCC))
-- \debounce_cnt[8]~37\ = CARRY((debounce_cnt(8) & !\debounce_cnt[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(8),
	datad => VCC,
	cin => \debounce_cnt[7]~35\,
	combout => \debounce_cnt[8]~36_combout\,
	cout => \debounce_cnt[8]~37\);

-- Location: LCCOMB_X39_Y19_N20
\debounce_cnt[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[8]~feeder_combout\ = \debounce_cnt[8]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_cnt[8]~36_combout\,
	combout => \debounce_cnt[8]~feeder_combout\);

-- Location: FF_X39_Y19_N21
\debounce_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[8]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(8));

-- Location: LCCOMB_X39_Y20_N30
\debounce_cnt[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[9]~38_combout\ = (debounce_cnt(9) & (!\debounce_cnt[8]~37\)) # (!debounce_cnt(9) & ((\debounce_cnt[8]~37\) # (GND)))
-- \debounce_cnt[9]~39\ = CARRY((!\debounce_cnt[8]~37\) # (!debounce_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(9),
	datad => VCC,
	cin => \debounce_cnt[8]~37\,
	combout => \debounce_cnt[9]~38_combout\,
	cout => \debounce_cnt[9]~39\);

-- Location: LCCOMB_X38_Y19_N6
\debounce_cnt[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[9]~feeder_combout\ = \debounce_cnt[9]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_cnt[9]~38_combout\,
	combout => \debounce_cnt[9]~feeder_combout\);

-- Location: FF_X38_Y19_N7
\debounce_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[9]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(9));

-- Location: LCCOMB_X39_Y19_N0
\debounce_cnt[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[10]~40_combout\ = (debounce_cnt(10) & (\debounce_cnt[9]~39\ $ (GND))) # (!debounce_cnt(10) & (!\debounce_cnt[9]~39\ & VCC))
-- \debounce_cnt[10]~41\ = CARRY((debounce_cnt(10) & !\debounce_cnt[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(10),
	datad => VCC,
	cin => \debounce_cnt[9]~39\,
	combout => \debounce_cnt[10]~40_combout\,
	cout => \debounce_cnt[10]~41\);

-- Location: FF_X39_Y19_N1
\debounce_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[10]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(10));

-- Location: LCCOMB_X39_Y19_N2
\debounce_cnt[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[11]~42_combout\ = (debounce_cnt(11) & (!\debounce_cnt[10]~41\)) # (!debounce_cnt(11) & ((\debounce_cnt[10]~41\) # (GND)))
-- \debounce_cnt[11]~43\ = CARRY((!\debounce_cnt[10]~41\) # (!debounce_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(11),
	datad => VCC,
	cin => \debounce_cnt[10]~41\,
	combout => \debounce_cnt[11]~42_combout\,
	cout => \debounce_cnt[11]~43\);

-- Location: FF_X39_Y19_N3
\debounce_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[11]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(11));

-- Location: LCCOMB_X39_Y19_N4
\debounce_cnt[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[12]~44_combout\ = (debounce_cnt(12) & (\debounce_cnt[11]~43\ $ (GND))) # (!debounce_cnt(12) & (!\debounce_cnt[11]~43\ & VCC))
-- \debounce_cnt[12]~45\ = CARRY((debounce_cnt(12) & !\debounce_cnt[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(12),
	datad => VCC,
	cin => \debounce_cnt[11]~43\,
	combout => \debounce_cnt[12]~44_combout\,
	cout => \debounce_cnt[12]~45\);

-- Location: FF_X39_Y19_N5
\debounce_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[12]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(12));

-- Location: LCCOMB_X39_Y19_N6
\debounce_cnt[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[13]~46_combout\ = (debounce_cnt(13) & (!\debounce_cnt[12]~45\)) # (!debounce_cnt(13) & ((\debounce_cnt[12]~45\) # (GND)))
-- \debounce_cnt[13]~47\ = CARRY((!\debounce_cnt[12]~45\) # (!debounce_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(13),
	datad => VCC,
	cin => \debounce_cnt[12]~45\,
	combout => \debounce_cnt[13]~46_combout\,
	cout => \debounce_cnt[13]~47\);

-- Location: FF_X39_Y19_N7
\debounce_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[13]~46_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(13));

-- Location: LCCOMB_X39_Y19_N8
\debounce_cnt[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[14]~48_combout\ = (debounce_cnt(14) & (\debounce_cnt[13]~47\ $ (GND))) # (!debounce_cnt(14) & (!\debounce_cnt[13]~47\ & VCC))
-- \debounce_cnt[14]~49\ = CARRY((debounce_cnt(14) & !\debounce_cnt[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(14),
	datad => VCC,
	cin => \debounce_cnt[13]~47\,
	combout => \debounce_cnt[14]~48_combout\,
	cout => \debounce_cnt[14]~49\);

-- Location: FF_X39_Y19_N9
\debounce_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[14]~48_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(14));

-- Location: LCCOMB_X39_Y19_N10
\debounce_cnt[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[15]~51_combout\ = (debounce_cnt(15) & (!\debounce_cnt[14]~49\)) # (!debounce_cnt(15) & ((\debounce_cnt[14]~49\) # (GND)))
-- \debounce_cnt[15]~52\ = CARRY((!\debounce_cnt[14]~49\) # (!debounce_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(15),
	datad => VCC,
	cin => \debounce_cnt[14]~49\,
	combout => \debounce_cnt[15]~51_combout\,
	cout => \debounce_cnt[15]~52\);

-- Location: FF_X39_Y19_N11
\debounce_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[15]~51_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(15));

-- Location: LCCOMB_X39_Y19_N12
\debounce_cnt[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[16]~53_combout\ = (debounce_cnt(16) & (\debounce_cnt[15]~52\ $ (GND))) # (!debounce_cnt(16) & (!\debounce_cnt[15]~52\ & VCC))
-- \debounce_cnt[16]~54\ = CARRY((debounce_cnt(16) & !\debounce_cnt[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(16),
	datad => VCC,
	cin => \debounce_cnt[15]~52\,
	combout => \debounce_cnt[16]~53_combout\,
	cout => \debounce_cnt[16]~54\);

-- Location: FF_X39_Y19_N13
\debounce_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[16]~53_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(16));

-- Location: LCCOMB_X39_Y19_N14
\debounce_cnt[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[17]~55_combout\ = (debounce_cnt(17) & (!\debounce_cnt[16]~54\)) # (!debounce_cnt(17) & ((\debounce_cnt[16]~54\) # (GND)))
-- \debounce_cnt[17]~56\ = CARRY((!\debounce_cnt[16]~54\) # (!debounce_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(17),
	datad => VCC,
	cin => \debounce_cnt[16]~54\,
	combout => \debounce_cnt[17]~55_combout\,
	cout => \debounce_cnt[17]~56\);

-- Location: FF_X39_Y19_N15
\debounce_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[17]~55_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(17));

-- Location: LCCOMB_X39_Y19_N16
\debounce_cnt[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[18]~57_combout\ = (debounce_cnt(18) & (\debounce_cnt[17]~56\ $ (GND))) # (!debounce_cnt(18) & (!\debounce_cnt[17]~56\ & VCC))
-- \debounce_cnt[18]~58\ = CARRY((debounce_cnt(18) & !\debounce_cnt[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_cnt(18),
	datad => VCC,
	cin => \debounce_cnt[17]~56\,
	combout => \debounce_cnt[18]~57_combout\,
	cout => \debounce_cnt[18]~58\);

-- Location: FF_X39_Y19_N17
\debounce_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[18]~57_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(18));

-- Location: LCCOMB_X39_Y19_N18
\debounce_cnt[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[19]~59_combout\ = debounce_cnt(19) $ (\debounce_cnt[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(19),
	cin => \debounce_cnt[18]~58\,
	combout => \debounce_cnt[19]~59_combout\);

-- Location: FF_X39_Y19_N19
\debounce_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[19]~59_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(19));

-- Location: LCCOMB_X39_Y19_N26
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (debounce_cnt(16)) # ((debounce_cnt(17)) # ((debounce_cnt(19)) # (debounce_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(16),
	datab => debounce_cnt(17),
	datac => debounce_cnt(19),
	datad => debounce_cnt(18),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y19_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!debounce_cnt(13) & (!debounce_cnt(10) & (!debounce_cnt(11) & !debounce_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(13),
	datab => debounce_cnt(10),
	datac => debounce_cnt(11),
	datad => debounce_cnt(12),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X39_Y20_N0
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (debounce_cnt(7)) # ((debounce_cnt(6) & ((debounce_cnt(5)) # (debounce_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(5),
	datab => debounce_cnt(4),
	datac => debounce_cnt(7),
	datad => debounce_cnt(6),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X39_Y19_N30
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~1_combout\ & (((!\LessThan0~2_combout\) # (!debounce_cnt(9))) # (!debounce_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(8),
	datab => \LessThan0~1_combout\,
	datac => debounce_cnt(9),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y19_N24
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((debounce_cnt(15) & (!\LessThan0~3_combout\ & debounce_cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => debounce_cnt(15),
	datac => \LessThan0~3_combout\,
	datad => debounce_cnt(14),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X38_Y19_N16
\key_stable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \key_stable~0_combout\ = (\key_stable~q\) # (\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_stable~q\,
	datad => \LessThan0~4_combout\,
	combout => \key_stable~0_combout\);

-- Location: FF_X38_Y19_N17
key_stable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_stable~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_key_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_stable~q\);

-- Location: LCCOMB_X40_Y20_N20
\latched_key_code~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \latched_key_code~0_combout\ = (!\Mux6~0_combout\ & (!\Equal0~0_combout\ & ((\Mux5~0_combout\) # (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \latched_key_code~0_combout\);

-- Location: FF_X40_Y20_N21
\latched_key_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latched_key_code~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_key_code(0));

-- Location: LCCOMB_X40_Y20_N10
\latched_key_code~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \latched_key_code~1_combout\ = (!\Mux5~0_combout\ & (!\Equal0~0_combout\ & ((\Mux6~0_combout\) # (\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \Mux4~0_combout\,
	combout => \latched_key_code~1_combout\);

-- Location: FF_X40_Y20_N11
\latched_key_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latched_key_code~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_key_code(1));

-- Location: LCCOMB_X40_Y20_N0
\latched_key_code~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \latched_key_code~3_combout\ = (\latched_key_code[0]~2_combout\ & row_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latched_key_code[0]~2_combout\,
	datac => row_counter(0),
	combout => \latched_key_code~3_combout\);

-- Location: FF_X40_Y20_N1
\latched_key_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latched_key_code~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_key_code(2));

-- Location: LCCOMB_X40_Y20_N2
\latched_key_code~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \latched_key_code~4_combout\ = (row_counter(1) & \latched_key_code[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_counter(1),
	datac => \latched_key_code[0]~2_combout\,
	combout => \latched_key_code~4_combout\);

-- Location: FF_X40_Y20_N3
\latched_key_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latched_key_code~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => latched_key_code(3));

ww_col_out(0) <= \col_out[0]~output_o\;

ww_col_out(1) <= \col_out[1]~output_o\;

ww_col_out(2) <= \col_out[2]~output_o\;

ww_col_out(3) <= \col_out[3]~output_o\;

ww_key_pressed <= \key_pressed~output_o\;

ww_key_code(0) <= \key_code[0]~output_o\;

ww_key_code(1) <= \key_code[1]~output_o\;

ww_key_code(2) <= \key_code[2]~output_o\;

ww_key_code(3) <= \key_code[3]~output_o\;
END structure;


