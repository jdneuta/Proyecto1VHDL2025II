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

-- DATE "09/29/2025 23:01:14"

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

ENTITY 	top_productos IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirmar : IN std_logic;
	sel_prod : IN std_logic_vector(3 DOWNTO 0);
	led_compra : OUT std_logic;
	stock_leds : OUT std_logic_vector(2 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0);
	alerta_led : OUT std_logic
	);
END top_productos;

-- Design Ports Information
-- led_compra	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- alerta_led	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_confirmar : std_logic;
SIGNAL ww_sel_prod : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_compra : std_logic;
SIGNAL ww_stock_leds : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_alerta_led : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_compra~output_o\ : std_logic;
SIGNAL \stock_leds[0]~output_o\ : std_logic;
SIGNAL \stock_leds[1]~output_o\ : std_logic;
SIGNAL \stock_leds[2]~output_o\ : std_logic;
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
SIGNAL \alerta_led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \prev_conf~q\ : std_logic;
SIGNAL \sel_prod[2]~input_o\ : std_logic;
SIGNAL \sel_prod[0]~input_o\ : std_logic;
SIGNAL \sel_prod[1]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \sel_prod[3]~input_o\ : std_logic;
SIGNAL \stock[14][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \Decoder0~27_combout\ : std_logic;
SIGNAL \stock[14][0]~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \stock[3][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \Decoder0~18_combout\ : std_logic;
SIGNAL \stock[3][1]~q\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \stock[2][1]~q\ : std_logic;
SIGNAL \Decoder0~17_combout\ : std_logic;
SIGNAL \stock[0][1]~q\ : std_logic;
SIGNAL \stock[1][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~25_combout\ : std_logic;
SIGNAL \stock[1][1]~q\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \stock[5][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \stock[5][1]~q\ : std_logic;
SIGNAL \stock[7][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \stock[7][1]~q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \stock[4][1]~q\ : std_logic;
SIGNAL \stock[6][1]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~24_combout\ : std_logic;
SIGNAL \stock[6][1]~q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \Decoder0~23_combout\ : std_logic;
SIGNAL \stock[12][0]~q\ : std_logic;
SIGNAL \stock[13][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~22_combout\ : std_logic;
SIGNAL \stock[13][0]~q\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \stock[9][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~26_combout\ : std_logic;
SIGNAL \stock[9][0]~q\ : std_logic;
SIGNAL \Decoder0~21_combout\ : std_logic;
SIGNAL \stock[11][0]~q\ : std_logic;
SIGNAL \Decoder0~20_combout\ : std_logic;
SIGNAL \stock[8][0]~q\ : std_logic;
SIGNAL \stock[10][0]~feeder_combout\ : std_logic;
SIGNAL \Decoder0~19_combout\ : std_logic;
SIGNAL \stock[10][0]~q\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \stock[5][0]~feeder_combout\ : std_logic;
SIGNAL \stock[5][0]~q\ : std_logic;
SIGNAL \stock[7][0]~q\ : std_logic;
SIGNAL \stock[4][0]~q\ : std_logic;
SIGNAL \stock[6][0]~feeder_combout\ : std_logic;
SIGNAL \stock[6][0]~q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \stock[2][0]~feeder_combout\ : std_logic;
SIGNAL \stock[2][0]~q\ : std_logic;
SIGNAL \stock[3][0]~q\ : std_logic;
SIGNAL \stock[0][0]~q\ : std_logic;
SIGNAL \stock[1][0]~feeder_combout\ : std_logic;
SIGNAL \stock[1][0]~q\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \stock[14][1]~feeder_combout\ : std_logic;
SIGNAL \stock[14][1]~q\ : std_logic;
SIGNAL \stock[13][1]~q\ : std_logic;
SIGNAL \stock[12][1]~q\ : std_logic;
SIGNAL \stock[10][1]~feeder_combout\ : std_logic;
SIGNAL \stock[10][1]~q\ : std_logic;
SIGNAL \stock[11][1]~q\ : std_logic;
SIGNAL \stock[8][1]~q\ : std_logic;
SIGNAL \stock[9][1]~feeder_combout\ : std_logic;
SIGNAL \stock[9][1]~q\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \confirm_pulse~0_combout\ : std_logic;
SIGNAL \confirm_pulse~q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \U1|Mux6~0_combout\ : std_logic;
SIGNAL \U1|Mux5~0_combout\ : std_logic;
SIGNAL \U1|Mux4~0_combout\ : std_logic;
SIGNAL \U1|Mux3~0_combout\ : std_logic;
SIGNAL \U1|Mux2~0_combout\ : std_logic;
SIGNAL \U1|Mux1~0_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Udiv|Add0~0_combout\ : std_logic;
SIGNAL \Udiv|Add0~1\ : std_logic;
SIGNAL \Udiv|Add0~2_combout\ : std_logic;
SIGNAL \Udiv|Add0~3\ : std_logic;
SIGNAL \Udiv|Add0~4_combout\ : std_logic;
SIGNAL \Udiv|Add0~5\ : std_logic;
SIGNAL \Udiv|Add0~6_combout\ : std_logic;
SIGNAL \Udiv|Add0~7\ : std_logic;
SIGNAL \Udiv|Add0~8_combout\ : std_logic;
SIGNAL \Udiv|Add0~9\ : std_logic;
SIGNAL \Udiv|Add0~10_combout\ : std_logic;
SIGNAL \Udiv|Add0~11\ : std_logic;
SIGNAL \Udiv|Add0~12_combout\ : std_logic;
SIGNAL \Udiv|Add0~13\ : std_logic;
SIGNAL \Udiv|Add0~14_combout\ : std_logic;
SIGNAL \Udiv|count1~2_combout\ : std_logic;
SIGNAL \Udiv|Add0~15\ : std_logic;
SIGNAL \Udiv|Add0~16_combout\ : std_logic;
SIGNAL \Udiv|Add0~17\ : std_logic;
SIGNAL \Udiv|Add0~18_combout\ : std_logic;
SIGNAL \Udiv|Add0~19\ : std_logic;
SIGNAL \Udiv|Add0~20_combout\ : std_logic;
SIGNAL \Udiv|Add0~21\ : std_logic;
SIGNAL \Udiv|Add0~22_combout\ : std_logic;
SIGNAL \Udiv|Add0~23\ : std_logic;
SIGNAL \Udiv|Add0~24_combout\ : std_logic;
SIGNAL \Udiv|count1~1_combout\ : std_logic;
SIGNAL \Udiv|Add0~25\ : std_logic;
SIGNAL \Udiv|Add0~26_combout\ : std_logic;
SIGNAL \Udiv|count1~0_combout\ : std_logic;
SIGNAL \Udiv|Add0~27\ : std_logic;
SIGNAL \Udiv|Add0~28_combout\ : std_logic;
SIGNAL \Udiv|count1~3_combout\ : std_logic;
SIGNAL \Udiv|Add0~29\ : std_logic;
SIGNAL \Udiv|Add0~30_combout\ : std_logic;
SIGNAL \Udiv|count1~4_combout\ : std_logic;
SIGNAL \Udiv|Add0~31\ : std_logic;
SIGNAL \Udiv|Add0~32_combout\ : std_logic;
SIGNAL \Udiv|Add0~33\ : std_logic;
SIGNAL \Udiv|Add0~34_combout\ : std_logic;
SIGNAL \Udiv|count1~5_combout\ : std_logic;
SIGNAL \Udiv|Add0~35\ : std_logic;
SIGNAL \Udiv|Add0~36_combout\ : std_logic;
SIGNAL \Udiv|Add0~37\ : std_logic;
SIGNAL \Udiv|Add0~38_combout\ : std_logic;
SIGNAL \Udiv|count1~6_combout\ : std_logic;
SIGNAL \Udiv|Equal0~5_combout\ : std_logic;
SIGNAL \Udiv|Add0~39\ : std_logic;
SIGNAL \Udiv|Add0~40_combout\ : std_logic;
SIGNAL \Udiv|count1~7_combout\ : std_logic;
SIGNAL \Udiv|Add0~41\ : std_logic;
SIGNAL \Udiv|Add0~42_combout\ : std_logic;
SIGNAL \Udiv|count1~8_combout\ : std_logic;
SIGNAL \Udiv|Add0~43\ : std_logic;
SIGNAL \Udiv|Add0~44_combout\ : std_logic;
SIGNAL \Udiv|count1~9_combout\ : std_logic;
SIGNAL \Udiv|Add0~45\ : std_logic;
SIGNAL \Udiv|Add0~46_combout\ : std_logic;
SIGNAL \Udiv|count1~10_combout\ : std_logic;
SIGNAL \Udiv|Equal0~6_combout\ : std_logic;
SIGNAL \Udiv|Add0~47\ : std_logic;
SIGNAL \Udiv|Add0~48_combout\ : std_logic;
SIGNAL \Udiv|Add0~49\ : std_logic;
SIGNAL \Udiv|Add0~50_combout\ : std_logic;
SIGNAL \Udiv|count1~11_combout\ : std_logic;
SIGNAL \Udiv|Add0~51\ : std_logic;
SIGNAL \Udiv|Add0~52_combout\ : std_logic;
SIGNAL \Udiv|Equal0~7_combout\ : std_logic;
SIGNAL \Udiv|Equal0~0_combout\ : std_logic;
SIGNAL \Udiv|Equal0~3_combout\ : std_logic;
SIGNAL \Udiv|Equal0~1_combout\ : std_logic;
SIGNAL \Udiv|Equal0~2_combout\ : std_logic;
SIGNAL \Udiv|Equal0~4_combout\ : std_logic;
SIGNAL \Udiv|Equal0~8_combout\ : std_logic;
SIGNAL \Udiv|out1~0_combout\ : std_logic;
SIGNAL \Udiv|out1~feeder_combout\ : std_logic;
SIGNAL \Udiv|out1~q\ : std_logic;
SIGNAL \alerta_sig~0_combout\ : std_logic;
SIGNAL \alerta_sig~1_combout\ : std_logic;
SIGNAL \alerta_sig~q\ : std_logic;
SIGNAL \Udiv|count1\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirmar <= confirmar;
ww_sel_prod <= sel_prod;
led_compra <= ww_led_compra;
stock_leds <= ww_stock_leds;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
alerta_led <= ww_alerta_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;
\U1|ALT_INV_Mux0~0_combout\ <= NOT \U1|Mux0~0_combout\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\led_compra~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \confirm_pulse~q\,
	devoe => ww_devoe,
	o => \led_compra~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\stock_leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \stock_leds[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\stock_leds[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~11_combout\,
	devoe => ww_devoe,
	o => \stock_leds[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\stock_leds[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \stock_leds[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\disp2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|Mux6~0_combout\,
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
	i => \U1|Mux5~0_combout\,
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
	i => \U1|Mux4~0_combout\,
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
	i => \U1|Mux3~0_combout\,
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
	i => \U1|Mux2~0_combout\,
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
	i => \U1|Mux1~0_combout\,
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
	i => \U1|ALT_INV_Mux0~0_combout\,
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
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
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
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
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
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
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
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
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

-- Location: IOOBUF_X3_Y29_N30
\alerta_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alerta_sig~q\,
	devoe => ww_devoe,
	o => \alerta_led~output_o\);

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

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X0_Y27_N1
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

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

-- Location: FF_X3_Y26_N27
prev_conf : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \confirmar~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_conf~q\);

-- Location: IOIBUF_X0_Y26_N1
\sel_prod[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_prod(2),
	o => \sel_prod[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sel_prod[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_prod(0),
	o => \sel_prod[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\sel_prod[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_prod(1),
	o => \sel_prod[1]~input_o\);

-- Location: LCCOMB_X3_Y26_N16
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sel_prod[2]~input_o\ & ((\sel_prod[0]~input_o\) # (\sel_prod[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datad => \sel_prod[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X0_Y25_N1
\sel_prod[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_prod(3),
	o => \sel_prod[3]~input_o\);

-- Location: LCCOMB_X4_Y26_N12
\stock[14][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[14][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~9_combout\,
	combout => \stock[14][0]~feeder_combout\);

-- Location: LCCOMB_X3_Y26_N20
\Decoder0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (\confirmar~input_o\ & (!\sel_prod[0]~input_o\ & (!\prev_conf~q\ & \Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \prev_conf~q\,
	datad => \Mux2~1_combout\,
	combout => \Decoder0~11_combout\);

-- Location: LCCOMB_X4_Y26_N30
\Decoder0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~27_combout\ = (\sel_prod[1]~input_o\ & (\sel_prod[2]~input_o\ & (\sel_prod[3]~input_o\ & \Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~11_combout\,
	combout => \Decoder0~27_combout\);

-- Location: FF_X4_Y26_N13
\stock[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[14][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[14][0]~q\);

-- Location: LCCOMB_X2_Y25_N0
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel_prod[1]~input_o\) # (!\sel_prod[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datad => \sel_prod[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y26_N6
\stock[3][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[3][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \stock[3][1]~feeder_combout\);

-- Location: LCCOMB_X3_Y26_N12
\Decoder0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (\sel_prod[0]~input_o\ & !\sel_prod[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[0]~input_o\,
	datad => \sel_prod[2]~input_o\,
	combout => \Decoder0~16_combout\);

-- Location: LCCOMB_X2_Y26_N10
\Decoder0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~18_combout\ = (!\sel_prod[3]~input_o\ & (\Decoder0~16_combout\ & (\sel_prod[1]~input_o\ & \confirm_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \Decoder0~16_combout\,
	datac => \sel_prod[1]~input_o\,
	datad => \confirm_pulse~0_combout\,
	combout => \Decoder0~18_combout\);

-- Location: FF_X2_Y26_N7
\stock[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[3][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[3][1]~q\);

-- Location: LCCOMB_X2_Y26_N8
\Decoder0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!\sel_prod[3]~input_o\ & (\sel_prod[1]~input_o\ & (\Decoder0~11_combout\ & !\sel_prod[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \Decoder0~11_combout\,
	datad => \sel_prod[2]~input_o\,
	combout => \Decoder0~15_combout\);

-- Location: FF_X2_Y26_N5
\stock[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[2][1]~q\);

-- Location: LCCOMB_X1_Y26_N12
\Decoder0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~17_combout\ = (!\sel_prod[0]~input_o\ & (!\sel_prod[2]~input_o\ & (\Decoder0~9_combout\ & !\sel_prod[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \Decoder0~9_combout\,
	datad => \sel_prod[3]~input_o\,
	combout => \Decoder0~17_combout\);

-- Location: FF_X1_Y26_N3
\stock[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[0][1]~q\);

-- Location: LCCOMB_X1_Y26_N0
\stock[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[1][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \stock[1][1]~feeder_combout\);

-- Location: LCCOMB_X1_Y26_N22
\Decoder0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~25_combout\ = (\sel_prod[0]~input_o\ & (!\sel_prod[2]~input_o\ & (\Decoder0~9_combout\ & !\sel_prod[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \Decoder0~9_combout\,
	datad => \sel_prod[3]~input_o\,
	combout => \Decoder0~25_combout\);

-- Location: FF_X1_Y26_N1
\stock[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[1][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[1][1]~q\);

-- Location: LCCOMB_X1_Y26_N2
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\sel_prod[0]~input_o\ & ((\sel_prod[1]~input_o\) # ((!\stock[1][1]~q\)))) # (!\sel_prod[0]~input_o\ & (!\sel_prod[1]~input_o\ & (!\stock[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[0][1]~q\,
	datad => \stock[1][1]~q\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X2_Y26_N4
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\sel_prod[1]~input_o\ & ((\Mux0~4_combout\ & (!\stock[3][1]~q\)) # (!\Mux0~4_combout\ & ((!\stock[2][1]~q\))))) # (!\sel_prod[1]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stock[3][1]~q\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[2][1]~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X5_Y26_N10
\stock[5][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[5][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \stock[5][1]~feeder_combout\);

-- Location: LCCOMB_X5_Y26_N18
\Decoder0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\sel_prod[2]~input_o\ & (\sel_prod[0]~input_o\ & (!\sel_prod[3]~input_o\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~10_combout\);

-- Location: FF_X5_Y26_N11
\stock[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[5][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[5][1]~q\);

-- Location: LCCOMB_X5_Y26_N16
\stock[7][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[7][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \stock[7][1]~feeder_combout\);

-- Location: LCCOMB_X5_Y26_N4
\Decoder0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (\sel_prod[1]~input_o\ & \sel_prod[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_prod[1]~input_o\,
	datad => \sel_prod[2]~input_o\,
	combout => \Decoder0~12_combout\);

-- Location: LCCOMB_X5_Y26_N22
\Decoder0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!\sel_prod[3]~input_o\ & (\sel_prod[0]~input_o\ & (\Decoder0~12_combout\ & \confirm_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \Decoder0~12_combout\,
	datad => \confirm_pulse~0_combout\,
	combout => \Decoder0~14_combout\);

-- Location: FF_X5_Y26_N17
\stock[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[7][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[7][1]~q\);

-- Location: LCCOMB_X3_Y26_N14
\Decoder0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (\sel_prod[2]~input_o\ & (!\sel_prod[0]~input_o\ & (!\sel_prod[3]~input_o\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~13_combout\);

-- Location: FF_X3_Y24_N27
\stock[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[4][1]~q\);

-- Location: LCCOMB_X3_Y24_N0
\stock[6][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[6][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \stock[6][1]~feeder_combout\);

-- Location: LCCOMB_X3_Y26_N18
\Decoder0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~24_combout\ = (\sel_prod[1]~input_o\ & (\sel_prod[2]~input_o\ & (!\sel_prod[3]~input_o\ & \Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~11_combout\,
	combout => \Decoder0~24_combout\);

-- Location: FF_X3_Y24_N1
\stock[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[6][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[6][1]~q\);

-- Location: LCCOMB_X3_Y24_N26
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\sel_prod[1]~input_o\ & ((\sel_prod[0]~input_o\) # ((!\stock[6][1]~q\)))) # (!\sel_prod[1]~input_o\ & (!\sel_prod[0]~input_o\ & (!\stock[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \stock[4][1]~q\,
	datad => \stock[6][1]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X3_Y26_N10
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\sel_prod[0]~input_o\ & ((\Mux0~2_combout\ & ((!\stock[7][1]~q\))) # (!\Mux0~2_combout\ & (!\stock[5][1]~q\)))) # (!\sel_prod[0]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stock[5][1]~q\,
	datab => \sel_prod[0]~input_o\,
	datac => \stock[7][1]~q\,
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X3_Y26_N4
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\ & ((\Mux0~3_combout\))) # (!\sel_prod[2]~input_o\ & (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[3]~input_o\,
	datac => \Mux0~5_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X3_Y26_N24
\Decoder0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Mux0~6_combout\) # ((\Mux1~9_combout\) # ((\Mux0~10_combout\ & \sel_prod[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Mux0~6_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \Mux1~9_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X3_Y26_N2
\Decoder0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\confirmar~input_o\ & (!\prev_conf~q\ & (!\sel_prod[1]~input_o\ & \Decoder0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \prev_conf~q\,
	datac => \sel_prod[1]~input_o\,
	datad => \Decoder0~8_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X2_Y25_N28
\Decoder0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~23_combout\ = (!\sel_prod[0]~input_o\ & (\sel_prod[2]~input_o\ & (\Decoder0~9_combout\ & \sel_prod[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \Decoder0~9_combout\,
	datad => \sel_prod[3]~input_o\,
	combout => \Decoder0~23_combout\);

-- Location: FF_X2_Y25_N15
\stock[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[12][0]~q\);

-- Location: LCCOMB_X3_Y26_N22
\stock[13][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[13][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux1~9_combout\,
	combout => \stock[13][0]~feeder_combout\);

-- Location: LCCOMB_X3_Y26_N8
\Decoder0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~22_combout\ = (\sel_prod[2]~input_o\ & (\sel_prod[0]~input_o\ & (\sel_prod[3]~input_o\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~22_combout\);

-- Location: FF_X3_Y26_N23
\stock[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[13][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[13][0]~q\);

-- Location: LCCOMB_X2_Y25_N14
\Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux0~1_combout\ & ((\Mux0~0_combout\) # ((!\stock[13][0]~q\)))) # (!\Mux0~1_combout\ & (!\Mux0~0_combout\ & (!\stock[12][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \stock[12][0]~q\,
	datad => \stock[13][0]~q\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X4_Y25_N0
\stock[9][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[9][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[9][0]~feeder_combout\);

-- Location: LCCOMB_X4_Y25_N2
\Decoder0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~26_combout\ = (\sel_prod[0]~input_o\ & (\sel_prod[3]~input_o\ & (!\sel_prod[2]~input_o\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[3]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~26_combout\);

-- Location: FF_X4_Y25_N1
\stock[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[9][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[9][0]~q\);

-- Location: LCCOMB_X3_Y26_N30
\Decoder0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~21_combout\ = (\sel_prod[1]~input_o\ & (\Decoder0~16_combout\ & (\sel_prod[3]~input_o\ & \confirm_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datab => \Decoder0~16_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \confirm_pulse~0_combout\,
	combout => \Decoder0~21_combout\);

-- Location: FF_X4_Y25_N7
\stock[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[11][0]~q\);

-- Location: LCCOMB_X3_Y25_N26
\Decoder0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~20_combout\ = (\sel_prod[3]~input_o\ & (!\sel_prod[0]~input_o\ & (!\sel_prod[2]~input_o\ & \Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[0]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \Decoder0~9_combout\,
	combout => \Decoder0~20_combout\);

-- Location: FF_X3_Y25_N15
\stock[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[8][0]~q\);

-- Location: LCCOMB_X3_Y25_N16
\stock[10][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[10][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[10][0]~feeder_combout\);

-- Location: LCCOMB_X3_Y25_N24
\Decoder0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Decoder0~19_combout\ = (!\sel_prod[2]~input_o\ & (\sel_prod[1]~input_o\ & (\sel_prod[3]~input_o\ & \Decoder0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[3]~input_o\,
	datad => \Decoder0~11_combout\,
	combout => \Decoder0~19_combout\);

-- Location: FF_X3_Y25_N17
\stock[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[10][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[10][0]~q\);

-- Location: LCCOMB_X3_Y25_N14
\Mux1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\sel_prod[0]~input_o\ & (\sel_prod[1]~input_o\)) # (!\sel_prod[0]~input_o\ & ((\sel_prod[1]~input_o\ & ((!\stock[10][0]~q\))) # (!\sel_prod[1]~input_o\ & (!\stock[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[8][0]~q\,
	datad => \stock[10][0]~q\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X4_Y25_N6
\Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\sel_prod[0]~input_o\ & ((\Mux1~5_combout\ & ((!\stock[11][0]~q\))) # (!\Mux1~5_combout\ & (!\stock[9][0]~q\)))) # (!\sel_prod[0]~input_o\ & (((\Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \stock[9][0]~q\,
	datac => \stock[11][0]~q\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X4_Y26_N22
\Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\Mux0~0_combout\ & ((\Mux1~7_combout\ & (!\stock[14][0]~q\)) # (!\Mux1~7_combout\ & ((\Mux1~6_combout\))))) # (!\Mux0~0_combout\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stock[14][0]~q\,
	datab => \Mux0~0_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X5_Y26_N12
\stock[5][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[5][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[5][0]~feeder_combout\);

-- Location: FF_X5_Y26_N13
\stock[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[5][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[5][0]~q\);

-- Location: FF_X5_Y26_N27
\stock[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[7][0]~q\);

-- Location: FF_X6_Y26_N7
\stock[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[4][0]~q\);

-- Location: LCCOMB_X6_Y26_N0
\stock[6][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[6][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[6][0]~feeder_combout\);

-- Location: FF_X6_Y26_N1
\stock[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[6][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[6][0]~q\);

-- Location: LCCOMB_X6_Y26_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel_prod[0]~input_o\ & (\sel_prod[1]~input_o\)) # (!\sel_prod[0]~input_o\ & ((\sel_prod[1]~input_o\ & ((!\stock[6][0]~q\))) # (!\sel_prod[1]~input_o\ & (!\stock[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[4][0]~q\,
	datad => \stock[6][0]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X5_Y26_N26
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sel_prod[0]~input_o\ & ((\Mux1~0_combout\ & ((!\stock[7][0]~q\))) # (!\Mux1~0_combout\ & (!\stock[5][0]~q\)))) # (!\sel_prod[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stock[5][0]~q\,
	datab => \sel_prod[0]~input_o\,
	datac => \stock[7][0]~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X2_Y26_N12
\stock[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[2][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[2][0]~feeder_combout\);

-- Location: FF_X2_Y26_N13
\stock[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[2][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[2][0]~q\);

-- Location: FF_X2_Y26_N15
\stock[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[3][0]~q\);

-- Location: FF_X1_Y26_N15
\stock[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mux1~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[0][0]~q\);

-- Location: LCCOMB_X1_Y26_N28
\stock[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[1][0]~feeder_combout\ = \Mux1~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux1~9_combout\,
	combout => \stock[1][0]~feeder_combout\);

-- Location: FF_X1_Y26_N29
\stock[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[1][0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[1][0]~q\);

-- Location: LCCOMB_X1_Y26_N14
\Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\sel_prod[0]~input_o\ & ((\sel_prod[1]~input_o\) # ((!\stock[1][0]~q\)))) # (!\sel_prod[0]~input_o\ & (!\sel_prod[1]~input_o\ & (!\stock[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[0][0]~q\,
	datad => \stock[1][0]~q\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X2_Y26_N14
\Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sel_prod[1]~input_o\ & ((\Mux1~2_combout\ & ((!\stock[3][0]~q\))) # (!\Mux1~2_combout\ & (!\stock[2][0]~q\)))) # (!\sel_prod[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stock[2][0]~q\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[3][0]~q\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X5_Y26_N24
\Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\ & (\Mux1~1_combout\)) # (!\sel_prod[2]~input_o\ & ((\Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[2]~input_o\,
	datab => \sel_prod[3]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X4_Y26_N4
\Mux1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~9_combout\ = (\Mux1~4_combout\) # ((\sel_prod[3]~input_o\ & \Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datac => \Mux1~8_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~9_combout\);

-- Location: LCCOMB_X4_Y26_N2
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Mux1~9_combout\ $ (((\Mux0~6_combout\) # ((\sel_prod[3]~input_o\ & \Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \Mux1~9_combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux0~10_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X4_Y26_N26
\stock[14][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[14][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \stock[14][1]~feeder_combout\);

-- Location: FF_X4_Y26_N27
\stock[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[14][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[14][1]~q\);

-- Location: FF_X3_Y26_N7
\stock[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[13][1]~q\);

-- Location: FF_X2_Y25_N3
\stock[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[12][1]~q\);

-- Location: LCCOMB_X3_Y25_N28
\stock[10][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[10][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	combout => \stock[10][1]~feeder_combout\);

-- Location: FF_X3_Y25_N29
\stock[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[10][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[10][1]~q\);

-- Location: FF_X2_Y25_N13
\stock[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[11][1]~q\);

-- Location: FF_X3_Y25_N19
\stock[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Decoder0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[8][1]~q\);

-- Location: LCCOMB_X4_Y25_N24
\stock[9][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \stock[9][1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \stock[9][1]~feeder_combout\);

-- Location: FF_X4_Y25_N25
\stock[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stock[9][1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Decoder0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stock[9][1]~q\);

-- Location: LCCOMB_X3_Y25_N18
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\sel_prod[0]~input_o\ & ((\sel_prod[1]~input_o\) # ((!\stock[9][1]~q\)))) # (!\sel_prod[0]~input_o\ & (!\sel_prod[1]~input_o\ & (!\stock[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \stock[8][1]~q\,
	datad => \stock[9][1]~q\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X2_Y25_N12
\Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (\sel_prod[1]~input_o\ & ((\Mux0~7_combout\ & ((!\stock[11][1]~q\))) # (!\Mux0~7_combout\ & (!\stock[10][1]~q\)))) # (!\sel_prod[1]~input_o\ & (((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[1]~input_o\,
	datab => \stock[10][1]~q\,
	datac => \stock[11][1]~q\,
	datad => \Mux0~7_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X2_Y25_N2
\Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (\Mux0~1_combout\ & (\Mux0~0_combout\)) # (!\Mux0~1_combout\ & ((\Mux0~0_combout\ & ((\Mux0~8_combout\))) # (!\Mux0~0_combout\ & (!\stock[12][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~0_combout\,
	datac => \stock[12][1]~q\,
	datad => \Mux0~8_combout\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X3_Y26_N6
\Mux0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\Mux0~1_combout\ & ((\Mux0~9_combout\ & (!\stock[14][1]~q\)) # (!\Mux0~9_combout\ & ((!\stock[13][1]~q\))))) # (!\Mux0~1_combout\ & (((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \stock[14][1]~q\,
	datac => \stock[13][1]~q\,
	datad => \Mux0~9_combout\,
	combout => \Mux0~10_combout\);

-- Location: LCCOMB_X3_Y26_N0
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux0~6_combout\) # ((\Mux1~9_combout\) # ((\Mux0~10_combout\ & \sel_prod[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Mux0~6_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \Mux1~9_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X3_Y26_N28
\confirm_pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \confirm_pulse~0_combout\ = (!\prev_conf~q\ & (\confirmar~input_o\ & \Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_conf~q\,
	datac => \confirmar~input_o\,
	datad => \Mux2~1_combout\,
	combout => \confirm_pulse~0_combout\);

-- Location: FF_X3_Y26_N29
confirm_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \confirm_pulse~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \confirm_pulse~q\);

-- Location: LCCOMB_X4_Y26_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux1~9_combout\ & ((\Mux0~6_combout\) # ((\sel_prod[3]~input_o\ & \Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~9_combout\,
	datab => \Mux0~6_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \Mux0~10_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y26_N18
\Mux0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~6_combout\) # ((\sel_prod[3]~input_o\ & \Mux0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~6_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \Mux0~10_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X3_Y25_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \sel_prod[1]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\sel_prod[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[1]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X3_Y25_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\sel_prod[2]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\sel_prod[2]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\sel_prod[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X3_Y25_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\sel_prod[3]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\sel_prod[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\sel_prod[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X3_Y25_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X3_Y25_N20
\Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sel_prod[3]~input_o\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \sel_prod[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X3_Y25_N2
\Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sel_prod[2]~input_o\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X3_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\sel_prod[1]~input_o\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \sel_prod[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

-- Location: LCCOMB_X1_Y26_N20
\U1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux6~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \sel_prod[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y25_N30
\U1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux5~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\sel_prod[0]~input_o\ $ (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y26_N6
\U1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux4~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (!\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\U1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux3~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & \sel_prod[0]~input_o\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \sel_prod[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y26_N10
\U1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux2~0_combout\ = (\sel_prod[0]~input_o\) # ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y26_N16
\U1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # ((\sel_prod[0]~input_o\ & \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & \sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\U1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # (!\sel_prod[0]~input_o\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ $ (((\Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\sel_prod[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[1]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X2_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\sel_prod[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X2_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\sel_prod[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X2_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X8_Y26_N6
\Udiv|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~0_combout\ = \Udiv|count1\(0) $ (VCC)
-- \Udiv|Add0~1\ = CARRY(\Udiv|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(0),
	datad => VCC,
	combout => \Udiv|Add0~0_combout\,
	cout => \Udiv|Add0~1\);

-- Location: FF_X8_Y26_N7
\Udiv|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(0));

-- Location: LCCOMB_X8_Y26_N8
\Udiv|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~2_combout\ = (\Udiv|count1\(1) & (!\Udiv|Add0~1\)) # (!\Udiv|count1\(1) & ((\Udiv|Add0~1\) # (GND)))
-- \Udiv|Add0~3\ = CARRY((!\Udiv|Add0~1\) # (!\Udiv|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(1),
	datad => VCC,
	cin => \Udiv|Add0~1\,
	combout => \Udiv|Add0~2_combout\,
	cout => \Udiv|Add0~3\);

-- Location: FF_X8_Y26_N9
\Udiv|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(1));

-- Location: LCCOMB_X8_Y26_N10
\Udiv|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~4_combout\ = (\Udiv|count1\(2) & (\Udiv|Add0~3\ $ (GND))) # (!\Udiv|count1\(2) & (!\Udiv|Add0~3\ & VCC))
-- \Udiv|Add0~5\ = CARRY((\Udiv|count1\(2) & !\Udiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(2),
	datad => VCC,
	cin => \Udiv|Add0~3\,
	combout => \Udiv|Add0~4_combout\,
	cout => \Udiv|Add0~5\);

-- Location: FF_X8_Y26_N11
\Udiv|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(2));

-- Location: LCCOMB_X8_Y26_N12
\Udiv|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~6_combout\ = (\Udiv|count1\(3) & (!\Udiv|Add0~5\)) # (!\Udiv|count1\(3) & ((\Udiv|Add0~5\) # (GND)))
-- \Udiv|Add0~7\ = CARRY((!\Udiv|Add0~5\) # (!\Udiv|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(3),
	datad => VCC,
	cin => \Udiv|Add0~5\,
	combout => \Udiv|Add0~6_combout\,
	cout => \Udiv|Add0~7\);

-- Location: FF_X8_Y26_N13
\Udiv|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(3));

-- Location: LCCOMB_X8_Y26_N14
\Udiv|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~8_combout\ = (\Udiv|count1\(4) & (\Udiv|Add0~7\ $ (GND))) # (!\Udiv|count1\(4) & (!\Udiv|Add0~7\ & VCC))
-- \Udiv|Add0~9\ = CARRY((\Udiv|count1\(4) & !\Udiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(4),
	datad => VCC,
	cin => \Udiv|Add0~7\,
	combout => \Udiv|Add0~8_combout\,
	cout => \Udiv|Add0~9\);

-- Location: FF_X8_Y26_N15
\Udiv|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(4));

-- Location: LCCOMB_X8_Y26_N16
\Udiv|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~10_combout\ = (\Udiv|count1\(5) & (!\Udiv|Add0~9\)) # (!\Udiv|count1\(5) & ((\Udiv|Add0~9\) # (GND)))
-- \Udiv|Add0~11\ = CARRY((!\Udiv|Add0~9\) # (!\Udiv|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(5),
	datad => VCC,
	cin => \Udiv|Add0~9\,
	combout => \Udiv|Add0~10_combout\,
	cout => \Udiv|Add0~11\);

-- Location: FF_X8_Y26_N17
\Udiv|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(5));

-- Location: LCCOMB_X8_Y26_N18
\Udiv|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~12_combout\ = (\Udiv|count1\(6) & (\Udiv|Add0~11\ $ (GND))) # (!\Udiv|count1\(6) & (!\Udiv|Add0~11\ & VCC))
-- \Udiv|Add0~13\ = CARRY((\Udiv|count1\(6) & !\Udiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(6),
	datad => VCC,
	cin => \Udiv|Add0~11\,
	combout => \Udiv|Add0~12_combout\,
	cout => \Udiv|Add0~13\);

-- Location: FF_X8_Y26_N19
\Udiv|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(6));

-- Location: LCCOMB_X8_Y26_N20
\Udiv|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~14_combout\ = (\Udiv|count1\(7) & (!\Udiv|Add0~13\)) # (!\Udiv|count1\(7) & ((\Udiv|Add0~13\) # (GND)))
-- \Udiv|Add0~15\ = CARRY((!\Udiv|Add0~13\) # (!\Udiv|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(7),
	datad => VCC,
	cin => \Udiv|Add0~13\,
	combout => \Udiv|Add0~14_combout\,
	cout => \Udiv|Add0~15\);

-- Location: LCCOMB_X8_Y26_N2
\Udiv|count1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~2_combout\ = (\Udiv|Add0~14_combout\ & !\Udiv|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Add0~14_combout\,
	datad => \Udiv|Equal0~8_combout\,
	combout => \Udiv|count1~2_combout\);

-- Location: FF_X8_Y26_N3
\Udiv|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(7));

-- Location: LCCOMB_X8_Y26_N22
\Udiv|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~16_combout\ = (\Udiv|count1\(8) & (\Udiv|Add0~15\ $ (GND))) # (!\Udiv|count1\(8) & (!\Udiv|Add0~15\ & VCC))
-- \Udiv|Add0~17\ = CARRY((\Udiv|count1\(8) & !\Udiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(8),
	datad => VCC,
	cin => \Udiv|Add0~15\,
	combout => \Udiv|Add0~16_combout\,
	cout => \Udiv|Add0~17\);

-- Location: FF_X8_Y26_N23
\Udiv|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(8));

-- Location: LCCOMB_X8_Y26_N24
\Udiv|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~18_combout\ = (\Udiv|count1\(9) & (!\Udiv|Add0~17\)) # (!\Udiv|count1\(9) & ((\Udiv|Add0~17\) # (GND)))
-- \Udiv|Add0~19\ = CARRY((!\Udiv|Add0~17\) # (!\Udiv|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(9),
	datad => VCC,
	cin => \Udiv|Add0~17\,
	combout => \Udiv|Add0~18_combout\,
	cout => \Udiv|Add0~19\);

-- Location: FF_X8_Y26_N25
\Udiv|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(9));

-- Location: LCCOMB_X8_Y26_N26
\Udiv|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~20_combout\ = (\Udiv|count1\(10) & (\Udiv|Add0~19\ $ (GND))) # (!\Udiv|count1\(10) & (!\Udiv|Add0~19\ & VCC))
-- \Udiv|Add0~21\ = CARRY((\Udiv|count1\(10) & !\Udiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(10),
	datad => VCC,
	cin => \Udiv|Add0~19\,
	combout => \Udiv|Add0~20_combout\,
	cout => \Udiv|Add0~21\);

-- Location: FF_X8_Y26_N27
\Udiv|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(10));

-- Location: LCCOMB_X8_Y26_N28
\Udiv|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~22_combout\ = (\Udiv|count1\(11) & (!\Udiv|Add0~21\)) # (!\Udiv|count1\(11) & ((\Udiv|Add0~21\) # (GND)))
-- \Udiv|Add0~23\ = CARRY((!\Udiv|Add0~21\) # (!\Udiv|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(11),
	datad => VCC,
	cin => \Udiv|Add0~21\,
	combout => \Udiv|Add0~22_combout\,
	cout => \Udiv|Add0~23\);

-- Location: FF_X8_Y26_N29
\Udiv|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(11));

-- Location: LCCOMB_X8_Y26_N30
\Udiv|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~24_combout\ = (\Udiv|count1\(12) & (\Udiv|Add0~23\ $ (GND))) # (!\Udiv|count1\(12) & (!\Udiv|Add0~23\ & VCC))
-- \Udiv|Add0~25\ = CARRY((\Udiv|count1\(12) & !\Udiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(12),
	datad => VCC,
	cin => \Udiv|Add0~23\,
	combout => \Udiv|Add0~24_combout\,
	cout => \Udiv|Add0~25\);

-- Location: LCCOMB_X8_Y26_N0
\Udiv|count1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~1_combout\ = (\Udiv|Add0~24_combout\ & !\Udiv|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|Add0~24_combout\,
	datad => \Udiv|Equal0~8_combout\,
	combout => \Udiv|count1~1_combout\);

-- Location: FF_X8_Y26_N1
\Udiv|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(12));

-- Location: LCCOMB_X8_Y25_N0
\Udiv|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~26_combout\ = (\Udiv|count1\(13) & (!\Udiv|Add0~25\)) # (!\Udiv|count1\(13) & ((\Udiv|Add0~25\) # (GND)))
-- \Udiv|Add0~27\ = CARRY((!\Udiv|Add0~25\) # (!\Udiv|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(13),
	datad => VCC,
	cin => \Udiv|Add0~25\,
	combout => \Udiv|Add0~26_combout\,
	cout => \Udiv|Add0~27\);

-- Location: LCCOMB_X7_Y25_N12
\Udiv|count1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~0_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~26_combout\,
	combout => \Udiv|count1~0_combout\);

-- Location: FF_X7_Y25_N13
\Udiv|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(13));

-- Location: LCCOMB_X8_Y25_N2
\Udiv|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~28_combout\ = (\Udiv|count1\(14) & (\Udiv|Add0~27\ $ (GND))) # (!\Udiv|count1\(14) & (!\Udiv|Add0~27\ & VCC))
-- \Udiv|Add0~29\ = CARRY((\Udiv|count1\(14) & !\Udiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(14),
	datad => VCC,
	cin => \Udiv|Add0~27\,
	combout => \Udiv|Add0~28_combout\,
	cout => \Udiv|Add0~29\);

-- Location: LCCOMB_X7_Y25_N8
\Udiv|count1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~3_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|Equal0~8_combout\,
	datad => \Udiv|Add0~28_combout\,
	combout => \Udiv|count1~3_combout\);

-- Location: FF_X7_Y25_N9
\Udiv|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(14));

-- Location: LCCOMB_X8_Y25_N4
\Udiv|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~30_combout\ = (\Udiv|count1\(15) & (!\Udiv|Add0~29\)) # (!\Udiv|count1\(15) & ((\Udiv|Add0~29\) # (GND)))
-- \Udiv|Add0~31\ = CARRY((!\Udiv|Add0~29\) # (!\Udiv|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(15),
	datad => VCC,
	cin => \Udiv|Add0~29\,
	combout => \Udiv|Add0~30_combout\,
	cout => \Udiv|Add0~31\);

-- Location: LCCOMB_X8_Y25_N28
\Udiv|count1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~4_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~30_combout\,
	combout => \Udiv|count1~4_combout\);

-- Location: FF_X8_Y25_N29
\Udiv|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(15));

-- Location: LCCOMB_X8_Y25_N6
\Udiv|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~32_combout\ = (\Udiv|count1\(16) & (\Udiv|Add0~31\ $ (GND))) # (!\Udiv|count1\(16) & (!\Udiv|Add0~31\ & VCC))
-- \Udiv|Add0~33\ = CARRY((\Udiv|count1\(16) & !\Udiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(16),
	datad => VCC,
	cin => \Udiv|Add0~31\,
	combout => \Udiv|Add0~32_combout\,
	cout => \Udiv|Add0~33\);

-- Location: FF_X8_Y25_N7
\Udiv|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(16));

-- Location: LCCOMB_X8_Y25_N8
\Udiv|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~34_combout\ = (\Udiv|count1\(17) & (!\Udiv|Add0~33\)) # (!\Udiv|count1\(17) & ((\Udiv|Add0~33\) # (GND)))
-- \Udiv|Add0~35\ = CARRY((!\Udiv|Add0~33\) # (!\Udiv|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(17),
	datad => VCC,
	cin => \Udiv|Add0~33\,
	combout => \Udiv|Add0~34_combout\,
	cout => \Udiv|Add0~35\);

-- Location: LCCOMB_X7_Y25_N14
\Udiv|count1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~5_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~34_combout\,
	combout => \Udiv|count1~5_combout\);

-- Location: FF_X7_Y25_N15
\Udiv|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(17));

-- Location: LCCOMB_X8_Y25_N10
\Udiv|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~36_combout\ = (\Udiv|count1\(18) & (\Udiv|Add0~35\ $ (GND))) # (!\Udiv|count1\(18) & (!\Udiv|Add0~35\ & VCC))
-- \Udiv|Add0~37\ = CARRY((\Udiv|count1\(18) & !\Udiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(18),
	datad => VCC,
	cin => \Udiv|Add0~35\,
	combout => \Udiv|Add0~36_combout\,
	cout => \Udiv|Add0~37\);

-- Location: FF_X8_Y25_N11
\Udiv|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(18));

-- Location: LCCOMB_X8_Y25_N12
\Udiv|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~38_combout\ = (\Udiv|count1\(19) & (!\Udiv|Add0~37\)) # (!\Udiv|count1\(19) & ((\Udiv|Add0~37\) # (GND)))
-- \Udiv|Add0~39\ = CARRY((!\Udiv|Add0~37\) # (!\Udiv|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(19),
	datad => VCC,
	cin => \Udiv|Add0~37\,
	combout => \Udiv|Add0~38_combout\,
	cout => \Udiv|Add0~39\);

-- Location: LCCOMB_X7_Y25_N24
\Udiv|count1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~6_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~38_combout\,
	combout => \Udiv|count1~6_combout\);

-- Location: FF_X7_Y25_N25
\Udiv|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(19));

-- Location: LCCOMB_X7_Y25_N10
\Udiv|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~5_combout\ = (!\Udiv|count1\(16) & (\Udiv|count1\(17) & (!\Udiv|count1\(18) & \Udiv|count1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(16),
	datab => \Udiv|count1\(17),
	datac => \Udiv|count1\(18),
	datad => \Udiv|count1\(19),
	combout => \Udiv|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y25_N14
\Udiv|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~40_combout\ = (\Udiv|count1\(20) & (\Udiv|Add0~39\ $ (GND))) # (!\Udiv|count1\(20) & (!\Udiv|Add0~39\ & VCC))
-- \Udiv|Add0~41\ = CARRY((\Udiv|count1\(20) & !\Udiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(20),
	datad => VCC,
	cin => \Udiv|Add0~39\,
	combout => \Udiv|Add0~40_combout\,
	cout => \Udiv|Add0~41\);

-- Location: LCCOMB_X7_Y25_N0
\Udiv|count1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~7_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~40_combout\,
	combout => \Udiv|count1~7_combout\);

-- Location: FF_X7_Y25_N1
\Udiv|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(20));

-- Location: LCCOMB_X8_Y25_N16
\Udiv|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~42_combout\ = (\Udiv|count1\(21) & (!\Udiv|Add0~41\)) # (!\Udiv|count1\(21) & ((\Udiv|Add0~41\) # (GND)))
-- \Udiv|Add0~43\ = CARRY((!\Udiv|Add0~41\) # (!\Udiv|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(21),
	datad => VCC,
	cin => \Udiv|Add0~41\,
	combout => \Udiv|Add0~42_combout\,
	cout => \Udiv|Add0~43\);

-- Location: LCCOMB_X7_Y25_N22
\Udiv|count1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~8_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|Equal0~8_combout\,
	datad => \Udiv|Add0~42_combout\,
	combout => \Udiv|count1~8_combout\);

-- Location: FF_X7_Y25_N23
\Udiv|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(21));

-- Location: LCCOMB_X8_Y25_N18
\Udiv|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~44_combout\ = (\Udiv|count1\(22) & (\Udiv|Add0~43\ $ (GND))) # (!\Udiv|count1\(22) & (!\Udiv|Add0~43\ & VCC))
-- \Udiv|Add0~45\ = CARRY((\Udiv|count1\(22) & !\Udiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(22),
	datad => VCC,
	cin => \Udiv|Add0~43\,
	combout => \Udiv|Add0~44_combout\,
	cout => \Udiv|Add0~45\);

-- Location: LCCOMB_X7_Y25_N16
\Udiv|count1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~9_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|Equal0~8_combout\,
	datad => \Udiv|Add0~44_combout\,
	combout => \Udiv|count1~9_combout\);

-- Location: FF_X7_Y25_N17
\Udiv|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(22));

-- Location: LCCOMB_X8_Y25_N20
\Udiv|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~46_combout\ = (\Udiv|count1\(23) & (!\Udiv|Add0~45\)) # (!\Udiv|count1\(23) & ((\Udiv|Add0~45\) # (GND)))
-- \Udiv|Add0~47\ = CARRY((!\Udiv|Add0~45\) # (!\Udiv|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(23),
	datad => VCC,
	cin => \Udiv|Add0~45\,
	combout => \Udiv|Add0~46_combout\,
	cout => \Udiv|Add0~47\);

-- Location: LCCOMB_X7_Y25_N6
\Udiv|count1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~10_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|Equal0~8_combout\,
	datac => \Udiv|Add0~46_combout\,
	combout => \Udiv|count1~10_combout\);

-- Location: FF_X7_Y25_N7
\Udiv|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(23));

-- Location: LCCOMB_X7_Y25_N28
\Udiv|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~6_combout\ = (\Udiv|count1\(23) & (\Udiv|count1\(20) & (\Udiv|count1\(21) & \Udiv|count1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(23),
	datab => \Udiv|count1\(20),
	datac => \Udiv|count1\(21),
	datad => \Udiv|count1\(22),
	combout => \Udiv|Equal0~6_combout\);

-- Location: LCCOMB_X8_Y25_N22
\Udiv|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~48_combout\ = (\Udiv|count1\(24) & (\Udiv|Add0~47\ $ (GND))) # (!\Udiv|count1\(24) & (!\Udiv|Add0~47\ & VCC))
-- \Udiv|Add0~49\ = CARRY((\Udiv|count1\(24) & !\Udiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(24),
	datad => VCC,
	cin => \Udiv|Add0~47\,
	combout => \Udiv|Add0~48_combout\,
	cout => \Udiv|Add0~49\);

-- Location: FF_X8_Y25_N23
\Udiv|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(24));

-- Location: LCCOMB_X8_Y25_N24
\Udiv|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~50_combout\ = (\Udiv|count1\(25) & (!\Udiv|Add0~49\)) # (!\Udiv|count1\(25) & ((\Udiv|Add0~49\) # (GND)))
-- \Udiv|Add0~51\ = CARRY((!\Udiv|Add0~49\) # (!\Udiv|count1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(25),
	datad => VCC,
	cin => \Udiv|Add0~49\,
	combout => \Udiv|Add0~50_combout\,
	cout => \Udiv|Add0~51\);

-- Location: LCCOMB_X8_Y25_N30
\Udiv|count1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|count1~11_combout\ = (!\Udiv|Equal0~8_combout\ & \Udiv|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|Equal0~8_combout\,
	datad => \Udiv|Add0~50_combout\,
	combout => \Udiv|count1~11_combout\);

-- Location: FF_X8_Y25_N31
\Udiv|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|count1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(25));

-- Location: LCCOMB_X8_Y25_N26
\Udiv|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Add0~52_combout\ = \Udiv|count1\(26) $ (!\Udiv|Add0~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(26),
	cin => \Udiv|Add0~51\,
	combout => \Udiv|Add0~52_combout\);

-- Location: FF_X8_Y25_N27
\Udiv|count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|count1\(26));

-- Location: LCCOMB_X7_Y25_N26
\Udiv|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~7_combout\ = (!\Udiv|count1\(26) & (\Udiv|count1\(25) & !\Udiv|count1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Udiv|count1\(26),
	datac => \Udiv|count1\(25),
	datad => \Udiv|count1\(24),
	combout => \Udiv|Equal0~7_combout\);

-- Location: LCCOMB_X7_Y25_N30
\Udiv|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~0_combout\ = (\Udiv|count1\(13) & (!\Udiv|count1\(11) & (\Udiv|count1\(12) & !\Udiv|count1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(13),
	datab => \Udiv|count1\(11),
	datac => \Udiv|count1\(12),
	datad => \Udiv|count1\(10),
	combout => \Udiv|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y25_N18
\Udiv|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~3_combout\ = (\Udiv|count1\(15) & (\Udiv|count1\(14) & (\Udiv|count1\(0) & \Udiv|count1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(15),
	datab => \Udiv|count1\(14),
	datac => \Udiv|count1\(0),
	datad => \Udiv|count1\(1),
	combout => \Udiv|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y26_N24
\Udiv|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~1_combout\ = (!\Udiv|count1\(7) & (\Udiv|count1\(6) & (!\Udiv|count1\(8) & !\Udiv|count1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(7),
	datab => \Udiv|count1\(6),
	datac => \Udiv|count1\(8),
	datad => \Udiv|count1\(9),
	combout => \Udiv|Equal0~1_combout\);

-- Location: LCCOMB_X8_Y26_N4
\Udiv|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~2_combout\ = (\Udiv|count1\(2) & (\Udiv|count1\(5) & (\Udiv|count1\(4) & \Udiv|count1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|count1\(2),
	datab => \Udiv|count1\(5),
	datac => \Udiv|count1\(4),
	datad => \Udiv|count1\(3),
	combout => \Udiv|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y25_N20
\Udiv|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~4_combout\ = (\Udiv|Equal0~0_combout\ & (\Udiv|Equal0~3_combout\ & (\Udiv|Equal0~1_combout\ & \Udiv|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|Equal0~0_combout\,
	datab => \Udiv|Equal0~3_combout\,
	datac => \Udiv|Equal0~1_combout\,
	datad => \Udiv|Equal0~2_combout\,
	combout => \Udiv|Equal0~4_combout\);

-- Location: LCCOMB_X7_Y25_N4
\Udiv|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|Equal0~8_combout\ = (\Udiv|Equal0~5_combout\ & (\Udiv|Equal0~6_combout\ & (\Udiv|Equal0~7_combout\ & \Udiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Udiv|Equal0~5_combout\,
	datab => \Udiv|Equal0~6_combout\,
	datac => \Udiv|Equal0~7_combout\,
	datad => \Udiv|Equal0~4_combout\,
	combout => \Udiv|Equal0~8_combout\);

-- Location: LCCOMB_X5_Y25_N30
\Udiv|out1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|out1~0_combout\ = \Udiv|out1~q\ $ (\Udiv|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|out1~q\,
	datad => \Udiv|Equal0~8_combout\,
	combout => \Udiv|out1~0_combout\);

-- Location: LCCOMB_X5_Y25_N0
\Udiv|out1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Udiv|out1~feeder_combout\ = \Udiv|out1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Udiv|out1~0_combout\,
	combout => \Udiv|out1~feeder_combout\);

-- Location: FF_X5_Y25_N1
\Udiv|out1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Udiv|out1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Udiv|out1~q\);

-- Location: LCCOMB_X4_Y26_N24
\alerta_sig~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alerta_sig~0_combout\ = (\Mux0~6_combout\) # (\alerta_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux0~6_combout\,
	datad => \alerta_sig~q\,
	combout => \alerta_sig~0_combout\);

-- Location: LCCOMB_X4_Y26_N20
\alerta_sig~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alerta_sig~1_combout\ = (!\Mux1~9_combout\ & (!\alerta_sig~0_combout\ & ((!\Mux0~10_combout\) # (!\sel_prod[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \Mux1~9_combout\,
	datac => \Mux0~10_combout\,
	datad => \alerta_sig~0_combout\,
	combout => \alerta_sig~1_combout\);

-- Location: FF_X4_Y26_N21
alerta_sig : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Udiv|out1~q\,
	d => \alerta_sig~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \alerta_sig~q\);

ww_led_compra <= \led_compra~output_o\;

ww_stock_leds(0) <= \stock_leds[0]~output_o\;

ww_stock_leds(1) <= \stock_leds[1]~output_o\;

ww_stock_leds(2) <= \stock_leds[2]~output_o\;

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

ww_alerta_led <= \alerta_led~output_o\;
END structure;


