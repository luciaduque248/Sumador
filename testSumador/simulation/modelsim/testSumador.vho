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

-- DATE "03/05/2024 19:04:13"

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

ENTITY 	testSumador IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	UN : BUFFER std_logic_vector(6 DOWNTO 0);
	DC : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END testSumador;

-- Design Ports Information
-- UN[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testSumador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_UN : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DC : std_logic_vector(6 DOWNTO 0);
SIGNAL \UN[0]~output_o\ : std_logic;
SIGNAL \UN[1]~output_o\ : std_logic;
SIGNAL \UN[2]~output_o\ : std_logic;
SIGNAL \UN[3]~output_o\ : std_logic;
SIGNAL \UN[4]~output_o\ : std_logic;
SIGNAL \UN[5]~output_o\ : std_logic;
SIGNAL \UN[6]~output_o\ : std_logic;
SIGNAL \DC[0]~output_o\ : std_logic;
SIGNAL \DC[1]~output_o\ : std_logic;
SIGNAL \DC[2]~output_o\ : std_logic;
SIGNAL \DC[3]~output_o\ : std_logic;
SIGNAL \DC[4]~output_o\ : std_logic;
SIGNAL \DC[5]~output_o\ : std_logic;
SIGNAL \DC[6]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A4|A0|cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A4|A1|cout~0_combout\ : std_logic;
SIGNAL \A4|A2|cout~0_combout\ : std_logic;
SIGNAL \A4|A3|cout~0_combout\ : std_logic;
SIGNAL \A4|A3|cout~1_combout\ : std_logic;
SIGNAL \A4|A3|HA2|Sum~combout\ : std_logic;
SIGNAL \A4|A2|HA2|Sum~combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \A6|Mux5~0_combout\ : std_logic;
SIGNAL \A6|Mux3~0_combout\ : std_logic;
SIGNAL \A6|Mux2~0_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ : std_logic;
SIGNAL \A4|A0|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ : std_logic;
SIGNAL \A4|A1|HA2|Sum~combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ : std_logic;
SIGNAL \A7|Mux6~0_combout\ : std_logic;
SIGNAL \A7|Mux5~0_combout\ : std_logic;
SIGNAL \A7|Mux4~0_combout\ : std_logic;
SIGNAL \A7|Mux3~0_combout\ : std_logic;
SIGNAL \A7|Mux2~0_combout\ : std_logic;
SIGNAL \A7|Mux1~0_combout\ : std_logic;
SIGNAL \A7|Mux0~0_combout\ : std_logic;
SIGNAL \A7|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \A5|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
UN <= ww_UN;
DC <= ww_DC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\A7|ALT_INV_Mux6~0_combout\ <= NOT \A7|Mux6~0_combout\;
\A5|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;

-- Location: IOOBUF_X21_Y29_N23
\UN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \UN[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\UN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \UN[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\UN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A5|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \UN[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\UN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \UN[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\UN[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \UN[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\UN[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \UN[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\UN[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \UN[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DC[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DC[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DC[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DC[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DC[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DC[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\DC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DC[6]~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: LCCOMB_X27_Y28_N24
\A4|A0|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A0|cout~0_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\) # (\Cin~input_o\))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & \Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \A4|A0|cout~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X29_Y25_N8
\A4|A1|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|cout~0_combout\ = (\B[1]~input_o\ & ((\A4|A0|cout~0_combout\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A4|A0|cout~0_combout\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A4|A0|cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A4|A1|cout~0_combout\);

-- Location: LCCOMB_X31_Y24_N0
\A4|A2|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\A4|A1|cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \A4|A1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => \A4|A1|cout~0_combout\,
	combout => \A4|A2|cout~0_combout\);

-- Location: LCCOMB_X31_Y24_N2
\A4|A3|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|cout~0_combout\ = (\A4|A2|cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A4|A3|cout~0_combout\);

-- Location: LCCOMB_X31_Y24_N20
\A4|A3|cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|cout~1_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \A4|A3|cout~1_combout\);

-- Location: LCCOMB_X31_Y24_N16
\A4|A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|HA2|Sum~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A4|A3|HA2|Sum~combout\);

-- Location: LCCOMB_X28_Y24_N24
\A4|A2|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|HA2|Sum~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\A4|A1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A4|A1|cout~0_combout\,
	combout => \A4|A2|HA2|Sum~combout\);

-- Location: LCCOMB_X28_Y24_N0
\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A4|A2|HA2|Sum~combout\ $ (VCC)
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A4|A2|HA2|Sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A4|A2|HA2|Sum~combout\,
	datad => VCC,
	combout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y24_N2
\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A4|A3|HA2|Sum~combout\ & (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A4|A3|HA2|Sum~combout\ & 
-- (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A4|A3|HA2|Sum~combout\ & !\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y24_N4
\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\)))) # 
-- (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\)))))
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|cout~0_combout\,
	datab => \A4|A3|cout~1_combout\,
	datad => VCC,
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y24_N6
\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y24_N26
\A5|Div0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ = (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X31_Y24_N4
\A5|Div0|auto_generated|divider|divider|StageOut[18]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A4|A2|cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A4|A2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\);

-- Location: LCCOMB_X31_Y24_N22
\A5|Div0|auto_generated|divider|divider|StageOut[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\);

-- Location: LCCOMB_X31_Y24_N28
\A5|Div0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X28_Y24_N18
\A5|Div0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X31_Y24_N24
\A5|Div0|auto_generated|divider|divider|StageOut[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\A4|A1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A4|A1|cout~0_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\);

-- Location: LCCOMB_X29_Y25_N28
\A5|Div0|auto_generated|divider|divider|StageOut[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A4|A0|cout~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A0|cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\);

-- Location: LCCOMB_X29_Y25_N30
\A5|Div0|auto_generated|divider|divider|StageOut[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\ = (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A4|A0|cout~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A0|cout~0_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A5|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\);

-- Location: LCCOMB_X31_Y24_N6
\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\A5|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\) # (\A5|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\,
	datab => \A5|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\,
	datad => VCC,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X31_Y24_N8
\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\A5|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & (!\A5|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ & 
-- !\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datab => \A5|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\,
	datad => VCC,
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X31_Y24_N10
\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\A5|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\) # 
-- (\A5|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\,
	datab => \A5|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => VCC,
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X31_Y24_N12
\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\A5|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ & (!\A5|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ & 
-- !\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datab => \A5|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\,
	datad => VCC,
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y24_N14
\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y24_N28
\A6|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A6|Mux5~0_combout\ = (!\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \A6|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y24_N22
\A6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A6|Mux3~0_combout\ = (\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \A6|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y24_N16
\A6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A6|Mux2~0_combout\ = (!\A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \A6|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y24_N8
\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A4|A2|HA2|Sum~combout\ $ (VCC)
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A4|A2|HA2|Sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A4|A2|HA2|Sum~combout\,
	datad => VCC,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y24_N10
\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A4|A3|HA2|Sum~combout\ & (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A4|A3|HA2|Sum~combout\ & 
-- (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A4|A3|HA2|Sum~combout\ & !\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y24_N12
\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\)))) # 
-- (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\)))))
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A4|A3|cout~0_combout\) # (\A4|A3|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|cout~0_combout\,
	datab => \A4|A3|cout~1_combout\,
	datad => VCC,
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y24_N14
\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y24_N18
\A5|Mod0|auto_generated|divider|divider|StageOut[17]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\);

-- Location: LCCOMB_X31_Y24_N30
\A5|Mod0|auto_generated|divider|divider|StageOut[18]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A4|A2|cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A4|A2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\);

-- Location: LCCOMB_X28_Y24_N26
\A5|Mod0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ = (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X28_Y24_N20
\A5|Mod0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X29_Y25_N6
\A5|Mod0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\A4|A1|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A4|A1|cout~0_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X29_Y25_N12
\A5|Mod0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X29_Y25_N26
\A5|Mod0|auto_generated|divider|divider|StageOut[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[1]~input_o\ $ (\A4|A0|cout~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \B[1]~input_o\,
	datac => \A4|A0|cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\);

-- Location: LCCOMB_X29_Y25_N4
\A5|Mod0|auto_generated|divider|divider|StageOut[15]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\ = (!\A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[1]~input_o\ $ (\A4|A0|cout~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \B[1]~input_o\,
	datac => \A4|A0|cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\);

-- Location: LCCOMB_X29_Y25_N16
\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\)))
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\,
	datad => VCC,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y25_N18
\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) # (!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\)))
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ & 
-- !\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datad => VCC,
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y25_N20
\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\) # 
-- (\A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\)))) # (!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\) # 
-- (\A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\)))))
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\) # 
-- (\A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => VCC,
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y25_N22
\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\A5|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ & (!\A5|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ & 
-- !\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datad => VCC,
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y25_N24
\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y25_N2
\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\) # 
-- ((\A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\)))) # (!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\);

-- Location: LCCOMB_X27_Y28_N2
\A4|A0|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A0|HA2|Sum~0_combout\ = \A[0]~input_o\ $ (\B[0]~input_o\ $ (\Cin~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Cin~input_o\,
	combout => \A4|A0|HA2|Sum~0_combout\);

-- Location: LCCOMB_X29_Y25_N0
\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- ((\A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\)))) # (!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\);

-- Location: LCCOMB_X29_Y25_N10
\A4|A1|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|HA2|Sum~combout\ = \B[1]~input_o\ $ (\A4|A0|cout~0_combout\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A4|A0|cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A4|A1|HA2|Sum~combout\);

-- Location: LCCOMB_X29_Y25_N14
\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ = (\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\A4|A1|HA2|Sum~combout\)) # (!\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A1|HA2|Sum~combout\,
	datab => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\);

-- Location: LCCOMB_X27_Y28_N4
\A7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux6~0_combout\ = (\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (!\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & ((!\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\) # 
-- (!\A4|A0|HA2|Sum~0_combout\)))) # (!\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ $ (((\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\A7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux5~0_combout\ = (\A4|A0|HA2|Sum~0_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ $ 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\)))) # (!\A4|A0|HA2|Sum~0_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\A7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux4~0_combout\ = (\A4|A0|HA2|Sum~0_combout\) # ((\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\A7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux3~0_combout\ = (\A4|A0|HA2|Sum~0_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ $ 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))) # (!\A4|A0|HA2|Sum~0_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\A7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux2~0_combout\ = (\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # (!\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & 
-- (\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # (!\A4|A0|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\A7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux1~0_combout\ = (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (((\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))) # 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\A4|A0|HA2|Sum~0_combout\ $ (\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\A7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A7|Mux0~0_combout\ = (\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (((\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\) # (\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))) # 
-- (!\A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & ((\A4|A0|HA2|Sum~0_combout\ & (!\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & !\A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)) # 
-- (!\A4|A0|HA2|Sum~0_combout\ & (\A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datab => \A4|A0|HA2|Sum~0_combout\,
	datac => \A5|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datad => \A5|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	combout => \A7|Mux0~0_combout\);

ww_UN(0) <= \UN[0]~output_o\;

ww_UN(1) <= \UN[1]~output_o\;

ww_UN(2) <= \UN[2]~output_o\;

ww_UN(3) <= \UN[3]~output_o\;

ww_UN(4) <= \UN[4]~output_o\;

ww_UN(5) <= \UN[5]~output_o\;

ww_UN(6) <= \UN[6]~output_o\;

ww_DC(0) <= \DC[0]~output_o\;

ww_DC(1) <= \DC[1]~output_o\;

ww_DC(2) <= \DC[2]~output_o\;

ww_DC(3) <= \DC[3]~output_o\;

ww_DC(4) <= \DC[4]~output_o\;

ww_DC(5) <= \DC[5]~output_o\;

ww_DC(6) <= \DC[6]~output_o\;
END structure;


