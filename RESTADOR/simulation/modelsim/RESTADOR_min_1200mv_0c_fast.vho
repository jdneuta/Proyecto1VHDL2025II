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

-- DATE "09/29/2025 21:17:21"

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

ENTITY 	RESTADOR IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	confirmar : IN std_logic;
	dinero_ingresado : IN STD.STANDARD.integer range 0 TO 9999;
	precio_producto : IN STD.STANDARD.integer range 0 TO 9999;
	cambio : OUT STD.STANDARD.integer range -9999 TO 9999
	);
END RESTADOR;

-- Design Ports Information
-- cambio[0]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[8]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[9]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[10]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[11]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[12]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambio[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[3]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[4]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[9]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[10]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[11]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- precio_producto[13]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinero_ingresado[13]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RESTADOR IS
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
SIGNAL ww_dinero_ingresado : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_precio_producto : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_cambio : std_logic_vector(14 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cambio[0]~output_o\ : std_logic;
SIGNAL \cambio[1]~output_o\ : std_logic;
SIGNAL \cambio[2]~output_o\ : std_logic;
SIGNAL \cambio[3]~output_o\ : std_logic;
SIGNAL \cambio[4]~output_o\ : std_logic;
SIGNAL \cambio[5]~output_o\ : std_logic;
SIGNAL \cambio[6]~output_o\ : std_logic;
SIGNAL \cambio[7]~output_o\ : std_logic;
SIGNAL \cambio[8]~output_o\ : std_logic;
SIGNAL \cambio[9]~output_o\ : std_logic;
SIGNAL \cambio[10]~output_o\ : std_logic;
SIGNAL \cambio[11]~output_o\ : std_logic;
SIGNAL \cambio[12]~output_o\ : std_logic;
SIGNAL \cambio[13]~output_o\ : std_logic;
SIGNAL \cambio[14]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dinero_ingresado[0]~input_o\ : std_logic;
SIGNAL \precio_producto[0]~input_o\ : std_logic;
SIGNAL \cambio_reg[0]~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \precio_producto[1]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[1]~input_o\ : std_logic;
SIGNAL \cambio_reg[0]~16\ : std_logic;
SIGNAL \cambio_reg[1]~17_combout\ : std_logic;
SIGNAL \dinero_ingresado[2]~input_o\ : std_logic;
SIGNAL \precio_producto[2]~input_o\ : std_logic;
SIGNAL \cambio_reg[1]~18\ : std_logic;
SIGNAL \cambio_reg[2]~19_combout\ : std_logic;
SIGNAL \dinero_ingresado[3]~input_o\ : std_logic;
SIGNAL \precio_producto[3]~input_o\ : std_logic;
SIGNAL \cambio_reg[2]~20\ : std_logic;
SIGNAL \cambio_reg[3]~21_combout\ : std_logic;
SIGNAL \precio_producto[4]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[4]~input_o\ : std_logic;
SIGNAL \cambio_reg[3]~22\ : std_logic;
SIGNAL \cambio_reg[4]~23_combout\ : std_logic;
SIGNAL \dinero_ingresado[5]~input_o\ : std_logic;
SIGNAL \precio_producto[5]~input_o\ : std_logic;
SIGNAL \cambio_reg[4]~24\ : std_logic;
SIGNAL \cambio_reg[5]~25_combout\ : std_logic;
SIGNAL \dinero_ingresado[6]~input_o\ : std_logic;
SIGNAL \precio_producto[6]~input_o\ : std_logic;
SIGNAL \cambio_reg[5]~26\ : std_logic;
SIGNAL \cambio_reg[6]~27_combout\ : std_logic;
SIGNAL \precio_producto[7]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[7]~input_o\ : std_logic;
SIGNAL \cambio_reg[6]~28\ : std_logic;
SIGNAL \cambio_reg[7]~29_combout\ : std_logic;
SIGNAL \precio_producto[8]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[8]~input_o\ : std_logic;
SIGNAL \cambio_reg[7]~30\ : std_logic;
SIGNAL \cambio_reg[8]~31_combout\ : std_logic;
SIGNAL \precio_producto[9]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[9]~input_o\ : std_logic;
SIGNAL \cambio_reg[8]~32\ : std_logic;
SIGNAL \cambio_reg[9]~33_combout\ : std_logic;
SIGNAL \precio_producto[10]~input_o\ : std_logic;
SIGNAL \dinero_ingresado[10]~input_o\ : std_logic;
SIGNAL \cambio_reg[9]~34\ : std_logic;
SIGNAL \cambio_reg[10]~35_combout\ : std_logic;
SIGNAL \dinero_ingresado[11]~input_o\ : std_logic;
SIGNAL \precio_producto[11]~input_o\ : std_logic;
SIGNAL \cambio_reg[10]~36\ : std_logic;
SIGNAL \cambio_reg[11]~37_combout\ : std_logic;
SIGNAL \dinero_ingresado[12]~input_o\ : std_logic;
SIGNAL \precio_producto[12]~input_o\ : std_logic;
SIGNAL \cambio_reg[11]~38\ : std_logic;
SIGNAL \cambio_reg[12]~39_combout\ : std_logic;
SIGNAL \dinero_ingresado[13]~input_o\ : std_logic;
SIGNAL \precio_producto[13]~input_o\ : std_logic;
SIGNAL \cambio_reg[12]~40\ : std_logic;
SIGNAL \cambio_reg[13]~41_combout\ : std_logic;
SIGNAL \cambio_reg[13]~42\ : std_logic;
SIGNAL \cambio_reg[14]~43_combout\ : std_logic;
SIGNAL cambio_reg : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_confirmar <= confirmar;
ww_dinero_ingresado <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(dinero_ingresado, 14);
ww_precio_producto <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(precio_producto, 14);
cambio <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(SIGNED(ww_cambio));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X3_Y0_N30
\cambio[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(0),
	devoe => ww_devoe,
	o => \cambio[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\cambio[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(1),
	devoe => ww_devoe,
	o => \cambio[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\cambio[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(2),
	devoe => ww_devoe,
	o => \cambio[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\cambio[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(3),
	devoe => ww_devoe,
	o => \cambio[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\cambio[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(4),
	devoe => ww_devoe,
	o => \cambio[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\cambio[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(5),
	devoe => ww_devoe,
	o => \cambio[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\cambio[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(6),
	devoe => ww_devoe,
	o => \cambio[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\cambio[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(7),
	devoe => ww_devoe,
	o => \cambio[7]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\cambio[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(8),
	devoe => ww_devoe,
	o => \cambio[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\cambio[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(9),
	devoe => ww_devoe,
	o => \cambio[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\cambio[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(10),
	devoe => ww_devoe,
	o => \cambio[10]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\cambio[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(11),
	devoe => ww_devoe,
	o => \cambio[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\cambio[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(12),
	devoe => ww_devoe,
	o => \cambio[12]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\cambio[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(13),
	devoe => ww_devoe,
	o => \cambio[13]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\cambio[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cambio_reg(14),
	devoe => ww_devoe,
	o => \cambio[14]~output_o\);

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
\dinero_ingresado[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(0),
	o => \dinero_ingresado[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\precio_producto[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(0),
	o => \precio_producto[0]~input_o\);

-- Location: LCCOMB_X1_Y3_N2
\cambio_reg[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[0]~15_combout\ = (\dinero_ingresado[0]~input_o\ & ((GND) # (!\precio_producto[0]~input_o\))) # (!\dinero_ingresado[0]~input_o\ & (\precio_producto[0]~input_o\ $ (GND)))
-- \cambio_reg[0]~16\ = CARRY((\dinero_ingresado[0]~input_o\) # (!\precio_producto[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[0]~input_o\,
	datab => \precio_producto[0]~input_o\,
	datad => VCC,
	combout => \cambio_reg[0]~15_combout\,
	cout => \cambio_reg[0]~16\);

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

-- Location: IOIBUF_X1_Y0_N8
\confirmar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_confirmar,
	o => \confirmar~input_o\);

-- Location: FF_X1_Y3_N3
\cambio_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[0]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(0));

-- Location: IOIBUF_X3_Y0_N22
\precio_producto[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(1),
	o => \precio_producto[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\dinero_ingresado[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(1),
	o => \dinero_ingresado[1]~input_o\);

-- Location: LCCOMB_X1_Y3_N4
\cambio_reg[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[1]~17_combout\ = (\precio_producto[1]~input_o\ & ((\dinero_ingresado[1]~input_o\ & (!\cambio_reg[0]~16\)) # (!\dinero_ingresado[1]~input_o\ & ((\cambio_reg[0]~16\) # (GND))))) # (!\precio_producto[1]~input_o\ & ((\dinero_ingresado[1]~input_o\ 
-- & (\cambio_reg[0]~16\ & VCC)) # (!\dinero_ingresado[1]~input_o\ & (!\cambio_reg[0]~16\))))
-- \cambio_reg[1]~18\ = CARRY((\precio_producto[1]~input_o\ & ((!\cambio_reg[0]~16\) # (!\dinero_ingresado[1]~input_o\))) # (!\precio_producto[1]~input_o\ & (!\dinero_ingresado[1]~input_o\ & !\cambio_reg[0]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[1]~input_o\,
	datab => \dinero_ingresado[1]~input_o\,
	datad => VCC,
	cin => \cambio_reg[0]~16\,
	combout => \cambio_reg[1]~17_combout\,
	cout => \cambio_reg[1]~18\);

-- Location: FF_X1_Y3_N5
\cambio_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[1]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(1));

-- Location: IOIBUF_X5_Y0_N22
\dinero_ingresado[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(2),
	o => \dinero_ingresado[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\precio_producto[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(2),
	o => \precio_producto[2]~input_o\);

-- Location: LCCOMB_X1_Y3_N6
\cambio_reg[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[2]~19_combout\ = ((\dinero_ingresado[2]~input_o\ $ (\precio_producto[2]~input_o\ $ (\cambio_reg[1]~18\)))) # (GND)
-- \cambio_reg[2]~20\ = CARRY((\dinero_ingresado[2]~input_o\ & ((!\cambio_reg[1]~18\) # (!\precio_producto[2]~input_o\))) # (!\dinero_ingresado[2]~input_o\ & (!\precio_producto[2]~input_o\ & !\cambio_reg[1]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[2]~input_o\,
	datab => \precio_producto[2]~input_o\,
	datad => VCC,
	cin => \cambio_reg[1]~18\,
	combout => \cambio_reg[2]~19_combout\,
	cout => \cambio_reg[2]~20\);

-- Location: FF_X1_Y3_N7
\cambio_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[2]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(2));

-- Location: IOIBUF_X3_Y0_N8
\dinero_ingresado[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(3),
	o => \dinero_ingresado[3]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\precio_producto[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(3),
	o => \precio_producto[3]~input_o\);

-- Location: LCCOMB_X1_Y3_N8
\cambio_reg[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[3]~21_combout\ = (\dinero_ingresado[3]~input_o\ & ((\precio_producto[3]~input_o\ & (!\cambio_reg[2]~20\)) # (!\precio_producto[3]~input_o\ & (\cambio_reg[2]~20\ & VCC)))) # (!\dinero_ingresado[3]~input_o\ & ((\precio_producto[3]~input_o\ & 
-- ((\cambio_reg[2]~20\) # (GND))) # (!\precio_producto[3]~input_o\ & (!\cambio_reg[2]~20\))))
-- \cambio_reg[3]~22\ = CARRY((\dinero_ingresado[3]~input_o\ & (\precio_producto[3]~input_o\ & !\cambio_reg[2]~20\)) # (!\dinero_ingresado[3]~input_o\ & ((\precio_producto[3]~input_o\) # (!\cambio_reg[2]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[3]~input_o\,
	datab => \precio_producto[3]~input_o\,
	datad => VCC,
	cin => \cambio_reg[2]~20\,
	combout => \cambio_reg[3]~21_combout\,
	cout => \cambio_reg[3]~22\);

-- Location: FF_X1_Y3_N9
\cambio_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[3]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(3));

-- Location: IOIBUF_X0_Y2_N8
\precio_producto[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(4),
	o => \precio_producto[4]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\dinero_ingresado[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(4),
	o => \dinero_ingresado[4]~input_o\);

-- Location: LCCOMB_X1_Y3_N10
\cambio_reg[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[4]~23_combout\ = ((\precio_producto[4]~input_o\ $ (\dinero_ingresado[4]~input_o\ $ (\cambio_reg[3]~22\)))) # (GND)
-- \cambio_reg[4]~24\ = CARRY((\precio_producto[4]~input_o\ & (\dinero_ingresado[4]~input_o\ & !\cambio_reg[3]~22\)) # (!\precio_producto[4]~input_o\ & ((\dinero_ingresado[4]~input_o\) # (!\cambio_reg[3]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[4]~input_o\,
	datab => \dinero_ingresado[4]~input_o\,
	datad => VCC,
	cin => \cambio_reg[3]~22\,
	combout => \cambio_reg[4]~23_combout\,
	cout => \cambio_reg[4]~24\);

-- Location: FF_X1_Y3_N11
\cambio_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[4]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(4));

-- Location: IOIBUF_X0_Y7_N22
\dinero_ingresado[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(5),
	o => \dinero_ingresado[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\precio_producto[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(5),
	o => \precio_producto[5]~input_o\);

-- Location: LCCOMB_X1_Y3_N12
\cambio_reg[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[5]~25_combout\ = (\dinero_ingresado[5]~input_o\ & ((\precio_producto[5]~input_o\ & (!\cambio_reg[4]~24\)) # (!\precio_producto[5]~input_o\ & (\cambio_reg[4]~24\ & VCC)))) # (!\dinero_ingresado[5]~input_o\ & ((\precio_producto[5]~input_o\ & 
-- ((\cambio_reg[4]~24\) # (GND))) # (!\precio_producto[5]~input_o\ & (!\cambio_reg[4]~24\))))
-- \cambio_reg[5]~26\ = CARRY((\dinero_ingresado[5]~input_o\ & (\precio_producto[5]~input_o\ & !\cambio_reg[4]~24\)) # (!\dinero_ingresado[5]~input_o\ & ((\precio_producto[5]~input_o\) # (!\cambio_reg[4]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[5]~input_o\,
	datab => \precio_producto[5]~input_o\,
	datad => VCC,
	cin => \cambio_reg[4]~24\,
	combout => \cambio_reg[5]~25_combout\,
	cout => \cambio_reg[5]~26\);

-- Location: FF_X1_Y3_N13
\cambio_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[5]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(5));

-- Location: IOIBUF_X0_Y8_N8
\dinero_ingresado[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(6),
	o => \dinero_ingresado[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\precio_producto[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(6),
	o => \precio_producto[6]~input_o\);

-- Location: LCCOMB_X1_Y3_N14
\cambio_reg[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[6]~27_combout\ = ((\dinero_ingresado[6]~input_o\ $ (\precio_producto[6]~input_o\ $ (\cambio_reg[5]~26\)))) # (GND)
-- \cambio_reg[6]~28\ = CARRY((\dinero_ingresado[6]~input_o\ & ((!\cambio_reg[5]~26\) # (!\precio_producto[6]~input_o\))) # (!\dinero_ingresado[6]~input_o\ & (!\precio_producto[6]~input_o\ & !\cambio_reg[5]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[6]~input_o\,
	datab => \precio_producto[6]~input_o\,
	datad => VCC,
	cin => \cambio_reg[5]~26\,
	combout => \cambio_reg[6]~27_combout\,
	cout => \cambio_reg[6]~28\);

-- Location: FF_X1_Y3_N15
\cambio_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[6]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(6));

-- Location: IOIBUF_X0_Y4_N8
\precio_producto[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(7),
	o => \precio_producto[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\dinero_ingresado[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(7),
	o => \dinero_ingresado[7]~input_o\);

-- Location: LCCOMB_X1_Y3_N16
\cambio_reg[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[7]~29_combout\ = (\precio_producto[7]~input_o\ & ((\dinero_ingresado[7]~input_o\ & (!\cambio_reg[6]~28\)) # (!\dinero_ingresado[7]~input_o\ & ((\cambio_reg[6]~28\) # (GND))))) # (!\precio_producto[7]~input_o\ & ((\dinero_ingresado[7]~input_o\ 
-- & (\cambio_reg[6]~28\ & VCC)) # (!\dinero_ingresado[7]~input_o\ & (!\cambio_reg[6]~28\))))
-- \cambio_reg[7]~30\ = CARRY((\precio_producto[7]~input_o\ & ((!\cambio_reg[6]~28\) # (!\dinero_ingresado[7]~input_o\))) # (!\precio_producto[7]~input_o\ & (!\dinero_ingresado[7]~input_o\ & !\cambio_reg[6]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[7]~input_o\,
	datab => \dinero_ingresado[7]~input_o\,
	datad => VCC,
	cin => \cambio_reg[6]~28\,
	combout => \cambio_reg[7]~29_combout\,
	cout => \cambio_reg[7]~30\);

-- Location: FF_X1_Y3_N17
\cambio_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[7]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(7));

-- Location: IOIBUF_X0_Y5_N8
\precio_producto[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(8),
	o => \precio_producto[8]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\dinero_ingresado[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(8),
	o => \dinero_ingresado[8]~input_o\);

-- Location: LCCOMB_X1_Y3_N18
\cambio_reg[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[8]~31_combout\ = ((\precio_producto[8]~input_o\ $ (\dinero_ingresado[8]~input_o\ $ (\cambio_reg[7]~30\)))) # (GND)
-- \cambio_reg[8]~32\ = CARRY((\precio_producto[8]~input_o\ & (\dinero_ingresado[8]~input_o\ & !\cambio_reg[7]~30\)) # (!\precio_producto[8]~input_o\ & ((\dinero_ingresado[8]~input_o\) # (!\cambio_reg[7]~30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[8]~input_o\,
	datab => \dinero_ingresado[8]~input_o\,
	datad => VCC,
	cin => \cambio_reg[7]~30\,
	combout => \cambio_reg[8]~31_combout\,
	cout => \cambio_reg[8]~32\);

-- Location: FF_X1_Y3_N19
\cambio_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[8]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(8));

-- Location: IOIBUF_X0_Y7_N15
\precio_producto[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(9),
	o => \precio_producto[9]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\dinero_ingresado[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(9),
	o => \dinero_ingresado[9]~input_o\);

-- Location: LCCOMB_X1_Y3_N20
\cambio_reg[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[9]~33_combout\ = (\precio_producto[9]~input_o\ & ((\dinero_ingresado[9]~input_o\ & (!\cambio_reg[8]~32\)) # (!\dinero_ingresado[9]~input_o\ & ((\cambio_reg[8]~32\) # (GND))))) # (!\precio_producto[9]~input_o\ & ((\dinero_ingresado[9]~input_o\ 
-- & (\cambio_reg[8]~32\ & VCC)) # (!\dinero_ingresado[9]~input_o\ & (!\cambio_reg[8]~32\))))
-- \cambio_reg[9]~34\ = CARRY((\precio_producto[9]~input_o\ & ((!\cambio_reg[8]~32\) # (!\dinero_ingresado[9]~input_o\))) # (!\precio_producto[9]~input_o\ & (!\dinero_ingresado[9]~input_o\ & !\cambio_reg[8]~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[9]~input_o\,
	datab => \dinero_ingresado[9]~input_o\,
	datad => VCC,
	cin => \cambio_reg[8]~32\,
	combout => \cambio_reg[9]~33_combout\,
	cout => \cambio_reg[9]~34\);

-- Location: FF_X1_Y3_N21
\cambio_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[9]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(9));

-- Location: IOIBUF_X7_Y0_N8
\precio_producto[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(10),
	o => \precio_producto[10]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\dinero_ingresado[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(10),
	o => \dinero_ingresado[10]~input_o\);

-- Location: LCCOMB_X1_Y3_N22
\cambio_reg[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[10]~35_combout\ = ((\precio_producto[10]~input_o\ $ (\dinero_ingresado[10]~input_o\ $ (\cambio_reg[9]~34\)))) # (GND)
-- \cambio_reg[10]~36\ = CARRY((\precio_producto[10]~input_o\ & (\dinero_ingresado[10]~input_o\ & !\cambio_reg[9]~34\)) # (!\precio_producto[10]~input_o\ & ((\dinero_ingresado[10]~input_o\) # (!\cambio_reg[9]~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \precio_producto[10]~input_o\,
	datab => \dinero_ingresado[10]~input_o\,
	datad => VCC,
	cin => \cambio_reg[9]~34\,
	combout => \cambio_reg[10]~35_combout\,
	cout => \cambio_reg[10]~36\);

-- Location: FF_X1_Y3_N23
\cambio_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[10]~35_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(10));

-- Location: IOIBUF_X3_Y0_N1
\dinero_ingresado[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(11),
	o => \dinero_ingresado[11]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\precio_producto[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(11),
	o => \precio_producto[11]~input_o\);

-- Location: LCCOMB_X1_Y3_N24
\cambio_reg[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[11]~37_combout\ = (\dinero_ingresado[11]~input_o\ & ((\precio_producto[11]~input_o\ & (!\cambio_reg[10]~36\)) # (!\precio_producto[11]~input_o\ & (\cambio_reg[10]~36\ & VCC)))) # (!\dinero_ingresado[11]~input_o\ & 
-- ((\precio_producto[11]~input_o\ & ((\cambio_reg[10]~36\) # (GND))) # (!\precio_producto[11]~input_o\ & (!\cambio_reg[10]~36\))))
-- \cambio_reg[11]~38\ = CARRY((\dinero_ingresado[11]~input_o\ & (\precio_producto[11]~input_o\ & !\cambio_reg[10]~36\)) # (!\dinero_ingresado[11]~input_o\ & ((\precio_producto[11]~input_o\) # (!\cambio_reg[10]~36\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[11]~input_o\,
	datab => \precio_producto[11]~input_o\,
	datad => VCC,
	cin => \cambio_reg[10]~36\,
	combout => \cambio_reg[11]~37_combout\,
	cout => \cambio_reg[11]~38\);

-- Location: FF_X1_Y3_N25
\cambio_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[11]~37_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(11));

-- Location: IOIBUF_X0_Y2_N1
\dinero_ingresado[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(12),
	o => \dinero_ingresado[12]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\precio_producto[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(12),
	o => \precio_producto[12]~input_o\);

-- Location: LCCOMB_X1_Y3_N26
\cambio_reg[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[12]~39_combout\ = ((\dinero_ingresado[12]~input_o\ $ (\precio_producto[12]~input_o\ $ (\cambio_reg[11]~38\)))) # (GND)
-- \cambio_reg[12]~40\ = CARRY((\dinero_ingresado[12]~input_o\ & ((!\cambio_reg[11]~38\) # (!\precio_producto[12]~input_o\))) # (!\dinero_ingresado[12]~input_o\ & (!\precio_producto[12]~input_o\ & !\cambio_reg[11]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[12]~input_o\,
	datab => \precio_producto[12]~input_o\,
	datad => VCC,
	cin => \cambio_reg[11]~38\,
	combout => \cambio_reg[12]~39_combout\,
	cout => \cambio_reg[12]~40\);

-- Location: FF_X1_Y3_N27
\cambio_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[12]~39_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(12));

-- Location: IOIBUF_X0_Y8_N1
\dinero_ingresado[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinero_ingresado(13),
	o => \dinero_ingresado[13]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\precio_producto[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_precio_producto(13),
	o => \precio_producto[13]~input_o\);

-- Location: LCCOMB_X1_Y3_N28
\cambio_reg[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[13]~41_combout\ = (\dinero_ingresado[13]~input_o\ & ((\precio_producto[13]~input_o\ & (!\cambio_reg[12]~40\)) # (!\precio_producto[13]~input_o\ & (\cambio_reg[12]~40\ & VCC)))) # (!\dinero_ingresado[13]~input_o\ & 
-- ((\precio_producto[13]~input_o\ & ((\cambio_reg[12]~40\) # (GND))) # (!\precio_producto[13]~input_o\ & (!\cambio_reg[12]~40\))))
-- \cambio_reg[13]~42\ = CARRY((\dinero_ingresado[13]~input_o\ & (\precio_producto[13]~input_o\ & !\cambio_reg[12]~40\)) # (!\dinero_ingresado[13]~input_o\ & ((\precio_producto[13]~input_o\) # (!\cambio_reg[12]~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dinero_ingresado[13]~input_o\,
	datab => \precio_producto[13]~input_o\,
	datad => VCC,
	cin => \cambio_reg[12]~40\,
	combout => \cambio_reg[13]~41_combout\,
	cout => \cambio_reg[13]~42\);

-- Location: FF_X1_Y3_N29
\cambio_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[13]~41_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(13));

-- Location: LCCOMB_X1_Y3_N30
\cambio_reg[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cambio_reg[14]~43_combout\ = \cambio_reg[13]~42\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \cambio_reg[13]~42\,
	combout => \cambio_reg[14]~43_combout\);

-- Location: FF_X1_Y3_N31
\cambio_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cambio_reg[14]~43_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \confirmar~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cambio_reg(14));

ww_cambio(0) <= \cambio[0]~output_o\;

ww_cambio(1) <= \cambio[1]~output_o\;

ww_cambio(2) <= \cambio[2]~output_o\;

ww_cambio(3) <= \cambio[3]~output_o\;

ww_cambio(4) <= \cambio[4]~output_o\;

ww_cambio(5) <= \cambio[5]~output_o\;

ww_cambio(6) <= \cambio[6]~output_o\;

ww_cambio(7) <= \cambio[7]~output_o\;

ww_cambio(8) <= \cambio[8]~output_o\;

ww_cambio(9) <= \cambio[9]~output_o\;

ww_cambio(10) <= \cambio[10]~output_o\;

ww_cambio(11) <= \cambio[11]~output_o\;

ww_cambio(12) <= \cambio[12]~output_o\;

ww_cambio(13) <= \cambio[13]~output_o\;

ww_cambio(14) <= \cambio[14]~output_o\;
END structure;


