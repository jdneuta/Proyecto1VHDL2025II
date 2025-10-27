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

-- DATE "10/27/2025 17:34:04"

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

ENTITY 	MAQUINA_EXPENDEDORA IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	sw500 : IN std_logic;
	sw1000 : IN std_logic;
	confirmar : IN std_logic;
	sel_prod : IN std_logic_vector(3 DOWNTO 0);
	puerta_fin : IN std_logic;
	anomalia : IN std_logic;
	disp0 : OUT std_logic_vector(6 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	disp3 : OUT std_logic_vector(6 DOWNTO 0);
	led_entrega : OUT std_logic;
	led_anom : OUT std_logic;
	stock_leds : OUT std_logic_vector(2 DOWNTO 0);
	alerta_led : BUFFER std_logic;
	led_estado : OUT std_logic_vector(2 DOWNTO 0)
	);
END MAQUINA_EXPENDEDORA;

-- Design Ports Information
-- disp0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_entrega	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_anom	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stock_leds[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alerta_led	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_estado[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_estado[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_estado[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_prod[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw1000	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw500	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- puerta_fin	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- anomalia	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- confirmar	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MAQUINA_EXPENDEDORA IS
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
SIGNAL ww_confirmar : std_logic;
SIGNAL ww_sel_prod : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_puerta_fin : std_logic;
SIGNAL ww_anomalia : std_logic;
SIGNAL ww_disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_entrega : std_logic;
SIGNAL ww_led_anom : std_logic;
SIGNAL ww_stock_leds : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alerta_led : std_logic;
SIGNAL ww_led_estado : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \disp0[0]~output_o\ : std_logic;
SIGNAL \disp0[1]~output_o\ : std_logic;
SIGNAL \disp0[2]~output_o\ : std_logic;
SIGNAL \disp0[3]~output_o\ : std_logic;
SIGNAL \disp0[4]~output_o\ : std_logic;
SIGNAL \disp0[5]~output_o\ : std_logic;
SIGNAL \disp0[6]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
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
SIGNAL \led_entrega~output_o\ : std_logic;
SIGNAL \led_anom~output_o\ : std_logic;
SIGNAL \stock_leds[0]~output_o\ : std_logic;
SIGNAL \stock_leds[1]~output_o\ : std_logic;
SIGNAL \stock_leds[2]~output_o\ : std_logic;
SIGNAL \alerta_led~output_o\ : std_logic;
SIGNAL \led_estado[0]~output_o\ : std_logic;
SIGNAL \led_estado[1]~output_o\ : std_logic;
SIGNAL \led_estado[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sw1000~input_o\ : std_logic;
SIGNAL \U1_sumador|cnt1000[0]~21_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \U1_sumador|cnt1000[0]~22\ : std_logic;
SIGNAL \U1_sumador|cnt1000[1]~23_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[1]~24\ : std_logic;
SIGNAL \U1_sumador|cnt1000[2]~25_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[2]~26\ : std_logic;
SIGNAL \U1_sumador|cnt1000[3]~27_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[3]~28\ : std_logic;
SIGNAL \U1_sumador|cnt1000[4]~29_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[4]~30\ : std_logic;
SIGNAL \U1_sumador|cnt1000[5]~31_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[5]~32\ : std_logic;
SIGNAL \U1_sumador|cnt1000[6]~33_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[6]~34\ : std_logic;
SIGNAL \U1_sumador|cnt1000[7]~35_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[7]~36\ : std_logic;
SIGNAL \U1_sumador|cnt1000[8]~37_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[8]~38\ : std_logic;
SIGNAL \U1_sumador|cnt1000[9]~39_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[9]~40\ : std_logic;
SIGNAL \U1_sumador|cnt1000[10]~41_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[10]~42\ : std_logic;
SIGNAL \U1_sumador|cnt1000[11]~43_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[11]~feeder_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[11]~44\ : std_logic;
SIGNAL \U1_sumador|cnt1000[12]~45_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[12]~46\ : std_logic;
SIGNAL \U1_sumador|cnt1000[13]~47_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[13]~48\ : std_logic;
SIGNAL \U1_sumador|cnt1000[14]~49_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[14]~50\ : std_logic;
SIGNAL \U1_sumador|cnt1000[15]~51_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[15]~52\ : std_logic;
SIGNAL \U1_sumador|cnt1000[16]~53_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[16]~54\ : std_logic;
SIGNAL \U1_sumador|cnt1000[17]~55_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[17]~56\ : std_logic;
SIGNAL \U1_sumador|cnt1000[18]~57_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[18]~58\ : std_logic;
SIGNAL \U1_sumador|cnt1000[19]~59_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~0_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~3_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~1_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~2_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~4_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~5_combout\ : std_logic;
SIGNAL \U1_sumador|cnt1000[9]~20_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~6_combout\ : std_logic;
SIGNAL \U1_sumador|lock1000~q\ : std_logic;
SIGNAL \U1_sumador|prev1000~q\ : std_logic;
SIGNAL \U1_sumador|process_0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \U1_sumador|LessThan2~0_combout\ : std_logic;
SIGNAL \U1_sumador|LessThan2~1_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg[2]~8_combout\ : std_logic;
SIGNAL \sw500~input_o\ : std_logic;
SIGNAL \U1_sumador|prev500~q\ : std_logic;
SIGNAL \U1_sumador|cnt500[0]~21_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[0]~22\ : std_logic;
SIGNAL \U1_sumador|cnt500[1]~23_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[1]~24\ : std_logic;
SIGNAL \U1_sumador|cnt500[2]~25_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[2]~26\ : std_logic;
SIGNAL \U1_sumador|cnt500[3]~27_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[3]~28\ : std_logic;
SIGNAL \U1_sumador|cnt500[4]~29_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[4]~30\ : std_logic;
SIGNAL \U1_sumador|cnt500[5]~31_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[5]~32\ : std_logic;
SIGNAL \U1_sumador|cnt500[6]~33_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[6]~34\ : std_logic;
SIGNAL \U1_sumador|cnt500[7]~35_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[7]~36\ : std_logic;
SIGNAL \U1_sumador|cnt500[8]~37_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[8]~feeder_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[8]~38\ : std_logic;
SIGNAL \U1_sumador|cnt500[9]~39_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[9]~40\ : std_logic;
SIGNAL \U1_sumador|cnt500[10]~41_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[10]~42\ : std_logic;
SIGNAL \U1_sumador|cnt500[11]~43_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[11]~44\ : std_logic;
SIGNAL \U1_sumador|cnt500[12]~45_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[12]~46\ : std_logic;
SIGNAL \U1_sumador|cnt500[13]~47_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[13]~48\ : std_logic;
SIGNAL \U1_sumador|cnt500[14]~49_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[14]~50\ : std_logic;
SIGNAL \U1_sumador|cnt500[15]~51_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[15]~52\ : std_logic;
SIGNAL \U1_sumador|cnt500[16]~53_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[16]~54\ : std_logic;
SIGNAL \U1_sumador|cnt500[17]~55_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[17]~56\ : std_logic;
SIGNAL \U1_sumador|cnt500[18]~57_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[18]~58\ : std_logic;
SIGNAL \U1_sumador|cnt500[19]~59_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~0_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~3_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~4_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~2_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~1_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~5_combout\ : std_logic;
SIGNAL \U1_sumador|cnt500[19]~20_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~6_combout\ : std_logic;
SIGNAL \U1_sumador|lock500~q\ : std_logic;
SIGNAL \U1_sumador|process_0~1_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg~6_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg~7_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~0_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg[2]~9_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg[2]~10_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~1\ : std_logic;
SIGNAL \U1_sumador|Add2~2_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~0_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~32_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg[13]~11_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~3\ : std_logic;
SIGNAL \U1_sumador|Add2~4_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~1\ : std_logic;
SIGNAL \U1_sumador|Add3~2_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~31_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~3\ : std_logic;
SIGNAL \U1_sumador|Add3~4_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~5\ : std_logic;
SIGNAL \U1_sumador|Add2~6_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~30_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~5\ : std_logic;
SIGNAL \U1_sumador|Add3~6_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~7\ : std_logic;
SIGNAL \U1_sumador|Add2~8_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~29_combout\ : std_logic;
SIGNAL \U1_sumador|LessThan3~0_combout\ : std_logic;
SIGNAL \U1_sumador|LessThan3~1_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg~4_combout\ : std_logic;
SIGNAL \U1_sumador|saldo_reg~5_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~9\ : std_logic;
SIGNAL \U1_sumador|Add2~10_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~7\ : std_logic;
SIGNAL \U1_sumador|Add3~8_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~28_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~9\ : std_logic;
SIGNAL \U1_sumador|Add3~10_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~11\ : std_logic;
SIGNAL \U1_sumador|Add2~12_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~27_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~11\ : std_logic;
SIGNAL \U1_sumador|Add3~12_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~13\ : std_logic;
SIGNAL \U1_sumador|Add2~14_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~26_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~13\ : std_logic;
SIGNAL \U1_sumador|Add3~14_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~15\ : std_logic;
SIGNAL \U1_sumador|Add2~16_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~25_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~15\ : std_logic;
SIGNAL \U1_sumador|Add3~16_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~17\ : std_logic;
SIGNAL \U1_sumador|Add2~18_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~24_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~19\ : std_logic;
SIGNAL \U1_sumador|Add2~20_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~17\ : std_logic;
SIGNAL \U1_sumador|Add3~18_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~23_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~19\ : std_logic;
SIGNAL \U1_sumador|Add3~20_combout\ : std_logic;
SIGNAL \U1_sumador|Add2~21\ : std_logic;
SIGNAL \U1_sumador|Add2~22_combout\ : std_logic;
SIGNAL \U1_sumador|Add3~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~179_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~192_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~191_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[141]~193_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[141]~190_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[140]~206_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[140]~207_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[155]~208_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[155]~205_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[54]~144_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~145_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~146_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[51]~147_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[50]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[190]~215_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~151_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~150_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[62]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[61]~103_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~104_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[60]~152_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[59]~153_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[59]~105_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~154_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[58]~106_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[189]~216_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[48]~107_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[57]~108_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~157_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~109_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~110_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~158_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~159_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~111_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~160_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~112_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~161_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~113_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[188]~217_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[56]~114_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~115_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~163_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[77]~165_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~164_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~116_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[77]~117_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~166_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~118_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~167_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~119_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~168_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~120_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[187]~218_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~121_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~122_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~171_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~123_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~124_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~172_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~125_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~173_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[83]~126_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[83]~174_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~175_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[186]~219_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~176_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~177_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~128_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~129_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~178_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~130_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~131_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~179_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~180_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~132_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~133_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~181_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~182_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[185]~220_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[80]~183_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[89]~184_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[80]~135_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[89]~136_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[102]~185_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[102]~137_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[101]~138_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[101]~186_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[100]~139_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[100]~187_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[99]~140_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[99]~188_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[98]~141_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[98]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[169]~221_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[154]~223_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[154]~222_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[169]~224_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[184]~225_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~142_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~190_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[97]~143_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[97]~191_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\ : std_logic;
SIGNAL \U_disp0|Mux6~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux5~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux4~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux3~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux2~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux1~0_combout\ : std_logic;
SIGNAL \U_disp0|Mux0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~156_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~157_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~158_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~159_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~160_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~161_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~144_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~145_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~146_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~147_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~148_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~149_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~150_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~153_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~152_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~154_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~151_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~155_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[134]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \U_disp1|Mux6~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux5~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux4~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux3~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux2~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux1~0_combout\ : std_logic;
SIGNAL \U_disp1|Mux0~0_combout\ : std_logic;
SIGNAL \sel_prod[2]~input_o\ : std_logic;
SIGNAL \sel_prod[1]~input_o\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \sel_prod[3]~input_o\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ : std_logic;
SIGNAL \sel_prod[0]~input_o\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux6~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux5~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux4~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux3~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux2~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux1~0_combout\ : std_logic;
SIGNAL \U2_productos|U1|Mux0~0_combout\ : std_logic;
SIGNAL \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \anomalia~input_o\ : std_logic;
SIGNAL \puerta_fin~input_o\ : std_logic;
SIGNAL \U4_fsm|Selector2~3_combout\ : std_logic;
SIGNAL \U4_fsm|Selector6~0_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.HAY_ANOMALIA~q\ : std_logic;
SIGNAL \confirmar~input_o\ : std_logic;
SIGNAL \ram_inst|ram~8_combout\ : std_logic;
SIGNAL \U4_fsm|Selector3~0_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.SIN_STOCK~feeder_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.SIN_STOCK~q\ : std_logic;
SIGNAL \U4_fsm|Selector1~1_combout\ : std_logic;
SIGNAL \U2_productos|Mux0~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux1~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux2~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux3~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux4~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux5~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux6~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux7~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux8~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux9~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux10~0_combout\ : std_logic;
SIGNAL \U2_productos|Mux11~0_combout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~2_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~4_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~6_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~8_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~10_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~12_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~14_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~16_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~18_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~20_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~22_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~24_cout\ : std_logic;
SIGNAL \U3_restador|cambio_reg[14]~25_combout\ : std_logic;
SIGNAL \U4_fsm|Selector1~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \U4_fsm|Selector1~2_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.MONEDAS~q\ : std_logic;
SIGNAL \U4_fsm|current_state.CAMBIO~0_combout\ : std_logic;
SIGNAL \U4_fsm|Selector2~1_combout\ : std_logic;
SIGNAL \U4_fsm|Selector2~2_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.CAMBIO~1_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.CAMBIO~q\ : std_logic;
SIGNAL \U4_fsm|Selector0~0_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.ESPERA~q\ : std_logic;
SIGNAL \U4_fsm|Selector2~0_combout\ : std_logic;
SIGNAL \U4_fsm|Selector2~4_combout\ : std_logic;
SIGNAL \U4_fsm|Selector2~5_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.VALIDACION~q\ : std_logic;
SIGNAL \U4_fsm|Selector4~0_combout\ : std_logic;
SIGNAL \U4_fsm|Selector4~1_combout\ : std_logic;
SIGNAL \U4_fsm|current_state.ENTREGA~q\ : std_logic;
SIGNAL \U4_fsm|WideOr4~0_combout\ : std_logic;
SIGNAL \U4_fsm|WideOr3~0_combout\ : std_logic;
SIGNAL \U4_fsm|WideOr2~combout\ : std_logic;
SIGNAL \U1_sumador|cnt500\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1_sumador|cnt1000\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U3_restador|cambio_reg\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U1_sumador|saldo_reg\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \U1_sumador|ALT_INV_cnt500[19]~20_combout\ : std_logic;
SIGNAL \U1_sumador|ALT_INV_cnt1000[9]~20_combout\ : std_logic;
SIGNAL \ram_inst|ALT_INV_ram~8_combout\ : std_logic;
SIGNAL \U2_productos|U1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_disp1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_disp0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_sw500 <= sw500;
ww_sw1000 <= sw1000;
ww_confirmar <= confirmar;
ww_sel_prod <= sel_prod;
ww_puerta_fin <= puerta_fin;
ww_anomalia <= anomalia;
disp0 <= ww_disp0;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
led_entrega <= ww_led_entrega;
led_anom <= ww_led_anom;
stock_leds <= ww_stock_leds;
alerta_led <= ww_alerta_led;
led_estado <= ww_led_estado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\U1_sumador|ALT_INV_cnt500[19]~20_combout\ <= NOT \U1_sumador|cnt500[19]~20_combout\;
\U1_sumador|ALT_INV_cnt1000[9]~20_combout\ <= NOT \U1_sumador|cnt1000[9]~20_combout\;
\ram_inst|ALT_INV_ram~8_combout\ <= NOT \ram_inst|ram~8_combout\;
\U2_productos|U1|ALT_INV_Mux0~0_combout\ <= NOT \U2_productos|U1|Mux0~0_combout\;
\U_disp1|ALT_INV_Mux0~0_combout\ <= NOT \U_disp1|Mux0~0_combout\;
\U_disp0|ALT_INV_Mux0~0_combout\ <= NOT \U_disp0|Mux0~0_combout\;
\U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\ <= NOT \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\;

-- Location: IOOBUF_X21_Y29_N23
\disp0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\disp0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\disp0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\disp0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\disp0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\disp0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\disp0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\disp1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\disp1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\disp1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\disp1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\disp1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\disp1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\disp1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_disp1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\disp2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\disp2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\disp2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\disp2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\disp2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\disp2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\disp2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|U1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\disp3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \disp3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N9
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

-- Location: IOOBUF_X32_Y29_N2
\disp3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \disp3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\disp3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \disp3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\disp3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_productos|Div0|auto_generated|divider|divider|ALT_INV_add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \disp3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOOBUF_X0_Y26_N23
\led_entrega~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4_fsm|current_state.ENTREGA~q\,
	devoe => ww_devoe,
	o => \led_entrega~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_anom~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4_fsm|current_state.HAY_ANOMALIA~q\,
	devoe => ww_devoe,
	o => \led_anom~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\stock_leds[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_inst|ALT_INV_ram~8_combout\,
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
	i => \ram_inst|ALT_INV_ram~8_combout\,
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
	i => GND,
	devoe => ww_devoe,
	o => \stock_leds[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\alerta_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_inst|ram~8_combout\,
	devoe => ww_devoe,
	o => \alerta_led~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\led_estado[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4_fsm|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \led_estado[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\led_estado[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4_fsm|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \led_estado[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\led_estado[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4_fsm|WideOr2~combout\,
	devoe => ww_devoe,
	o => \led_estado[2]~output_o\);

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

-- Location: IOIBUF_X0_Y25_N22
\sw1000~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1000,
	o => \sw1000~input_o\);

-- Location: LCCOMB_X10_Y21_N12
\U1_sumador|cnt1000[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[0]~21_combout\ = \U1_sumador|cnt1000\(0) $ (VCC)
-- \U1_sumador|cnt1000[0]~22\ = CARRY(\U1_sumador|cnt1000\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(0),
	datad => VCC,
	combout => \U1_sumador|cnt1000[0]~21_combout\,
	cout => \U1_sumador|cnt1000[0]~22\);

-- Location: LCCOMB_X9_Y21_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

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

-- Location: FF_X10_Y21_N13
\U1_sumador|cnt1000[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[0]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(0));

-- Location: LCCOMB_X10_Y21_N14
\U1_sumador|cnt1000[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[1]~23_combout\ = (\U1_sumador|cnt1000\(1) & (\U1_sumador|cnt1000[0]~22\ & VCC)) # (!\U1_sumador|cnt1000\(1) & (!\U1_sumador|cnt1000[0]~22\))
-- \U1_sumador|cnt1000[1]~24\ = CARRY((!\U1_sumador|cnt1000\(1) & !\U1_sumador|cnt1000[0]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(1),
	datad => VCC,
	cin => \U1_sumador|cnt1000[0]~22\,
	combout => \U1_sumador|cnt1000[1]~23_combout\,
	cout => \U1_sumador|cnt1000[1]~24\);

-- Location: FF_X10_Y21_N15
\U1_sumador|cnt1000[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[1]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(1));

-- Location: LCCOMB_X10_Y21_N16
\U1_sumador|cnt1000[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[2]~25_combout\ = (\U1_sumador|cnt1000\(2) & ((GND) # (!\U1_sumador|cnt1000[1]~24\))) # (!\U1_sumador|cnt1000\(2) & (\U1_sumador|cnt1000[1]~24\ $ (GND)))
-- \U1_sumador|cnt1000[2]~26\ = CARRY((\U1_sumador|cnt1000\(2)) # (!\U1_sumador|cnt1000[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(2),
	datad => VCC,
	cin => \U1_sumador|cnt1000[1]~24\,
	combout => \U1_sumador|cnt1000[2]~25_combout\,
	cout => \U1_sumador|cnt1000[2]~26\);

-- Location: FF_X10_Y21_N17
\U1_sumador|cnt1000[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[2]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(2));

-- Location: LCCOMB_X10_Y21_N18
\U1_sumador|cnt1000[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[3]~27_combout\ = (\U1_sumador|cnt1000\(3) & (\U1_sumador|cnt1000[2]~26\ & VCC)) # (!\U1_sumador|cnt1000\(3) & (!\U1_sumador|cnt1000[2]~26\))
-- \U1_sumador|cnt1000[3]~28\ = CARRY((!\U1_sumador|cnt1000\(3) & !\U1_sumador|cnt1000[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(3),
	datad => VCC,
	cin => \U1_sumador|cnt1000[2]~26\,
	combout => \U1_sumador|cnt1000[3]~27_combout\,
	cout => \U1_sumador|cnt1000[3]~28\);

-- Location: FF_X10_Y21_N19
\U1_sumador|cnt1000[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[3]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(3));

-- Location: LCCOMB_X10_Y21_N20
\U1_sumador|cnt1000[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[4]~29_combout\ = (\U1_sumador|cnt1000\(4) & ((GND) # (!\U1_sumador|cnt1000[3]~28\))) # (!\U1_sumador|cnt1000\(4) & (\U1_sumador|cnt1000[3]~28\ $ (GND)))
-- \U1_sumador|cnt1000[4]~30\ = CARRY((\U1_sumador|cnt1000\(4)) # (!\U1_sumador|cnt1000[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(4),
	datad => VCC,
	cin => \U1_sumador|cnt1000[3]~28\,
	combout => \U1_sumador|cnt1000[4]~29_combout\,
	cout => \U1_sumador|cnt1000[4]~30\);

-- Location: FF_X10_Y21_N21
\U1_sumador|cnt1000[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[4]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(4));

-- Location: LCCOMB_X10_Y21_N22
\U1_sumador|cnt1000[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[5]~31_combout\ = (\U1_sumador|cnt1000\(5) & (\U1_sumador|cnt1000[4]~30\ & VCC)) # (!\U1_sumador|cnt1000\(5) & (!\U1_sumador|cnt1000[4]~30\))
-- \U1_sumador|cnt1000[5]~32\ = CARRY((!\U1_sumador|cnt1000\(5) & !\U1_sumador|cnt1000[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(5),
	datad => VCC,
	cin => \U1_sumador|cnt1000[4]~30\,
	combout => \U1_sumador|cnt1000[5]~31_combout\,
	cout => \U1_sumador|cnt1000[5]~32\);

-- Location: FF_X10_Y21_N23
\U1_sumador|cnt1000[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[5]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(5));

-- Location: LCCOMB_X10_Y21_N24
\U1_sumador|cnt1000[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[6]~33_combout\ = (\U1_sumador|cnt1000\(6) & ((GND) # (!\U1_sumador|cnt1000[5]~32\))) # (!\U1_sumador|cnt1000\(6) & (\U1_sumador|cnt1000[5]~32\ $ (GND)))
-- \U1_sumador|cnt1000[6]~34\ = CARRY((\U1_sumador|cnt1000\(6)) # (!\U1_sumador|cnt1000[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(6),
	datad => VCC,
	cin => \U1_sumador|cnt1000[5]~32\,
	combout => \U1_sumador|cnt1000[6]~33_combout\,
	cout => \U1_sumador|cnt1000[6]~34\);

-- Location: FF_X10_Y21_N25
\U1_sumador|cnt1000[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[6]~33_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(6));

-- Location: LCCOMB_X10_Y21_N26
\U1_sumador|cnt1000[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[7]~35_combout\ = (\U1_sumador|cnt1000\(7) & (\U1_sumador|cnt1000[6]~34\ & VCC)) # (!\U1_sumador|cnt1000\(7) & (!\U1_sumador|cnt1000[6]~34\))
-- \U1_sumador|cnt1000[7]~36\ = CARRY((!\U1_sumador|cnt1000\(7) & !\U1_sumador|cnt1000[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(7),
	datad => VCC,
	cin => \U1_sumador|cnt1000[6]~34\,
	combout => \U1_sumador|cnt1000[7]~35_combout\,
	cout => \U1_sumador|cnt1000[7]~36\);

-- Location: FF_X10_Y21_N27
\U1_sumador|cnt1000[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[7]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(7));

-- Location: LCCOMB_X10_Y21_N28
\U1_sumador|cnt1000[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[8]~37_combout\ = (\U1_sumador|cnt1000\(8) & ((GND) # (!\U1_sumador|cnt1000[7]~36\))) # (!\U1_sumador|cnt1000\(8) & (\U1_sumador|cnt1000[7]~36\ $ (GND)))
-- \U1_sumador|cnt1000[8]~38\ = CARRY((\U1_sumador|cnt1000\(8)) # (!\U1_sumador|cnt1000[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(8),
	datad => VCC,
	cin => \U1_sumador|cnt1000[7]~36\,
	combout => \U1_sumador|cnt1000[8]~37_combout\,
	cout => \U1_sumador|cnt1000[8]~38\);

-- Location: FF_X10_Y21_N29
\U1_sumador|cnt1000[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[8]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(8));

-- Location: LCCOMB_X10_Y21_N30
\U1_sumador|cnt1000[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[9]~39_combout\ = (\U1_sumador|cnt1000\(9) & (\U1_sumador|cnt1000[8]~38\ & VCC)) # (!\U1_sumador|cnt1000\(9) & (!\U1_sumador|cnt1000[8]~38\))
-- \U1_sumador|cnt1000[9]~40\ = CARRY((!\U1_sumador|cnt1000\(9) & !\U1_sumador|cnt1000[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(9),
	datad => VCC,
	cin => \U1_sumador|cnt1000[8]~38\,
	combout => \U1_sumador|cnt1000[9]~39_combout\,
	cout => \U1_sumador|cnt1000[9]~40\);

-- Location: FF_X10_Y21_N31
\U1_sumador|cnt1000[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[9]~39_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(9));

-- Location: LCCOMB_X10_Y20_N0
\U1_sumador|cnt1000[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[10]~41_combout\ = (\U1_sumador|cnt1000\(10) & ((GND) # (!\U1_sumador|cnt1000[9]~40\))) # (!\U1_sumador|cnt1000\(10) & (\U1_sumador|cnt1000[9]~40\ $ (GND)))
-- \U1_sumador|cnt1000[10]~42\ = CARRY((\U1_sumador|cnt1000\(10)) # (!\U1_sumador|cnt1000[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(10),
	datad => VCC,
	cin => \U1_sumador|cnt1000[9]~40\,
	combout => \U1_sumador|cnt1000[10]~41_combout\,
	cout => \U1_sumador|cnt1000[10]~42\);

-- Location: FF_X10_Y20_N1
\U1_sumador|cnt1000[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[10]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(10));

-- Location: LCCOMB_X10_Y20_N2
\U1_sumador|cnt1000[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[11]~43_combout\ = (\U1_sumador|cnt1000\(11) & (\U1_sumador|cnt1000[10]~42\ & VCC)) # (!\U1_sumador|cnt1000\(11) & (!\U1_sumador|cnt1000[10]~42\))
-- \U1_sumador|cnt1000[11]~44\ = CARRY((!\U1_sumador|cnt1000\(11) & !\U1_sumador|cnt1000[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(11),
	datad => VCC,
	cin => \U1_sumador|cnt1000[10]~42\,
	combout => \U1_sumador|cnt1000[11]~43_combout\,
	cout => \U1_sumador|cnt1000[11]~44\);

-- Location: LCCOMB_X10_Y21_N4
\U1_sumador|cnt1000[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[11]~feeder_combout\ = \U1_sumador|cnt1000[11]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt1000[11]~43_combout\,
	combout => \U1_sumador|cnt1000[11]~feeder_combout\);

-- Location: FF_X10_Y21_N5
\U1_sumador|cnt1000[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[11]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(11));

-- Location: LCCOMB_X10_Y20_N4
\U1_sumador|cnt1000[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[12]~45_combout\ = (\U1_sumador|cnt1000\(12) & ((GND) # (!\U1_sumador|cnt1000[11]~44\))) # (!\U1_sumador|cnt1000\(12) & (\U1_sumador|cnt1000[11]~44\ $ (GND)))
-- \U1_sumador|cnt1000[12]~46\ = CARRY((\U1_sumador|cnt1000\(12)) # (!\U1_sumador|cnt1000[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(12),
	datad => VCC,
	cin => \U1_sumador|cnt1000[11]~44\,
	combout => \U1_sumador|cnt1000[12]~45_combout\,
	cout => \U1_sumador|cnt1000[12]~46\);

-- Location: FF_X10_Y20_N5
\U1_sumador|cnt1000[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[12]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(12));

-- Location: LCCOMB_X10_Y20_N6
\U1_sumador|cnt1000[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[13]~47_combout\ = (\U1_sumador|cnt1000\(13) & (\U1_sumador|cnt1000[12]~46\ & VCC)) # (!\U1_sumador|cnt1000\(13) & (!\U1_sumador|cnt1000[12]~46\))
-- \U1_sumador|cnt1000[13]~48\ = CARRY((!\U1_sumador|cnt1000\(13) & !\U1_sumador|cnt1000[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(13),
	datad => VCC,
	cin => \U1_sumador|cnt1000[12]~46\,
	combout => \U1_sumador|cnt1000[13]~47_combout\,
	cout => \U1_sumador|cnt1000[13]~48\);

-- Location: FF_X10_Y20_N7
\U1_sumador|cnt1000[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[13]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(13));

-- Location: LCCOMB_X10_Y20_N8
\U1_sumador|cnt1000[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[14]~49_combout\ = (\U1_sumador|cnt1000\(14) & ((GND) # (!\U1_sumador|cnt1000[13]~48\))) # (!\U1_sumador|cnt1000\(14) & (\U1_sumador|cnt1000[13]~48\ $ (GND)))
-- \U1_sumador|cnt1000[14]~50\ = CARRY((\U1_sumador|cnt1000\(14)) # (!\U1_sumador|cnt1000[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(14),
	datad => VCC,
	cin => \U1_sumador|cnt1000[13]~48\,
	combout => \U1_sumador|cnt1000[14]~49_combout\,
	cout => \U1_sumador|cnt1000[14]~50\);

-- Location: FF_X10_Y20_N9
\U1_sumador|cnt1000[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[14]~49_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(14));

-- Location: LCCOMB_X10_Y20_N10
\U1_sumador|cnt1000[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[15]~51_combout\ = (\U1_sumador|cnt1000\(15) & (\U1_sumador|cnt1000[14]~50\ & VCC)) # (!\U1_sumador|cnt1000\(15) & (!\U1_sumador|cnt1000[14]~50\))
-- \U1_sumador|cnt1000[15]~52\ = CARRY((!\U1_sumador|cnt1000\(15) & !\U1_sumador|cnt1000[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(15),
	datad => VCC,
	cin => \U1_sumador|cnt1000[14]~50\,
	combout => \U1_sumador|cnt1000[15]~51_combout\,
	cout => \U1_sumador|cnt1000[15]~52\);

-- Location: FF_X10_Y20_N11
\U1_sumador|cnt1000[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[15]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(15));

-- Location: LCCOMB_X10_Y20_N12
\U1_sumador|cnt1000[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[16]~53_combout\ = (\U1_sumador|cnt1000\(16) & ((GND) # (!\U1_sumador|cnt1000[15]~52\))) # (!\U1_sumador|cnt1000\(16) & (\U1_sumador|cnt1000[15]~52\ $ (GND)))
-- \U1_sumador|cnt1000[16]~54\ = CARRY((\U1_sumador|cnt1000\(16)) # (!\U1_sumador|cnt1000[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(16),
	datad => VCC,
	cin => \U1_sumador|cnt1000[15]~52\,
	combout => \U1_sumador|cnt1000[16]~53_combout\,
	cout => \U1_sumador|cnt1000[16]~54\);

-- Location: FF_X10_Y20_N13
\U1_sumador|cnt1000[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[16]~53_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(16));

-- Location: LCCOMB_X10_Y20_N14
\U1_sumador|cnt1000[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[17]~55_combout\ = (\U1_sumador|cnt1000\(17) & (\U1_sumador|cnt1000[16]~54\ & VCC)) # (!\U1_sumador|cnt1000\(17) & (!\U1_sumador|cnt1000[16]~54\))
-- \U1_sumador|cnt1000[17]~56\ = CARRY((!\U1_sumador|cnt1000\(17) & !\U1_sumador|cnt1000[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(17),
	datad => VCC,
	cin => \U1_sumador|cnt1000[16]~54\,
	combout => \U1_sumador|cnt1000[17]~55_combout\,
	cout => \U1_sumador|cnt1000[17]~56\);

-- Location: FF_X10_Y20_N15
\U1_sumador|cnt1000[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[17]~55_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(17));

-- Location: LCCOMB_X10_Y20_N16
\U1_sumador|cnt1000[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[18]~57_combout\ = (\U1_sumador|cnt1000\(18) & ((GND) # (!\U1_sumador|cnt1000[17]~56\))) # (!\U1_sumador|cnt1000\(18) & (\U1_sumador|cnt1000[17]~56\ $ (GND)))
-- \U1_sumador|cnt1000[18]~58\ = CARRY((\U1_sumador|cnt1000\(18)) # (!\U1_sumador|cnt1000[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt1000\(18),
	datad => VCC,
	cin => \U1_sumador|cnt1000[17]~56\,
	combout => \U1_sumador|cnt1000[18]~57_combout\,
	cout => \U1_sumador|cnt1000[18]~58\);

-- Location: FF_X10_Y20_N17
\U1_sumador|cnt1000[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[18]~57_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(18));

-- Location: LCCOMB_X10_Y20_N18
\U1_sumador|cnt1000[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[19]~59_combout\ = \U1_sumador|cnt1000[18]~58\ $ (!\U1_sumador|cnt1000\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt1000\(19),
	cin => \U1_sumador|cnt1000[18]~58\,
	combout => \U1_sumador|cnt1000[19]~59_combout\);

-- Location: FF_X10_Y20_N19
\U1_sumador|cnt1000[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt1000[19]~59_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~0_combout\,
	ena => \U1_sumador|ALT_INV_cnt1000[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt1000\(19));

-- Location: LCCOMB_X10_Y20_N24
\U1_sumador|lock1000~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~0_combout\ = (!\U1_sumador|cnt1000\(16) & (!\U1_sumador|cnt1000\(19) & (!\U1_sumador|cnt1000\(17) & !\U1_sumador|cnt1000\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(16),
	datab => \U1_sumador|cnt1000\(19),
	datac => \U1_sumador|cnt1000\(17),
	datad => \U1_sumador|cnt1000\(18),
	combout => \U1_sumador|lock1000~0_combout\);

-- Location: LCCOMB_X10_Y21_N10
\U1_sumador|lock1000~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~3_combout\ = (!\U1_sumador|cnt1000\(9) & (!\U1_sumador|cnt1000\(10) & (!\U1_sumador|cnt1000\(11) & !\U1_sumador|cnt1000\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(9),
	datab => \U1_sumador|cnt1000\(10),
	datac => \U1_sumador|cnt1000\(11),
	datad => \U1_sumador|cnt1000\(8),
	combout => \U1_sumador|lock1000~3_combout\);

-- Location: LCCOMB_X10_Y21_N2
\U1_sumador|lock1000~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~1_combout\ = (!\U1_sumador|cnt1000\(0) & (!\U1_sumador|cnt1000\(2) & (!\U1_sumador|cnt1000\(1) & !\U1_sumador|cnt1000\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(0),
	datab => \U1_sumador|cnt1000\(2),
	datac => \U1_sumador|cnt1000\(1),
	datad => \U1_sumador|cnt1000\(3),
	combout => \U1_sumador|lock1000~1_combout\);

-- Location: LCCOMB_X10_Y21_N8
\U1_sumador|lock1000~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~2_combout\ = (!\U1_sumador|cnt1000\(5) & (!\U1_sumador|cnt1000\(6) & (!\U1_sumador|cnt1000\(7) & !\U1_sumador|cnt1000\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(5),
	datab => \U1_sumador|cnt1000\(6),
	datac => \U1_sumador|cnt1000\(7),
	datad => \U1_sumador|cnt1000\(4),
	combout => \U1_sumador|lock1000~2_combout\);

-- Location: LCCOMB_X10_Y20_N30
\U1_sumador|lock1000~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~4_combout\ = (!\U1_sumador|cnt1000\(13) & (!\U1_sumador|cnt1000\(14) & (!\U1_sumador|cnt1000\(12) & !\U1_sumador|cnt1000\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt1000\(13),
	datab => \U1_sumador|cnt1000\(14),
	datac => \U1_sumador|cnt1000\(12),
	datad => \U1_sumador|cnt1000\(15),
	combout => \U1_sumador|lock1000~4_combout\);

-- Location: LCCOMB_X10_Y21_N0
\U1_sumador|lock1000~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~5_combout\ = (\U1_sumador|lock1000~3_combout\ & (\U1_sumador|lock1000~1_combout\ & (\U1_sumador|lock1000~2_combout\ & \U1_sumador|lock1000~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|lock1000~3_combout\,
	datab => \U1_sumador|lock1000~1_combout\,
	datac => \U1_sumador|lock1000~2_combout\,
	datad => \U1_sumador|lock1000~4_combout\,
	combout => \U1_sumador|lock1000~5_combout\);

-- Location: LCCOMB_X10_Y21_N6
\U1_sumador|cnt1000[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt1000[9]~20_combout\ = (!\U1_sumador|process_0~0_combout\ & (((\U1_sumador|lock1000~0_combout\ & \U1_sumador|lock1000~5_combout\)) # (!\U1_sumador|lock1000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|process_0~0_combout\,
	datab => \U1_sumador|lock1000~q\,
	datac => \U1_sumador|lock1000~0_combout\,
	datad => \U1_sumador|lock1000~5_combout\,
	combout => \U1_sumador|cnt1000[9]~20_combout\);

-- Location: LCCOMB_X9_Y22_N30
\U1_sumador|lock1000~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock1000~6_combout\ = !\U1_sumador|cnt1000[9]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt1000[9]~20_combout\,
	combout => \U1_sumador|lock1000~6_combout\);

-- Location: FF_X9_Y22_N31
\U1_sumador|lock1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|lock1000~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|lock1000~q\);

-- Location: FF_X9_Y22_N1
\U1_sumador|prev1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sw1000~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|prev1000~q\);

-- Location: LCCOMB_X9_Y22_N4
\U1_sumador|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|process_0~0_combout\ = (\sw1000~input_o\ & (!\U1_sumador|lock1000~q\ & !\U1_sumador|prev1000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw1000~input_o\,
	datac => \U1_sumador|lock1000~q\,
	datad => \U1_sumador|prev1000~q\,
	combout => \U1_sumador|process_0~0_combout\);

-- Location: LCCOMB_X10_Y22_N6
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\U1_sumador|saldo_reg\(10) & (!\U1_sumador|saldo_reg\(12) & !\U1_sumador|saldo_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(10),
	datac => \U1_sumador|saldo_reg\(12),
	datad => \U1_sumador|saldo_reg\(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y22_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\U1_sumador|saldo_reg\(7) & !\U1_sumador|saldo_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(7),
	datad => \U1_sumador|saldo_reg\(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y22_N14
\U1_sumador|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|LessThan2~0_combout\ = (\U1_sumador|saldo_reg\(5) & ((\U1_sumador|saldo_reg\(4)) # ((\U1_sumador|saldo_reg\(2) & \U1_sumador|saldo_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(2),
	datab => \U1_sumador|saldo_reg\(4),
	datac => \U1_sumador|saldo_reg\(5),
	datad => \U1_sumador|saldo_reg\(3),
	combout => \U1_sumador|LessThan2~0_combout\);

-- Location: LCCOMB_X9_Y22_N6
\U1_sumador|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|LessThan2~1_combout\ = (\U1_sumador|saldo_reg\(8) & (\U1_sumador|saldo_reg\(9) & ((\U1_sumador|LessThan2~0_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datab => \U1_sumador|saldo_reg\(9),
	datac => \LessThan0~0_combout\,
	datad => \U1_sumador|LessThan2~0_combout\,
	combout => \U1_sumador|LessThan2~1_combout\);

-- Location: LCCOMB_X8_Y22_N12
\U1_sumador|saldo_reg[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg[2]~8_combout\ = (\U1_sumador|saldo_reg\(13) & ((\U1_sumador|LessThan2~1_combout\) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datac => \U1_sumador|saldo_reg\(13),
	datad => \U1_sumador|LessThan2~1_combout\,
	combout => \U1_sumador|saldo_reg[2]~8_combout\);

-- Location: IOIBUF_X0_Y23_N8
\sw500~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw500,
	o => \sw500~input_o\);

-- Location: FF_X9_Y22_N11
\U1_sumador|prev500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sw500~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|prev500~q\);

-- Location: LCCOMB_X9_Y21_N12
\U1_sumador|cnt500[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[0]~21_combout\ = \U1_sumador|cnt500\(0) $ (VCC)
-- \U1_sumador|cnt500[0]~22\ = CARRY(\U1_sumador|cnt500\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(0),
	datad => VCC,
	combout => \U1_sumador|cnt500[0]~21_combout\,
	cout => \U1_sumador|cnt500[0]~22\);

-- Location: FF_X9_Y21_N13
\U1_sumador|cnt500[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[0]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(0));

-- Location: LCCOMB_X9_Y21_N14
\U1_sumador|cnt500[1]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[1]~23_combout\ = (\U1_sumador|cnt500\(1) & (\U1_sumador|cnt500[0]~22\ & VCC)) # (!\U1_sumador|cnt500\(1) & (!\U1_sumador|cnt500[0]~22\))
-- \U1_sumador|cnt500[1]~24\ = CARRY((!\U1_sumador|cnt500\(1) & !\U1_sumador|cnt500[0]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(1),
	datad => VCC,
	cin => \U1_sumador|cnt500[0]~22\,
	combout => \U1_sumador|cnt500[1]~23_combout\,
	cout => \U1_sumador|cnt500[1]~24\);

-- Location: FF_X9_Y21_N15
\U1_sumador|cnt500[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[1]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(1));

-- Location: LCCOMB_X9_Y21_N16
\U1_sumador|cnt500[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[2]~25_combout\ = (\U1_sumador|cnt500\(2) & ((GND) # (!\U1_sumador|cnt500[1]~24\))) # (!\U1_sumador|cnt500\(2) & (\U1_sumador|cnt500[1]~24\ $ (GND)))
-- \U1_sumador|cnt500[2]~26\ = CARRY((\U1_sumador|cnt500\(2)) # (!\U1_sumador|cnt500[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(2),
	datad => VCC,
	cin => \U1_sumador|cnt500[1]~24\,
	combout => \U1_sumador|cnt500[2]~25_combout\,
	cout => \U1_sumador|cnt500[2]~26\);

-- Location: FF_X9_Y21_N17
\U1_sumador|cnt500[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[2]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(2));

-- Location: LCCOMB_X9_Y21_N18
\U1_sumador|cnt500[3]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[3]~27_combout\ = (\U1_sumador|cnt500\(3) & (\U1_sumador|cnt500[2]~26\ & VCC)) # (!\U1_sumador|cnt500\(3) & (!\U1_sumador|cnt500[2]~26\))
-- \U1_sumador|cnt500[3]~28\ = CARRY((!\U1_sumador|cnt500\(3) & !\U1_sumador|cnt500[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(3),
	datad => VCC,
	cin => \U1_sumador|cnt500[2]~26\,
	combout => \U1_sumador|cnt500[3]~27_combout\,
	cout => \U1_sumador|cnt500[3]~28\);

-- Location: FF_X9_Y21_N19
\U1_sumador|cnt500[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[3]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(3));

-- Location: LCCOMB_X9_Y21_N20
\U1_sumador|cnt500[4]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[4]~29_combout\ = (\U1_sumador|cnt500\(4) & ((GND) # (!\U1_sumador|cnt500[3]~28\))) # (!\U1_sumador|cnt500\(4) & (\U1_sumador|cnt500[3]~28\ $ (GND)))
-- \U1_sumador|cnt500[4]~30\ = CARRY((\U1_sumador|cnt500\(4)) # (!\U1_sumador|cnt500[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(4),
	datad => VCC,
	cin => \U1_sumador|cnt500[3]~28\,
	combout => \U1_sumador|cnt500[4]~29_combout\,
	cout => \U1_sumador|cnt500[4]~30\);

-- Location: FF_X9_Y21_N21
\U1_sumador|cnt500[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[4]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(4));

-- Location: LCCOMB_X9_Y21_N22
\U1_sumador|cnt500[5]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[5]~31_combout\ = (\U1_sumador|cnt500\(5) & (\U1_sumador|cnt500[4]~30\ & VCC)) # (!\U1_sumador|cnt500\(5) & (!\U1_sumador|cnt500[4]~30\))
-- \U1_sumador|cnt500[5]~32\ = CARRY((!\U1_sumador|cnt500\(5) & !\U1_sumador|cnt500[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(5),
	datad => VCC,
	cin => \U1_sumador|cnt500[4]~30\,
	combout => \U1_sumador|cnt500[5]~31_combout\,
	cout => \U1_sumador|cnt500[5]~32\);

-- Location: FF_X9_Y21_N23
\U1_sumador|cnt500[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[5]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(5));

-- Location: LCCOMB_X9_Y21_N24
\U1_sumador|cnt500[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[6]~33_combout\ = (\U1_sumador|cnt500\(6) & ((GND) # (!\U1_sumador|cnt500[5]~32\))) # (!\U1_sumador|cnt500\(6) & (\U1_sumador|cnt500[5]~32\ $ (GND)))
-- \U1_sumador|cnt500[6]~34\ = CARRY((\U1_sumador|cnt500\(6)) # (!\U1_sumador|cnt500[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(6),
	datad => VCC,
	cin => \U1_sumador|cnt500[5]~32\,
	combout => \U1_sumador|cnt500[6]~33_combout\,
	cout => \U1_sumador|cnt500[6]~34\);

-- Location: FF_X9_Y21_N25
\U1_sumador|cnt500[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[6]~33_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(6));

-- Location: LCCOMB_X9_Y21_N26
\U1_sumador|cnt500[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[7]~35_combout\ = (\U1_sumador|cnt500\(7) & (\U1_sumador|cnt500[6]~34\ & VCC)) # (!\U1_sumador|cnt500\(7) & (!\U1_sumador|cnt500[6]~34\))
-- \U1_sumador|cnt500[7]~36\ = CARRY((!\U1_sumador|cnt500\(7) & !\U1_sumador|cnt500[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(7),
	datad => VCC,
	cin => \U1_sumador|cnt500[6]~34\,
	combout => \U1_sumador|cnt500[7]~35_combout\,
	cout => \U1_sumador|cnt500[7]~36\);

-- Location: FF_X9_Y21_N27
\U1_sumador|cnt500[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[7]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(7));

-- Location: LCCOMB_X9_Y21_N28
\U1_sumador|cnt500[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[8]~37_combout\ = (\U1_sumador|cnt500\(8) & ((GND) # (!\U1_sumador|cnt500[7]~36\))) # (!\U1_sumador|cnt500\(8) & (\U1_sumador|cnt500[7]~36\ $ (GND)))
-- \U1_sumador|cnt500[8]~38\ = CARRY((\U1_sumador|cnt500\(8)) # (!\U1_sumador|cnt500[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(8),
	datad => VCC,
	cin => \U1_sumador|cnt500[7]~36\,
	combout => \U1_sumador|cnt500[8]~37_combout\,
	cout => \U1_sumador|cnt500[8]~38\);

-- Location: LCCOMB_X8_Y20_N20
\U1_sumador|cnt500[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[8]~feeder_combout\ = \U1_sumador|cnt500[8]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt500[8]~37_combout\,
	combout => \U1_sumador|cnt500[8]~feeder_combout\);

-- Location: FF_X8_Y20_N21
\U1_sumador|cnt500[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[8]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(8));

-- Location: LCCOMB_X9_Y21_N30
\U1_sumador|cnt500[9]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[9]~39_combout\ = (\U1_sumador|cnt500\(9) & (\U1_sumador|cnt500[8]~38\ & VCC)) # (!\U1_sumador|cnt500\(9) & (!\U1_sumador|cnt500[8]~38\))
-- \U1_sumador|cnt500[9]~40\ = CARRY((!\U1_sumador|cnt500\(9) & !\U1_sumador|cnt500[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(9),
	datad => VCC,
	cin => \U1_sumador|cnt500[8]~38\,
	combout => \U1_sumador|cnt500[9]~39_combout\,
	cout => \U1_sumador|cnt500[9]~40\);

-- Location: FF_X9_Y21_N31
\U1_sumador|cnt500[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[9]~39_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(9));

-- Location: LCCOMB_X9_Y20_N0
\U1_sumador|cnt500[10]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[10]~41_combout\ = (\U1_sumador|cnt500\(10) & ((GND) # (!\U1_sumador|cnt500[9]~40\))) # (!\U1_sumador|cnt500\(10) & (\U1_sumador|cnt500[9]~40\ $ (GND)))
-- \U1_sumador|cnt500[10]~42\ = CARRY((\U1_sumador|cnt500\(10)) # (!\U1_sumador|cnt500[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(10),
	datad => VCC,
	cin => \U1_sumador|cnt500[9]~40\,
	combout => \U1_sumador|cnt500[10]~41_combout\,
	cout => \U1_sumador|cnt500[10]~42\);

-- Location: FF_X9_Y20_N1
\U1_sumador|cnt500[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[10]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(10));

-- Location: LCCOMB_X9_Y20_N2
\U1_sumador|cnt500[11]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[11]~43_combout\ = (\U1_sumador|cnt500\(11) & (\U1_sumador|cnt500[10]~42\ & VCC)) # (!\U1_sumador|cnt500\(11) & (!\U1_sumador|cnt500[10]~42\))
-- \U1_sumador|cnt500[11]~44\ = CARRY((!\U1_sumador|cnt500\(11) & !\U1_sumador|cnt500[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(11),
	datad => VCC,
	cin => \U1_sumador|cnt500[10]~42\,
	combout => \U1_sumador|cnt500[11]~43_combout\,
	cout => \U1_sumador|cnt500[11]~44\);

-- Location: FF_X9_Y20_N3
\U1_sumador|cnt500[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[11]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(11));

-- Location: LCCOMB_X9_Y20_N4
\U1_sumador|cnt500[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[12]~45_combout\ = (\U1_sumador|cnt500\(12) & ((GND) # (!\U1_sumador|cnt500[11]~44\))) # (!\U1_sumador|cnt500\(12) & (\U1_sumador|cnt500[11]~44\ $ (GND)))
-- \U1_sumador|cnt500[12]~46\ = CARRY((\U1_sumador|cnt500\(12)) # (!\U1_sumador|cnt500[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(12),
	datad => VCC,
	cin => \U1_sumador|cnt500[11]~44\,
	combout => \U1_sumador|cnt500[12]~45_combout\,
	cout => \U1_sumador|cnt500[12]~46\);

-- Location: FF_X9_Y20_N5
\U1_sumador|cnt500[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[12]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(12));

-- Location: LCCOMB_X9_Y20_N6
\U1_sumador|cnt500[13]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[13]~47_combout\ = (\U1_sumador|cnt500\(13) & (\U1_sumador|cnt500[12]~46\ & VCC)) # (!\U1_sumador|cnt500\(13) & (!\U1_sumador|cnt500[12]~46\))
-- \U1_sumador|cnt500[13]~48\ = CARRY((!\U1_sumador|cnt500\(13) & !\U1_sumador|cnt500[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(13),
	datad => VCC,
	cin => \U1_sumador|cnt500[12]~46\,
	combout => \U1_sumador|cnt500[13]~47_combout\,
	cout => \U1_sumador|cnt500[13]~48\);

-- Location: FF_X9_Y20_N7
\U1_sumador|cnt500[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[13]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(13));

-- Location: LCCOMB_X9_Y20_N8
\U1_sumador|cnt500[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[14]~49_combout\ = (\U1_sumador|cnt500\(14) & ((GND) # (!\U1_sumador|cnt500[13]~48\))) # (!\U1_sumador|cnt500\(14) & (\U1_sumador|cnt500[13]~48\ $ (GND)))
-- \U1_sumador|cnt500[14]~50\ = CARRY((\U1_sumador|cnt500\(14)) # (!\U1_sumador|cnt500[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(14),
	datad => VCC,
	cin => \U1_sumador|cnt500[13]~48\,
	combout => \U1_sumador|cnt500[14]~49_combout\,
	cout => \U1_sumador|cnt500[14]~50\);

-- Location: FF_X9_Y20_N9
\U1_sumador|cnt500[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[14]~49_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(14));

-- Location: LCCOMB_X9_Y20_N10
\U1_sumador|cnt500[15]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[15]~51_combout\ = (\U1_sumador|cnt500\(15) & (\U1_sumador|cnt500[14]~50\ & VCC)) # (!\U1_sumador|cnt500\(15) & (!\U1_sumador|cnt500[14]~50\))
-- \U1_sumador|cnt500[15]~52\ = CARRY((!\U1_sumador|cnt500\(15) & !\U1_sumador|cnt500[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(15),
	datad => VCC,
	cin => \U1_sumador|cnt500[14]~50\,
	combout => \U1_sumador|cnt500[15]~51_combout\,
	cout => \U1_sumador|cnt500[15]~52\);

-- Location: FF_X9_Y20_N11
\U1_sumador|cnt500[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[15]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(15));

-- Location: LCCOMB_X9_Y20_N12
\U1_sumador|cnt500[16]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[16]~53_combout\ = (\U1_sumador|cnt500\(16) & ((GND) # (!\U1_sumador|cnt500[15]~52\))) # (!\U1_sumador|cnt500\(16) & (\U1_sumador|cnt500[15]~52\ $ (GND)))
-- \U1_sumador|cnt500[16]~54\ = CARRY((\U1_sumador|cnt500\(16)) # (!\U1_sumador|cnt500[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(16),
	datad => VCC,
	cin => \U1_sumador|cnt500[15]~52\,
	combout => \U1_sumador|cnt500[16]~53_combout\,
	cout => \U1_sumador|cnt500[16]~54\);

-- Location: FF_X9_Y20_N13
\U1_sumador|cnt500[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[16]~53_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(16));

-- Location: LCCOMB_X9_Y20_N14
\U1_sumador|cnt500[17]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[17]~55_combout\ = (\U1_sumador|cnt500\(17) & (\U1_sumador|cnt500[16]~54\ & VCC)) # (!\U1_sumador|cnt500\(17) & (!\U1_sumador|cnt500[16]~54\))
-- \U1_sumador|cnt500[17]~56\ = CARRY((!\U1_sumador|cnt500\(17) & !\U1_sumador|cnt500[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(17),
	datad => VCC,
	cin => \U1_sumador|cnt500[16]~54\,
	combout => \U1_sumador|cnt500[17]~55_combout\,
	cout => \U1_sumador|cnt500[17]~56\);

-- Location: FF_X9_Y20_N15
\U1_sumador|cnt500[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[17]~55_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(17));

-- Location: LCCOMB_X9_Y20_N16
\U1_sumador|cnt500[18]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[18]~57_combout\ = (\U1_sumador|cnt500\(18) & ((GND) # (!\U1_sumador|cnt500[17]~56\))) # (!\U1_sumador|cnt500\(18) & (\U1_sumador|cnt500[17]~56\ $ (GND)))
-- \U1_sumador|cnt500[18]~58\ = CARRY((\U1_sumador|cnt500\(18)) # (!\U1_sumador|cnt500[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|cnt500\(18),
	datad => VCC,
	cin => \U1_sumador|cnt500[17]~56\,
	combout => \U1_sumador|cnt500[18]~57_combout\,
	cout => \U1_sumador|cnt500[18]~58\);

-- Location: FF_X9_Y20_N17
\U1_sumador|cnt500[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[18]~57_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(18));

-- Location: LCCOMB_X9_Y20_N18
\U1_sumador|cnt500[19]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[19]~59_combout\ = \U1_sumador|cnt500[18]~58\ $ (!\U1_sumador|cnt500\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt500\(19),
	cin => \U1_sumador|cnt500[18]~58\,
	combout => \U1_sumador|cnt500[19]~59_combout\);

-- Location: FF_X9_Y20_N19
\U1_sumador|cnt500[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|cnt500[19]~59_combout\,
	asdata => VCC,
	clrn => \ALT_INV_reset~input_o\,
	sload => \U1_sumador|process_0~1_combout\,
	ena => \U1_sumador|ALT_INV_cnt500[19]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|cnt500\(19));

-- Location: LCCOMB_X9_Y20_N20
\U1_sumador|lock500~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~0_combout\ = (!\U1_sumador|cnt500\(16) & (!\U1_sumador|cnt500\(18) & (!\U1_sumador|cnt500\(17) & !\U1_sumador|cnt500\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(16),
	datab => \U1_sumador|cnt500\(18),
	datac => \U1_sumador|cnt500\(17),
	datad => \U1_sumador|cnt500\(19),
	combout => \U1_sumador|lock500~0_combout\);

-- Location: LCCOMB_X9_Y20_N26
\U1_sumador|lock500~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~3_combout\ = (!\U1_sumador|cnt500\(9) & (!\U1_sumador|cnt500\(10) & (!\U1_sumador|cnt500\(11) & !\U1_sumador|cnt500\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(9),
	datab => \U1_sumador|cnt500\(10),
	datac => \U1_sumador|cnt500\(11),
	datad => \U1_sumador|cnt500\(8),
	combout => \U1_sumador|lock500~3_combout\);

-- Location: LCCOMB_X9_Y20_N28
\U1_sumador|lock500~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~4_combout\ = (!\U1_sumador|cnt500\(12) & (!\U1_sumador|cnt500\(14) & (!\U1_sumador|cnt500\(13) & !\U1_sumador|cnt500\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(12),
	datab => \U1_sumador|cnt500\(14),
	datac => \U1_sumador|cnt500\(13),
	datad => \U1_sumador|cnt500\(15),
	combout => \U1_sumador|lock500~4_combout\);

-- Location: LCCOMB_X9_Y21_N10
\U1_sumador|lock500~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~2_combout\ = (!\U1_sumador|cnt500\(7) & (!\U1_sumador|cnt500\(6) & (!\U1_sumador|cnt500\(5) & !\U1_sumador|cnt500\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(7),
	datab => \U1_sumador|cnt500\(6),
	datac => \U1_sumador|cnt500\(5),
	datad => \U1_sumador|cnt500\(4),
	combout => \U1_sumador|lock500~2_combout\);

-- Location: LCCOMB_X9_Y21_N8
\U1_sumador|lock500~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~1_combout\ = (!\U1_sumador|cnt500\(0) & (!\U1_sumador|cnt500\(3) & (!\U1_sumador|cnt500\(1) & !\U1_sumador|cnt500\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|cnt500\(0),
	datab => \U1_sumador|cnt500\(3),
	datac => \U1_sumador|cnt500\(1),
	datad => \U1_sumador|cnt500\(2),
	combout => \U1_sumador|lock500~1_combout\);

-- Location: LCCOMB_X9_Y20_N30
\U1_sumador|lock500~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~5_combout\ = (\U1_sumador|lock500~3_combout\ & (\U1_sumador|lock500~4_combout\ & (\U1_sumador|lock500~2_combout\ & \U1_sumador|lock500~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|lock500~3_combout\,
	datab => \U1_sumador|lock500~4_combout\,
	datac => \U1_sumador|lock500~2_combout\,
	datad => \U1_sumador|lock500~1_combout\,
	combout => \U1_sumador|lock500~5_combout\);

-- Location: LCCOMB_X9_Y20_N24
\U1_sumador|cnt500[19]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|cnt500[19]~20_combout\ = (!\U1_sumador|process_0~1_combout\ & (((\U1_sumador|lock500~0_combout\ & \U1_sumador|lock500~5_combout\)) # (!\U1_sumador|lock500~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|process_0~1_combout\,
	datab => \U1_sumador|lock500~0_combout\,
	datac => \U1_sumador|lock500~5_combout\,
	datad => \U1_sumador|lock500~q\,
	combout => \U1_sumador|cnt500[19]~20_combout\);

-- Location: LCCOMB_X9_Y20_N22
\U1_sumador|lock500~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|lock500~6_combout\ = !\U1_sumador|cnt500[19]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|cnt500[19]~20_combout\,
	combout => \U1_sumador|lock500~6_combout\);

-- Location: FF_X9_Y22_N25
\U1_sumador|lock500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1_sumador|lock500~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|lock500~q\);

-- Location: LCCOMB_X9_Y22_N10
\U1_sumador|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|process_0~1_combout\ = (\sw500~input_o\ & (!\U1_sumador|prev500~q\ & !\U1_sumador|lock500~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw500~input_o\,
	datac => \U1_sumador|prev500~q\,
	datad => \U1_sumador|lock500~q\,
	combout => \U1_sumador|process_0~1_combout\);

-- Location: LCCOMB_X10_Y22_N4
\U1_sumador|saldo_reg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg~6_combout\ = (\U1_sumador|saldo_reg\(13) & (\U1_sumador|process_0~0_combout\ & ((\U1_sumador|LessThan3~1_combout\) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \U1_sumador|saldo_reg\(13),
	datac => \U1_sumador|process_0~0_combout\,
	datad => \U1_sumador|LessThan3~1_combout\,
	combout => \U1_sumador|saldo_reg~6_combout\);

-- Location: LCCOMB_X10_Y22_N2
\U1_sumador|saldo_reg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg~7_combout\ = (\U1_sumador|saldo_reg~6_combout\) # ((\U1_sumador|process_0~1_combout\ & !\U1_sumador|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|process_0~1_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|saldo_reg~6_combout\,
	combout => \U1_sumador|saldo_reg~7_combout\);

-- Location: LCCOMB_X11_Y22_N2
\U1_sumador|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~0_combout\ = \U1_sumador|saldo_reg\(2) $ (VCC)
-- \U1_sumador|Add2~1\ = CARRY(\U1_sumador|saldo_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(2),
	datad => VCC,
	combout => \U1_sumador|Add2~0_combout\,
	cout => \U1_sumador|Add2~1\);

-- Location: LCCOMB_X8_Y22_N2
\U1_sumador|saldo_reg[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg[2]~9_combout\ = (\U1_sumador|Add2~0_combout\) # ((!\U1_sumador|lock1000~q\ & (\sw1000~input_o\ & !\U1_sumador|prev1000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|lock1000~q\,
	datab => \sw1000~input_o\,
	datac => \U1_sumador|prev1000~q\,
	datad => \U1_sumador|Add2~0_combout\,
	combout => \U1_sumador|saldo_reg[2]~9_combout\);

-- Location: LCCOMB_X8_Y22_N20
\U1_sumador|saldo_reg[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg[2]~10_combout\ = (\U1_sumador|saldo_reg~7_combout\ & ((\U1_sumador|saldo_reg[2]~8_combout\) # ((\U1_sumador|saldo_reg[2]~9_combout\)))) # (!\U1_sumador|saldo_reg~7_combout\ & (((\U1_sumador|saldo_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg[2]~8_combout\,
	datab => \U1_sumador|saldo_reg~7_combout\,
	datac => \U1_sumador|saldo_reg\(2),
	datad => \U1_sumador|saldo_reg[2]~9_combout\,
	combout => \U1_sumador|saldo_reg[2]~10_combout\);

-- Location: FF_X8_Y22_N21
\U1_sumador|saldo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|saldo_reg[2]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(2));

-- Location: LCCOMB_X11_Y22_N4
\U1_sumador|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~2_combout\ = (\U1_sumador|saldo_reg\(3) & (!\U1_sumador|Add2~1\)) # (!\U1_sumador|saldo_reg\(3) & ((\U1_sumador|Add2~1\) # (GND)))
-- \U1_sumador|Add2~3\ = CARRY((!\U1_sumador|Add2~1\) # (!\U1_sumador|saldo_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(3),
	datad => VCC,
	cin => \U1_sumador|Add2~1\,
	combout => \U1_sumador|Add2~2_combout\,
	cout => \U1_sumador|Add2~3\);

-- Location: LCCOMB_X10_Y22_N10
\U1_sumador|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~0_combout\ = \U1_sumador|saldo_reg\(3) $ (VCC)
-- \U1_sumador|Add3~1\ = CARRY(\U1_sumador|saldo_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(3),
	datad => VCC,
	combout => \U1_sumador|Add3~0_combout\,
	cout => \U1_sumador|Add3~1\);

-- Location: LCCOMB_X9_Y22_N26
\U1_sumador|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~32_combout\ = (\U1_sumador|saldo_reg~5_combout\) # ((\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add3~0_combout\))) # (!\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add2~2_combout\,
	datab => \U1_sumador|Add3~0_combout\,
	datac => \U1_sumador|process_0~0_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~32_combout\);

-- Location: LCCOMB_X9_Y22_N0
\U1_sumador|saldo_reg[13]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg[13]~11_combout\ = (\U1_sumador|process_0~1_combout\) # ((!\U1_sumador|lock1000~q\ & (\sw1000~input_o\ & !\U1_sumador|prev1000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|lock1000~q\,
	datab => \sw1000~input_o\,
	datac => \U1_sumador|prev1000~q\,
	datad => \U1_sumador|process_0~1_combout\,
	combout => \U1_sumador|saldo_reg[13]~11_combout\);

-- Location: FF_X9_Y22_N27
\U1_sumador|saldo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(3));

-- Location: LCCOMB_X11_Y22_N6
\U1_sumador|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~4_combout\ = (\U1_sumador|saldo_reg\(4) & ((GND) # (!\U1_sumador|Add2~3\))) # (!\U1_sumador|saldo_reg\(4) & (\U1_sumador|Add2~3\ $ (GND)))
-- \U1_sumador|Add2~5\ = CARRY((\U1_sumador|saldo_reg\(4)) # (!\U1_sumador|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(4),
	datad => VCC,
	cin => \U1_sumador|Add2~3\,
	combout => \U1_sumador|Add2~4_combout\,
	cout => \U1_sumador|Add2~5\);

-- Location: LCCOMB_X10_Y22_N12
\U1_sumador|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~2_combout\ = (\U1_sumador|saldo_reg\(4) & (!\U1_sumador|Add3~1\)) # (!\U1_sumador|saldo_reg\(4) & ((\U1_sumador|Add3~1\) # (GND)))
-- \U1_sumador|Add3~3\ = CARRY((!\U1_sumador|Add3~1\) # (!\U1_sumador|saldo_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(4),
	datad => VCC,
	cin => \U1_sumador|Add3~1\,
	combout => \U1_sumador|Add3~2_combout\,
	cout => \U1_sumador|Add3~3\);

-- Location: LCCOMB_X9_Y22_N16
\U1_sumador|Add3~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~31_combout\ = (\U1_sumador|saldo_reg~5_combout\) # ((\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add3~2_combout\))) # (!\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add2~4_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|Add3~2_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~31_combout\);

-- Location: FF_X9_Y22_N17
\U1_sumador|saldo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(4));

-- Location: LCCOMB_X10_Y22_N14
\U1_sumador|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~4_combout\ = (\U1_sumador|saldo_reg\(5) & ((GND) # (!\U1_sumador|Add3~3\))) # (!\U1_sumador|saldo_reg\(5) & (\U1_sumador|Add3~3\ $ (GND)))
-- \U1_sumador|Add3~5\ = CARRY((\U1_sumador|saldo_reg\(5)) # (!\U1_sumador|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(5),
	datad => VCC,
	cin => \U1_sumador|Add3~3\,
	combout => \U1_sumador|Add3~4_combout\,
	cout => \U1_sumador|Add3~5\);

-- Location: LCCOMB_X11_Y22_N8
\U1_sumador|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~6_combout\ = (\U1_sumador|saldo_reg\(5) & (\U1_sumador|Add2~5\ & VCC)) # (!\U1_sumador|saldo_reg\(5) & (!\U1_sumador|Add2~5\))
-- \U1_sumador|Add2~7\ = CARRY((!\U1_sumador|saldo_reg\(5) & !\U1_sumador|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(5),
	datad => VCC,
	cin => \U1_sumador|Add2~5\,
	combout => \U1_sumador|Add2~6_combout\,
	cout => \U1_sumador|Add2~7\);

-- Location: LCCOMB_X9_Y22_N22
\U1_sumador|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~30_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~4_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~4_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|Add2~6_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~30_combout\);

-- Location: FF_X9_Y22_N23
\U1_sumador|saldo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(5));

-- Location: LCCOMB_X10_Y22_N16
\U1_sumador|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~6_combout\ = (\U1_sumador|saldo_reg\(6) & (\U1_sumador|Add3~5\ & VCC)) # (!\U1_sumador|saldo_reg\(6) & (!\U1_sumador|Add3~5\))
-- \U1_sumador|Add3~7\ = CARRY((!\U1_sumador|saldo_reg\(6) & !\U1_sumador|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(6),
	datad => VCC,
	cin => \U1_sumador|Add3~5\,
	combout => \U1_sumador|Add3~6_combout\,
	cout => \U1_sumador|Add3~7\);

-- Location: LCCOMB_X11_Y22_N10
\U1_sumador|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~8_combout\ = (\U1_sumador|saldo_reg\(6) & ((GND) # (!\U1_sumador|Add2~7\))) # (!\U1_sumador|saldo_reg\(6) & (\U1_sumador|Add2~7\ $ (GND)))
-- \U1_sumador|Add2~9\ = CARRY((\U1_sumador|saldo_reg\(6)) # (!\U1_sumador|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(6),
	datad => VCC,
	cin => \U1_sumador|Add2~7\,
	combout => \U1_sumador|Add2~8_combout\,
	cout => \U1_sumador|Add2~9\);

-- Location: LCCOMB_X9_Y22_N12
\U1_sumador|Add3~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~29_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~6_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~6_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|Add2~8_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~29_combout\);

-- Location: FF_X9_Y22_N13
\U1_sumador|saldo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(6));

-- Location: LCCOMB_X9_Y22_N18
\U1_sumador|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|LessThan3~0_combout\ = (\U1_sumador|saldo_reg\(7)) # ((\U1_sumador|saldo_reg\(5) & (\U1_sumador|saldo_reg\(4) & \U1_sumador|saldo_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(5),
	datab => \U1_sumador|saldo_reg\(4),
	datac => \U1_sumador|saldo_reg\(3),
	datad => \U1_sumador|saldo_reg\(7),
	combout => \U1_sumador|LessThan3~0_combout\);

-- Location: LCCOMB_X9_Y22_N8
\U1_sumador|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|LessThan3~1_combout\ = (\U1_sumador|saldo_reg\(9)) # ((\U1_sumador|saldo_reg\(8) & ((\U1_sumador|saldo_reg\(6)) # (\U1_sumador|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(6),
	datab => \U1_sumador|saldo_reg\(8),
	datac => \U1_sumador|saldo_reg\(9),
	datad => \U1_sumador|LessThan3~0_combout\,
	combout => \U1_sumador|LessThan3~1_combout\);

-- Location: LCCOMB_X9_Y22_N14
\U1_sumador|saldo_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg~4_combout\ = (\U1_sumador|saldo_reg\(13) & (((\U1_sumador|LessThan3~1_combout\) # (!\LessThan0~1_combout\)) # (!\U1_sumador|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(13),
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|LessThan3~1_combout\,
	datad => \LessThan0~1_combout\,
	combout => \U1_sumador|saldo_reg~4_combout\);

-- Location: LCCOMB_X9_Y22_N20
\U1_sumador|saldo_reg~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|saldo_reg~5_combout\ = (\U1_sumador|saldo_reg~4_combout\ & (((\U1_sumador|process_0~0_combout\) # (\U1_sumador|LessThan2~1_combout\)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|saldo_reg~4_combout\,
	datad => \U1_sumador|LessThan2~1_combout\,
	combout => \U1_sumador|saldo_reg~5_combout\);

-- Location: LCCOMB_X11_Y22_N12
\U1_sumador|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~10_combout\ = (\U1_sumador|saldo_reg\(7) & (\U1_sumador|Add2~9\ & VCC)) # (!\U1_sumador|saldo_reg\(7) & (!\U1_sumador|Add2~9\))
-- \U1_sumador|Add2~11\ = CARRY((!\U1_sumador|saldo_reg\(7) & !\U1_sumador|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datad => VCC,
	cin => \U1_sumador|Add2~9\,
	combout => \U1_sumador|Add2~10_combout\,
	cout => \U1_sumador|Add2~11\);

-- Location: LCCOMB_X10_Y22_N18
\U1_sumador|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~8_combout\ = (\U1_sumador|saldo_reg\(7) & ((GND) # (!\U1_sumador|Add3~7\))) # (!\U1_sumador|saldo_reg\(7) & (\U1_sumador|Add3~7\ $ (GND)))
-- \U1_sumador|Add3~9\ = CARRY((\U1_sumador|saldo_reg\(7)) # (!\U1_sumador|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datad => VCC,
	cin => \U1_sumador|Add3~7\,
	combout => \U1_sumador|Add3~8_combout\,
	cout => \U1_sumador|Add3~9\);

-- Location: LCCOMB_X9_Y22_N2
\U1_sumador|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~28_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add3~8_combout\))) # (!\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|process_0~0_combout\,
	datab => \U1_sumador|saldo_reg~5_combout\,
	datac => \U1_sumador|Add2~10_combout\,
	datad => \U1_sumador|Add3~8_combout\,
	combout => \U1_sumador|Add3~28_combout\);

-- Location: FF_X9_Y22_N3
\U1_sumador|saldo_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(7));

-- Location: LCCOMB_X10_Y22_N20
\U1_sumador|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~10_combout\ = (\U1_sumador|saldo_reg\(8) & (\U1_sumador|Add3~9\ & VCC)) # (!\U1_sumador|saldo_reg\(8) & (!\U1_sumador|Add3~9\))
-- \U1_sumador|Add3~11\ = CARRY((!\U1_sumador|saldo_reg\(8) & !\U1_sumador|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(8),
	datad => VCC,
	cin => \U1_sumador|Add3~9\,
	combout => \U1_sumador|Add3~10_combout\,
	cout => \U1_sumador|Add3~11\);

-- Location: LCCOMB_X11_Y22_N14
\U1_sumador|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~12_combout\ = (\U1_sumador|saldo_reg\(8) & ((GND) # (!\U1_sumador|Add2~11\))) # (!\U1_sumador|saldo_reg\(8) & (\U1_sumador|Add2~11\ $ (GND)))
-- \U1_sumador|Add2~13\ = CARRY((\U1_sumador|saldo_reg\(8)) # (!\U1_sumador|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(8),
	datad => VCC,
	cin => \U1_sumador|Add2~11\,
	combout => \U1_sumador|Add2~12_combout\,
	cout => \U1_sumador|Add2~13\);

-- Location: LCCOMB_X9_Y22_N28
\U1_sumador|Add3~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~27_combout\ = (\U1_sumador|saldo_reg~5_combout\) # ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~10_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~10_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|Add2~12_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~27_combout\);

-- Location: FF_X9_Y22_N29
\U1_sumador|saldo_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(8));

-- Location: LCCOMB_X10_Y22_N22
\U1_sumador|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~12_combout\ = (\U1_sumador|saldo_reg\(9) & ((GND) # (!\U1_sumador|Add3~11\))) # (!\U1_sumador|saldo_reg\(9) & (\U1_sumador|Add3~11\ $ (GND)))
-- \U1_sumador|Add3~13\ = CARRY((\U1_sumador|saldo_reg\(9)) # (!\U1_sumador|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(9),
	datad => VCC,
	cin => \U1_sumador|Add3~11\,
	combout => \U1_sumador|Add3~12_combout\,
	cout => \U1_sumador|Add3~13\);

-- Location: LCCOMB_X11_Y22_N16
\U1_sumador|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~14_combout\ = (\U1_sumador|saldo_reg\(9) & (!\U1_sumador|Add2~13\)) # (!\U1_sumador|saldo_reg\(9) & ((\U1_sumador|Add2~13\) # (GND)))
-- \U1_sumador|Add2~15\ = CARRY((!\U1_sumador|Add2~13\) # (!\U1_sumador|saldo_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(9),
	datad => VCC,
	cin => \U1_sumador|Add2~13\,
	combout => \U1_sumador|Add2~14_combout\,
	cout => \U1_sumador|Add2~15\);

-- Location: LCCOMB_X10_Y22_N0
\U1_sumador|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~26_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~12_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~12_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|Add2~14_combout\,
	datad => \U1_sumador|saldo_reg~5_combout\,
	combout => \U1_sumador|Add3~26_combout\);

-- Location: FF_X10_Y22_N1
\U1_sumador|saldo_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(9));

-- Location: LCCOMB_X10_Y22_N24
\U1_sumador|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~14_combout\ = (\U1_sumador|saldo_reg\(10) & (!\U1_sumador|Add3~13\)) # (!\U1_sumador|saldo_reg\(10) & ((\U1_sumador|Add3~13\) # (GND)))
-- \U1_sumador|Add3~15\ = CARRY((!\U1_sumador|Add3~13\) # (!\U1_sumador|saldo_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(10),
	datad => VCC,
	cin => \U1_sumador|Add3~13\,
	combout => \U1_sumador|Add3~14_combout\,
	cout => \U1_sumador|Add3~15\);

-- Location: LCCOMB_X11_Y22_N18
\U1_sumador|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~16_combout\ = (\U1_sumador|saldo_reg\(10) & (\U1_sumador|Add2~15\ $ (GND))) # (!\U1_sumador|saldo_reg\(10) & (!\U1_sumador|Add2~15\ & VCC))
-- \U1_sumador|Add2~17\ = CARRY((\U1_sumador|saldo_reg\(10) & !\U1_sumador|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(10),
	datad => VCC,
	cin => \U1_sumador|Add2~15\,
	combout => \U1_sumador|Add2~16_combout\,
	cout => \U1_sumador|Add2~17\);

-- Location: LCCOMB_X11_Y22_N26
\U1_sumador|Add3~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~25_combout\ = (\U1_sumador|saldo_reg~5_combout\) # ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~14_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~14_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|saldo_reg~5_combout\,
	datad => \U1_sumador|Add2~16_combout\,
	combout => \U1_sumador|Add3~25_combout\);

-- Location: FF_X11_Y22_N27
\U1_sumador|saldo_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(10));

-- Location: LCCOMB_X10_Y22_N26
\U1_sumador|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~16_combout\ = (\U1_sumador|saldo_reg\(11) & (\U1_sumador|Add3~15\ $ (GND))) # (!\U1_sumador|saldo_reg\(11) & (!\U1_sumador|Add3~15\ & VCC))
-- \U1_sumador|Add3~17\ = CARRY((\U1_sumador|saldo_reg\(11) & !\U1_sumador|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(11),
	datad => VCC,
	cin => \U1_sumador|Add3~15\,
	combout => \U1_sumador|Add3~16_combout\,
	cout => \U1_sumador|Add3~17\);

-- Location: LCCOMB_X11_Y22_N20
\U1_sumador|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~18_combout\ = (\U1_sumador|saldo_reg\(11) & (!\U1_sumador|Add2~17\)) # (!\U1_sumador|saldo_reg\(11) & ((\U1_sumador|Add2~17\) # (GND)))
-- \U1_sumador|Add2~19\ = CARRY((!\U1_sumador|Add2~17\) # (!\U1_sumador|saldo_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(11),
	datad => VCC,
	cin => \U1_sumador|Add2~17\,
	combout => \U1_sumador|Add2~18_combout\,
	cout => \U1_sumador|Add2~19\);

-- Location: LCCOMB_X11_Y22_N28
\U1_sumador|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~24_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~16_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add3~16_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|saldo_reg~5_combout\,
	datad => \U1_sumador|Add2~18_combout\,
	combout => \U1_sumador|Add3~24_combout\);

-- Location: FF_X11_Y22_N29
\U1_sumador|saldo_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(11));

-- Location: LCCOMB_X11_Y22_N22
\U1_sumador|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~20_combout\ = (\U1_sumador|saldo_reg\(12) & (\U1_sumador|Add2~19\ $ (GND))) # (!\U1_sumador|saldo_reg\(12) & (!\U1_sumador|Add2~19\ & VCC))
-- \U1_sumador|Add2~21\ = CARRY((\U1_sumador|saldo_reg\(12) & !\U1_sumador|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(12),
	datad => VCC,
	cin => \U1_sumador|Add2~19\,
	combout => \U1_sumador|Add2~20_combout\,
	cout => \U1_sumador|Add2~21\);

-- Location: LCCOMB_X10_Y22_N28
\U1_sumador|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~18_combout\ = (\U1_sumador|saldo_reg\(12) & (!\U1_sumador|Add3~17\)) # (!\U1_sumador|saldo_reg\(12) & ((\U1_sumador|Add3~17\) # (GND)))
-- \U1_sumador|Add3~19\ = CARRY((!\U1_sumador|Add3~17\) # (!\U1_sumador|saldo_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(12),
	datad => VCC,
	cin => \U1_sumador|Add3~17\,
	combout => \U1_sumador|Add3~18_combout\,
	cout => \U1_sumador|Add3~19\);

-- Location: LCCOMB_X11_Y22_N30
\U1_sumador|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~23_combout\ = (!\U1_sumador|saldo_reg~5_combout\ & ((\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add3~18_combout\))) # (!\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|Add2~20_combout\,
	datab => \U1_sumador|process_0~0_combout\,
	datac => \U1_sumador|saldo_reg~5_combout\,
	datad => \U1_sumador|Add3~18_combout\,
	combout => \U1_sumador|Add3~23_combout\);

-- Location: FF_X11_Y22_N31
\U1_sumador|saldo_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(12));

-- Location: LCCOMB_X10_Y22_N30
\U1_sumador|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~20_combout\ = \U1_sumador|saldo_reg\(13) $ (!\U1_sumador|Add3~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(13),
	cin => \U1_sumador|Add3~19\,
	combout => \U1_sumador|Add3~20_combout\);

-- Location: LCCOMB_X11_Y22_N24
\U1_sumador|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add2~22_combout\ = \U1_sumador|Add2~21\ $ (\U1_sumador|saldo_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1_sumador|saldo_reg\(13),
	cin => \U1_sumador|Add2~21\,
	combout => \U1_sumador|Add2~22_combout\);

-- Location: LCCOMB_X11_Y22_N0
\U1_sumador|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U1_sumador|Add3~22_combout\ = (\U1_sumador|saldo_reg~5_combout\) # ((\U1_sumador|process_0~0_combout\ & (\U1_sumador|Add3~20_combout\)) # (!\U1_sumador|process_0~0_combout\ & ((\U1_sumador|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|process_0~0_combout\,
	datab => \U1_sumador|Add3~20_combout\,
	datac => \U1_sumador|saldo_reg~5_combout\,
	datad => \U1_sumador|Add2~22_combout\,
	combout => \U1_sumador|Add3~22_combout\);

-- Location: FF_X11_Y22_N1
\U1_sumador|saldo_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1_sumador|Add3~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U1_sumador|saldo_reg[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_sumador|saldo_reg\(13));

-- Location: LCCOMB_X14_Y23_N4
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ = \U1_sumador|saldo_reg\(7) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ = CARRY(\U1_sumador|saldo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\);

-- Location: LCCOMB_X14_Y23_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ = (\U1_sumador|saldo_reg\(8) & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ & VCC)) # (!\U1_sumador|saldo_reg\(8) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ = CARRY((!\U1_sumador|saldo_reg\(8) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\);

-- Location: LCCOMB_X14_Y23_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ = (\U1_sumador|saldo_reg\(9) & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ $ (GND))) # (!\U1_sumador|saldo_reg\(9) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ = CARRY((\U1_sumador|saldo_reg\(9) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(9),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\);

-- Location: LCCOMB_X14_Y23_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ = (\U1_sumador|saldo_reg\(10) & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\)) # (!\U1_sumador|saldo_reg\(10) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (!\U1_sumador|saldo_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(10),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\);

-- Location: LCCOMB_X14_Y23_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ = (\U1_sumador|saldo_reg\(11) & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ $ (GND))) # (!\U1_sumador|saldo_reg\(11) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ = CARRY((\U1_sumador|saldo_reg\(11) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(11),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\);

-- Location: LCCOMB_X14_Y23_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ = (\U1_sumador|saldo_reg\(12) & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\)) # (!\U1_sumador|saldo_reg\(12) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (!\U1_sumador|saldo_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(12),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\);

-- Location: LCCOMB_X14_Y23_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ = (\U1_sumador|saldo_reg\(13) & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ $ (GND))) # (!\U1_sumador|saldo_reg\(13) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ = CARRY((\U1_sumador|saldo_reg\(13) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(13),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\);

-- Location: LCCOMB_X14_Y23_N18
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\);

-- Location: LCCOMB_X15_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[135]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\);

-- Location: LCCOMB_X15_Y24_N16
\Mod0|auto_generated|divider|divider|StageOut[135]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\ = (\U1_sumador|saldo_reg\(13) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(13),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\);

-- Location: LCCOMB_X16_Y23_N20
\Mod0|auto_generated|divider|divider|StageOut[134]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\ = (\U1_sumador|saldo_reg\(12) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(12),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\);

-- Location: LCCOMB_X15_Y23_N28
\Mod0|auto_generated|divider|divider|StageOut[134]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\);

-- Location: LCCOMB_X15_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[133]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\ = (\U1_sumador|saldo_reg\(11) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(11),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\);

-- Location: LCCOMB_X15_Y23_N4
\Mod0|auto_generated|divider|divider|StageOut[133]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\);

-- Location: LCCOMB_X14_Y23_N20
\Mod0|auto_generated|divider|divider|StageOut[132]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\);

-- Location: LCCOMB_X15_Y23_N2
\Mod0|auto_generated|divider|divider|StageOut[132]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(10),
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\);

-- Location: LCCOMB_X14_Y23_N26
\Mod0|auto_generated|divider|divider|StageOut[131]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(9),
	combout => \Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\);

-- Location: LCCOMB_X14_Y23_N24
\Mod0|auto_generated|divider|divider|StageOut[131]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\);

-- Location: LCCOMB_X17_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[130]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\ = (\U1_sumador|saldo_reg\(8) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\);

-- Location: LCCOMB_X17_Y25_N14
\Mod0|auto_generated|divider|divider|StageOut[130]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\);

-- Location: LCCOMB_X14_Y25_N14
\Mod0|auto_generated|divider|divider|StageOut[129]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\ = (\U1_sumador|saldo_reg\(7) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\);

-- Location: LCCOMB_X14_Y25_N28
\Mod0|auto_generated|divider|divider|StageOut[129]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\);

-- Location: LCCOMB_X15_Y23_N8
\Mod0|auto_generated|divider|divider|StageOut[128]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\ = (\U1_sumador|saldo_reg\(6) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\);

-- Location: LCCOMB_X15_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[128]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\ = (\U1_sumador|saldo_reg\(6) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\);

-- Location: LCCOMB_X15_Y23_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~166_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[128]~167_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\);

-- Location: LCCOMB_X15_Y23_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~164_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~165_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\);

-- Location: LCCOMB_X15_Y23_N14
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~162_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\);

-- Location: LCCOMB_X15_Y23_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[131]~160_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[131]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\);

-- Location: LCCOMB_X15_Y23_N18
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[132]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[132]~158_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\);

-- Location: LCCOMB_X15_Y23_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[133]~156_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[133]~157_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\);

-- Location: LCCOMB_X15_Y23_N22
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & (((\Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[134]~154_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[134]~155_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\);

-- Location: LCCOMB_X15_Y23_N24
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[135]~153_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[135]~152_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\);

-- Location: LCCOMB_X15_Y23_N26
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\);

-- Location: LCCOMB_X14_Y25_N16
\Mod0|auto_generated|divider|divider|StageOut[150]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(13))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \U1_sumador|saldo_reg\(13),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\);

-- Location: LCCOMB_X14_Y25_N30
\Mod0|auto_generated|divider|divider|StageOut[150]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\);

-- Location: LCCOMB_X14_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[149]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(12)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(12),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\);

-- Location: LCCOMB_X15_Y23_N6
\Mod0|auto_generated|divider|divider|StageOut[149]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\);

-- Location: LCCOMB_X14_Y23_N22
\Mod0|auto_generated|divider|divider|StageOut[148]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(11)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(11),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\);

-- Location: LCCOMB_X16_Y25_N12
\Mod0|auto_generated|divider|divider|StageOut[148]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\);

-- Location: LCCOMB_X14_Y23_N28
\Mod0|auto_generated|divider|divider|StageOut[147]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(10)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \U1_sumador|saldo_reg\(10),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\);

-- Location: LCCOMB_X14_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[147]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\);

-- Location: LCCOMB_X16_Y25_N6
\Mod0|auto_generated|divider|divider|StageOut[146]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\);

-- Location: LCCOMB_X14_Y23_N2
\Mod0|auto_generated|divider|divider|StageOut[146]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(9))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(9),
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\);

-- Location: LCCOMB_X15_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[145]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\);

-- Location: LCCOMB_X17_Y25_N10
\Mod0|auto_generated|divider|divider|StageOut[145]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(8))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\);

-- Location: LCCOMB_X14_Y25_N2
\Mod0|auto_generated|divider|divider|StageOut[144]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(7))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \U1_sumador|saldo_reg\(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\);

-- Location: LCCOMB_X14_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[144]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\);

-- Location: LCCOMB_X15_Y25_N6
\Mod0|auto_generated|divider|divider|StageOut[143]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\ = (\U1_sumador|saldo_reg\(6) & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\);

-- Location: LCCOMB_X16_Y23_N6
\Mod0|auto_generated|divider|divider|StageOut[143]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\);

-- Location: LCCOMB_X14_Y25_N10
\Mod0|auto_generated|divider|divider|StageOut[142]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\ = (\U1_sumador|saldo_reg\(5) & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\);

-- Location: LCCOMB_X14_Y25_N22
\Mod0|auto_generated|divider|divider|StageOut[127]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~179_combout\ = (\U1_sumador|saldo_reg\(5) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~179_combout\);

-- Location: LCCOMB_X14_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[127]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~178_combout\ = (\U1_sumador|saldo_reg\(5) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~178_combout\);

-- Location: LCCOMB_X14_Y25_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[127]~179_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[127]~178_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[127]~179_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[127]~178_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\);

-- Location: LCCOMB_X14_Y25_N20
\Mod0|auto_generated|divider|divider|StageOut[142]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\);

-- Location: LCCOMB_X15_Y25_N10
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[142]~177_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[142]~180_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\);

-- Location: LCCOMB_X15_Y25_N12
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[143]~175_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[143]~176_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\);

-- Location: LCCOMB_X15_Y25_N14
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[144]~174_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\);

-- Location: LCCOMB_X15_Y25_N16
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[145]~173_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\);

-- Location: LCCOMB_X15_Y25_N18
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[146]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\);

-- Location: LCCOMB_X15_Y25_N20
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[147]~171_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\);

-- Location: LCCOMB_X15_Y25_N22
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & (((\Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[148]~170_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\);

-- Location: LCCOMB_X15_Y25_N24
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[149]~169_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\);

-- Location: LCCOMB_X15_Y25_N26
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[150]~168_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~17\);

-- Location: LCCOMB_X15_Y25_N28
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\);

-- Location: LCCOMB_X14_Y25_N26
\Mod0|auto_generated|divider|divider|StageOut[165]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[150]~254_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\);

-- Location: LCCOMB_X15_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[165]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\);

-- Location: LCCOMB_X15_Y25_N30
\Mod0|auto_generated|divider|divider|StageOut[164]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\);

-- Location: LCCOMB_X14_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[164]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[149]~255_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\);

-- Location: LCCOMB_X16_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[163]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[148]~256_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\);

-- Location: LCCOMB_X16_Y26_N18
\Mod0|auto_generated|divider|divider|StageOut[163]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\);

-- Location: LCCOMB_X15_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[162]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\);

-- Location: LCCOMB_X14_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[162]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[147]~257_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\);

-- Location: LCCOMB_X16_Y25_N8
\Mod0|auto_generated|divider|divider|StageOut[161]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\);

-- Location: LCCOMB_X16_Y25_N20
\Mod0|auto_generated|divider|divider|StageOut[161]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[146]~258_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\);

-- Location: LCCOMB_X16_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[160]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\);

-- Location: LCCOMB_X15_Y25_N8
\Mod0|auto_generated|divider|divider|StageOut[160]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[145]~259_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\);

-- Location: LCCOMB_X15_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[159]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\);

-- Location: LCCOMB_X14_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[159]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[144]~260_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\);

-- Location: LCCOMB_X16_Y23_N28
\Mod0|auto_generated|divider|divider|StageOut[158]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\);

-- Location: LCCOMB_X16_Y23_N12
\Mod0|auto_generated|divider|divider|StageOut[158]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\U1_sumador|saldo_reg\(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	datab => \U1_sumador|saldo_reg\(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\);

-- Location: LCCOMB_X15_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[157]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\);

-- Location: LCCOMB_X14_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[157]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\U1_sumador|saldo_reg\(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	datab => \U1_sumador|saldo_reg\(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\);

-- Location: LCCOMB_X17_Y25_N20
\Mod0|auto_generated|divider|divider|StageOut[126]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~192_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~192_combout\);

-- Location: LCCOMB_X17_Y25_N6
\Mod0|auto_generated|divider|divider|StageOut[126]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~191_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~191_combout\);

-- Location: LCCOMB_X17_Y25_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[126]~192_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[126]~191_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~192_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[126]~191_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X17_Y25_N12
\Mod0|auto_generated|divider|divider|StageOut[156]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\U1_sumador|saldo_reg\(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \U1_sumador|saldo_reg\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\);

-- Location: LCCOMB_X17_Y25_N26
\Mod0|auto_generated|divider|divider|StageOut[141]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[141]~193_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[141]~193_combout\);

-- Location: LCCOMB_X17_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[141]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[141]~190_combout\ = (\U1_sumador|saldo_reg\(4) & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[141]~190_combout\);

-- Location: LCCOMB_X17_Y25_N22
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[141]~193_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[141]~190_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[141]~193_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[141]~190_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\);

-- Location: LCCOMB_X16_Y25_N22
\Mod0|auto_generated|divider|divider|StageOut[156]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\);

-- Location: LCCOMB_X15_Y26_N0
\Mod0|auto_generated|divider|divider|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\)))
-- \Mod0|auto_generated|divider|divider|op_3~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[156]~194_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X15_Y26_N2
\Mod0|auto_generated|divider|divider|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\Mod0|auto_generated|divider|divider|op_3~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\)))
-- \Mod0|auto_generated|divider|divider|op_3~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\ & !\Mod0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[157]~189_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X15_Y26_N4
\Mod0|auto_generated|divider|divider|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~4_combout\ = (\Mod0|auto_generated|divider|divider|op_3~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_3~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_3~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[158]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~3\,
	combout => \Mod0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X15_Y26_N6
\Mod0|auto_generated|divider|divider|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\ & (((!\Mod0|auto_generated|divider|divider|op_3~5\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\ & (!\Mod0|auto_generated|divider|divider|op_3~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\ & ((\Mod0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\)) # (!\Mod0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[159]~187_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~5\,
	combout => \Mod0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X15_Y26_N8
\Mod0|auto_generated|divider|divider|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~8_combout\ = (\Mod0|auto_generated|divider|divider|op_3~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_3~9\ = CARRY((!\Mod0|auto_generated|divider|divider|op_3~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[160]~186_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~7\,
	combout => \Mod0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X15_Y26_N10
\Mod0|auto_generated|divider|divider|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\ & (((!\Mod0|auto_generated|divider|divider|op_3~9\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\ & (!\Mod0|auto_generated|divider|divider|op_3~9\)) # (!\Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\ & ((\Mod0|auto_generated|divider|divider|op_3~9\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_3~11\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\)) # (!\Mod0|auto_generated|divider|divider|op_3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[161]~185_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~9\,
	combout => \Mod0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X15_Y26_N12
\Mod0|auto_generated|divider|divider|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~12_combout\ = (\Mod0|auto_generated|divider|divider|op_3~11\ & (((\Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_3~13\ = CARRY((!\Mod0|auto_generated|divider|divider|op_3~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[162]~184_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~11\,
	combout => \Mod0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X15_Y26_N14
\Mod0|auto_generated|divider|divider|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~14_combout\ = (\Mod0|auto_generated|divider|divider|op_3~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\)))
-- \Mod0|auto_generated|divider|divider|op_3~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\ & !\Mod0|auto_generated|divider|divider|op_3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[163]~183_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~13\,
	combout => \Mod0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X15_Y26_N16
\Mod0|auto_generated|divider|divider|op_3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~16_combout\ = (\Mod0|auto_generated|divider|divider|op_3~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|op_3~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\) # (!\Mod0|auto_generated|divider|divider|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[164]~182_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~15\,
	combout => \Mod0|auto_generated|divider|divider|op_3~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~17\);

-- Location: LCCOMB_X15_Y26_N18
\Mod0|auto_generated|divider|divider|op_3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~18_combout\ = (\Mod0|auto_generated|divider|divider|op_3~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\)))
-- \Mod0|auto_generated|divider|divider|op_3~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\ & !\Mod0|auto_generated|divider|divider|op_3~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[165]~181_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_3~17\,
	combout => \Mod0|auto_generated|divider|divider|op_3~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~19\);

-- Location: LCCOMB_X15_Y26_N20
\Mod0|auto_generated|divider|divider|op_3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~20_combout\ = \Mod0|auto_generated|divider|divider|op_3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_3~19\,
	combout => \Mod0|auto_generated|divider|divider|op_3~20_combout\);

-- Location: LCCOMB_X16_Y25_N14
\Mod0|auto_generated|divider|divider|StageOut[180]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[165]~226_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\);

-- Location: LCCOMB_X17_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[180]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\ = (\Mod0|auto_generated|divider|divider|op_3~18_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\);

-- Location: LCCOMB_X16_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[179]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[164]~227_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\);

-- Location: LCCOMB_X16_Y25_N16
\Mod0|auto_generated|divider|divider|StageOut[179]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\ = (\Mod0|auto_generated|divider|divider|op_3~16_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\);

-- Location: LCCOMB_X16_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[178]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[163]~228_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\);

-- Location: LCCOMB_X16_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[178]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\ = (\Mod0|auto_generated|divider|divider|op_3~14_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\);

-- Location: LCCOMB_X17_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[177]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\ = (\Mod0|auto_generated|divider|divider|op_3~12_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\);

-- Location: LCCOMB_X15_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[177]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[162]~229_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\);

-- Location: LCCOMB_X16_Y25_N10
\Mod0|auto_generated|divider|divider|StageOut[176]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\ = (\Mod0|auto_generated|divider|divider|op_3~10_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\);

-- Location: LCCOMB_X16_Y25_N2
\Mod0|auto_generated|divider|divider|StageOut[176]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[161]~230_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\);

-- Location: LCCOMB_X16_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[175]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[160]~231_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\);

-- Location: LCCOMB_X16_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[175]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\ = (\Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\);

-- Location: LCCOMB_X15_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[174]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[159]~232_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\);

-- Location: LCCOMB_X17_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[174]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\ = (\Mod0|auto_generated|divider|divider|op_3~6_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\);

-- Location: LCCOMB_X16_Y23_N10
\Mod0|auto_generated|divider|divider|StageOut[173]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\ = (\Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\);

-- Location: LCCOMB_X16_Y23_N22
\Mod0|auto_generated|divider|divider|StageOut[173]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[158]~261_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\);

-- Location: LCCOMB_X14_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[172]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[157]~262_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\);

-- Location: LCCOMB_X19_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[172]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\ = (\Mod0|auto_generated|divider|divider|op_3~2_combout\ & !\Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\);

-- Location: LCCOMB_X21_Y27_N8
\Mod0|auto_generated|divider|divider|StageOut[171]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\ = (!\Mod0|auto_generated|divider|divider|op_3~20_combout\ & \Mod0|auto_generated|divider|divider|op_3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\);

-- Location: LCCOMB_X17_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[171]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[156]~263_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\);

-- Location: LCCOMB_X16_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[140]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[140]~206_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \U1_sumador|saldo_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[140]~206_combout\);

-- Location: LCCOMB_X16_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[140]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[140]~207_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \U1_sumador|saldo_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[140]~207_combout\);

-- Location: LCCOMB_X16_Y23_N8
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[140]~206_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[140]~207_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[140]~206_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[140]~207_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\);

-- Location: LCCOMB_X16_Y23_N2
\Mod0|auto_generated|divider|divider|StageOut[170]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\ = (\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & ((\U1_sumador|saldo_reg\(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	datad => \U1_sumador|saldo_reg\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\);

-- Location: LCCOMB_X16_Y23_N26
\Mod0|auto_generated|divider|divider|StageOut[155]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[155]~208_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[155]~208_combout\);

-- Location: LCCOMB_X16_Y23_N24
\Mod0|auto_generated|divider|divider|StageOut[155]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[155]~205_combout\ = (\U1_sumador|saldo_reg\(3) & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[155]~205_combout\);

-- Location: LCCOMB_X16_Y23_N18
\Mod0|auto_generated|divider|divider|op_3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~22_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[155]~208_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[155]~205_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[155]~208_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[155]~205_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_3~22_combout\);

-- Location: LCCOMB_X16_Y23_N16
\Mod0|auto_generated|divider|divider|StageOut[170]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\ = (!\Mod0|auto_generated|divider|divider|op_3~20_combout\ & \Mod0|auto_generated|divider|divider|op_3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\);

-- Location: LCCOMB_X17_Y26_N4
\Mod0|auto_generated|divider|divider|op_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\)))
-- \Mod0|auto_generated|divider|divider|op_4~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[170]~209_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X17_Y26_N6
\Mod0|auto_generated|divider|divider|op_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~2_combout\ = (\Mod0|auto_generated|divider|divider|op_4~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\)))
-- \Mod0|auto_generated|divider|divider|op_4~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\ & !\Mod0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[171]~204_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~1\,
	combout => \Mod0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X17_Y26_N8
\Mod0|auto_generated|divider|divider|op_4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~4_combout\ = (\Mod0|auto_generated|divider|divider|op_4~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_4~5\ = CARRY((!\Mod0|auto_generated|divider|divider|op_4~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[172]~203_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~3\,
	combout => \Mod0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X17_Y26_N10
\Mod0|auto_generated|divider|divider|op_4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\ & (((!\Mod0|auto_generated|divider|divider|op_4~5\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\ & (!\Mod0|auto_generated|divider|divider|op_4~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\ & ((\Mod0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\)) # (!\Mod0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[173]~202_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~5\,
	combout => \Mod0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X17_Y26_N12
\Mod0|auto_generated|divider|divider|op_4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~8_combout\ = (\Mod0|auto_generated|divider|divider|op_4~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_4~9\ = CARRY((!\Mod0|auto_generated|divider|divider|op_4~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[174]~201_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~7\,
	combout => \Mod0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X17_Y26_N14
\Mod0|auto_generated|divider|divider|op_4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\ & (((!\Mod0|auto_generated|divider|divider|op_4~9\)))) # (!\Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\ & (!\Mod0|auto_generated|divider|divider|op_4~9\)) # (!\Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\ & ((\Mod0|auto_generated|divider|divider|op_4~9\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|op_4~11\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\)) # (!\Mod0|auto_generated|divider|divider|op_4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[175]~200_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~9\,
	combout => \Mod0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X17_Y26_N16
\Mod0|auto_generated|divider|divider|op_4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~12_combout\ = (\Mod0|auto_generated|divider|divider|op_4~11\ & (((\Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\)))))
-- \Mod0|auto_generated|divider|divider|op_4~13\ = CARRY((!\Mod0|auto_generated|divider|divider|op_4~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[176]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~11\,
	combout => \Mod0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X17_Y26_N18
\Mod0|auto_generated|divider|divider|op_4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~14_combout\ = (\Mod0|auto_generated|divider|divider|op_4~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\)))
-- \Mod0|auto_generated|divider|divider|op_4~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\ & !\Mod0|auto_generated|divider|divider|op_4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[177]~198_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~13\,
	combout => \Mod0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X17_Y26_N20
\Mod0|auto_generated|divider|divider|op_4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~16_combout\ = (\Mod0|auto_generated|divider|divider|op_4~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|op_4~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\) # (!\Mod0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[178]~197_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~15\,
	combout => \Mod0|auto_generated|divider|divider|op_4~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~17\);

-- Location: LCCOMB_X17_Y26_N22
\Mod0|auto_generated|divider|divider|op_4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~18_combout\ = (\Mod0|auto_generated|divider|divider|op_4~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\)))
-- \Mod0|auto_generated|divider|divider|op_4~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\ & !\Mod0|auto_generated|divider|divider|op_4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[179]~196_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~17\,
	combout => \Mod0|auto_generated|divider|divider|op_4~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~19\);

-- Location: LCCOMB_X17_Y26_N24
\Mod0|auto_generated|divider|divider|op_4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~20_combout\ = (\Mod0|auto_generated|divider|divider|op_4~19\ & ((((\Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\))))) # 
-- (!\Mod0|auto_generated|divider|divider|op_4~19\ & ((\Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|op_4~21\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\) # (!\Mod0|auto_generated|divider|divider|op_4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[180]~195_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|op_4~19\,
	combout => \Mod0|auto_generated|divider|divider|op_4~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~21\);

-- Location: LCCOMB_X17_Y26_N26
\Mod0|auto_generated|divider|divider|op_4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~22_combout\ = !\Mod0|auto_generated|divider|divider|op_4~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_4~21\,
	combout => \Mod0|auto_generated|divider|divider|op_4~22_combout\);

-- Location: LCCOMB_X17_Y28_N12
\Mod0|auto_generated|divider|divider|StageOut[195]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\);

-- Location: LCCOMB_X17_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[195]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~18_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[180]~233_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\);

-- Location: LCCOMB_X16_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[194]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~16_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[179]~234_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\);

-- Location: LCCOMB_X17_Y28_N14
\Mod0|auto_generated|divider|divider|StageOut[194]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\);

-- Location: LCCOMB_X16_Y26_N26
\Mod0|auto_generated|divider|divider|StageOut[193]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~14_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[178]~235_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\);

-- Location: LCCOMB_X16_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[193]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\ = (\Mod0|auto_generated|divider|divider|op_4~16_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\);

-- Location: LCCOMB_X15_Y27_N26
\Mod0|auto_generated|divider|divider|StageOut[192]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~12_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[177]~236_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\);

-- Location: LCCOMB_X19_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[192]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\);

-- Location: LCCOMB_X16_Y25_N18
\Mod0|auto_generated|divider|divider|StageOut[191]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~10_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[176]~237_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\);

-- Location: LCCOMB_X17_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[191]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\);

-- Location: LCCOMB_X17_Y28_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[191]~214_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X17_Y28_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[192]~213_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X17_Y28_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[193]~212_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X17_Y28_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[194]~211_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X17_Y28_N26
\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[195]~210_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X17_Y28_N28
\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X17_Y28_N2
\Div1|auto_generated|divider|divider|StageOut[54]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~96_combout\);

-- Location: LCCOMB_X17_Y28_N0
\Div1|auto_generated|divider|divider|StageOut[54]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[54]~144_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~20_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[195]~243_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[54]~144_combout\);

-- Location: LCCOMB_X17_Y28_N6
\Div1|auto_generated|divider|divider|StageOut[53]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~145_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[194]~244_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~145_combout\);

-- Location: LCCOMB_X16_Y26_N12
\Div1|auto_generated|divider|divider|StageOut[53]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[53]~97_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[53]~97_combout\);

-- Location: LCCOMB_X16_Y26_N8
\Div1|auto_generated|divider|divider|StageOut[52]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~146_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~16_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[193]~245_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~146_combout\);

-- Location: LCCOMB_X16_Y28_N24
\Div1|auto_generated|divider|divider|StageOut[52]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[52]~98_combout\);

-- Location: LCCOMB_X17_Y28_N4
\Div1|auto_generated|divider|divider|StageOut[51]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~99_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~99_combout\);

-- Location: LCCOMB_X15_Y27_N16
\Div1|auto_generated|divider|divider|StageOut[51]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[51]~147_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~14_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[192]~246_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[51]~147_combout\);

-- Location: LCCOMB_X17_Y28_N30
\Div1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X17_Y28_N16
\Div1|auto_generated|divider|divider|StageOut[50]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[50]~148_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~12_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[191]~247_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[50]~148_combout\);

-- Location: LCCOMB_X16_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[190]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[175]~238_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\);

-- Location: LCCOMB_X16_Y26_N4
\Div1|auto_generated|divider|divider|StageOut[49]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~149_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~10_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~149_combout\);

-- Location: LCCOMB_X16_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[190]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[190]~215_combout\ = (\Mod0|auto_generated|divider|divider|op_4~10_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[190]~215_combout\);

-- Location: LCCOMB_X16_Y26_N0
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[190]~215_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[190]~248_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[190]~215_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\);

-- Location: LCCOMB_X16_Y28_N2
\Div1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[49]~101_combout\);

-- Location: LCCOMB_X16_Y28_N8
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[49]~149_combout\) # (\Div1|auto_generated|divider|divider|StageOut[49]~101_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[49]~149_combout\) # (\Div1|auto_generated|divider|divider|StageOut[49]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[49]~149_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X16_Y28_N10
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[50]~148_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[50]~100_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[50]~148_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[50]~100_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[50]~148_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[50]~148_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X16_Y28_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[51]~99_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[51]~147_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[51]~99_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[51]~147_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[51]~99_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[51]~147_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[51]~147_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X16_Y28_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[52]~146_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[52]~146_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~98_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[52]~98_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[52]~146_combout\ & !\Div1|auto_generated|divider|divider|StageOut[52]~98_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[52]~146_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X16_Y28_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[53]~145_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~97_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[53]~145_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~97_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~145_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[53]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~145_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X16_Y28_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[54]~96_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[54]~144_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[54]~144_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y28_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X16_Y28_N6
\Div1|auto_generated|divider|divider|StageOut[61]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~151_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[52]~146_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[52]~146_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~151_combout\);

-- Location: LCCOMB_X17_Y28_N10
\Div1|auto_generated|divider|divider|StageOut[62]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~150_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[53]~145_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[53]~145_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~150_combout\);

-- Location: LCCOMB_X16_Y28_N0
\Div1|auto_generated|divider|divider|StageOut[62]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[62]~102_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[62]~102_combout\);

-- Location: LCCOMB_X15_Y27_N6
\Div1|auto_generated|divider|divider|StageOut[61]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[61]~103_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[61]~103_combout\);

-- Location: LCCOMB_X15_Y27_N12
\Div1|auto_generated|divider|divider|StageOut[60]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~104_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~104_combout\);

-- Location: LCCOMB_X16_Y27_N28
\Div1|auto_generated|divider|divider|StageOut[60]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[60]~152_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[51]~147_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[51]~147_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[60]~152_combout\);

-- Location: LCCOMB_X16_Y28_N28
\Div1|auto_generated|divider|divider|StageOut[59]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[59]~153_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[50]~148_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[50]~148_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[59]~153_combout\);

-- Location: LCCOMB_X16_Y27_N4
\Div1|auto_generated|divider|divider|StageOut[59]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[59]~105_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[59]~105_combout\);

-- Location: LCCOMB_X16_Y28_N30
\Div1|auto_generated|divider|divider|StageOut[58]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~154_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[49]~149_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[49]~149_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~154_combout\);

-- Location: LCCOMB_X16_Y28_N26
\Div1|auto_generated|divider|divider|StageOut[58]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[58]~106_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[58]~106_combout\);

-- Location: LCCOMB_X15_Y27_N2
\Mod0|auto_generated|divider|divider|StageOut[189]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~6_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[174]~239_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\);

-- Location: LCCOMB_X15_Y27_N0
\Div1|auto_generated|divider|divider|StageOut[48]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~155_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~8_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~155_combout\);

-- Location: LCCOMB_X15_Y27_N30
\Mod0|auto_generated|divider|divider|StageOut[189]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[189]~216_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[189]~216_combout\);

-- Location: LCCOMB_X15_Y27_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[189]~216_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[189]~216_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[189]~249_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X15_Y27_N10
\Div1|auto_generated|divider|divider|StageOut[57]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[48]~155_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[48]~155_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\);

-- Location: LCCOMB_X15_Y27_N8
\Div1|auto_generated|divider|divider|StageOut[48]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[48]~107_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[48]~107_combout\);

-- Location: LCCOMB_X15_Y27_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[48]~107_combout\) # (\Div1|auto_generated|divider|divider|StageOut[48]~155_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[48]~107_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[48]~155_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X15_Y27_N22
\Div1|auto_generated|divider|divider|StageOut[57]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[57]~108_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[57]~108_combout\);

-- Location: LCCOMB_X16_Y27_N10
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # (\Div1|auto_generated|divider|divider|StageOut[57]~108_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # (\Div1|auto_generated|divider|divider|StageOut[57]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[57]~108_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X16_Y27_N12
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[58]~154_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[58]~106_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[58]~154_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[58]~106_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[58]~154_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[58]~106_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[58]~154_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[58]~106_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X16_Y27_N14
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[59]~153_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[59]~105_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[59]~153_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[59]~105_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[59]~153_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[59]~105_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[59]~153_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[59]~105_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X16_Y27_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[60]~104_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[60]~104_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[60]~152_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[60]~152_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[60]~104_combout\ & !\Div1|auto_generated|divider|divider|StageOut[60]~152_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[60]~104_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[60]~152_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X16_Y27_N18
\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[61]~151_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~103_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[61]~151_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~103_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~151_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[61]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~151_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[61]~103_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X16_Y27_N20
\Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[62]~150_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[62]~102_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[62]~150_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[62]~102_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\);

-- Location: LCCOMB_X16_Y27_N22
\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\);

-- Location: LCCOMB_X16_Y28_N4
\Div1|auto_generated|divider|divider|StageOut[70]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~157_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[61]~151_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[61]~151_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~157_combout\);

-- Location: LCCOMB_X17_Y27_N20
\Div1|auto_generated|divider|divider|StageOut[70]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~109_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~109_combout\);

-- Location: LCCOMB_X17_Y27_N30
\Div1|auto_generated|divider|divider|StageOut[69]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~110_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~110_combout\);

-- Location: LCCOMB_X15_Y27_N4
\Div1|auto_generated|divider|divider|StageOut[69]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~158_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[60]~152_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[60]~152_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~158_combout\);

-- Location: LCCOMB_X16_Y27_N0
\Div1|auto_generated|divider|divider|StageOut[68]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~159_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[59]~153_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[59]~153_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~159_combout\);

-- Location: LCCOMB_X16_Y27_N30
\Div1|auto_generated|divider|divider|StageOut[68]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~111_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~111_combout\);

-- Location: LCCOMB_X16_Y28_N22
\Div1|auto_generated|divider|divider|StageOut[67]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~160_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[58]~154_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[58]~154_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~160_combout\);

-- Location: LCCOMB_X16_Y27_N24
\Div1|auto_generated|divider|divider|StageOut[67]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~112_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~112_combout\);

-- Location: LCCOMB_X16_Y27_N2
\Div1|auto_generated|divider|divider|StageOut[66]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~161_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[57]~156_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[57]~156_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~161_combout\);

-- Location: LCCOMB_X16_Y27_N6
\Div1|auto_generated|divider|divider|StageOut[66]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~113_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~113_combout\);

-- Location: LCCOMB_X16_Y23_N4
\Mod0|auto_generated|divider|divider|StageOut[188]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~4_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[173]~240_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\);

-- Location: LCCOMB_X15_Y27_N18
\Div1|auto_generated|divider|divider|StageOut[56]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~162_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~162_combout\);

-- Location: LCCOMB_X15_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[188]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[188]~217_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[188]~217_combout\);

-- Location: LCCOMB_X15_Y27_N28
\Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[188]~217_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[188]~250_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[188]~217_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X17_Y27_N28
\Div1|auto_generated|divider|divider|StageOut[56]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[56]~114_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[56]~114_combout\);

-- Location: LCCOMB_X17_Y27_N22
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[56]~162_combout\) # (\Div1|auto_generated|divider|divider|StageOut[56]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[56]~162_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[56]~114_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\);

-- Location: LCCOMB_X17_Y27_N26
\Div1|auto_generated|divider|divider|StageOut[65]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~115_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~115_combout\);

-- Location: LCCOMB_X17_Y27_N16
\Div1|auto_generated|divider|divider|StageOut[65]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~163_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[56]~162_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[56]~162_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~163_combout\);

-- Location: LCCOMB_X17_Y27_N0
\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[65]~115_combout\) # (\Div1|auto_generated|divider|divider|StageOut[65]~163_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[65]~115_combout\) # (\Div1|auto_generated|divider|divider|StageOut[65]~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[65]~115_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[65]~163_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X17_Y27_N2
\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[66]~161_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[66]~113_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[66]~161_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[66]~113_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[66]~161_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[66]~113_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[66]~161_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[66]~113_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X17_Y27_N4
\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[67]~160_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[67]~112_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[67]~160_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[67]~112_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[67]~160_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[67]~112_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[67]~160_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[67]~112_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X17_Y27_N6
\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[68]~159_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[68]~159_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~111_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[68]~111_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[68]~159_combout\ & !\Div1|auto_generated|divider|divider|StageOut[68]~111_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[68]~159_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[68]~111_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X17_Y27_N8
\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[69]~110_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~158_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[69]~110_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~158_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~110_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[69]~110_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~158_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X17_Y27_N10
\Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[70]~157_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[70]~109_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[70]~157_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[70]~109_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X17_Y27_N12
\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\);

-- Location: LCCOMB_X16_Y27_N8
\Div1|auto_generated|divider|divider|StageOut[77]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[77]~165_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~159_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[68]~159_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[77]~165_combout\);

-- Location: LCCOMB_X17_Y27_N18
\Div1|auto_generated|divider|divider|StageOut[78]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~164_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~158_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~158_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~164_combout\);

-- Location: LCCOMB_X19_Y26_N22
\Div1|auto_generated|divider|divider|StageOut[78]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~116_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~116_combout\);

-- Location: LCCOMB_X19_Y27_N4
\Div1|auto_generated|divider|divider|StageOut[77]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[77]~117_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[77]~117_combout\);

-- Location: LCCOMB_X17_Y27_N24
\Div1|auto_generated|divider|divider|StageOut[76]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~166_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[67]~160_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[67]~160_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~166_combout\);

-- Location: LCCOMB_X19_Y27_N2
\Div1|auto_generated|divider|divider|StageOut[76]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~118_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~118_combout\);

-- Location: LCCOMB_X16_Y27_N26
\Div1|auto_generated|divider|divider|StageOut[75]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~167_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[66]~161_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[66]~161_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~167_combout\);

-- Location: LCCOMB_X19_Y27_N28
\Div1|auto_generated|divider|divider|StageOut[75]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~119_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~119_combout\);

-- Location: LCCOMB_X17_Y27_N14
\Div1|auto_generated|divider|divider|StageOut[74]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~168_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[65]~163_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[65]~163_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~168_combout\);

-- Location: LCCOMB_X19_Y27_N24
\Div1|auto_generated|divider|divider|StageOut[74]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~120_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~120_combout\);

-- Location: LCCOMB_X19_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[187]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~2_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[172]~241_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\);

-- Location: LCCOMB_X19_Y26_N10
\Div1|auto_generated|divider|divider|StageOut[64]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~169_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~169_combout\);

-- Location: LCCOMB_X19_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[187]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[187]~218_combout\ = (\Mod0|auto_generated|divider|divider|op_4~4_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[187]~218_combout\);

-- Location: LCCOMB_X19_Y26_N12
\Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[187]~218_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[187]~251_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[187]~218_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\);

-- Location: LCCOMB_X19_Y26_N18
\Div1|auto_generated|divider|divider|StageOut[64]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~121_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~121_combout\);

-- Location: LCCOMB_X19_Y26_N2
\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[64]~169_combout\) # (\Div1|auto_generated|divider|divider|StageOut[64]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[64]~169_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[64]~121_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\);

-- Location: LCCOMB_X19_Y27_N26
\Div1|auto_generated|divider|divider|StageOut[73]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~122_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~122_combout\);

-- Location: LCCOMB_X19_Y26_N0
\Div1|auto_generated|divider|divider|StageOut[73]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[64]~169_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[64]~169_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\);

-- Location: LCCOMB_X19_Y27_N6
\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[73]~122_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X19_Y27_N8
\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[74]~168_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[74]~120_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[74]~168_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[74]~120_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[74]~168_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[74]~120_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[74]~168_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[74]~120_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X19_Y27_N10
\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[75]~167_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[75]~119_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[75]~167_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[75]~119_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[75]~167_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[75]~119_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[75]~167_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[75]~119_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X19_Y27_N12
\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[76]~166_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[76]~166_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[76]~118_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[76]~118_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[76]~166_combout\ & !\Div1|auto_generated|divider|divider|StageOut[76]~118_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[76]~166_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[76]~118_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X19_Y27_N14
\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[77]~165_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~117_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[77]~165_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~117_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[77]~165_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[77]~165_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[77]~117_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X19_Y27_N16
\Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[78]~164_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[78]~116_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[78]~164_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[78]~116_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\);

-- Location: LCCOMB_X19_Y27_N18
\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\);

-- Location: LCCOMB_X19_Y27_N0
\Div1|auto_generated|divider|divider|StageOut[86]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~171_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[77]~165_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[77]~165_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~171_combout\);

-- Location: LCCOMB_X20_Y27_N28
\Div1|auto_generated|divider|divider|StageOut[86]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~123_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~123_combout\);

-- Location: LCCOMB_X20_Y27_N10
\Div1|auto_generated|divider|divider|StageOut[85]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~124_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~124_combout\);

-- Location: LCCOMB_X19_Y27_N30
\Div1|auto_generated|divider|divider|StageOut[85]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~172_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[76]~166_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[76]~166_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~172_combout\);

-- Location: LCCOMB_X20_Y27_N12
\Div1|auto_generated|divider|divider|StageOut[84]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~125_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~125_combout\);

-- Location: LCCOMB_X19_Y27_N20
\Div1|auto_generated|divider|divider|StageOut[84]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~173_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[75]~167_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[75]~167_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~173_combout\);

-- Location: LCCOMB_X21_Y27_N2
\Div1|auto_generated|divider|divider|StageOut[83]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[83]~126_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[83]~126_combout\);

-- Location: LCCOMB_X21_Y27_N0
\Div1|auto_generated|divider|divider|StageOut[83]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[83]~174_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[74]~168_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[74]~168_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[83]~174_combout\);

-- Location: LCCOMB_X19_Y27_N22
\Div1|auto_generated|divider|divider|StageOut[82]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~175_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[73]~170_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[73]~170_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~175_combout\);

-- Location: LCCOMB_X20_Y27_N2
\Div1|auto_generated|divider|divider|StageOut[82]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~127_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~127_combout\);

-- Location: LCCOMB_X21_Y27_N18
\Mod0|auto_generated|divider|divider|StageOut[186]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\) # ((!\Mod0|auto_generated|divider|divider|op_3~20_combout\ & 
-- \Mod0|auto_generated|divider|divider|op_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[171]~242_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\);

-- Location: LCCOMB_X21_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[186]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[186]~219_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[186]~219_combout\);

-- Location: LCCOMB_X21_Y27_N12
\Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[186]~219_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[186]~219_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\);

-- Location: LCCOMB_X21_Y27_N16
\Div1|auto_generated|divider|divider|StageOut[72]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~176_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|op_4~2_combout\ & !\Mod0|auto_generated|divider|divider|op_4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[186]~252_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~176_combout\);

-- Location: LCCOMB_X21_Y27_N6
\Div1|auto_generated|divider|divider|StageOut[81]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~177_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[72]~176_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[72]~176_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~177_combout\);

-- Location: LCCOMB_X21_Y27_N10
\Div1|auto_generated|divider|divider|StageOut[72]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~128_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~128_combout\);

-- Location: LCCOMB_X21_Y27_N22
\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[72]~176_combout\) # (\Div1|auto_generated|divider|divider|StageOut[72]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|StageOut[72]~176_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[72]~128_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\);

-- Location: LCCOMB_X20_Y27_N4
\Div1|auto_generated|divider|divider|StageOut[81]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~129_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~129_combout\);

-- Location: LCCOMB_X20_Y27_N14
\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[81]~177_combout\) # (\Div1|auto_generated|divider|divider|StageOut[81]~129_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[81]~177_combout\) # (\Div1|auto_generated|divider|divider|StageOut[81]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[81]~177_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[81]~129_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X20_Y27_N16
\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[82]~175_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[82]~127_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[82]~175_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[82]~127_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[82]~175_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[82]~127_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[82]~175_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[82]~127_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X20_Y27_N18
\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[83]~126_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[83]~174_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[83]~126_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[83]~174_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[83]~126_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[83]~174_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[83]~126_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[83]~174_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X20_Y27_N20
\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[84]~125_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[84]~125_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[84]~173_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[84]~173_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[84]~125_combout\ & !\Div1|auto_generated|divider|divider|StageOut[84]~173_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[84]~125_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[84]~173_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X20_Y27_N22
\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[85]~124_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[85]~172_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[85]~124_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[85]~172_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[85]~124_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[85]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[85]~124_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[85]~172_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X20_Y27_N24
\Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[86]~171_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[86]~123_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[86]~171_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[86]~123_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\);

-- Location: LCCOMB_X20_Y27_N26
\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\);

-- Location: LCCOMB_X20_Y27_N0
\Div1|auto_generated|divider|divider|StageOut[94]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~178_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[85]~172_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[85]~172_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~178_combout\);

-- Location: LCCOMB_X21_Y27_N20
\Div1|auto_generated|divider|divider|StageOut[94]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~130_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~130_combout\);

-- Location: LCCOMB_X21_Y25_N24
\Div1|auto_generated|divider|divider|StageOut[93]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~131_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~131_combout\);

-- Location: LCCOMB_X20_Y27_N8
\Div1|auto_generated|divider|divider|StageOut[93]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~179_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[84]~173_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[84]~173_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~179_combout\);

-- Location: LCCOMB_X21_Y27_N28
\Div1|auto_generated|divider|divider|StageOut[92]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~180_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[83]~174_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[83]~174_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~180_combout\);

-- Location: LCCOMB_X21_Y27_N30
\Div1|auto_generated|divider|divider|StageOut[92]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~132_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~132_combout\);

-- Location: LCCOMB_X21_Y25_N26
\Div1|auto_generated|divider|divider|StageOut[91]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~133_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~133_combout\);

-- Location: LCCOMB_X20_Y27_N30
\Div1|auto_generated|divider|divider|StageOut[91]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~181_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[82]~175_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[82]~175_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~181_combout\);

-- Location: LCCOMB_X21_Y27_N26
\Div1|auto_generated|divider|divider|StageOut[90]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~182_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[81]~177_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[81]~177_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~182_combout\);

-- Location: LCCOMB_X20_Y27_N6
\Div1|auto_generated|divider|divider|StageOut[90]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~134_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~134_combout\);

-- Location: LCCOMB_X16_Y23_N14
\Mod0|auto_generated|divider|divider|StageOut[185]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\) # ((\Mod0|auto_generated|divider|divider|op_3~22_combout\ & 
-- !\Mod0|auto_generated|divider|divider|op_3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_3~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[170]~264_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\);

-- Location: LCCOMB_X21_Y28_N12
\Mod0|auto_generated|divider|divider|StageOut[185]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[185]~220_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[185]~220_combout\);

-- Location: LCCOMB_X21_Y28_N4
\Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[185]~220_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[185]~220_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\);

-- Location: LCCOMB_X21_Y28_N28
\Div1|auto_generated|divider|divider|StageOut[80]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[80]~183_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[185]~253_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datac => \Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[80]~183_combout\);

-- Location: LCCOMB_X21_Y28_N18
\Div1|auto_generated|divider|divider|StageOut[89]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[89]~184_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[80]~183_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[80]~183_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[89]~184_combout\);

-- Location: LCCOMB_X21_Y28_N6
\Div1|auto_generated|divider|divider|StageOut[80]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[80]~135_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[0]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[80]~135_combout\);

-- Location: LCCOMB_X21_Y28_N22
\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[80]~183_combout\) # (\Div1|auto_generated|divider|divider|StageOut[80]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|StageOut[80]~183_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[80]~135_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\);

-- Location: LCCOMB_X21_Y28_N0
\Div1|auto_generated|divider|divider|StageOut[89]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[89]~136_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[89]~136_combout\);

-- Location: LCCOMB_X21_Y25_N4
\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[89]~184_combout\) # (\Div1|auto_generated|divider|divider|StageOut[89]~136_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[89]~184_combout\) # (\Div1|auto_generated|divider|divider|StageOut[89]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[89]~184_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[89]~136_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\);

-- Location: LCCOMB_X21_Y25_N6
\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[90]~182_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[90]~134_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[90]~182_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[90]~134_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[90]~182_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[90]~134_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[90]~182_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[90]~134_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\);

-- Location: LCCOMB_X21_Y25_N8
\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[91]~133_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[91]~181_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[91]~133_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[91]~181_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[91]~133_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[91]~181_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[91]~133_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[91]~181_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\);

-- Location: LCCOMB_X21_Y25_N10
\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[92]~180_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[92]~180_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[92]~132_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[92]~132_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[92]~180_combout\ & !\Div1|auto_generated|divider|divider|StageOut[92]~132_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[92]~180_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[92]~132_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\);

-- Location: LCCOMB_X21_Y25_N12
\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[93]~131_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[93]~179_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[93]~131_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[93]~179_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[93]~131_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[93]~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[93]~131_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[93]~179_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\);

-- Location: LCCOMB_X21_Y25_N14
\Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[94]~178_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[94]~130_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[94]~178_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[94]~130_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11_cout\);

-- Location: LCCOMB_X21_Y25_N16
\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\);

-- Location: LCCOMB_X21_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[102]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[102]~185_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[93]~179_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[93]~179_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[102]~185_combout\);

-- Location: LCCOMB_X20_Y25_N4
\Div1|auto_generated|divider|divider|StageOut[102]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[102]~137_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[102]~137_combout\);

-- Location: LCCOMB_X20_Y25_N10
\Div1|auto_generated|divider|divider|StageOut[101]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[101]~138_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[101]~138_combout\);

-- Location: LCCOMB_X21_Y27_N4
\Div1|auto_generated|divider|divider|StageOut[101]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[101]~186_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[92]~180_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[92]~180_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[101]~186_combout\);

-- Location: LCCOMB_X21_Y25_N2
\Div1|auto_generated|divider|divider|StageOut[100]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[100]~139_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[100]~139_combout\);

-- Location: LCCOMB_X21_Y25_N28
\Div1|auto_generated|divider|divider|StageOut[100]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[100]~187_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[91]~181_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[91]~181_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[100]~187_combout\);

-- Location: LCCOMB_X20_Y25_N12
\Div1|auto_generated|divider|divider|StageOut[99]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[99]~140_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[99]~140_combout\);

-- Location: LCCOMB_X21_Y27_N14
\Div1|auto_generated|divider|divider|StageOut[99]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[99]~188_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[90]~182_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[90]~182_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[99]~188_combout\);

-- Location: LCCOMB_X21_Y25_N20
\Div1|auto_generated|divider|divider|StageOut[98]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[98]~141_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[98]~141_combout\);

-- Location: LCCOMB_X21_Y28_N24
\Div1|auto_generated|divider|divider|StageOut[98]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[98]~189_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[89]~184_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[89]~184_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[98]~189_combout\);

-- Location: LCCOMB_X19_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[169]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[169]~221_combout\ = (\U1_sumador|saldo_reg\(2) & \Mod0|auto_generated|divider|divider|op_3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(2),
	datad => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[169]~221_combout\);

-- Location: LCCOMB_X19_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[154]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[154]~223_combout\ = (\U1_sumador|saldo_reg\(2) & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[154]~223_combout\);

-- Location: LCCOMB_X19_Y25_N10
\Mod0|auto_generated|divider|divider|StageOut[154]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[154]~222_combout\ = (\U1_sumador|saldo_reg\(2) & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[154]~222_combout\);

-- Location: LCCOMB_X19_Y25_N20
\Mod0|auto_generated|divider|divider|op_3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~24_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[154]~223_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[154]~222_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[154]~223_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[154]~222_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_3~24_combout\);

-- Location: LCCOMB_X19_Y25_N22
\Mod0|auto_generated|divider|divider|StageOut[169]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[169]~224_combout\ = (!\Mod0|auto_generated|divider|divider|op_3~20_combout\ & \Mod0|auto_generated|divider|divider|op_3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_3~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[169]~224_combout\);

-- Location: LCCOMB_X19_Y25_N18
\Mod0|auto_generated|divider|divider|op_4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~24_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[169]~221_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[169]~224_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[169]~221_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[169]~224_combout\,
	combout => \Mod0|auto_generated|divider|divider|op_4~24_combout\);

-- Location: LCCOMB_X19_Y25_N12
\Mod0|auto_generated|divider|divider|StageOut[184]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[184]~225_combout\ = (!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|op_4~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[184]~225_combout\);

-- Location: LCCOMB_X19_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[184]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\ = (\Mod0|auto_generated|divider|divider|op_4~22_combout\ & ((\Mod0|auto_generated|divider|divider|op_3~20_combout\ & (\U1_sumador|saldo_reg\(2))) # 
-- (!\Mod0|auto_generated|divider|divider|op_3~20_combout\ & ((\Mod0|auto_generated|divider|divider|op_3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datac => \U1_sumador|saldo_reg\(2),
	datad => \Mod0|auto_generated|divider|divider|op_3~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\);

-- Location: LCCOMB_X19_Y25_N28
\Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[184]~225_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[184]~225_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\);

-- Location: LCCOMB_X19_Y25_N30
\Div1|auto_generated|divider|divider|StageOut[88]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~142_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~142_combout\);

-- Location: LCCOMB_X19_Y25_N16
\Div1|auto_generated|divider|divider|StageOut[88]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~190_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|op_4~22_combout\ & \Mod0|auto_generated|divider|divider|op_4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[184]~265_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~190_combout\);

-- Location: LCCOMB_X19_Y25_N26
\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14_combout\ = (\Div1|auto_generated|divider|divider|StageOut[88]~142_combout\) # (\Div1|auto_generated|divider|divider|StageOut[88]~190_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[88]~142_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[88]~190_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14_combout\);

-- Location: LCCOMB_X20_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[97]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[97]~143_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[97]~143_combout\);

-- Location: LCCOMB_X19_Y25_N6
\Div1|auto_generated|divider|divider|StageOut[97]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[97]~191_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[88]~190_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[0]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[88]~190_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[97]~191_combout\);

-- Location: LCCOMB_X20_Y25_N18
\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[97]~143_combout\) # (\Div1|auto_generated|divider|divider|StageOut[97]~191_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[97]~143_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[97]~191_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\);

-- Location: LCCOMB_X20_Y25_N20
\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[98]~141_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[98]~189_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[98]~141_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[98]~189_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\);

-- Location: LCCOMB_X20_Y25_N22
\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[99]~140_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[99]~188_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[99]~140_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[99]~188_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\);

-- Location: LCCOMB_X20_Y25_N24
\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[100]~139_combout\ & !\Div1|auto_generated|divider|divider|StageOut[100]~187_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[100]~139_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[100]~187_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\);

-- Location: LCCOMB_X20_Y25_N26
\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[101]~138_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[101]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[101]~138_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[101]~186_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\);

-- Location: LCCOMB_X20_Y25_N28
\Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[102]~185_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[102]~137_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[102]~185_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[102]~137_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\);

-- Location: LCCOMB_X20_Y25_N30
\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\);

-- Location: LCCOMB_X21_Y28_N2
\U_disp0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux6~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ $ 
-- (((\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & 
-- (((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y28_N20
\U_disp0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux5~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & 
-- ((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\ $ 
-- (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\U_disp0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux4~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y28_N16
\U_disp0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux3~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ $ 
-- (((\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & 
-- (((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y28_N26
\U_disp0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux2~0_combout\ = ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y28_N8
\U_disp0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux1~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (((\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & 
-- (((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y28_N10
\U_disp0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp0|Mux0~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ $ 
-- (((\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\) # (\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~12_combout\,
	combout => \U_disp0|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y24_N4
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ = \U1_sumador|saldo_reg\(7) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ = CARRY(\U1_sumador|saldo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\);

-- Location: LCCOMB_X14_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ = (\U1_sumador|saldo_reg\(8) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ & VCC)) # (!\U1_sumador|saldo_reg\(8) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ = CARRY((!\U1_sumador|saldo_reg\(8) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\);

-- Location: LCCOMB_X14_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ = (\U1_sumador|saldo_reg\(9) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ $ (GND))) # (!\U1_sumador|saldo_reg\(9) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ = CARRY((\U1_sumador|saldo_reg\(9) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\);

-- Location: LCCOMB_X14_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ = (\U1_sumador|saldo_reg\(10) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\)) # (!\U1_sumador|saldo_reg\(10) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (!\U1_sumador|saldo_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\);

-- Location: LCCOMB_X14_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ = (\U1_sumador|saldo_reg\(11) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ $ (GND))) # (!\U1_sumador|saldo_reg\(11) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ = CARRY((\U1_sumador|saldo_reg\(11) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\);

-- Location: LCCOMB_X14_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ = (\U1_sumador|saldo_reg\(12) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\)) # (!\U1_sumador|saldo_reg\(12) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (!\U1_sumador|saldo_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(12),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\);

-- Location: LCCOMB_X14_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ = (\U1_sumador|saldo_reg\(13) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ $ (GND))) # (!\U1_sumador|saldo_reg\(13) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ = CARRY((\U1_sumador|saldo_reg\(13) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(13),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\);

-- Location: LCCOMB_X14_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\);

-- Location: LCCOMB_X16_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[107]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~107_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~107_combout\);

-- Location: LCCOMB_X15_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[107]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~106_combout\ = (\U1_sumador|saldo_reg\(12) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(12),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~106_combout\);

-- Location: LCCOMB_X16_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[106]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~109_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~109_combout\);

-- Location: LCCOMB_X16_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[106]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~108_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(11),
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~108_combout\);

-- Location: LCCOMB_X15_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[105]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~110_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(10),
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~110_combout\);

-- Location: LCCOMB_X15_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[105]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~111_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~111_combout\);

-- Location: LCCOMB_X15_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[104]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~112_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~112_combout\);

-- Location: LCCOMB_X15_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[104]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~113_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~113_combout\);

-- Location: LCCOMB_X17_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[103]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~115_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~115_combout\);

-- Location: LCCOMB_X17_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[103]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~114_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(8),
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~114_combout\);

-- Location: LCCOMB_X17_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[102]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~117_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~117_combout\);

-- Location: LCCOMB_X17_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[102]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~116_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~116_combout\);

-- Location: LCCOMB_X15_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[101]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~118_combout\ = (\U1_sumador|saldo_reg\(6) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~118_combout\);

-- Location: LCCOMB_X16_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[101]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~119_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(6),
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~119_combout\);

-- Location: LCCOMB_X16_Y24_N0
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[101]~118_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~119_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[101]~118_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~118_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~119_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\);

-- Location: LCCOMB_X16_Y24_N2
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[102]~117_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~116_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~117_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[102]~116_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[102]~117_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~116_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~116_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\);

-- Location: LCCOMB_X16_Y24_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[103]~115_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~114_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[103]~115_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~114_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[103]~115_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~115_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[103]~114_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\);

-- Location: LCCOMB_X16_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[104]~112_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[104]~112_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[104]~113_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[104]~113_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[104]~112_combout\ & !\Div0|auto_generated|divider|divider|StageOut[104]~113_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~112_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~113_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\);

-- Location: LCCOMB_X16_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[105]~110_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~111_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[105]~110_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~111_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~110_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~110_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~111_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\);

-- Location: LCCOMB_X16_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[106]~109_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~109_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~108_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~108_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[106]~109_combout\ & !\Div0|auto_generated|divider|divider|StageOut[106]~108_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~109_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~108_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\);

-- Location: LCCOMB_X16_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & (((\Div0|auto_generated|divider|divider|StageOut[107]~107_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~106_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[107]~107_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~106_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~107_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~107_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~106_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\);

-- Location: LCCOMB_X15_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[108]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~105_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~105_combout\);

-- Location: LCCOMB_X15_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[108]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~104_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(13),
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~104_combout\);

-- Location: LCCOMB_X16_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[108]~105_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[108]~104_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~104_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\);

-- Location: LCCOMB_X16_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\);

-- Location: LCCOMB_X16_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[119]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~120_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~120_combout\);

-- Location: LCCOMB_X15_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[119]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~168_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(12)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(12),
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~168_combout\);

-- Location: LCCOMB_X17_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[118]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~121_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~121_combout\);

-- Location: LCCOMB_X16_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[118]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~169_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(11)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	datac => \U1_sumador|saldo_reg\(11),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~169_combout\);

-- Location: LCCOMB_X15_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[117]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~170_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(10))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(10),
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~170_combout\);

-- Location: LCCOMB_X19_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[117]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~122_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~122_combout\);

-- Location: LCCOMB_X19_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[116]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~123_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~123_combout\);

-- Location: LCCOMB_X15_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[116]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~171_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(9)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~171_combout\);

-- Location: LCCOMB_X23_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[115]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~124_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~124_combout\);

-- Location: LCCOMB_X17_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[115]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~172_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\U1_sumador|saldo_reg\(8))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(8),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~172_combout\);

-- Location: LCCOMB_X23_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[114]~125\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~125_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~125_combout\);

-- Location: LCCOMB_X17_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[114]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~173_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\U1_sumador|saldo_reg\(7)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~173_combout\);

-- Location: LCCOMB_X16_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[113]~126\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~126_combout\ = (\U1_sumador|saldo_reg\(6) & \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_sumador|saldo_reg\(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~126_combout\);

-- Location: LCCOMB_X19_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[113]~127\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~127_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~127_combout\);

-- Location: LCCOMB_X17_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[100]~130\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~130_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~130_combout\);

-- Location: LCCOMB_X17_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[100]~129\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~129_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \U1_sumador|saldo_reg\(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~129_combout\);

-- Location: LCCOMB_X17_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[100]~130_combout\) # (\Div0|auto_generated|divider|divider|StageOut[100]~129_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[100]~130_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[100]~129_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\);

-- Location: LCCOMB_X19_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[112]~131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~131_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~131_combout\);

-- Location: LCCOMB_X17_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[112]~128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~128_combout\ = (\U1_sumador|saldo_reg\(5) & \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~128_combout\);

-- Location: LCCOMB_X19_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[112]~131_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~128_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[112]~131_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~131_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~128_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\);

-- Location: LCCOMB_X19_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[113]~126_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~127_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~126_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[113]~127_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~126_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~127_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~126_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~127_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\);

-- Location: LCCOMB_X19_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[114]~125_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~173_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[114]~125_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~173_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~125_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~125_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~173_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\);

-- Location: LCCOMB_X19_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[115]~124_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~124_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~172_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[115]~172_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~124_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~172_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~124_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~172_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\);

-- Location: LCCOMB_X19_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[116]~123_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~171_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[116]~123_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~171_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~123_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~123_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~171_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\);

-- Location: LCCOMB_X19_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[117]~170_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[117]~170_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[117]~122_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[117]~122_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[117]~170_combout\ & !\Div0|auto_generated|divider|divider|StageOut[117]~122_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~170_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~122_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\);

-- Location: LCCOMB_X19_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & (((\Div0|auto_generated|divider|divider|StageOut[118]~121_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~169_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[118]~121_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~169_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~121_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[118]~121_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~169_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\);

-- Location: LCCOMB_X19_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[119]~120_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[119]~168_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~120_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~168_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\);

-- Location: LCCOMB_X19_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\);

-- Location: LCCOMB_X20_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[130]~132\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\);

-- Location: LCCOMB_X17_Y24_N10
\Div0|auto_generated|divider|divider|StageOut[130]~156\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~156_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~169_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~169_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~156_combout\);

-- Location: LCCOMB_X20_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[129]~133\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\);

-- Location: LCCOMB_X19_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[129]~157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~157_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[117]~170_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~170_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~157_combout\);

-- Location: LCCOMB_X20_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[128]~134\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\);

-- Location: LCCOMB_X19_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[128]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~158_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~171_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~171_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~158_combout\);

-- Location: LCCOMB_X23_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[127]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~159_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[115]~172_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~172_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~159_combout\);

-- Location: LCCOMB_X23_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[127]~135\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\);

-- Location: LCCOMB_X23_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[126]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~160_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~173_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[114]~173_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~160_combout\);

-- Location: LCCOMB_X19_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[126]~136\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\);

-- Location: LCCOMB_X15_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[125]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~174_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\U1_sumador|saldo_reg\(6))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(6),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~174_combout\);

-- Location: LCCOMB_X20_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[125]~137\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\);

-- Location: LCCOMB_X22_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[124]~138\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\);

-- Location: LCCOMB_X17_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[124]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~175_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\U1_sumador|saldo_reg\(5)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	datac => \U1_sumador|saldo_reg\(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~175_combout\);

-- Location: LCCOMB_X23_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[99]~140\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~140_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~140_combout\);

-- Location: LCCOMB_X23_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[99]~141\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~141_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \U1_sumador|saldo_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \U1_sumador|saldo_reg\(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~141_combout\);

-- Location: LCCOMB_X23_Y26_N28
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\Div0|auto_generated|divider|divider|StageOut[99]~140_combout\) # (\Div0|auto_generated|divider|divider|StageOut[99]~141_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[99]~140_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[99]~141_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X23_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[123]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~176_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (\U1_sumador|saldo_reg\(4))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(4),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~176_combout\);

-- Location: LCCOMB_X23_Y26_N12
\Div0|auto_generated|divider|divider|StageOut[111]~142\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~142_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~142_combout\);

-- Location: LCCOMB_X23_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[111]~139\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~139_combout\ = (\U1_sumador|saldo_reg\(4) & \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~139_combout\);

-- Location: LCCOMB_X23_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[111]~142_combout\) # (\Div0|auto_generated|divider|divider|StageOut[111]~139_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[111]~142_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[111]~139_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\);

-- Location: LCCOMB_X23_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[123]~143\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~143_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~143_combout\);

-- Location: LCCOMB_X20_Y26_N0
\Div0|auto_generated|divider|divider|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[123]~176_combout\) # (\Div0|auto_generated|divider|divider|StageOut[123]~143_combout\)))
-- \Div0|auto_generated|divider|divider|op_3~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[123]~176_combout\) # (\Div0|auto_generated|divider|divider|StageOut[123]~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[123]~176_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~143_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X20_Y26_N2
\Div0|auto_generated|divider|divider|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~2_combout\ = (\Div0|auto_generated|divider|divider|op_3~1\ & (((\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\) # (\Div0|auto_generated|divider|divider|StageOut[124]~175_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~1\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~175_combout\)))
-- \Div0|auto_generated|divider|divider|op_3~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[124]~138_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[124]~175_combout\ & !\Div0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~138_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~175_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1\,
	combout => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X20_Y26_N4
\Div0|auto_generated|divider|divider|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~4_combout\ = (\Div0|auto_generated|divider|divider|op_3~3\ & (((\Div0|auto_generated|divider|divider|StageOut[125]~174_combout\) # (\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[125]~174_combout\) # (\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~3\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~174_combout\) # (\Div0|auto_generated|divider|divider|StageOut[125]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~174_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~137_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~3\,
	combout => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X20_Y26_N6
\Div0|auto_generated|divider|divider|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[126]~160_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~5\)))) # (!\Div0|auto_generated|divider|divider|StageOut[126]~160_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ & (!\Div0|auto_generated|divider|divider|op_3~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\ & ((\Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[126]~160_combout\ & !\Div0|auto_generated|divider|divider|StageOut[126]~136_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~160_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~136_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~5\,
	combout => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X20_Y26_N8
\Div0|auto_generated|divider|divider|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~8_combout\ = (\Div0|auto_generated|divider|divider|op_3~7\ & (((\Div0|auto_generated|divider|divider|StageOut[127]~159_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[127]~159_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~9\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~7\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~159_combout\) # (\Div0|auto_generated|divider|divider|StageOut[127]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[127]~159_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~135_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~7\,
	combout => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X20_Y26_N10
\Div0|auto_generated|divider|divider|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~9\)))) # (!\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[128]~158_combout\ & (!\Div0|auto_generated|divider|divider|op_3~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[128]~158_combout\ & ((\Div0|auto_generated|divider|divider|op_3~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|op_3~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[128]~134_combout\ & !\Div0|auto_generated|divider|divider|StageOut[128]~158_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~134_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~158_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~9\,
	combout => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X20_Y26_N12
\Div0|auto_generated|divider|divider|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~12_combout\ = (\Div0|auto_generated|divider|divider|op_3~11\ & (((\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~157_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|op_3~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~157_combout\)))))
-- \Div0|auto_generated|divider|divider|op_3~13\ = CARRY((!\Div0|auto_generated|divider|divider|op_3~11\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~133_combout\) # (\Div0|auto_generated|divider|divider|StageOut[129]~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~133_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[129]~157_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~11\,
	combout => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X20_Y26_N14
\Div0|auto_generated|divider|divider|op_3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[130]~132_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[130]~156_combout\ & !\Div0|auto_generated|divider|divider|op_3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~156_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~13\,
	cout => \Div0|auto_generated|divider|divider|op_3~15_cout\);

-- Location: LCCOMB_X20_Y26_N16
\Div0|auto_generated|divider|divider|op_3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~16_combout\ = \Div0|auto_generated|divider|divider|op_3~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~15_cout\,
	combout => \Div0|auto_generated|divider|divider|op_3~16_combout\);

-- Location: LCCOMB_X20_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[141]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~161_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[129]~157_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[129]~157_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~161_combout\);

-- Location: LCCOMB_X22_Y25_N0
\Div0|auto_generated|divider|divider|StageOut[141]~144\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~144_combout\ = (\Div0|auto_generated|divider|divider|op_3~12_combout\ & !\Div0|auto_generated|divider|divider|op_3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~144_combout\);

-- Location: LCCOMB_X20_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[140]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~162_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~158_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~158_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~162_combout\);

-- Location: LCCOMB_X21_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[140]~145\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~145_combout\ = (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & \Div0|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~145_combout\);

-- Location: LCCOMB_X23_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[139]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~163_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~159_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[127]~159_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~163_combout\);

-- Location: LCCOMB_X21_Y26_N2
\Div0|auto_generated|divider|divider|StageOut[139]~146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~146_combout\ = (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & \Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~146_combout\);

-- Location: LCCOMB_X21_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[138]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~164_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[126]~160_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[126]~160_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~164_combout\);

-- Location: LCCOMB_X21_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[138]~147\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~147_combout\ = (\Div0|auto_generated|divider|divider|op_3~6_combout\ & !\Div0|auto_generated|divider|divider|op_3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~147_combout\);

-- Location: LCCOMB_X20_Y26_N18
\Div0|auto_generated|divider|divider|StageOut[137]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~165_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[125]~174_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[125]~174_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~165_combout\);

-- Location: LCCOMB_X21_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[137]~148\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~148_combout\ = (\Div0|auto_generated|divider|divider|op_3~4_combout\ & !\Div0|auto_generated|divider|divider|op_3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~148_combout\);

-- Location: LCCOMB_X21_Y26_N30
\Div0|auto_generated|divider|divider|StageOut[136]~149\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~149_combout\ = (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & \Div0|auto_generated|divider|divider|op_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~149_combout\);

-- Location: LCCOMB_X22_Y26_N16
\Div0|auto_generated|divider|divider|StageOut[136]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~166_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[124]~175_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[124]~175_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~166_combout\);

-- Location: LCCOMB_X23_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[135]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~167_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[123]~176_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~176_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~167_combout\);

-- Location: LCCOMB_X21_Y26_N0
\Div0|auto_generated|divider|divider|StageOut[135]~150\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~150_combout\ = (\Div0|auto_generated|divider|divider|op_3~0_combout\ & !\Div0|auto_generated|divider|divider|op_3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~150_combout\);

-- Location: LCCOMB_X22_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[110]~153\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~153_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \U1_sumador|saldo_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~153_combout\);

-- Location: LCCOMB_X22_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[110]~152\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~152_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \U1_sumador|saldo_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \U1_sumador|saldo_reg\(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~152_combout\);

-- Location: LCCOMB_X22_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\ = (\Div0|auto_generated|divider|divider|StageOut[110]~153_combout\) # (\Div0|auto_generated|divider|divider|StageOut[110]~152_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[110]~153_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[110]~152_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\);

-- Location: LCCOMB_X22_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[122]~154\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~154_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~154_combout\);

-- Location: LCCOMB_X22_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[122]~151\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~151_combout\ = (\U1_sumador|saldo_reg\(3) & \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_sumador|saldo_reg\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~151_combout\);

-- Location: LCCOMB_X22_Y26_N18
\Div0|auto_generated|divider|divider|op_3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[122]~154_combout\) # (\Div0|auto_generated|divider|divider|StageOut[122]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[122]~154_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[122]~151_combout\,
	combout => \Div0|auto_generated|divider|divider|op_3~18_combout\);

-- Location: LCCOMB_X22_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[134]~155\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~155_combout\ = (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & \Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~155_combout\);

-- Location: LCCOMB_X22_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[134]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[134]~177_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (\U1_sumador|saldo_reg\(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \U1_sumador|saldo_reg\(3),
	datac => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[134]~177_combout\);

-- Location: LCCOMB_X21_Y26_N6
\Div0|auto_generated|divider|divider|op_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[134]~155_combout\) # (\Div0|auto_generated|divider|divider|StageOut[134]~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[134]~155_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[134]~177_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_4~1_cout\);

-- Location: LCCOMB_X21_Y26_N8
\Div0|auto_generated|divider|divider|op_4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[135]~167_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[135]~150_combout\ & !\Div0|auto_generated|divider|divider|op_4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~167_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~150_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~3_cout\);

-- Location: LCCOMB_X21_Y26_N10
\Div0|auto_generated|divider|divider|op_4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[136]~149_combout\) # (\Div0|auto_generated|divider|divider|StageOut[136]~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~149_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~166_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~5_cout\);

-- Location: LCCOMB_X21_Y26_N12
\Div0|auto_generated|divider|divider|op_4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[137]~165_combout\ & !\Div0|auto_generated|divider|divider|StageOut[137]~148_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~165_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[137]~148_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~7_cout\);

-- Location: LCCOMB_X21_Y26_N14
\Div0|auto_generated|divider|divider|op_4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[138]~164_combout\) # (\Div0|auto_generated|divider|divider|StageOut[138]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~164_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~147_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~9_cout\);

-- Location: LCCOMB_X21_Y26_N16
\Div0|auto_generated|divider|divider|op_4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~11_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[139]~163_combout\ & !\Div0|auto_generated|divider|divider|StageOut[139]~146_combout\)) # (!\Div0|auto_generated|divider|divider|op_4~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[139]~163_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[139]~146_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~9_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~11_cout\);

-- Location: LCCOMB_X21_Y26_N18
\Div0|auto_generated|divider|divider|op_4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_cout\ = CARRY((!\Div0|auto_generated|divider|divider|op_4~11_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~162_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~162_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~145_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~11_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~13_cout\);

-- Location: LCCOMB_X21_Y26_N20
\Div0|auto_generated|divider|divider|op_4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~161_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~144_combout\ & !\Div0|auto_generated|divider|divider|op_4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~161_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~144_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_4~13_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~15_cout\);

-- Location: LCCOMB_X21_Y26_N22
\Div0|auto_generated|divider|divider|op_4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~16_combout\ = \Div0|auto_generated|divider|divider|op_4~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~15_cout\,
	combout => \Div0|auto_generated|divider|divider|op_4~16_combout\);

-- Location: LCCOMB_X22_Y26_N12
\U_disp1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux6~0_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ $ (((\Div0|auto_generated|divider|divider|op_4~16_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))) # (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y26_N14
\U_disp1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux5~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|op_3~16_combout\ $ (\Div0|auto_generated|divider|divider|op_4~16_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y26_N0
\U_disp1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux4~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & ((\Div0|auto_generated|divider|divider|op_4~16_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y26_N0
\U_disp1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux3~0_combout\ = (\Div0|auto_generated|divider|divider|op_3~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ $ (((\Div0|auto_generated|divider|divider|op_4~16_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\))))) # (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y26_N2
\U_disp1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux2~0_combout\ = ((\Div0|auto_generated|divider|divider|op_3~16_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)) # (!\Div0|auto_generated|divider|divider|op_3~16_combout\ & 
-- ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))) # (!\Div0|auto_generated|divider|divider|op_4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y26_N4
\U_disp1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux1~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & !\Div0|auto_generated|divider|divider|op_4~16_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_3~16_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (((!\Div0|auto_generated|divider|divider|op_3~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|op_4~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y26_N30
\U_disp1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_disp1|Mux0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (\Div0|auto_generated|divider|divider|op_3~16_combout\ $ ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|op_3~16_combout\) # 
-- (\Div0|auto_generated|divider|divider|op_4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|op_3~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_4~16_combout\,
	combout => \U_disp1|Mux0~0_combout\);

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

-- Location: LCCOMB_X29_Y27_N18
\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \sel_prod[1]~input_o\ $ (VCC)
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\sel_prod[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[1]~input_o\,
	datad => VCC,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y27_N20
\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\sel_prod[2]~input_o\ & (\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\sel_prod[2]~input_o\ & 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\sel_prod[2]~input_o\ & !\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datad => VCC,
	cin => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

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

-- Location: LCCOMB_X29_Y27_N22
\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\sel_prod[3]~input_o\ & (\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\sel_prod[3]~input_o\ & 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\sel_prod[3]~input_o\ & !\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[3]~input_o\,
	datad => VCC,
	cin => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X29_Y27_N24
\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y27_N10
\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sel_prod[2]~input_o\)) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datac => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X29_Y27_N16
\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sel_prod[1]~input_o\)) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \sel_prod[1]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\);

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

-- Location: LCCOMB_X29_Y27_N12
\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\sel_prod[3]~input_o\)) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[3]~input_o\,
	datac => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X29_Y27_N30
\U2_productos|U1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux6~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((\sel_prod[0]~input_o\ & 
-- !\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y27_N4
\U2_productos|U1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux5~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # 
-- (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ $ (\sel_prod[0]~input_o\)))) # (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y27_N14
\U2_productos|U1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux4~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # 
-- (!\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y27_N28
\U2_productos|U1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux3~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # 
-- ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & \sel_prod[0]~input_o\)))) # (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & 
-- (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ $ (((\sel_prod[0]~input_o\ & !\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y27_N2
\U2_productos|U1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux2~0_combout\ = (\sel_prod[0]~input_o\) # ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux2~0_combout\);

-- Location: LCCOMB_X29_Y27_N8
\U2_productos|U1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux1~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # 
-- ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ & \sel_prod[0]~input_o\)))) # (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & 
-- ((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\) # ((\sel_prod[0]~input_o\ & !\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y27_N26
\U2_productos|U1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|U1|Mux0~0_combout\ = (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ & ((!\sel_prod[0]~input_o\) # 
-- (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\)))) # (!\U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\ $ 
-- (((\U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datab => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[13]~0_combout\,
	datac => \sel_prod[0]~input_o\,
	datad => \U2_productos|Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	combout => \U2_productos|U1|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y23_N22
\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\sel_prod[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[1]~input_o\,
	datad => VCC,
	cout => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X8_Y23_N24
\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\sel_prod[2]~input_o\ & !\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sel_prod[2]~input_o\,
	datad => VCC,
	cin => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X8_Y23_N26
\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\sel_prod[3]~input_o\ & !\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datad => VCC,
	cin => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X8_Y23_N28
\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \U2_productos|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: IOIBUF_X0_Y22_N15
\anomalia~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_anomalia,
	o => \anomalia~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\puerta_fin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_puerta_fin,
	o => \puerta_fin~input_o\);

-- Location: LCCOMB_X7_Y22_N10
\U4_fsm|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~3_combout\ = (\U4_fsm|current_state.ENTREGA~q\ & \puerta_fin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.ENTREGA~q\,
	datac => \puerta_fin~input_o\,
	combout => \U4_fsm|Selector2~3_combout\);

-- Location: LCCOMB_X7_Y22_N30
\U4_fsm|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector6~0_combout\ = (\anomalia~input_o\ & ((\U4_fsm|current_state.VALIDACION~q\) # ((!\puerta_fin~input_o\ & \U4_fsm|current_state.ENTREGA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U4_fsm|current_state.VALIDACION~q\,
	datac => \puerta_fin~input_o\,
	datad => \U4_fsm|current_state.ENTREGA~q\,
	combout => \U4_fsm|Selector6~0_combout\);

-- Location: FF_X7_Y22_N31
\U4_fsm|current_state.HAY_ANOMALIA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|Selector6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.HAY_ANOMALIA~q\);

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

-- Location: LCCOMB_X8_Y23_N12
\ram_inst|ram~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_inst|ram~8_combout\ = (\sel_prod[3]~input_o\) # ((\sel_prod[0]~input_o\) # (\sel_prod[1]~input_o\ $ (\sel_prod[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \ram_inst|ram~8_combout\);

-- Location: LCCOMB_X8_Y22_N22
\U4_fsm|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector3~0_combout\ = (\U4_fsm|current_state.VALIDACION~q\ & (!\anomalia~input_o\ & \ram_inst|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.VALIDACION~q\,
	datac => \anomalia~input_o\,
	datad => \ram_inst|ram~8_combout\,
	combout => \U4_fsm|Selector3~0_combout\);

-- Location: LCCOMB_X7_Y22_N18
\U4_fsm|current_state.SIN_STOCK~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|current_state.SIN_STOCK~feeder_combout\ = \U4_fsm|Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4_fsm|Selector3~0_combout\,
	combout => \U4_fsm|current_state.SIN_STOCK~feeder_combout\);

-- Location: FF_X7_Y22_N19
\U4_fsm|current_state.SIN_STOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|current_state.SIN_STOCK~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.SIN_STOCK~q\);

-- Location: LCCOMB_X7_Y22_N6
\U4_fsm|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector1~1_combout\ = (\U4_fsm|current_state.SIN_STOCK~q\) # ((\U4_fsm|current_state.MONEDAS~q\ & !\confirmar~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_fsm|current_state.MONEDAS~q\,
	datac => \confirmar~input_o\,
	datad => \U4_fsm|current_state.SIN_STOCK~q\,
	combout => \U4_fsm|Selector1~1_combout\);

-- Location: LCCOMB_X8_Y23_N18
\U2_productos|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux0~0_combout\ = (\sel_prod[3]~input_o\ & (\sel_prod[2]~input_o\ & ((!\sel_prod[0]~input_o\) # (!\sel_prod[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux0~0_combout\);

-- Location: LCCOMB_X8_Y23_N16
\U2_productos|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux1~0_combout\ = (\sel_prod[3]~input_o\ & (((!\sel_prod[2]~input_o\)))) # (!\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\) # ((\sel_prod[1]~input_o\ & \sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux1~0_combout\);

-- Location: LCCOMB_X8_Y23_N30
\U2_productos|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux2~0_combout\ = (!\sel_prod[2]~input_o\ & ((\sel_prod[3]~input_o\) # (\sel_prod[1]~input_o\ $ (\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux2~0_combout\);

-- Location: LCCOMB_X8_Y23_N0
\U2_productos|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux3~0_combout\ = (\sel_prod[3]~input_o\ & (((\sel_prod[2]~input_o\ & \sel_prod[0]~input_o\)) # (!\sel_prod[1]~input_o\))) # (!\sel_prod[3]~input_o\ & (\sel_prod[2]~input_o\ $ (((\sel_prod[1]~input_o\) # (\sel_prod[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux3~0_combout\);

-- Location: LCCOMB_X8_Y23_N14
\U2_productos|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux4~0_combout\ = (\sel_prod[0]~input_o\ & (\sel_prod[3]~input_o\ $ (((\sel_prod[1]~input_o\ & \sel_prod[2]~input_o\))))) # (!\sel_prod[0]~input_o\ & (!\sel_prod[3]~input_o\ & ((\sel_prod[1]~input_o\) # (\sel_prod[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux4~0_combout\);

-- Location: LCCOMB_X8_Y23_N8
\U2_productos|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux5~0_combout\ = (\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\ & (\sel_prod[1]~input_o\ & \sel_prod[0]~input_o\)) # (!\sel_prod[2]~input_o\ & ((!\sel_prod[0]~input_o\))))) # (!\sel_prod[3]~input_o\ & (\sel_prod[2]~input_o\ & 
-- (\sel_prod[1]~input_o\ $ (\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux5~0_combout\);

-- Location: LCCOMB_X9_Y23_N4
\U2_productos|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux6~0_combout\ = (\sel_prod[3]~input_o\) # ((\sel_prod[0]~input_o\ & \sel_prod[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[0]~input_o\,
	datab => \sel_prod[2]~input_o\,
	datac => \sel_prod[3]~input_o\,
	combout => \U2_productos|Mux6~0_combout\);

-- Location: LCCOMB_X8_Y23_N2
\U2_productos|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux7~0_combout\ = (\sel_prod[3]~input_o\ & (((\sel_prod[2]~input_o\) # (!\sel_prod[0]~input_o\)))) # (!\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\ & ((!\sel_prod[0]~input_o\))) # (!\sel_prod[2]~input_o\ & (\sel_prod[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux7~0_combout\);

-- Location: LCCOMB_X8_Y23_N4
\U2_productos|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux8~0_combout\ = (\sel_prod[2]~input_o\ & (\sel_prod[3]~input_o\ $ ((\sel_prod[1]~input_o\)))) # (!\sel_prod[2]~input_o\ & (!\sel_prod[0]~input_o\ & ((\sel_prod[3]~input_o\) # (\sel_prod[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux8~0_combout\);

-- Location: LCCOMB_X8_Y23_N10
\U2_productos|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux9~0_combout\ = (\sel_prod[2]~input_o\ & (\sel_prod[3]~input_o\ $ (((!\sel_prod[0]~input_o\))))) # (!\sel_prod[2]~input_o\ & ((\sel_prod[3]~input_o\ & (\sel_prod[1]~input_o\)) # (!\sel_prod[3]~input_o\ & (!\sel_prod[1]~input_o\ & 
-- \sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux9~0_combout\);

-- Location: LCCOMB_X8_Y23_N20
\U2_productos|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux10~0_combout\ = (\sel_prod[3]~input_o\ & (\sel_prod[1]~input_o\ $ (((\sel_prod[2]~input_o\ & !\sel_prod[0]~input_o\))))) # (!\sel_prod[3]~input_o\ & (((\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux10~0_combout\);

-- Location: LCCOMB_X8_Y23_N6
\U2_productos|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U2_productos|Mux11~0_combout\ = (\sel_prod[3]~input_o\ & (((\sel_prod[0]~input_o\) # (!\sel_prod[2]~input_o\)))) # (!\sel_prod[3]~input_o\ & ((\sel_prod[2]~input_o\) # ((\sel_prod[1]~input_o\ & !\sel_prod[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_prod[3]~input_o\,
	datab => \sel_prod[1]~input_o\,
	datac => \sel_prod[2]~input_o\,
	datad => \sel_prod[0]~input_o\,
	combout => \U2_productos|Mux11~0_combout\);

-- Location: LCCOMB_X9_Y23_N6
\U3_restador|cambio_reg[14]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~2_cout\ = CARRY((\U1_sumador|saldo_reg\(2)) # (\U2_productos|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(2),
	datab => \U2_productos|Mux11~0_combout\,
	datad => VCC,
	cout => \U3_restador|cambio_reg[14]~2_cout\);

-- Location: LCCOMB_X9_Y23_N8
\U3_restador|cambio_reg[14]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~4_cout\ = CARRY((\U1_sumador|saldo_reg\(3) & (!\U2_productos|Mux10~0_combout\ & !\U3_restador|cambio_reg[14]~2_cout\)) # (!\U1_sumador|saldo_reg\(3) & ((!\U3_restador|cambio_reg[14]~2_cout\) # 
-- (!\U2_productos|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(3),
	datab => \U2_productos|Mux10~0_combout\,
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~2_cout\,
	cout => \U3_restador|cambio_reg[14]~4_cout\);

-- Location: LCCOMB_X9_Y23_N10
\U3_restador|cambio_reg[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~6_cout\ = CARRY((\U2_productos|Mux9~0_combout\ & ((\U1_sumador|saldo_reg\(4)) # (!\U3_restador|cambio_reg[14]~4_cout\))) # (!\U2_productos|Mux9~0_combout\ & (\U1_sumador|saldo_reg\(4) & !\U3_restador|cambio_reg[14]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux9~0_combout\,
	datab => \U1_sumador|saldo_reg\(4),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~4_cout\,
	cout => \U3_restador|cambio_reg[14]~6_cout\);

-- Location: LCCOMB_X9_Y23_N12
\U3_restador|cambio_reg[14]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~8_cout\ = CARRY((\U2_productos|Mux8~0_combout\ & ((!\U3_restador|cambio_reg[14]~6_cout\) # (!\U1_sumador|saldo_reg\(5)))) # (!\U2_productos|Mux8~0_combout\ & (!\U1_sumador|saldo_reg\(5) & !\U3_restador|cambio_reg[14]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux8~0_combout\,
	datab => \U1_sumador|saldo_reg\(5),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~6_cout\,
	cout => \U3_restador|cambio_reg[14]~8_cout\);

-- Location: LCCOMB_X9_Y23_N14
\U3_restador|cambio_reg[14]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~10_cout\ = CARRY((\U2_productos|Mux7~0_combout\ & ((\U1_sumador|saldo_reg\(6)) # (!\U3_restador|cambio_reg[14]~8_cout\))) # (!\U2_productos|Mux7~0_combout\ & (\U1_sumador|saldo_reg\(6) & !\U3_restador|cambio_reg[14]~8_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux7~0_combout\,
	datab => \U1_sumador|saldo_reg\(6),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~8_cout\,
	cout => \U3_restador|cambio_reg[14]~10_cout\);

-- Location: LCCOMB_X9_Y23_N16
\U3_restador|cambio_reg[14]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~12_cout\ = CARRY((\U1_sumador|saldo_reg\(7) & (!\U2_productos|Mux6~0_combout\ & !\U3_restador|cambio_reg[14]~10_cout\)) # (!\U1_sumador|saldo_reg\(7) & ((!\U3_restador|cambio_reg[14]~10_cout\) # 
-- (!\U2_productos|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datab => \U2_productos|Mux6~0_combout\,
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~10_cout\,
	cout => \U3_restador|cambio_reg[14]~12_cout\);

-- Location: LCCOMB_X9_Y23_N18
\U3_restador|cambio_reg[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~14_cout\ = CARRY((\U2_productos|Mux5~0_combout\ & ((\U1_sumador|saldo_reg\(8)) # (!\U3_restador|cambio_reg[14]~12_cout\))) # (!\U2_productos|Mux5~0_combout\ & (\U1_sumador|saldo_reg\(8) & 
-- !\U3_restador|cambio_reg[14]~12_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux5~0_combout\,
	datab => \U1_sumador|saldo_reg\(8),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~12_cout\,
	cout => \U3_restador|cambio_reg[14]~14_cout\);

-- Location: LCCOMB_X9_Y23_N20
\U3_restador|cambio_reg[14]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~16_cout\ = CARRY((\U2_productos|Mux4~0_combout\ & ((!\U3_restador|cambio_reg[14]~14_cout\) # (!\U1_sumador|saldo_reg\(9)))) # (!\U2_productos|Mux4~0_combout\ & (!\U1_sumador|saldo_reg\(9) & 
-- !\U3_restador|cambio_reg[14]~14_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux4~0_combout\,
	datab => \U1_sumador|saldo_reg\(9),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~14_cout\,
	cout => \U3_restador|cambio_reg[14]~16_cout\);

-- Location: LCCOMB_X9_Y23_N22
\U3_restador|cambio_reg[14]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~18_cout\ = CARRY((\U2_productos|Mux3~0_combout\ & ((\U1_sumador|saldo_reg\(10)) # (!\U3_restador|cambio_reg[14]~16_cout\))) # (!\U2_productos|Mux3~0_combout\ & (\U1_sumador|saldo_reg\(10) & 
-- !\U3_restador|cambio_reg[14]~16_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux3~0_combout\,
	datab => \U1_sumador|saldo_reg\(10),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~16_cout\,
	cout => \U3_restador|cambio_reg[14]~18_cout\);

-- Location: LCCOMB_X9_Y23_N24
\U3_restador|cambio_reg[14]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~20_cout\ = CARRY((\U1_sumador|saldo_reg\(11) & (\U2_productos|Mux2~0_combout\ & !\U3_restador|cambio_reg[14]~18_cout\)) # (!\U1_sumador|saldo_reg\(11) & ((\U2_productos|Mux2~0_combout\) # 
-- (!\U3_restador|cambio_reg[14]~18_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(11),
	datab => \U2_productos|Mux2~0_combout\,
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~18_cout\,
	cout => \U3_restador|cambio_reg[14]~20_cout\);

-- Location: LCCOMB_X9_Y23_N26
\U3_restador|cambio_reg[14]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~22_cout\ = CARRY((\U2_productos|Mux1~0_combout\ & (\U1_sumador|saldo_reg\(12) & !\U3_restador|cambio_reg[14]~20_cout\)) # (!\U2_productos|Mux1~0_combout\ & ((\U1_sumador|saldo_reg\(12)) # 
-- (!\U3_restador|cambio_reg[14]~20_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_productos|Mux1~0_combout\,
	datab => \U1_sumador|saldo_reg\(12),
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~20_cout\,
	cout => \U3_restador|cambio_reg[14]~22_cout\);

-- Location: LCCOMB_X9_Y23_N28
\U3_restador|cambio_reg[14]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~24_cout\ = CARRY((\U1_sumador|saldo_reg\(13) & (\U2_productos|Mux0~0_combout\ & !\U3_restador|cambio_reg[14]~22_cout\)) # (!\U1_sumador|saldo_reg\(13) & ((\U2_productos|Mux0~0_combout\) # 
-- (!\U3_restador|cambio_reg[14]~22_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(13),
	datab => \U2_productos|Mux0~0_combout\,
	datad => VCC,
	cin => \U3_restador|cambio_reg[14]~22_cout\,
	cout => \U3_restador|cambio_reg[14]~24_cout\);

-- Location: LCCOMB_X9_Y23_N30
\U3_restador|cambio_reg[14]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U3_restador|cambio_reg[14]~25_combout\ = \U3_restador|cambio_reg[14]~24_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3_restador|cambio_reg[14]~24_cout\,
	combout => \U3_restador|cambio_reg[14]~25_combout\);

-- Location: FF_X9_Y23_N31
\U3_restador|cambio_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U3_restador|cambio_reg[14]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \U4_fsm|current_state.VALIDACION~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3_restador|cambio_reg\(14));

-- Location: LCCOMB_X8_Y22_N10
\U4_fsm|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector1~0_combout\ = (\U4_fsm|current_state.VALIDACION~q\ & (\U3_restador|cambio_reg\(14) & (!\anomalia~input_o\ & !\ram_inst|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.VALIDACION~q\,
	datab => \U3_restador|cambio_reg\(14),
	datac => \anomalia~input_o\,
	datad => \ram_inst|ram~8_combout\,
	combout => \U4_fsm|Selector1~0_combout\);

-- Location: LCCOMB_X8_Y22_N26
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\U1_sumador|saldo_reg\(3)) # ((\U1_sumador|saldo_reg\(2)) # ((\U1_sumador|saldo_reg\(5)) # (\U1_sumador|saldo_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(3),
	datab => \U1_sumador|saldo_reg\(2),
	datac => \U1_sumador|saldo_reg\(5),
	datad => \U1_sumador|saldo_reg\(4),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y22_N8
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\U1_sumador|saldo_reg\(7)) # ((\U1_sumador|saldo_reg\(8)) # ((\U1_sumador|saldo_reg\(9)) # (\U1_sumador|saldo_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_sumador|saldo_reg\(7),
	datab => \U1_sumador|saldo_reg\(8),
	datac => \U1_sumador|saldo_reg\(9),
	datad => \U1_sumador|saldo_reg\(6),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y22_N24
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~2_combout\) # ((\U1_sumador|saldo_reg\(13)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \U1_sumador|saldo_reg\(13),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X7_Y22_N8
\U4_fsm|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector1~2_combout\ = (\U4_fsm|Selector1~1_combout\) # ((\U4_fsm|Selector1~0_combout\) # ((!\U4_fsm|current_state.ESPERA~q\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|Selector1~1_combout\,
	datab => \U4_fsm|current_state.ESPERA~q\,
	datac => \U4_fsm|Selector1~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \U4_fsm|Selector1~2_combout\);

-- Location: FF_X7_Y22_N9
\U4_fsm|current_state.MONEDAS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|Selector1~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.MONEDAS~q\);

-- Location: LCCOMB_X7_Y22_N28
\U4_fsm|current_state.CAMBIO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|current_state.CAMBIO~0_combout\ = (\U4_fsm|current_state.CAMBIO~q\ & ((!\U4_fsm|current_state.MONEDAS~q\) # (!\confirmar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \confirmar~input_o\,
	datab => \U4_fsm|current_state.CAMBIO~q\,
	datac => \U4_fsm|current_state.MONEDAS~q\,
	combout => \U4_fsm|current_state.CAMBIO~0_combout\);

-- Location: LCCOMB_X8_Y22_N28
\U4_fsm|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~1_combout\ = (!\LessThan0~3_combout\ & (!\U1_sumador|saldo_reg\(13) & (!\LessThan0~2_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \U1_sumador|saldo_reg\(13),
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \U4_fsm|Selector2~1_combout\);

-- Location: LCCOMB_X7_Y22_N20
\U4_fsm|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~2_combout\ = (!\U4_fsm|current_state.ENTREGA~q\ & ((\U4_fsm|current_state.ESPERA~q\ & (\U4_fsm|current_state.MONEDAS~q\)) # (!\U4_fsm|current_state.ESPERA~q\ & ((\U4_fsm|Selector2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.ENTREGA~q\,
	datab => \U4_fsm|current_state.ESPERA~q\,
	datac => \U4_fsm|current_state.MONEDAS~q\,
	datad => \U4_fsm|Selector2~1_combout\,
	combout => \U4_fsm|Selector2~2_combout\);

-- Location: LCCOMB_X7_Y22_N24
\U4_fsm|current_state.CAMBIO~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|current_state.CAMBIO~1_combout\ = (\U4_fsm|Selector2~3_combout\) # ((\U4_fsm|current_state.CAMBIO~0_combout\ & ((\U4_fsm|Selector2~0_combout\) # (\U4_fsm|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|Selector2~3_combout\,
	datab => \U4_fsm|current_state.CAMBIO~0_combout\,
	datac => \U4_fsm|Selector2~0_combout\,
	datad => \U4_fsm|Selector2~2_combout\,
	combout => \U4_fsm|current_state.CAMBIO~1_combout\);

-- Location: FF_X7_Y22_N25
\U4_fsm|current_state.CAMBIO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|current_state.CAMBIO~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.CAMBIO~q\);

-- Location: LCCOMB_X7_Y22_N16
\U4_fsm|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector0~0_combout\ = (!\U4_fsm|current_state.HAY_ANOMALIA~q\ & (!\U4_fsm|current_state.CAMBIO~q\ & ((\U4_fsm|current_state.ESPERA~q\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.HAY_ANOMALIA~q\,
	datab => \U4_fsm|current_state.CAMBIO~q\,
	datac => \U4_fsm|current_state.ESPERA~q\,
	datad => \LessThan0~4_combout\,
	combout => \U4_fsm|Selector0~0_combout\);

-- Location: FF_X7_Y22_N17
\U4_fsm|current_state.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.ESPERA~q\);

-- Location: LCCOMB_X7_Y22_N22
\U4_fsm|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~0_combout\ = (\U4_fsm|current_state.ENTREGA~q\ & (((\U4_fsm|current_state.ESPERA~q\ & \puerta_fin~input_o\)) # (!\anomalia~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \U4_fsm|current_state.ESPERA~q\,
	datac => \puerta_fin~input_o\,
	datad => \U4_fsm|current_state.ENTREGA~q\,
	combout => \U4_fsm|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y22_N14
\U4_fsm|Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~4_combout\ = (\U4_fsm|Selector2~0_combout\ & ((\U4_fsm|current_state.VALIDACION~q\) # ((\U4_fsm|current_state.MONEDAS~q\ & \confirmar~input_o\)))) # (!\U4_fsm|Selector2~0_combout\ & (\U4_fsm|current_state.MONEDAS~q\ & 
-- (\confirmar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|Selector2~0_combout\,
	datab => \U4_fsm|current_state.MONEDAS~q\,
	datac => \confirmar~input_o\,
	datad => \U4_fsm|current_state.VALIDACION~q\,
	combout => \U4_fsm|Selector2~4_combout\);

-- Location: LCCOMB_X7_Y22_N0
\U4_fsm|Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector2~5_combout\ = (!\U4_fsm|Selector2~3_combout\ & ((\U4_fsm|Selector2~4_combout\) # ((\U4_fsm|current_state.VALIDACION~q\ & \U4_fsm|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|Selector2~3_combout\,
	datab => \U4_fsm|Selector2~4_combout\,
	datac => \U4_fsm|current_state.VALIDACION~q\,
	datad => \U4_fsm|Selector2~2_combout\,
	combout => \U4_fsm|Selector2~5_combout\);

-- Location: FF_X7_Y22_N1
\U4_fsm|current_state.VALIDACION\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|Selector2~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.VALIDACION~q\);

-- Location: LCCOMB_X8_Y22_N4
\U4_fsm|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector4~0_combout\ = (\U4_fsm|current_state.VALIDACION~q\ & (!\U3_restador|cambio_reg\(14) & !\ram_inst|ram~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4_fsm|current_state.VALIDACION~q\,
	datac => \U3_restador|cambio_reg\(14),
	datad => \ram_inst|ram~8_combout\,
	combout => \U4_fsm|Selector4~0_combout\);

-- Location: LCCOMB_X7_Y22_N12
\U4_fsm|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|Selector4~1_combout\ = (!\anomalia~input_o\ & ((\U4_fsm|Selector4~0_combout\) # ((!\puerta_fin~input_o\ & \U4_fsm|current_state.ENTREGA~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anomalia~input_o\,
	datab => \puerta_fin~input_o\,
	datac => \U4_fsm|current_state.ENTREGA~q\,
	datad => \U4_fsm|Selector4~0_combout\,
	combout => \U4_fsm|Selector4~1_combout\);

-- Location: FF_X7_Y22_N13
\U4_fsm|current_state.ENTREGA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U4_fsm|Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4_fsm|current_state.ENTREGA~q\);

-- Location: LCCOMB_X7_Y22_N26
\U4_fsm|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|WideOr4~0_combout\ = (\U4_fsm|current_state.CAMBIO~q\) # ((\U4_fsm|current_state.MONEDAS~q\) # (\U4_fsm|current_state.SIN_STOCK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_fsm|current_state.CAMBIO~q\,
	datac => \U4_fsm|current_state.MONEDAS~q\,
	datad => \U4_fsm|current_state.SIN_STOCK~q\,
	combout => \U4_fsm|WideOr4~0_combout\);

-- Location: LCCOMB_X7_Y22_N2
\U4_fsm|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|WideOr3~0_combout\ = (\U4_fsm|current_state.SIN_STOCK~q\) # ((\U4_fsm|current_state.HAY_ANOMALIA~q\) # (\U4_fsm|current_state.VALIDACION~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_fsm|current_state.SIN_STOCK~q\,
	datac => \U4_fsm|current_state.HAY_ANOMALIA~q\,
	datad => \U4_fsm|current_state.VALIDACION~q\,
	combout => \U4_fsm|WideOr3~0_combout\);

-- Location: LCCOMB_X7_Y22_N4
\U4_fsm|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U4_fsm|WideOr2~combout\ = (\U4_fsm|current_state.CAMBIO~q\) # ((\U4_fsm|current_state.HAY_ANOMALIA~q\) # (\U4_fsm|current_state.ENTREGA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4_fsm|current_state.CAMBIO~q\,
	datac => \U4_fsm|current_state.HAY_ANOMALIA~q\,
	datad => \U4_fsm|current_state.ENTREGA~q\,
	combout => \U4_fsm|WideOr2~combout\);

ww_disp0(0) <= \disp0[0]~output_o\;

ww_disp0(1) <= \disp0[1]~output_o\;

ww_disp0(2) <= \disp0[2]~output_o\;

ww_disp0(3) <= \disp0[3]~output_o\;

ww_disp0(4) <= \disp0[4]~output_o\;

ww_disp0(5) <= \disp0[5]~output_o\;

ww_disp0(6) <= \disp0[6]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

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

ww_led_entrega <= \led_entrega~output_o\;

ww_led_anom <= \led_anom~output_o\;

ww_stock_leds(0) <= \stock_leds[0]~output_o\;

ww_stock_leds(1) <= \stock_leds[1]~output_o\;

ww_stock_leds(2) <= \stock_leds[2]~output_o\;

ww_alerta_led <= \alerta_led~output_o\;

ww_led_estado(0) <= \led_estado[0]~output_o\;

ww_led_estado(1) <= \led_estado[1]~output_o\;

ww_led_estado(2) <= \led_estado[2]~output_o\;
END structure;


