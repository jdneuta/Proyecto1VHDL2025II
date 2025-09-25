library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_saldo is
    port(
        clk      : in  std_logic;  -- viene del divisor de 50M
        reset    : in  std_logic;  
        sw500    : in  std_logic;  -- switch moneda 500
        sw1000   : in  std_logic;  -- switch moneda 1000
        saldo    : out integer range 0 to 9500
    );
end sumador_saldo;

architecture arch_sumador_saldo of sumador_saldo is
    signal saldo_reg : integer range 0 to 9500 := 0;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;

        elsif rising_edge(clk) then
            -- sumar de acuerdo al switch activado
            if sw500 = '1' then
                if (saldo_reg + 500) <= 9500 then
                    saldo_reg <= saldo_reg + 500;
                else
                    saldo_reg <= 9500;
                end if;
            elsif sw1000 = '1' then
                if (saldo_reg + 1000) <= 9500 then
                    saldo_reg <= saldo_reg + 1000;
                else
                    saldo_reg <= 9500;
                end if;
            end if;
        end if;
    end process;

    saldo <= saldo_reg;
end arch_sumador_saldo;
