library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity cont30 is
	
	port
	(
		-- Input ports
		enable, reset	: in  std_logic;
		clk	: in  std_logic;

		-- Output ports
		D0,D1,D2,D3,D4	: out std_logic;
		Fin	: out std_logic
	);
end cont30;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_cont30 of cont30 is

	-- Declarations (optional)
	signal  count : unsigned (4 downto 0) :=(others => '0');

begin
	process(clk,reset)
	begin 
		if reset = '1' then
			count <= (others => '0');
		elsif rising_edge(clk) then 
			if enable = '1' then 
				if count < 30 then 
					count <= count + 1;
				end if;
			end if;
		end if; 
	end process;
	
	D0 <= count(0);
	D1 <= count(1);
	D2 <= count(2);--Asignacion de las salidas
	D3 <= count(3);
	D4 <= count(4);
	
	fin <= '1' when count = 30 else '0';
	


end arch_cont30;

