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

-- DATE "03/01/2024 15:08:22"

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
-- Cin	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- A[3]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A4|A0|HA1|Sum~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A4|A1|HA2|Sum~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A4|A1|cout~0_combout\ : std_logic;
SIGNAL \A4|A2|cout~0_combout\ : std_logic;
SIGNAL \A4|A3|cout~0_combout\ : std_logic;
SIGNAL \A4|A2|HA2|Sum~0_combout\ : std_logic;
SIGNAL \A5|U[0]~2_combout\ : std_logic;
SIGNAL \A4|A3|HA2|Sum~combout\ : std_logic;
SIGNAL \A5|U[1]~5_combout\ : std_logic;
SIGNAL \A5|U[1]~6_combout\ : std_logic;
SIGNAL \A5|U[0]~3_combout\ : std_logic;
SIGNAL \BCDU|Mux1~6_combout\ : std_logic;
SIGNAL \BCDU|Mux1~7_combout\ : std_logic;
SIGNAL \A5|U[0]~4_combout\ : std_logic;
SIGNAL \BCDU|Mux1~8_combout\ : std_logic;
SIGNAL \A5|Mux1~0_combout\ : std_logic;
SIGNAL \A5|Mux0~0_combout\ : std_logic;
SIGNAL \BCDD|Mux1~2_combout\ : std_logic;
SIGNAL \BCDD|Mux1~4_combout\ : std_logic;
SIGNAL \BCDD|Mux1~3_combout\ : std_logic;
SIGNAL \BCDD|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \A5|ALT_INV_U[1]~6_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
UN <= ww_UN;
DC <= ww_DC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BCDD|ALT_INV_Mux1~4_combout\ <= NOT \BCDD|Mux1~4_combout\;
\A5|ALT_INV_U[1]~6_combout\ <= NOT \A5|U[1]~6_combout\;

-- Location: IOOBUF_X21_Y29_N23
\UN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDU|Mux1~6_combout\,
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
	i => GND,
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
	i => \BCDU|Mux1~7_combout\,
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
	i => \BCDU|Mux1~6_combout\,
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
	i => \A5|U[0]~4_combout\,
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
	i => \BCDU|Mux1~8_combout\,
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
	i => \A5|ALT_INV_U[1]~6_combout\,
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
	i => \BCDD|Mux1~2_combout\,
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
	i => GND,
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
	i => \BCDD|ALT_INV_Mux1~4_combout\,
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
	i => \BCDD|Mux1~2_combout\,
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
	i => \A5|Mux1~0_combout\,
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
	i => \BCDD|Mux1~3_combout\,
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
	i => \A5|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DC[6]~output_o\);

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

-- Location: LCCOMB_X1_Y26_N2
\A4|A0|HA1|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A0|HA1|Sum~combout\ = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A4|A0|HA1|Sum~combout\);

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

-- Location: LCCOMB_X1_Y26_N20
\A4|A1|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|HA2|Sum~0_combout\ = \B[1]~input_o\ $ (\A[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A4|A1|HA2|Sum~0_combout\);

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

-- Location: LCCOMB_X1_Y26_N24
\A4|A1|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|cout~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A4|A1|cout~0_combout\);

-- Location: LCCOMB_X12_Y23_N24
\A4|A2|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\A4|A1|cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \A4|A1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A4|A1|cout~0_combout\,
	combout => \A4|A2|cout~0_combout\);

-- Location: LCCOMB_X12_Y23_N26
\A4|A3|cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|cout~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # (\A4|A2|cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \A4|A2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A4|A3|cout~0_combout\);

-- Location: LCCOMB_X12_Y23_N28
\A4|A2|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|HA2|Sum~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\ $ (\A4|A1|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A4|A1|cout~0_combout\,
	combout => \A4|A2|HA2|Sum~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\A5|U[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|U[0]~2_combout\ = (\A4|A1|HA2|Sum~0_combout\ & (((\A4|A2|HA2|Sum~0_combout\) # (!\A4|A3|cout~0_combout\)))) # (!\A4|A1|HA2|Sum~0_combout\ & (!\A4|A3|cout~0_combout\ & ((\A4|A0|HA1|Sum~combout\) # (\A4|A2|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A0|HA1|Sum~combout\,
	datab => \A4|A1|HA2|Sum~0_combout\,
	datac => \A4|A3|cout~0_combout\,
	datad => \A4|A2|HA2|Sum~0_combout\,
	combout => \A5|U[0]~2_combout\);

-- Location: LCCOMB_X12_Y23_N18
\A4|A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|HA2|Sum~combout\ = \B[3]~input_o\ $ (\A[3]~input_o\ $ (\A4|A2|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A4|A3|HA2|Sum~combout\);

-- Location: LCCOMB_X12_Y23_N14
\A5|U[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|U[1]~5_combout\ = (\A4|A2|HA2|Sum~0_combout\) # ((\A4|A3|HA2|Sum~combout\) # ((\A4|A0|HA1|Sum~combout\ & \A4|A1|HA2|Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A0|HA1|Sum~combout\,
	datab => \A4|A2|HA2|Sum~0_combout\,
	datac => \A4|A1|HA2|Sum~0_combout\,
	datad => \A4|A3|HA2|Sum~combout\,
	combout => \A5|U[1]~5_combout\);

-- Location: LCCOMB_X12_Y23_N4
\A5|U[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|U[1]~6_combout\ = (\A5|U[1]~5_combout\ & ((\B[3]~input_o\ & ((\A[3]~input_o\) # (\A4|A2|cout~0_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \A4|A2|cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A5|U[1]~5_combout\,
	datac => \A[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|U[1]~6_combout\);

-- Location: LCCOMB_X12_Y23_N16
\A5|U[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|U[0]~3_combout\ = (\A4|A3|cout~0_combout\ & (!\A4|A2|HA2|Sum~0_combout\ & ((!\A4|A1|HA2|Sum~0_combout\) # (!\A4|A0|HA1|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A0|HA1|Sum~combout\,
	datab => \A4|A1|HA2|Sum~0_combout\,
	datac => \A4|A3|cout~0_combout\,
	datad => \A4|A2|HA2|Sum~0_combout\,
	combout => \A5|U[0]~3_combout\);

-- Location: LCCOMB_X12_Y23_N22
\BCDU|Mux1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDU|Mux1~6_combout\ = (!\A5|U[1]~6_combout\ & ((\A4|A3|HA2|Sum~combout\ & (\A5|U[0]~2_combout\)) # (!\A4|A3|HA2|Sum~combout\ & ((\A5|U[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|U[0]~2_combout\,
	datab => \A4|A3|HA2|Sum~combout\,
	datac => \A5|U[1]~6_combout\,
	datad => \A5|U[0]~3_combout\,
	combout => \BCDU|Mux1~6_combout\);

-- Location: LCCOMB_X12_Y23_N0
\BCDU|Mux1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDU|Mux1~7_combout\ = (\A5|U[1]~6_combout\ & ((\A4|A3|HA2|Sum~combout\ & (!\A5|U[0]~2_combout\)) # (!\A4|A3|HA2|Sum~combout\ & ((!\A5|U[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|U[0]~2_combout\,
	datab => \A4|A3|HA2|Sum~combout\,
	datac => \A5|U[1]~6_combout\,
	datad => \A5|U[0]~3_combout\,
	combout => \BCDU|Mux1~7_combout\);

-- Location: LCCOMB_X12_Y23_N12
\A5|U[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|U[0]~4_combout\ = (\A4|A3|HA2|Sum~combout\ & (\A5|U[0]~2_combout\)) # (!\A4|A3|HA2|Sum~combout\ & ((\A5|U[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|U[0]~2_combout\,
	datab => \A5|U[0]~3_combout\,
	datad => \A4|A3|HA2|Sum~combout\,
	combout => \A5|U[0]~4_combout\);

-- Location: LCCOMB_X12_Y23_N2
\BCDU|Mux1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDU|Mux1~8_combout\ = (\A5|U[1]~6_combout\) # ((\A4|A3|HA2|Sum~combout\ & (\A5|U[0]~2_combout\)) # (!\A4|A3|HA2|Sum~combout\ & ((\A5|U[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A5|U[0]~2_combout\,
	datab => \A4|A3|HA2|Sum~combout\,
	datac => \A5|U[1]~6_combout\,
	datad => \A5|U[0]~3_combout\,
	combout => \BCDU|Mux1~8_combout\);

-- Location: LCCOMB_X12_Y23_N8
\A5|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mux1~0_combout\ = (\A4|A2|HA2|Sum~0_combout\ & (\A4|A3|HA2|Sum~combout\ & ((\A4|A1|HA2|Sum~0_combout\) # (!\A4|A3|cout~0_combout\)))) # (!\A4|A2|HA2|Sum~0_combout\ & ((\A4|A3|cout~0_combout\ & ((!\A4|A3|HA2|Sum~combout\))) # (!\A4|A3|cout~0_combout\ & 
-- (\A4|A1|HA2|Sum~0_combout\ & \A4|A3|HA2|Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A1|HA2|Sum~0_combout\,
	datab => \A4|A2|HA2|Sum~0_combout\,
	datac => \A4|A3|cout~0_combout\,
	datad => \A4|A3|HA2|Sum~combout\,
	combout => \A5|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y23_N10
\A5|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A5|Mux0~0_combout\ = (\B[3]~input_o\ & ((\A4|A2|HA2|Sum~0_combout\ & (!\A[3]~input_o\ & !\A4|A2|cout~0_combout\)) # (!\A4|A2|HA2|Sum~0_combout\ & ((!\A4|A2|cout~0_combout\) # (!\A[3]~input_o\))))) # (!\B[3]~input_o\ & (((!\A4|A2|cout~0_combout\) # 
-- (!\A[3]~input_o\)) # (!\A4|A2|HA2|Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A4|A2|HA2|Sum~0_combout\,
	datac => \A[3]~input_o\,
	datad => \A4|A2|cout~0_combout\,
	combout => \A5|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N24
\BCDD|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDD|Mux1~2_combout\ = (\A5|Mux1~0_combout\ & \A5|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A5|Mux1~0_combout\,
	datad => \A5|Mux0~0_combout\,
	combout => \BCDD|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y23_N20
\BCDD|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDD|Mux1~4_combout\ = ((\A4|A2|HA2|Sum~0_combout\ & (\A4|A1|HA2|Sum~0_combout\ & \A4|A3|HA2|Sum~combout\)) # (!\A4|A2|HA2|Sum~0_combout\ & ((!\A4|A3|HA2|Sum~combout\)))) # (!\A4|A3|cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A1|HA2|Sum~0_combout\,
	datab => \A4|A2|HA2|Sum~0_combout\,
	datac => \A4|A3|cout~0_combout\,
	datad => \A4|A3|HA2|Sum~combout\,
	combout => \BCDD|Mux1~4_combout\);

-- Location: LCCOMB_X27_Y28_N10
\BCDD|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDD|Mux1~3_combout\ = (\A5|Mux1~0_combout\) # (!\A5|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A5|Mux1~0_combout\,
	datad => \A5|Mux0~0_combout\,
	combout => \BCDD|Mux1~3_combout\);

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


