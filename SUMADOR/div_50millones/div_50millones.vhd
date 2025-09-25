library ieee;
use ieee.std_logic_1164.all;

entity div_50millones is
	port
	(
		clk : in std_logic;
		out1: buffer std_logic
	);
end div_50millones;

architecture arch_div_50millones of div_50millones is
	signal count1 : integer range 0 to 49999999;
begin
	process (clk)
	begin
		if (clk'event and clk='1') then
			count1 <= count1 + 1;
			
			if (count1 = 24999999 ) then
				out1 <= not out1;
				count1 <= 0;
			end if;
		end if;
	end process;
end arch_div_50millones;
