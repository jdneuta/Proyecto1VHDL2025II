library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity div_50millones is
    port(
        clk   : in  std_logic;
        out1  : out std_logic
    );
end div_50millones;

architecture behavioral of div_50millones is
    -- 50 MHz -> 1 Hz (25 M ciclos por flanco)
    constant DIVISOR : integer := 25_000_000 - 1;
    signal counter   : integer range 0 to DIVISOR := 0;
    signal clk_out   : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = DIVISOR then
                counter <= 0;
                clk_out <= not clk_out;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    out1 <= clk_out;
end behavioral;
