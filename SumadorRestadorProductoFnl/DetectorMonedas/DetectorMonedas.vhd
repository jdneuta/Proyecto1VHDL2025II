library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DetectorMonedas is
    port (
        clk         : in  std_logic;                  -- Reloj lento (1 Hz del divisor)
        reset       : in  std_logic;                  -- Reset global
        moneda_500  : in  std_logic;                  -- Pulso cuando entra moneda de 500
        moneda_1000 : in  std_logic;                  -- Pulso cuando entra moneda de 1000
        dinero      : out unsigned(9 downto 0)        -- Dinero acumulado (hasta 1023)
    );
end DetectorMonedas;

architecture arch_DetectorMonedas of DetectorMonedas is
    signal acum : unsigned(9 downto 0) := (others => '0');  -- Acumulador de dinero
begin

    process(clk, reset)
    begin
        if reset = '1' then
            acum <= (others => '0');  -- Reinicia a 0

        elsif rising_edge(clk) then
            -- Sumar según la moneda detectada
            if moneda_500 = '1' then
                if acum <= (1023 - 500) then
                    acum <= acum + to_unsigned(500, 10);
                else
                    acum <= (others => '1');  -- Saturación a máximo
                end if;
            elsif moneda_1000 = '1' then
                if acum <= (1023 - 1000) then
                    acum <= acum + to_unsigned(1000, 10);
                else
                    acum <= (others => '1');  -- Saturación a máximo
                end if;
            end if;
        end if;
    end process;

    dinero <= acum;  -- salida
end arch_DetectorMonedas;
