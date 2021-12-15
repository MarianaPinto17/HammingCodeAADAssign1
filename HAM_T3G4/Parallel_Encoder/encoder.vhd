library ieee;
use ieee.std_logic_1164.all;

library xor_gate;
use xor_gate.all;


entity encoder is
	port (d	: in std_logic_vector(10 downto 0);
			c	: out std_logic_vector(14 downto 0));
end encoder;

architecture structural of encoder is

	signal xor_a, xor_b		: std_logic;
	signal p1, p2, p3, p4	: std_logic;
	component xor4
		port (x0, x1, x2, x3	: in std_logic;
				y					: out std_logic);
	end component;
	
begin

	xorA:	xor4 port map (d(10), d(4), d(3), d(0), xor_a);
	xorB:	xor4 port map (d(5), d(2), d(1), d(0), xor_b);
	par1:	xor4 port map (d(9), d(8), d(2), xor_a, p1);
	par2:	xor4 port map (d(7), d(6), d(1), xor_a, p2);
	par3: xor4 port map (d(9), d(7), d(4), xor_b, p3);
	par4: xor4 port map (d(8), d(6), d(3), xor_b, p4);

	c <= d(10 downto 0) & p1 & p2 & p3 & p4;
	
end structural;

