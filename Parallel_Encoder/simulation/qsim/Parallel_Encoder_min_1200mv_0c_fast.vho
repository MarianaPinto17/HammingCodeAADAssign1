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

-- DATE "12/08/2021 17:40:58"

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

ENTITY 	encoder IS
    PORT (
	d : IN std_logic_vector(10 DOWNTO 0);
	c : OUT std_logic_vector(14 DOWNTO 0)
	);
END encoder;

-- Design Ports Information
-- c[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[11]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[13]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[14]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_c : std_logic_vector(14 DOWNTO 0);
SIGNAL \c[0]~output_o\ : std_logic;
SIGNAL \c[1]~output_o\ : std_logic;
SIGNAL \c[2]~output_o\ : std_logic;
SIGNAL \c[3]~output_o\ : std_logic;
SIGNAL \c[4]~output_o\ : std_logic;
SIGNAL \c[5]~output_o\ : std_logic;
SIGNAL \c[6]~output_o\ : std_logic;
SIGNAL \c[7]~output_o\ : std_logic;
SIGNAL \c[8]~output_o\ : std_logic;
SIGNAL \c[9]~output_o\ : std_logic;
SIGNAL \c[10]~output_o\ : std_logic;
SIGNAL \c[11]~output_o\ : std_logic;
SIGNAL \c[12]~output_o\ : std_logic;
SIGNAL \c[13]~output_o\ : std_logic;
SIGNAL \c[14]~output_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \xorB|final|y~0_combout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \par4|final|y~combout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \par3|final|y~combout\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \par2|final|y~0_combout\ : std_logic;
SIGNAL \par2|final|y~1_combout\ : std_logic;
SIGNAL \par1|final|y~0_combout\ : std_logic;
SIGNAL \par1|final|y~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_d <= d;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X33_Y22_N9
\c[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \par4|final|y~combout\,
	devoe => ww_devoe,
	o => \c[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\c[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \par3|final|y~combout\,
	devoe => ww_devoe,
	o => \c[1]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\c[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \par2|final|y~1_combout\,
	devoe => ww_devoe,
	o => \c[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\c[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \par1|final|y~combout\,
	devoe => ww_devoe,
	o => \c[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\c[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[10]~input_o\,
	devoe => ww_devoe,
	o => \c[4]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\c[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[9]~input_o\,
	devoe => ww_devoe,
	o => \c[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\c[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[8]~input_o\,
	devoe => ww_devoe,
	o => \c[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\c[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[7]~input_o\,
	devoe => ww_devoe,
	o => \c[7]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\c[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[6]~input_o\,
	devoe => ww_devoe,
	o => \c[8]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\c[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[5]~input_o\,
	devoe => ww_devoe,
	o => \c[9]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\c[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[4]~input_o\,
	devoe => ww_devoe,
	o => \c[10]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\c[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[3]~input_o\,
	devoe => ww_devoe,
	o => \c[11]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\c[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[2]~input_o\,
	devoe => ww_devoe,
	o => \c[12]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\c[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[1]~input_o\,
	devoe => ww_devoe,
	o => \c[13]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\c[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d[0]~input_o\,
	devoe => ww_devoe,
	o => \c[14]~output_o\);

-- Location: IOIBUF_X24_Y31_N1
\d[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\d[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\d[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\d[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\d[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: LCCOMB_X27_Y20_N24
\xorB|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \xorB|final|y~0_combout\ = \d[8]~input_o\ $ (\d[5]~input_o\ $ (\d[10]~input_o\ $ (\d[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[8]~input_o\,
	datab => \d[5]~input_o\,
	datac => \d[10]~input_o\,
	datad => \d[9]~input_o\,
	combout => \xorB|final|y~0_combout\);

-- Location: IOIBUF_X26_Y31_N1
\d[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\d[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: LCCOMB_X27_Y20_N10
\par4|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par4|final|y~combout\ = \d[4]~input_o\ $ (\xorB|final|y~0_combout\ $ (\d[2]~input_o\ $ (\d[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[4]~input_o\,
	datab => \xorB|final|y~0_combout\,
	datac => \d[2]~input_o\,
	datad => \d[7]~input_o\,
	combout => \par4|final|y~combout\);

-- Location: IOIBUF_X33_Y25_N1
\d[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: IOIBUF_X33_Y16_N22
\d[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\d[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: LCCOMB_X27_Y20_N12
\par3|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par3|final|y~combout\ = \d[3]~input_o\ $ (\xorB|final|y~0_combout\ $ (\d[6]~input_o\ $ (\d[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[3]~input_o\,
	datab => \xorB|final|y~0_combout\,
	datac => \d[6]~input_o\,
	datad => \d[1]~input_o\,
	combout => \par3|final|y~combout\);

-- Location: IOIBUF_X33_Y16_N15
\d[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: LCCOMB_X27_Y20_N6
\par2|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par2|final|y~0_combout\ = \d[0]~input_o\ $ (\d[7]~input_o\ $ (\d[6]~input_o\ $ (\d[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \d[7]~input_o\,
	datac => \d[6]~input_o\,
	datad => \d[3]~input_o\,
	combout => \par2|final|y~0_combout\);

-- Location: LCCOMB_X27_Y20_N0
\par2|final|y~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par2|final|y~1_combout\ = \d[4]~input_o\ $ (\par2|final|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \d[4]~input_o\,
	datad => \par2|final|y~0_combout\,
	combout => \par2|final|y~1_combout\);

-- Location: LCCOMB_X27_Y20_N18
\par1|final|y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par1|final|y~0_combout\ = \d[0]~input_o\ $ (\d[1]~input_o\ $ (\d[6]~input_o\ $ (\d[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[0]~input_o\,
	datab => \d[1]~input_o\,
	datac => \d[6]~input_o\,
	datad => \d[7]~input_o\,
	combout => \par1|final|y~0_combout\);

-- Location: LCCOMB_X27_Y20_N4
\par1|final|y\ : cycloneiv_lcell_comb
-- Equation(s):
-- \par1|final|y~combout\ = \d[2]~input_o\ $ (\par1|final|y~0_combout\ $ (\d[10]~input_o\ $ (\d[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d[2]~input_o\,
	datab => \par1|final|y~0_combout\,
	datac => \d[10]~input_o\,
	datad => \d[8]~input_o\,
	combout => \par1|final|y~combout\);

ww_c(0) <= \c[0]~output_o\;

ww_c(1) <= \c[1]~output_o\;

ww_c(2) <= \c[2]~output_o\;

ww_c(3) <= \c[3]~output_o\;

ww_c(4) <= \c[4]~output_o\;

ww_c(5) <= \c[5]~output_o\;

ww_c(6) <= \c[6]~output_o\;

ww_c(7) <= \c[7]~output_o\;

ww_c(8) <= \c[8]~output_o\;

ww_c(9) <= \c[9]~output_o\;

ww_c(10) <= \c[10]~output_o\;

ww_c(11) <= \c[11]~output_o\;

ww_c(12) <= \c[12]~output_o\;

ww_c(13) <= \c[13]~output_o\;

ww_c(14) <= \c[14]~output_o\;
END structure;


