library ieee;
use ieee.std_logic_1164.all;

library xor_gate;
use xor_gate.all;
library decoder;
use decoder.all;


entity HamDecoder is
	port (c	: in std_logic_vector(14 downto 0);
			d	: out std_logic_vector(10 downto 0));
end HamDecoder;


architecture structural of HamDecoder is

	signal xor_a, xor_b		: std_logic;
	signal p1, p2, p3, p4	: std_logic;
	signal parWord				: std_logic_vector(3 downto 0);
	signal errorWord			: std_logic_vector(10 downto 0);
	signal temp 				: std_logic_vector(10 downto 0);
	component xor4
		port (x0, x1, x2, x3	: in std_logic;
				y					: out std_logic);
	end component;
	component xor5
		port (x0, x1, x2, x3, x4	: in std_logic;
				y							: out std_logic);
	end component;
	
begin

	xorA:	xor4 port map (c(0), c(6), c(7), c(10), xor_a);
	xorB:	xor4 port map (c(5), c(8), c(9), c(10), xor_b);
	par1:	xor5 port map (c(1), c(2), c(8), c(11), xor_a, p1);
	par2:	xor5 port map (c(3), c(4), c(9), c(12), xor_a, p2);
	par3: xor5 port map (c(1), c(3), c(6), c(13), xor_b, p3);
	par4: xor5 port map (c(2), c(4), c(7), c(14), xor_b, p4);
	parWord <= p1 & p2 & p3 & p4;
	
	process(temp, parWord)
	begin
	temp <= c(10 downto 0);
	if (parWord = "1100") then
			temp(0) <= not temp(0);
		elsif (parWord = "1010") then
			temp(1) <= not temp(1);
		elsif (parWord = "1001") then
			temp(2) <= not temp(2);
		elsif (parWord = "0110") then
			temp(3) <= not temp(3);
		elsif (parWord = "0101") then
			temp(4) <= not temp(4);
		elsif (parWord = "0011") then
			temp(5) <= not temp(5);
		elsif (parWord = "1110") then
			temp(6) <= not temp(6);
		elsif (parWord = "1101") then
			temp(7) <= not temp(7);
		elsif (parWord = "1011") then
			temp(8) <= not temp(8);
		elsif (parWord = "0111") then
			temp(9) <= not temp(9);
		elsif (parWord = "1111") then
			temp(10) <= not temp(10);
		end if;
	end process;
	
	d <= temp;
	
end structural;