library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont30 is
    port(
        clk   : in  std_logic;   -- 1 Hz
        reset : in  std_logic;
        start : in  std_logic;   -- pulso de inicio (1 ciclo)
        done  : out std_logic
    );
end cont30;

architecture rtl of cont30 is
    signal count     : integer range 0 to 5 := 0;
    signal counting  : std_logic := '0';
    signal done_int  : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count     <= 0;
            counting  <= '0';
            done_int  <= '0';
        elsif rising_edge(clk) then
            if start = '1' and counting = '0' then
                counting <= '1';
                count    <= 0;
                done_int <= '0';
            elsif counting = '1' then
                if count < 4 then
                    count <= count + 1;
                else
                    counting <= '0';
                    done_int <= '1';
                end if;
            else
                done_int <= '0';
            end if;
        end if;
    end process;

    done <= done_int;
end rtl;
