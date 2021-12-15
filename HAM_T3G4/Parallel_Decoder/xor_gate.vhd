library ieee;
use ieee.std_logic_1164.all;

entity xor2 is
	port (x0, x1 :	in std_logic;
			y		 :	out std_logic);
end xor2;

architecture behavioral of xor2 is
begin
	y <= x0 xor x1;
end behavioral;


library ieee;
use ieee.std_logic_1164.all;

entity xor3 is
	port (x0, x1, x2 :	in std_logic;
			y			  :	out std_logic);
end xor3;

architecture behavioral of xor3 is 
	signal y_tmp:	std_logic;
	component xor2
		port (x0, x1 :	in std_logic;
				y		 :	out std_logic);
	end component;
begin
	xor_tmp: xor2 port map (x0, x1, y_tmp);
	final:	xor2 port map (y_tmp, x2, y);
end behavioral;


library ieee;
use ieee.std_logic_1164.all;

entity xor4 is
	port (x0, x1, x2, x3 :	in std_logic;
			y			 		:	out std_logic);
end xor4;

architecture behavioral of xor4 is 
	signal y1_tmp, y2_tmp :	std_logic;
	component xor2
		port (x0, x1:	in std_logic;
				y		:	out std_logic);
	end component;
begin
	xor_tmp1: xor2 port map (x0, x1, y1_tmp);
	xor_tmp2: xor2 port map (x2, x3, y2_tmp);
	final:	 xor2 port map (y1_tmp, y2_tmp, y);
end behavioral;


library ieee;
use ieee.std_logic_1164.all;

entity xor5 is 
	port (x0, x1, x2, x3, x4 :	in std_logic;
			y						 : out std_logic);
end xor5;

architecture behavioral of xor5 is
	signal y1_tmp, y2_tmp : std_logic;
	component xor2 
		port (x0, x1	: in std_logic;
				y			: out std_logic);
	end component;
	component xor3
		port (x0, x1, x2	: in std_logic;
				y				: out std_logic);
	end component;
begin 
	xor_tmp1: xor3 port map (x0, x1, x2, y1_tmp);
	xor_tmp2: xor2 port map (x3, x4, y2_tmp);
	final:	 xor2 port map (y1_tmp, y2_tmp, y);
end behavioral;
