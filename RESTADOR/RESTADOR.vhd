library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RESTADOR is
    port(
        clk             : in  std_logic;                     -- reloj
        reset           : in  std_logic;                     -- reset general
        confirmar       : in  std_logic;                     -- confirma compra
        dinero_ingresado: in  integer range 0 to 9999;       -- viene de sumador_saldo
        precio_producto : in  integer range 0 to 9999;       -- viene de top_productos
        cambio          : out integer range -9999 to 9999    -- resultado de la resta
    );
end RESTADOR;

architecture Behavioral of RESTADOR is
    signal cambio_reg : integer range -9999 to 9999 := 0;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            cambio_reg <= 0;
        elsif rising_edge(clk) then
            if confirmar = '1' then
                cambio_reg <= dinero_ingresado - precio_producto;
            end if;
        end if;
    end process;

    cambio <= cambio_reg;

end Behavioral;
