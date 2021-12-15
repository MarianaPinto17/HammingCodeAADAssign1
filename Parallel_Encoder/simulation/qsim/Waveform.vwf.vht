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
-- Generated on "12/08/2021 18:43:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          encoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY encoder_vhd_vec_tst IS
END encoder_vhd_vec_tst;
ARCHITECTURE encoder_arch OF encoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(10 DOWNTO 0);
COMPONENT encoder
	PORT (
	c : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	d : IN STD_LOGIC_VECTOR(10 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : encoder
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	d => d
	);
-- d[10]
t_prcs_d_10: PROCESS
BEGIN
	d(10) <= '0';
WAIT;
END PROCESS t_prcs_d_10;
-- d[9]
t_prcs_d_9: PROCESS
BEGIN
	d(9) <= '0';
WAIT;
END PROCESS t_prcs_d_9;
-- d[8]
t_prcs_d_8: PROCESS
BEGIN
	d(8) <= '0';
WAIT;
END PROCESS t_prcs_d_8;
-- d[7]
t_prcs_d_7: PROCESS
BEGIN
	d(7) <= '0';
WAIT;
END PROCESS t_prcs_d_7;
-- d[6]
t_prcs_d_6: PROCESS
BEGIN
	d(6) <= '0';
WAIT;
END PROCESS t_prcs_d_6;
-- d[5]
t_prcs_d_5: PROCESS
BEGIN
	d(5) <= '1';
WAIT;
END PROCESS t_prcs_d_5;
-- d[4]
t_prcs_d_4: PROCESS
BEGIN
	d(4) <= '1';
WAIT;
END PROCESS t_prcs_d_4;
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '1';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '1';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '1';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '1';
WAIT;
END PROCESS t_prcs_d_0;
END encoder_arch;
