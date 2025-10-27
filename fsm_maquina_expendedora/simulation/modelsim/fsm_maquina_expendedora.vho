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

-- DATE "10/27/2025 12:29:10"

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

ENTITY 	fsm_maquina_expendedora IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirmar : IN std_logic;
	hay_moneda : IN std_logic;
	saldo_ok : IN std_logic;
	stock_ok : IN std_logic;
	anomalia : IN std_logic;
	puerta_fin : IN std_logic;
	led_entrega : OUT std_logic;
	led_anom : OUT std_logic;
	habilitar_resta : OUT std_logic;
	habilitar_entrega : OUT std_logic;
	estado_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END fsm_maquina_expendedora;

-- Design Ports Information
-- led_entrega	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_anom	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitar_resta	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habilitar_entrega	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_out[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_out[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado_out[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_fin	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saldo_ok	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_ok	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hay_moneda	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fsm_maquina_expendedora IS
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
SIGNAL ww_hay_moneda : std_logic;
SIGNAL ww_saldo_ok : std_logic;
SIGNAL ww_stock_ok : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_puerta_fin : std_logic;
SIGNAL ww_led_entrega : std_logic;
SIGNAL ww_led_anom : std_logic;
SIGNAL ww_habilitar_resta : std_logic;
SIGNAL ww_habilitar_entrega : std_logic;
SIGNAL ww_estado_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_entrega~output_o\ : std_logic;
SIGNAL \led_anom~output_o\ : std_logic;
SIGNAL \habilitar_resta~output_o\ : std_logic;
SIGNAL \habilitar_entrega~output_o\ : std_logic;
SIGNAL \estado_out[0]~output_o\ : std_logic;
SIGNAL \estado_out[1]~output_o\ : std_logic;
SIGNAL \estado_out[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \saldo_ok~input_o\ : std_logic;
SIGNAL \puerta_fin~input_o\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \stock_ok~input_o\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.SIN_STOCK~q\ : std_logic;
SIGNAL \hay_moneda~input_o\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \current_state.CAMBIO~0_combout\ : std_logic;
SIGNAL \current_state.CAMBIO~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \current_state.HAY_ANOMALIA~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \current_state.ESPERA~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \current_state.MONEDAS~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \current_state.VALIDACION~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \current_state.ENTREGA~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirmar <= confirmar;
ww_hay_moneda <= hay_moneda;
ww_saldo_ok <= saldo_ok;
ww_stock_ok <= stock_ok;
ww_anomalia <= anomalia;
ww_puerta_fin <= puerta_fin;
led_entrega <= ww_led_entrega;
led_anom <= ww_led_anom;
habilitar_resta <= ww_habilitar_resta;
habilitar_entrega <= ww_habilitar_entrega;
estado_out <= ww_estado_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y2_N23
\led_entrega~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.ENTREGA~q\,
	devoe => ww_devoe,
	o => \led_entrega~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\led_anom~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.HAY_ANOMALIA~q\,
	devoe => ww_devoe,
	o => \led_anom~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\habilitar_resta~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.VALIDACION~q\,
	devoe => ww_devoe,
	o => \habilitar_resta~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\habilitar_entrega~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.ENTREGA~q\,
	devoe => ww_devoe,
	o => \habilitar_entrega~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\estado_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \estado_out[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\estado_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \estado_out[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\estado_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~combout\,
	devoe => ww_devoe,
	o => \estado_out[2]~output_o\);

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

-- Location: IOIBUF_X0_Y5_N8
\saldo_ok~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_saldo_ok,
	o => \saldo_ok~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\puerta_fin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_puerta_fin,
	o => \puerta_fin~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: LCCOMB_X1_Y4_N28
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\puerta_fin~input_o\ & (!\anomalia~input_o\ & \current_state.ENTREGA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta_fin~input_o\,
	datac => \anomalia~input_o\,
	datad => \current_state.ENTREGA~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X0_Y5_N1
\stock_ok~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stock_ok,
	o => \stock_ok~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\anomalia~input_o\ & (!\stock_ok~input_o\ & \current_state.VALIDACION~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datac => \stock_ok~input_o\,
	datad => \current_state.VALIDACION~q\,
	combout => \Selector3~0_combout\);

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

-- Location: FF_X1_Y4_N5
\current_state.SIN_STOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SIN_STOCK~q\);

-- Location: IOIBUF_X0_Y5_N15
\hay_moneda~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hay_moneda,
	o => \hay_moneda~input_o\);

-- Location: LCCOMB_X1_Y4_N26
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\current_state.ENTREGA~q\) # (!\current_state.ESPERA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.ESPERA~q\,
	datad => \current_state.ENTREGA~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X1_Y4_N2
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\current_state.ENTREGA~q\ & (!\puerta_fin~input_o\ & ((!\anomalia~input_o\)))) # (!\current_state.ENTREGA~q\ & (((!\hay_moneda~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta_fin~input_o\,
	datab => \hay_moneda~input_o\,
	datac => \anomalia~input_o\,
	datad => \current_state.ENTREGA~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X1_Y4_N0
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\current_state.MONEDAS~q\ & (!\confirmar~input_o\ & ((\Selector2~1_combout\) # (!\Selector2~2_combout\)))) # (!\current_state.MONEDAS~q\ & (((\Selector2~2_combout\ & \Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \current_state.MONEDAS~q\,
	datac => \Selector2~2_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X1_Y4_N22
\current_state.CAMBIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \current_state.CAMBIO~0_combout\ = (\current_state.ENTREGA~q\ & ((\puerta_fin~input_o\) # ((\current_state.CAMBIO~q\ & \Selector2~3_combout\)))) # (!\current_state.ENTREGA~q\ & (((\current_state.CAMBIO~q\ & \Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.ENTREGA~q\,
	datab => \puerta_fin~input_o\,
	datac => \current_state.CAMBIO~q\,
	datad => \Selector2~3_combout\,
	combout => \current_state.CAMBIO~0_combout\);

-- Location: FF_X1_Y4_N23
\current_state.CAMBIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.CAMBIO~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.CAMBIO~q\);

-- Location: LCCOMB_X1_Y4_N6
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\anomalia~input_o\ & ((\current_state.VALIDACION~q\) # ((\current_state.ENTREGA~q\ & !\puerta_fin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.ENTREGA~q\,
	datab => \puerta_fin~input_o\,
	datac => \anomalia~input_o\,
	datad => \current_state.VALIDACION~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X1_Y4_N7
\current_state.HAY_ANOMALIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.HAY_ANOMALIA~q\);

-- Location: LCCOMB_X1_Y4_N8
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.CAMBIO~q\ & (!\current_state.HAY_ANOMALIA~q\ & ((\hay_moneda~input_o\) # (\current_state.ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.CAMBIO~q\,
	datab => \hay_moneda~input_o\,
	datac => \current_state.ESPERA~q\,
	datad => \current_state.HAY_ANOMALIA~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y4_N9
\current_state.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ESPERA~q\);

-- Location: LCCOMB_X1_Y4_N30
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\confirmar~input_o\ & (\hay_moneda~input_o\ & (!\current_state.ESPERA~q\))) # (!\confirmar~input_o\ & ((\current_state.MONEDAS~q\) # ((\hay_moneda~input_o\ & !\current_state.ESPERA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \hay_moneda~input_o\,
	datac => \current_state.ESPERA~q\,
	datad => \current_state.MONEDAS~q\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X1_Y4_N18
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\current_state.SIN_STOCK~q\) # ((\Selector1~1_combout\) # ((!\saldo_ok~input_o\ & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_ok~input_o\,
	datab => \current_state.SIN_STOCK~q\,
	datac => \Selector1~1_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X1_Y4_N19
\current_state.MONEDAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.MONEDAS~q\);

-- Location: LCCOMB_X1_Y4_N16
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\confirmar~input_o\ & (\current_state.MONEDAS~q\ & ((!\current_state.ENTREGA~q\) # (!\puerta_fin~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \puerta_fin~input_o\,
	datab => \confirmar~input_o\,
	datac => \current_state.ENTREGA~q\,
	datad => \current_state.MONEDAS~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y4_N12
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~0_combout\) # ((\current_state.VALIDACION~q\ & \Selector2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \current_state.VALIDACION~q\,
	datad => \Selector2~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X1_Y4_N13
\current_state.VALIDACION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.VALIDACION~q\);

-- Location: LCCOMB_X1_Y4_N10
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\anomalia~input_o\ & (\stock_ok~input_o\ & \current_state.VALIDACION~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datac => \stock_ok~input_o\,
	datad => \current_state.VALIDACION~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y4_N20
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\saldo_ok~input_o\ & \Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saldo_ok~input_o\,
	datab => \Selector4~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X1_Y4_N21
\current_state.ENTREGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ENTREGA~q\);

-- Location: LCCOMB_X1_Y4_N24
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\current_state.CAMBIO~q\) # ((\current_state.SIN_STOCK~q\) # (\current_state.MONEDAS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.CAMBIO~q\,
	datab => \current_state.SIN_STOCK~q\,
	datad => \current_state.MONEDAS~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y3_N16
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\current_state.VALIDACION~q\) # ((\current_state.HAY_ANOMALIA~q\) # (\current_state.SIN_STOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.VALIDACION~q\,
	datab => \current_state.HAY_ANOMALIA~q\,
	datad => \current_state.SIN_STOCK~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y4_N14
WideOr2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\current_state.ENTREGA~q\) # ((\current_state.CAMBIO~q\) # (\current_state.HAY_ANOMALIA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.ENTREGA~q\,
	datac => \current_state.CAMBIO~q\,
	datad => \current_state.HAY_ANOMALIA~q\,
	combout => \WideOr2~combout\);

ww_led_entrega <= \led_entrega~output_o\;

ww_led_anom <= \led_anom~output_o\;

ww_habilitar_resta <= \habilitar_resta~output_o\;

ww_habilitar_entrega <= \habilitar_entrega~output_o\;

ww_estado_out(0) <= \estado_out[0]~output_o\;

ww_estado_out(1) <= \estado_out[1]~output_o\;

ww_estado_out(2) <= \estado_out[2]~output_o\;
END structure;


