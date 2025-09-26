library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity restador_saldo is
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        confirmar  : in  std_logic;  -- pulso para confirmar compra
        saldo_in   : in  integer range 0 to 9999;
        precio     : in  integer range 0 to 9999;
        saldo_out  : out integer range 0 to 9999;
        compra_ok  : out std_logic;  -- LED compra exitosa
        sin_saldo  : out std_logic   -- LED saldo insuficiente
    );
end restador_saldo;

architecture arch of restador_saldo is
    signal saldo_reg : integer range 0 to 9999 := 0;
    signal prev_conf : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;
            compra_ok <= '0';
            sin_saldo <= '0';
            prev_conf <= '0';

        elsif rising_edge(clk) then
            -- Actualizar saldo desde entrada
            saldo_reg <= saldo_in;

            -- Detectar flanco de subida en confirmar
            if (confirmar = '1' and prev_conf = '0') then
                if saldo_in >= precio then
                    saldo_reg <= saldo_in - precio;
                    compra_ok <= '1';
                    sin_saldo <= '0';
                else
                    compra_ok <= '0';
                    sin_saldo <= '1';
                end if;
            else
                compra_ok <= '0';  -- solo se enciende un ciclo
            end if;

            prev_conf <= confirmar;
        end if;
    end process;

    saldo_out <= saldo_reg;
end arch;
