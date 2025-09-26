library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_restador is
    port(
        clk        : in  std_logic;  -- reloj (opcional, para sincronía)
        reset      : in  std_logic;  -- reset general
        saldo_in   : in  integer range 0 to 9500;  -- saldo disponible (viene del top_ingreso_dinero)
        precio_in  : in  integer range 0 to 9500;  -- precio del producto seleccionado
        confirmar  : in  std_logic;  -- señal que indica confirmación de compra

        saldo_out  : out integer range 0 to 9500;  -- saldo restante tras compra
        compra_ok  : out std_logic;  -- '1' si la compra fue exitosa
        sin_saldo  : out std_logic   -- '1' si no hay suficiente dinero
    );
end top_restador;

architecture arch of top_restador is
    signal saldo_reg : integer range 0 to 9500 := 0;
    signal ok_reg    : std_logic := '0';
    signal no_reg    : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;
            ok_reg    <= '0';
            no_reg    <= '0';

        elsif rising_edge(clk) then
            ok_reg <= '0';
            no_reg <= '0';

            if confirmar = '1' then
                if saldo_in >= precio_in then
                    saldo_reg <= saldo_in - precio_in;
                    ok_reg    <= '1';  -- compra realizada
                else
                    saldo_reg <= saldo_in; -- no se modifica
                    no_reg    <= '1';      -- sin saldo suficiente
                end if;
            else
                saldo_reg <= saldo_in; -- mientras no confirme, saldo igual
            end if;
        end if;
    end process;

    -- salidas
    saldo_out <= saldo_reg;
    compra_ok <= ok_reg;
    sin_saldo <= no_reg;

end arch;
