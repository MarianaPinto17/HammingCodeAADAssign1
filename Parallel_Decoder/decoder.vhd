library ieee;
use ieee.std_logic_1164.all;

library xor_gate;
use xor_gate.all;


entity decoder is
	port (c	: in std_logic_vector(14 downto 0);
			d	: out std_logic_vector(10 downto 0));
end decoder;


architecture structural of decoder is

	signal xor_a, xor_b		: std_logic;
	signal p1, p2, p3, p4	: std_logic;
	signal H1, H2, H3, H4 	: std_logic_vector(10 downto 0);
	signal word, parWord		: std_logic_vector(3 downto 0);
	component xor4
		port (x0, x1, x2, x3	: in std_logic;
				y					: out std_logic);
	end component;
	component xor5
		port (x0, x1, x2, x3, x4	: in std_logic;
				y							: out std_logic);
	end component;
	
begin
	H1 <= "11100011101";
	H2 <= "10011011011";
	H3 <= "01010110111";
	H4 <= "00101101111";

	xorA:	xor4 port map (c(0), c(6), c(7), c(10), xor_a);
	xorB:	xor4 port map (c(5), c(8), c(9), c(10), xor_b);
	par1:	xor5 port map (c(1), c(2), c(8), c(11), xor_a, p1);
	par2:	xor5 port map (c(3), c(4), c(9), c(12), xor_a, p2);
	par3: xor5 port map (c(1), c(3), c(6), c(13), xor_b, p3);
	par4: xor5 port map (c(2), c(4), c(7), c(14), xor_b, p4);
	parWord <= par1 & par2 & par3 & par4;
	
	for i in 0 to 10 loop
	begin
		word <= H1(i) & H2(i) & H3(i) & H4(i);
		if (word = parWord) then
			d(i) := c(i) + "1";
		else 
			d(i) := c(i);
		end if;
	end loop;
	
end structural;