library ieee;
use ieee.std_logic_1164.all;

entity div_500ms is
    port(
        clk  : in  std_logic;
        out1 : buffer std_logic
    );
end div_500ms;

architecture arch_div_500ms of div_500ms is
    signal count1 : integer range 0 to 24999999 := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if count1 = 24999999 then
                out1   <= not out1;
                count1 <= 0;
            else
                count1 <= count1 + 1;
            end if;
        end if;
    end process;
end arch_div_500ms;
