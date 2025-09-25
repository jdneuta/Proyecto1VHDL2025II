library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_1000_500 is
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;
        coin500  : in  std_logic;   -- pulso cuando entra moneda de 500
        coin1000 : in  std_logic;   -- pulso cuando entra moneda de 1000
        saldo    : out integer range 0 to 9999  -- acumulador en pesos (máx 4 dígitos)
    );
end sumador_1000_500;

architecture arch_sumador_1000_500 of sumador_1000_500 is
    signal saldo_reg : integer range 0 to 9999 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;

        elsif rising_edge(clk) then
            -- si se pulsa coin500, suma 500
            if coin500 = '1' then
                if saldo_reg <= 9500 then
                    saldo_reg <= saldo_reg + 500;
                else
                    saldo_reg <= 9999; -- límite
                end if;
            end if;

            -- si se pulsa coin1000, suma 1000
            if coin1000 = '1' then
                if saldo_reg <= 9000 then
                    saldo_reg <= saldo_reg + 1000;
                else
                    saldo_reg <= 9999; -- límite
                end if;
            end if;
        end if;
    end process;

    saldo <= saldo_reg;

end arch_sumador_1000_500;
