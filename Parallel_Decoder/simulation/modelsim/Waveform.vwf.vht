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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/08/2021 21:04:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HamDecoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HamDecoder_vhd_vec_tst IS
END HamDecoder_vhd_vec_tst;
ARCHITECTURE HamDecoder_arch OF HamDecoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT HamDecoder
	PORT (
	c : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
	d : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : HamDecoder
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	d => d
	);
-- c[14]
t_prcs_c_14: PROCESS
BEGIN
	c(14) <= '0';
WAIT;
END PROCESS t_prcs_c_14;
-- c[13]
t_prcs_c_13: PROCESS
BEGIN
	c(13) <= '0';
WAIT;
END PROCESS t_prcs_c_13;
-- c[12]
t_prcs_c_12: PROCESS
BEGIN
	c(12) <= '0';
WAIT;
END PROCESS t_prcs_c_12;
-- c[11]
t_prcs_c_11: PROCESS
BEGIN
	c(11) <= '0';
WAIT;
END PROCESS t_prcs_c_11;
-- c[10]
t_prcs_c_10: PROCESS
BEGIN
	c(10) <= '0';
WAIT;
END PROCESS t_prcs_c_10;
-- c[9]
t_prcs_c_9: PROCESS
BEGIN
	c(9) <= '0';
WAIT;
END PROCESS t_prcs_c_9;
-- c[8]
t_prcs_c_8: PROCESS
BEGIN
	c(8) <= '0';
WAIT;
END PROCESS t_prcs_c_8;
-- c[7]
t_prcs_c_7: PROCESS
BEGIN
	c(7) <= '0';
WAIT;
END PROCESS t_prcs_c_7;
-- c[6]
t_prcs_c_6: PROCESS
BEGIN
	c(6) <= '0';
WAIT;
END PROCESS t_prcs_c_6;
-- c[5]
t_prcs_c_5: PROCESS
BEGIN
	c(5) <= '0';
WAIT;
END PROCESS t_prcs_c_5;
-- c[4]
t_prcs_c_4: PROCESS
BEGIN
	c(4) <= '0';
WAIT;
END PROCESS t_prcs_c_4;
-- c[3]
t_prcs_c_3: PROCESS
BEGIN
	c(3) <= '0';
WAIT;
END PROCESS t_prcs_c_3;
-- c[2]
t_prcs_c_2: PROCESS
BEGIN
	c(2) <= '0';
WAIT;
END PROCESS t_prcs_c_2;
-- c[1]
t_prcs_c_1: PROCESS
BEGIN
	c(1) <= '0';
WAIT;
END PROCESS t_prcs_c_1;
-- c[0]
t_prcs_c_0: PROCESS
BEGIN
	c(0) <= '0';
WAIT;
END PROCESS t_prcs_c_0;
END HamDecoder_arch;
