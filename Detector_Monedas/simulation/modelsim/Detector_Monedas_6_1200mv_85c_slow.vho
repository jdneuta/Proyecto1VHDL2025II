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

-- DATE "09/23/2025 16:54:38"

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

ENTITY 	Detector_Monedas IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	coin_sensor : IN std_logic;
	coin_type : IN std_logic;
	coin_inserted : OUT std_logic;
	coin_value : OUT std_logic_vector(1 DOWNTO 0);
	total_money : OUT std_logic_vector(11 DOWNTO 0)
	);
END Detector_Monedas;

-- Design Ports Information
-- coin_inserted	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_value[1]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[2]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[4]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- total_money[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_type	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin_sensor	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Detector_Monedas IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_coin_sensor : std_logic;
SIGNAL ww_coin_type : std_logic;
SIGNAL ww_coin_inserted : std_logic;
SIGNAL ww_coin_value : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_total_money : std_logic_vector(11 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \coin_inserted~output_o\ : std_logic;
SIGNAL \coin_value[0]~output_o\ : std_logic;
SIGNAL \coin_value[1]~output_o\ : std_logic;
SIGNAL \total_money[0]~output_o\ : std_logic;
SIGNAL \total_money[1]~output_o\ : std_logic;
SIGNAL \total_money[2]~output_o\ : std_logic;
SIGNAL \total_money[3]~output_o\ : std_logic;
SIGNAL \total_money[4]~output_o\ : std_logic;
SIGNAL \total_money[5]~output_o\ : std_logic;
SIGNAL \total_money[6]~output_o\ : std_logic;
SIGNAL \total_money[7]~output_o\ : std_logic;
SIGNAL \total_money[8]~output_o\ : std_logic;
SIGNAL \total_money[9]~output_o\ : std_logic;
SIGNAL \total_money[10]~output_o\ : std_logic;
SIGNAL \total_money[11]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \debounce_cnt[0]~20_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \coin_sensor~input_o\ : std_logic;
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
SIGNAL \debounce_cnt[8]~37\ : std_logic;
SIGNAL \debounce_cnt[9]~38_combout\ : std_logic;
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
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_cnt[15]~52\ : std_logic;
SIGNAL \debounce_cnt[16]~53_combout\ : std_logic;
SIGNAL \debounce_cnt[16]~54\ : std_logic;
SIGNAL \debounce_cnt[17]~55_combout\ : std_logic;
SIGNAL \debounce_cnt[17]~56\ : std_logic;
SIGNAL \debounce_cnt[18]~57_combout\ : std_logic;
SIGNAL \debounce_cnt[18]~58\ : std_logic;
SIGNAL \debounce_cnt[19]~59_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \sensor_debounced~0_combout\ : std_logic;
SIGNAL \sensor_debounced~q\ : std_logic;
SIGNAL \prev_sensor_debounced~feeder_combout\ : std_logic;
SIGNAL \prev_sensor_debounced~q\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \main_process~0_combout\ : std_logic;
SIGNAL \coin_inserted~reg0feeder_combout\ : std_logic;
SIGNAL \coin_inserted~reg0_q\ : std_logic;
SIGNAL \coin_type~input_o\ : std_logic;
SIGNAL \coin_value~0_combout\ : std_logic;
SIGNAL \coin_value[0]~reg0_q\ : std_logic;
SIGNAL \coin_value~1_combout\ : std_logic;
SIGNAL \coin_value[1]~reg0_q\ : std_logic;
SIGNAL \total_reg[3]~9_combout\ : std_logic;
SIGNAL \total_reg[3]~10\ : std_logic;
SIGNAL \total_reg[4]~11_combout\ : std_logic;
SIGNAL \total_reg[4]~12\ : std_logic;
SIGNAL \total_reg[5]~13_combout\ : std_logic;
SIGNAL \total_reg[5]~14\ : std_logic;
SIGNAL \total_reg[6]~15_combout\ : std_logic;
SIGNAL \total_reg[6]~16\ : std_logic;
SIGNAL \total_reg[7]~17_combout\ : std_logic;
SIGNAL \total_reg[7]~18\ : std_logic;
SIGNAL \total_reg[8]~19_combout\ : std_logic;
SIGNAL \total_reg[8]~20\ : std_logic;
SIGNAL \total_reg[9]~21_combout\ : std_logic;
SIGNAL \total_reg[9]~22\ : std_logic;
SIGNAL \total_reg[10]~23_combout\ : std_logic;
SIGNAL \total_reg[10]~24\ : std_logic;
SIGNAL \total_reg[11]~25_combout\ : std_logic;
SIGNAL total_reg : std_logic_vector(11 DOWNTO 0);
SIGNAL debounce_cnt : std_logic_vector(19 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_coin_sensor~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_coin_sensor <= coin_sensor;
ww_coin_type <= coin_type;
coin_inserted <= ww_coin_inserted;
coin_value <= ww_coin_value;
total_money <= ww_total_money;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_coin_sensor~input_o\ <= NOT \coin_sensor~input_o\;

-- Location: IOOBUF_X0_Y27_N2
\coin_inserted~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coin_inserted~reg0_q\,
	devoe => ww_devoe,
	o => \coin_inserted~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\coin_value[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coin_value[0]~reg0_q\,
	devoe => ww_devoe,
	o => \coin_value[0]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\coin_value[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \coin_value[1]~reg0_q\,
	devoe => ww_devoe,
	o => \coin_value[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\total_money[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_money[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\total_money[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_money[1]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\total_money[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \total_money[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\total_money[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(3),
	devoe => ww_devoe,
	o => \total_money[3]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\total_money[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(4),
	devoe => ww_devoe,
	o => \total_money[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\total_money[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(5),
	devoe => ww_devoe,
	o => \total_money[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\total_money[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(6),
	devoe => ww_devoe,
	o => \total_money[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\total_money[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(7),
	devoe => ww_devoe,
	o => \total_money[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\total_money[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(8),
	devoe => ww_devoe,
	o => \total_money[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\total_money[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(9),
	devoe => ww_devoe,
	o => \total_money[9]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\total_money[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(10),
	devoe => ww_devoe,
	o => \total_money[10]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\total_money[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => total_reg(11),
	devoe => ww_devoe,
	o => \total_money[11]~output_o\);

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

-- Location: LCCOMB_X2_Y28_N12
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

-- Location: IOIBUF_X3_Y29_N8
\coin_sensor~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_sensor,
	o => \coin_sensor~input_o\);

-- Location: LCCOMB_X2_Y27_N22
\debounce_cnt[19]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[19]~50_combout\ = (!\LessThan0~4_combout\) # (!\coin_sensor~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \coin_sensor~input_o\,
	datad => \LessThan0~4_combout\,
	combout => \debounce_cnt[19]~50_combout\);

-- Location: FF_X2_Y28_N13
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(0));

-- Location: LCCOMB_X2_Y28_N14
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

-- Location: FF_X2_Y28_N15
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(1));

-- Location: LCCOMB_X2_Y28_N16
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

-- Location: FF_X2_Y28_N17
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(2));

-- Location: LCCOMB_X2_Y28_N18
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

-- Location: FF_X2_Y28_N19
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(3));

-- Location: LCCOMB_X2_Y28_N20
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

-- Location: FF_X2_Y28_N21
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(4));

-- Location: LCCOMB_X2_Y28_N22
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

-- Location: FF_X2_Y28_N23
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(5));

-- Location: LCCOMB_X2_Y28_N24
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

-- Location: FF_X2_Y28_N25
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(6));

-- Location: LCCOMB_X2_Y28_N26
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

-- Location: FF_X2_Y28_N27
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(7));

-- Location: LCCOMB_X2_Y28_N28
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

-- Location: FF_X2_Y28_N29
\debounce_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \debounce_cnt[8]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(8));

-- Location: LCCOMB_X2_Y28_N30
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

-- Location: FF_X3_Y27_N13
\debounce_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \debounce_cnt[9]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_coin_sensor~input_o\,
	sload => VCC,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(9));

-- Location: LCCOMB_X2_Y27_N0
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

-- Location: FF_X2_Y27_N1
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(10));

-- Location: LCCOMB_X2_Y27_N2
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

-- Location: FF_X2_Y27_N3
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(11));

-- Location: LCCOMB_X2_Y27_N4
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

-- Location: FF_X2_Y27_N5
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(12));

-- Location: LCCOMB_X2_Y27_N6
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

-- Location: FF_X2_Y27_N7
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(13));

-- Location: LCCOMB_X2_Y27_N8
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

-- Location: FF_X2_Y27_N9
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(14));

-- Location: LCCOMB_X2_Y27_N10
\debounce_cnt[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[15]~51_combout\ = (debounce_cnt(15) & (!\debounce_cnt[14]~49\)) # (!debounce_cnt(15) & ((\debounce_cnt[14]~49\) # (GND)))
-- \debounce_cnt[15]~52\ = CARRY((!\debounce_cnt[14]~49\) # (!debounce_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(15),
	datad => VCC,
	cin => \debounce_cnt[14]~49\,
	combout => \debounce_cnt[15]~51_combout\,
	cout => \debounce_cnt[15]~52\);

-- Location: FF_X2_Y27_N11
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(15));

-- Location: LCCOMB_X2_Y27_N28
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!debounce_cnt(13) & (!debounce_cnt(11) & (!debounce_cnt(12) & !debounce_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(13),
	datab => debounce_cnt(11),
	datac => debounce_cnt(12),
	datad => debounce_cnt(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y28_N0
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

-- Location: LCCOMB_X2_Y27_N26
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

-- Location: LCCOMB_X2_Y27_N12
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

-- Location: FF_X2_Y27_N13
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(16));

-- Location: LCCOMB_X2_Y27_N14
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

-- Location: FF_X2_Y27_N15
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(17));

-- Location: LCCOMB_X2_Y27_N16
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

-- Location: FF_X2_Y27_N17
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(18));

-- Location: LCCOMB_X2_Y27_N18
\debounce_cnt[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \debounce_cnt[19]~59_combout\ = \debounce_cnt[18]~58\ $ (debounce_cnt(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_cnt(19),
	cin => \debounce_cnt[18]~58\,
	combout => \debounce_cnt[19]~59_combout\);

-- Location: FF_X2_Y27_N19
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
	sclr => \ALT_INV_coin_sensor~input_o\,
	ena => \debounce_cnt[19]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_cnt(19));

-- Location: LCCOMB_X2_Y27_N30
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (debounce_cnt(16)) # ((debounce_cnt(18)) # ((debounce_cnt(17)) # (debounce_cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(16),
	datab => debounce_cnt(18),
	datac => debounce_cnt(17),
	datad => debounce_cnt(19),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y27_N20
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\) # ((debounce_cnt(15) & (debounce_cnt(14) & !\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_cnt(15),
	datab => debounce_cnt(14),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X2_Y27_N24
\sensor_debounced~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sensor_debounced~0_combout\ = (\sensor_debounced~q\) # (\LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensor_debounced~q\,
	datad => \LessThan0~4_combout\,
	combout => \sensor_debounced~0_combout\);

-- Location: FF_X2_Y27_N25
sensor_debounced : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sensor_debounced~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sclr => \ALT_INV_coin_sensor~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sensor_debounced~q\);

-- Location: LCCOMB_X1_Y27_N2
\prev_sensor_debounced~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_sensor_debounced~feeder_combout\ = \sensor_debounced~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sensor_debounced~q\,
	combout => \prev_sensor_debounced~feeder_combout\);

-- Location: FF_X1_Y27_N3
prev_sensor_debounced : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_sensor_debounced~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_sensor_debounced~q\);

-- Location: IOIBUF_X1_Y29_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X1_Y27_N0
\main_process~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \main_process~0_combout\ = (!\prev_sensor_debounced~q\ & (\enable~input_o\ & \sensor_debounced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prev_sensor_debounced~q\,
	datac => \enable~input_o\,
	datad => \sensor_debounced~q\,
	combout => \main_process~0_combout\);

-- Location: LCCOMB_X1_Y27_N28
\coin_inserted~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \coin_inserted~reg0feeder_combout\ = \main_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_process~0_combout\,
	combout => \coin_inserted~reg0feeder_combout\);

-- Location: FF_X1_Y27_N29
\coin_inserted~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \coin_inserted~reg0feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coin_inserted~reg0_q\);

-- Location: IOIBUF_X1_Y29_N8
\coin_type~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin_type,
	o => \coin_type~input_o\);

-- Location: LCCOMB_X1_Y27_N30
\coin_value~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \coin_value~0_combout\ = (\enable~input_o\ & (!\prev_sensor_debounced~q\ & (!\coin_type~input_o\ & \sensor_debounced~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \prev_sensor_debounced~q\,
	datac => \coin_type~input_o\,
	datad => \sensor_debounced~q\,
	combout => \coin_value~0_combout\);

-- Location: FF_X1_Y27_N31
\coin_value[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \coin_value~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coin_value[0]~reg0_q\);

-- Location: LCCOMB_X1_Y27_N4
\coin_value~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \coin_value~1_combout\ = (\enable~input_o\ & (!\prev_sensor_debounced~q\ & (\coin_type~input_o\ & \sensor_debounced~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \prev_sensor_debounced~q\,
	datac => \coin_type~input_o\,
	datad => \sensor_debounced~q\,
	combout => \coin_value~1_combout\);

-- Location: FF_X1_Y27_N5
\coin_value[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \coin_value~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coin_value[1]~reg0_q\);

-- Location: LCCOMB_X1_Y27_N10
\total_reg[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[3]~9_combout\ = (\coin_type~input_o\ & (total_reg(3) & VCC)) # (!\coin_type~input_o\ & (total_reg(3) $ (VCC)))
-- \total_reg[3]~10\ = CARRY((!\coin_type~input_o\ & total_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \coin_type~input_o\,
	datab => total_reg(3),
	datad => VCC,
	combout => \total_reg[3]~9_combout\,
	cout => \total_reg[3]~10\);

-- Location: FF_X1_Y27_N11
\total_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[3]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(3));

-- Location: LCCOMB_X1_Y27_N12
\total_reg[4]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[4]~11_combout\ = (\coin_type~input_o\ & ((total_reg(4) & (\total_reg[3]~10\ & VCC)) # (!total_reg(4) & (!\total_reg[3]~10\)))) # (!\coin_type~input_o\ & ((total_reg(4) & (!\total_reg[3]~10\)) # (!total_reg(4) & ((\total_reg[3]~10\) # (GND)))))
-- \total_reg[4]~12\ = CARRY((\coin_type~input_o\ & (!total_reg(4) & !\total_reg[3]~10\)) # (!\coin_type~input_o\ & ((!\total_reg[3]~10\) # (!total_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coin_type~input_o\,
	datab => total_reg(4),
	datad => VCC,
	cin => \total_reg[3]~10\,
	combout => \total_reg[4]~11_combout\,
	cout => \total_reg[4]~12\);

-- Location: FF_X1_Y27_N13
\total_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[4]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(4));

-- Location: LCCOMB_X1_Y27_N14
\total_reg[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[5]~13_combout\ = ((\coin_type~input_o\ $ (total_reg(5) $ (\total_reg[4]~12\)))) # (GND)
-- \total_reg[5]~14\ = CARRY((\coin_type~input_o\ & (total_reg(5) & !\total_reg[4]~12\)) # (!\coin_type~input_o\ & ((total_reg(5)) # (!\total_reg[4]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coin_type~input_o\,
	datab => total_reg(5),
	datad => VCC,
	cin => \total_reg[4]~12\,
	combout => \total_reg[5]~13_combout\,
	cout => \total_reg[5]~14\);

-- Location: FF_X1_Y27_N15
\total_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[5]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(5));

-- Location: LCCOMB_X1_Y27_N16
\total_reg[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[6]~15_combout\ = (total_reg(6) & (\total_reg[5]~14\ & VCC)) # (!total_reg(6) & (!\total_reg[5]~14\))
-- \total_reg[6]~16\ = CARRY((!total_reg(6) & !\total_reg[5]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => total_reg(6),
	datad => VCC,
	cin => \total_reg[5]~14\,
	combout => \total_reg[6]~15_combout\,
	cout => \total_reg[6]~16\);

-- Location: FF_X1_Y27_N17
\total_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[6]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(6));

-- Location: LCCOMB_X1_Y27_N18
\total_reg[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[7]~17_combout\ = (total_reg(7) & ((GND) # (!\total_reg[6]~16\))) # (!total_reg(7) & (\total_reg[6]~16\ $ (GND)))
-- \total_reg[7]~18\ = CARRY((total_reg(7)) # (!\total_reg[6]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => total_reg(7),
	datad => VCC,
	cin => \total_reg[6]~16\,
	combout => \total_reg[7]~17_combout\,
	cout => \total_reg[7]~18\);

-- Location: FF_X1_Y27_N19
\total_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[7]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(7));

-- Location: LCCOMB_X1_Y27_N20
\total_reg[8]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[8]~19_combout\ = (total_reg(8) & (\total_reg[7]~18\ & VCC)) # (!total_reg(8) & (!\total_reg[7]~18\))
-- \total_reg[8]~20\ = CARRY((!total_reg(8) & !\total_reg[7]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => total_reg(8),
	datad => VCC,
	cin => \total_reg[7]~18\,
	combout => \total_reg[8]~19_combout\,
	cout => \total_reg[8]~20\);

-- Location: FF_X1_Y27_N21
\total_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[8]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(8));

-- Location: LCCOMB_X1_Y27_N22
\total_reg[9]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[9]~21_combout\ = ((\coin_type~input_o\ $ (total_reg(9) $ (!\total_reg[8]~20\)))) # (GND)
-- \total_reg[9]~22\ = CARRY((\coin_type~input_o\ & ((total_reg(9)) # (!\total_reg[8]~20\))) # (!\coin_type~input_o\ & (total_reg(9) & !\total_reg[8]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \coin_type~input_o\,
	datab => total_reg(9),
	datad => VCC,
	cin => \total_reg[8]~20\,
	combout => \total_reg[9]~21_combout\,
	cout => \total_reg[9]~22\);

-- Location: FF_X1_Y27_N23
\total_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[9]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(9));

-- Location: LCCOMB_X1_Y27_N24
\total_reg[10]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[10]~23_combout\ = (total_reg(10) & (!\total_reg[9]~22\)) # (!total_reg(10) & ((\total_reg[9]~22\) # (GND)))
-- \total_reg[10]~24\ = CARRY((!\total_reg[9]~22\) # (!total_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => total_reg(10),
	datad => VCC,
	cin => \total_reg[9]~22\,
	combout => \total_reg[10]~23_combout\,
	cout => \total_reg[10]~24\);

-- Location: FF_X1_Y27_N25
\total_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[10]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(10));

-- Location: LCCOMB_X1_Y27_N26
\total_reg[11]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \total_reg[11]~25_combout\ = total_reg(11) $ (!\total_reg[10]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => total_reg(11),
	cin => \total_reg[10]~24\,
	combout => \total_reg[11]~25_combout\);

-- Location: FF_X1_Y27_N27
\total_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \total_reg[11]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \main_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => total_reg(11));

ww_coin_inserted <= \coin_inserted~output_o\;

ww_coin_value(0) <= \coin_value[0]~output_o\;

ww_coin_value(1) <= \coin_value[1]~output_o\;

ww_total_money(0) <= \total_money[0]~output_o\;

ww_total_money(1) <= \total_money[1]~output_o\;

ww_total_money(2) <= \total_money[2]~output_o\;

ww_total_money(3) <= \total_money[3]~output_o\;

ww_total_money(4) <= \total_money[4]~output_o\;

ww_total_money(5) <= \total_money[5]~output_o\;

ww_total_money(6) <= \total_money[6]~output_o\;

ww_total_money(7) <= \total_money[7]~output_o\;

ww_total_money(8) <= \total_money[8]~output_o\;

ww_total_money(9) <= \total_money[9]~output_o\;

ww_total_money(10) <= \total_money[10]~output_o\;

ww_total_money(11) <= \total_money[11]~output_o\;
END structure;


