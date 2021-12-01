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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/01/2021 18:25:34"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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

ENTITY 	decoder IS
    PORT (
	c : IN std_logic_vector(14 DOWNTO 0);
	d : OUT std_logic_vector(10 DOWNTO 0)
	);
END decoder;

-- Design Ports Information
-- c[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[13]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[14]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder IS
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
SIGNAL \c[0]~input_o\ : std_logic;
SIGNAL \c[1]~input_o\ : std_logic;
SIGNAL \c[2]~input_o\ : std_logic;
SIGNAL \c[3]~input_o\ : std_logic;
SIGNAL \c[4]~input_o\ : std_logic;
SIGNAL \c[5]~input_o\ : std_logic;
SIGNAL \c[6]~input_o\ : std_logic;
SIGNAL \c[7]~input_o\ : std_logic;
SIGNAL \c[8]~input_o\ : std_logic;
SIGNAL \c[9]~input_o\ : std_logic;
SIGNAL \c[10]~input_o\ : std_logic;
SIGNAL \c[11]~input_o\ : std_logic;
SIGNAL \c[12]~input_o\ : std_logic;
SIGNAL \c[13]~input_o\ : std_logic;
SIGNAL \c[14]~input_o\ : std_logic;
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

-- Location: IOOBUF_X26_Y31_N9
\d[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\d[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\d[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\d[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\d[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\d[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\d[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\d[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\d[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[8]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\d[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[9]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\d[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[10]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\c[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(0),
	o => \c[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\c[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(1),
	o => \c[1]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\c[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(2),
	o => \c[2]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\c[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(3),
	o => \c[3]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\c[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(4),
	o => \c[4]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\c[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(5),
	o => \c[5]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\c[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(6),
	o => \c[6]~input_o\);

-- Location: IOIBUF_X33_Y22_N8
\c[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(7),
	o => \c[7]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\c[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(8),
	o => \c[8]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\c[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(9),
	o => \c[9]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\c[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(10),
	o => \c[10]~input_o\);

-- Location: IOIBUF_X16_Y31_N1
\c[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(11),
	o => \c[11]~input_o\);

-- Location: IOIBUF_X16_Y31_N8
\c[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(12),
	o => \c[12]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\c[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(13),
	o => \c[13]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\c[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c(14),
	o => \c[14]~input_o\);

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


