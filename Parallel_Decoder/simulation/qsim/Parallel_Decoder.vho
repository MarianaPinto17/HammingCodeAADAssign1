-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/08/2021 22:37:04"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_NCEO~	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: 16mA
-- ~ALTERA_DATA0~	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO~	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_NCSO~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO~~padout\ : std_logic;
SIGNAL \~ALTERA_NCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HamDecoder IS
    PORT (
	c : IN std_logic_vector(14 DOWNTO 0);
	d : OUT std_logic_vector(10 DOWNTO 0)
	);
END HamDecoder;

-- Design Ports Information
-- d[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[10]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[11]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[13]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HamDecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_c : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(10 DOWNTO 0);
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \d[2]~output_o\ : std_logic;
SIGNAL \d[3]~output_o\ : std_logic;
SIGNAL \d[4]~output_o\ : std_logic;
SIGNAL \d[5]~output_o\ : std_logic;
SIGNAL \d[6]~output_o\ : std_logic;
SIGNAL \d[7]~output_o\ : std_logic;
SIGNAL \d[8]~output_o\ : std_logic;
SIGNAL \d[9]~output_o\ : std_logic;
SIGNAL \d[10]~output_o\ : std_logic;
SIGNAL \c[9]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \xorB|final|y~0_combout\ : std_logic;
SIGNAL \c[12]~input_o\ : std_logic;
SIGNAL \c[10]~input_o\ : std_logic;
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \par4|final|y~0_combout\ : std_logic;
SIGNAL \par4|final|y~combout\ : std_logic;
SIGNAL \c[8]~input_o\ : std_logic;
SIGNAL \c[14]~input_o\ : std_logic;
SIGNAL \xorA|final|y~0_combout\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \c[13]~input_o\ : std_logic;
SIGNAL \par1|final|y~0_combout\ : std_logic;
SIGNAL \par1|final|y~combout\ : std_logic;
SIGNAL \c[11]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \par2|final|y~0_combout\ : std_logic;
SIGNAL \par2|final|y~combout\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \par3|final|y~0_combout\ : std_logic;
SIGNAL \par3|final|y~combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_c <= c;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X26_Y31_N2
\d[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~0_combout\,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\d[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~1_combout\,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\d[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~2_combout\,
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\d[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~3_combout\,
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\d[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~4_combout\,
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\d[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~5_combout\,
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\d[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~6_combout\,
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\d[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~7_combout\,
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\d[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~8_combout\,
	devoe => ww_devoe,
	o => \d[8]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\d[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~9_combout\,
	devoe => ww_devoe,
	o => \d[9]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\d[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp~10_combout\,
	devoe => ww_devoe,
	o => \d[10]~output_o\);

-- Location: IOIBUF_X31_Y31_N1
\c[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\c[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\c[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\c[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: LCCOMB_X30_Y25_N16
\xorB|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorB|final|y~0_combout\ = \c[9]~input_o\ $ (\c[4]~input_o\ $ (\c[5]~input_o\ $ (\c[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[9]~input_o\,
	datab => \c[4]~input_o\,
	datac => \c[5]~input_o\,
	datad => \c[6]~input_o\,
	combout => \xorB|final|y~0_combout\);

-- Location: IOIBUF_X33_Y27_N1
\c[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(12),
	o => \c[12]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\c[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(10),
	o => \c[10]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\c[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\c[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: LCCOMB_X30_Y25_N10
\par4|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par4|final|y~0_combout\ = \c[12]~input_o\ $ (\c[10]~input_o\ $ (\c[0]~input_o\ $ (\c[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[12]~input_o\,
	datab => \c[10]~input_o\,
	datac => \c[0]~input_o\,
	datad => \c[7]~input_o\,
	combout => \par4|final|y~0_combout\);

-- Location: LCCOMB_X30_Y25_N20
\par4|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par4|final|y~combout\ = \xorB|final|y~0_combout\ $ (\par4|final|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xorB|final|y~0_combout\,
	datad => \par4|final|y~0_combout\,
	combout => \par4|final|y~combout\);

-- Location: IOIBUF_X33_Y15_N8
\c[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\c[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(14),
	o => \c[14]~input_o\);

-- Location: LCCOMB_X30_Y25_N2
\xorA|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorA|final|y~0_combout\ = \c[8]~input_o\ $ (\c[4]~input_o\ $ (\c[14]~input_o\ $ (\c[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[8]~input_o\,
	datab => \c[4]~input_o\,
	datac => \c[14]~input_o\,
	datad => \c[7]~input_o\,
	combout => \xorA|final|y~0_combout\);

-- Location: IOIBUF_X33_Y28_N8
\c[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\c[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(13),
	o => \c[13]~input_o\);

-- Location: LCCOMB_X30_Y25_N8
\par1|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par1|final|y~0_combout\ = \c[3]~input_o\ $ (\c[13]~input_o\ $ (\c[12]~input_o\ $ (\c[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~input_o\,
	datab => \c[13]~input_o\,
	datac => \c[12]~input_o\,
	datad => \c[6]~input_o\,
	combout => \par1|final|y~0_combout\);

-- Location: LCCOMB_X30_Y25_N18
\par1|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par1|final|y~combout\ = \xorA|final|y~0_combout\ $ (\par1|final|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xorA|final|y~0_combout\,
	datac => \par1|final|y~0_combout\,
	combout => \par1|final|y~combout\);

-- Location: IOIBUF_X33_Y22_N1
\c[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(11),
	o => \c[11]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\c[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: LCCOMB_X30_Y25_N12
\par2|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par2|final|y~0_combout\ = \c[5]~input_o\ $ (\c[11]~input_o\ $ (\c[10]~input_o\ $ (\c[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~input_o\,
	datab => \c[11]~input_o\,
	datac => \c[10]~input_o\,
	datad => \c[2]~input_o\,
	combout => \par2|final|y~0_combout\);

-- Location: LCCOMB_X30_Y25_N30
\par2|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par2|final|y~combout\ = \xorA|final|y~0_combout\ $ (\par2|final|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xorA|final|y~0_combout\,
	datad => \par2|final|y~0_combout\,
	combout => \par2|final|y~combout\);

-- Location: IOIBUF_X26_Y31_N8
\c[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: LCCOMB_X30_Y25_N6
\par3|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par3|final|y~0_combout\ = \c[1]~input_o\ $ (\c[13]~input_o\ $ (\c[11]~input_o\ $ (\c[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[1]~input_o\,
	datab => \c[13]~input_o\,
	datac => \c[11]~input_o\,
	datad => \c[8]~input_o\,
	combout => \par3|final|y~0_combout\);

-- Location: LCCOMB_X30_Y25_N0
\par3|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par3|final|y~combout\ = \xorB|final|y~0_combout\ $ (\par3|final|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xorB|final|y~0_combout\,
	datad => \par3|final|y~0_combout\,
	combout => \par3|final|y~combout\);

-- Location: LCCOMB_X30_Y25_N4
\Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\par4|final|y~combout\ & (\par1|final|y~combout\ & (\par2|final|y~combout\ & \par3|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par4|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par3|final|y~combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X30_Y25_N22
\temp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = \Equal5~0_combout\ $ (\c[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	datad => \c[4]~input_o\,
	combout => \temp~0_combout\);

-- Location: LCCOMB_X30_Y24_N24
\Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\par3|final|y~combout\ & (!\par1|final|y~combout\ & (\par2|final|y~combout\ & \par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X30_Y24_N26
\temp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = \Equal5~1_combout\ $ (\c[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datad => \c[5]~input_o\,
	combout => \temp~1_combout\);

-- Location: LCCOMB_X30_Y25_N24
\Equal5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\par4|final|y~combout\ & (\par1|final|y~combout\ & (!\par2|final|y~combout\ & \par3|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par4|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par3|final|y~combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X30_Y25_N26
\temp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = \Equal5~2_combout\ $ (\c[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~2_combout\,
	datad => \c[6]~input_o\,
	combout => \temp~2_combout\);

-- Location: LCCOMB_X30_Y24_N28
\Equal5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (!\par3|final|y~combout\ & (\par1|final|y~combout\ & (\par2|final|y~combout\ & \par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X30_Y24_N30
\temp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = \Equal5~3_combout\ $ (\c[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~3_combout\,
	datad => \c[7]~input_o\,
	combout => \temp~3_combout\);

-- Location: LCCOMB_X30_Y24_N0
\Equal5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\par3|final|y~combout\ & (\par1|final|y~combout\ & (\par2|final|y~combout\ & !\par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X30_Y24_N2
\temp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = \Equal5~4_combout\ $ (\c[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~4_combout\,
	datac => \c[8]~input_o\,
	combout => \temp~4_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Equal5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (\par4|final|y~combout\ & (!\par1|final|y~combout\ & (!\par2|final|y~combout\ & \par3|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par4|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par3|final|y~combout\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X30_Y25_N14
\temp~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = \Equal5~5_combout\ $ (\c[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~5_combout\,
	datac => \c[9]~input_o\,
	combout => \temp~5_combout\);

-- Location: LCCOMB_X30_Y24_N4
\Equal5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (!\par3|final|y~combout\ & (!\par1|final|y~combout\ & (\par2|final|y~combout\ & \par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X30_Y24_N14
\temp~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = \Equal5~6_combout\ $ (\c[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~6_combout\,
	datac => \c[10]~input_o\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X30_Y24_N16
\Equal5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (\par3|final|y~combout\ & (!\par1|final|y~combout\ & (\par2|final|y~combout\ & !\par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X30_Y24_N18
\temp~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = \Equal5~7_combout\ $ (\c[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~7_combout\,
	datad => \c[11]~input_o\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X30_Y24_N20
\Equal5~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (!\par3|final|y~combout\ & (\par1|final|y~combout\ & (!\par2|final|y~combout\ & \par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X30_Y24_N22
\temp~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = \Equal5~8_combout\ $ (\c[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~8_combout\,
	datad => \c[12]~input_o\,
	combout => \temp~8_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Equal5~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\par3|final|y~combout\ & (\par1|final|y~combout\ & (!\par2|final|y~combout\ & !\par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X30_Y24_N10
\temp~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = \c[13]~input_o\ $ (\Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c[13]~input_o\,
	datac => \Equal5~9_combout\,
	combout => \temp~9_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Equal5~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (!\par3|final|y~combout\ & (\par1|final|y~combout\ & (\par2|final|y~combout\ & !\par4|final|y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \par3|final|y~combout\,
	datab => \par1|final|y~combout\,
	datac => \par2|final|y~combout\,
	datad => \par4|final|y~combout\,
	combout => \Equal5~10_combout\);

-- Location: LCCOMB_X30_Y24_N6
\temp~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = \c[14]~input_o\ $ (\Equal5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \c[14]~input_o\,
	datad => \Equal5~10_combout\,
	combout => \temp~10_combout\);

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;

ww_d(2) <= \d[2]~output_o\;

ww_d(3) <= \d[3]~output_o\;

ww_d(4) <= \d[4]~output_o\;

ww_d(5) <= \d[5]~output_o\;

ww_d(6) <= \d[6]~output_o\;

ww_d(7) <= \d[7]~output_o\;

ww_d(8) <= \d[8]~output_o\;

ww_d(9) <= \d[9]~output_o\;

ww_d(10) <= \d[10]~output_o\;
END structure;


