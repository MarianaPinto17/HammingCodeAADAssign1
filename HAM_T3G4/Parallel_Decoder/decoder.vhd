library ieee;
use ieee.std_logic_1164.all;

entity decoder is
	port (par	: in std_logic_vector(3 downto 0);
			word	: out std_logic_vector(10 downto 0));
end decoder;

architecture structural of decoder is

begin 

	process(par)
	begin
	if (par = "1100") then
			word <= "10000000000";
		elsif (par = "1010") then
			word <= "01000000000";
		elsif (par = "1001") then
			word <= "00100000000";
		elsif (par = "0110") then
			word <= "00010000000";
		elsif (par = "0101") then
			word <= "00001000000";
		elsif (par = "0011") then
			word <= "00000100000";
		elsif (par = "1110") then
			word <= "00000010000";
		elsif (par = "1101") then
			word <= "00000001000";
		elsif (par = "1011") then
			word <= "00000000100";
		elsif (par = "0111") then
			word <= "00000000010";
		elsif (par = "1111") then
			word <= "00000000001";
		end if;
	end process;
	
end structural;