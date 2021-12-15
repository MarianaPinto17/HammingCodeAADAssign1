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
	
	xorA:	xor4 port map (c(14), c(8), c(7), c(4), xor_a);
	xorB:	xor4 port map (c(9), c(6), c(5), c(4), xor_b);
	par1:	xor5 port map (c(13), c(12), c(6), c(3), xor_a, p1);
	par2:	xor5 port map (c(11), c(10), c(2), c(5), xor_a, p2);
	par3: xor5 port map (c(13), c(11), c(8), c(1), xor_b, p3);
	par4: xor5 port map (c(12), c(10), c(7), c(0), xor_b, p4);
	parWord <= p1 & p2 & p3 & p4;
	
	process(temp, parWord)
	begin
	temp <= c(14 downto 4);
	if (parWord = "1100") then
			temp(10) <= not c(14);
		elsif (parWord = "1010") then
			temp(9) <= not c(13);
		elsif (parWord = "1001") then
			temp(8) <= not c(12);
		elsif (parWord = "0110") then
			temp(7) <= not c(11);
		elsif (parWord = "0101") then
			temp(6) <= not c(10);
		elsif (parWord = "0011") then
			temp(5) <= not c(9);
		elsif (parWord = "1110") then
			temp(4) <= not c(8);
		elsif (parWord = "1101") then
			temp(3) <= not c(7);
		elsif (parWord = "1011") then
			temp(2) <= not c(6);
		elsif (parWord = "0111") then
			temp(1) <= not c(5);
		elsif (parWord = "1111") then
			temp(0) <= not c(4);
		end if;
	end process;
	
	d <= temp;

end structural;