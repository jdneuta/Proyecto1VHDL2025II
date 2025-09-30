library ieee;
use ieee.std_logic_1164.all;

entity div_2seg is
    port(
        clk   : in  std_logic;
        out1  : buffer std_logic
    );
end div_2seg;

architecture arch_div_2seg of div_2seg is
    signal count1 : integer range 0 to 99_999_999 := 0;
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            count1 <= count1 + 1;

            if (count1 = 49_999_999) then   -- medio periodo = 1 s
                out1   <= not out1;
                count1 <= 0;
            end if;
        end if;
    end process;
end arch_div_2seg;
