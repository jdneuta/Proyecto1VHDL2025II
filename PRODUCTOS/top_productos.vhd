library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_productos is
    port(
        clk        : in  std_logic;                     -- reloj
        reset      : in  std_logic;                     -- reset general
        confirmar  : in  std_logic;                     -- botón confirmar compra
        sel_prod   : in  std_logic_vector(3 downto 0);  -- selección producto (4 bits)
        led_compra : out std_logic;                     -- LED confirma compra (1 ciclo)
        stock_leds : out std_logic_vector(2 downto 0);  -- LEDs muestran stock (3=111 ... 0=000)
        disp2      : out std_logic_vector(6 downto 0);  -- display unidades producto
        disp3      : out std_logic_vector(6 downto 0)   -- display decenas producto
    );
end top_productos;

architecture arch of top_productos is

    -- COMPONENTE decodificador 7 segmentos
    component systemd
        port(
            A  : in  std_logic_vector(3 downto 0);
            D0 : out std_logic_vector(6 downto 0)
        );
    end component;

    -- stock de 15 productos
    type stock_array is array (0 to 14) of integer range 0 to 3;
    signal stock : stock_array := (others => 3);

    -- precio actual (solo interno, no se muestra)
    signal precio : integer range 0 to 9500 := 0;

    -- producto seleccionado
    signal producto_sel : integer range 0 to 15 := 0;

    -- BCD para mostrar producto
    signal dig_unid, dig_dec : std_logic_vector(3 downto 0);

    -- señales para detectar flanco de confirmación
    signal prev_conf : std_logic := '0';
    signal confirm_pulse : std_logic := '0';

begin
    --------------------------------------------------------------------
    -- Selección de producto
    --------------------------------------------------------------------
    producto_sel <= to_integer(unsigned(sel_prod));

    --------------------------------------------------------------------
    -- Precios de productos (case, máximo 9500)
    --------------------------------------------------------------------
    process(producto_sel)
    begin
        case producto_sel is
            when 0  => precio <= 1500;
            when 1  => precio <= 2500;
            when 2  => precio <= 3000;
            when 3  => precio <= 4500;
            when 4  => precio <= 5000;
            when 5  => precio <= 5200;
            when 6  => precio <= 5800;
            when 7  => precio <= 6000;
            when 8  => precio <= 6200;
            when 9  => precio <= 7000;
            when 10 => precio <= 7200;
            when 11 => precio <= 8000;
            when 12 => precio <= 8500;
            when 13 => precio <= 9000;
            when 14 => precio <= 9500;
            when others => precio <= 0;
        end case;
    end process;

    --------------------------------------------------------------------
    -- Confirmar compra: restar stock y dar pulso a LED
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            stock <= (others => 3);
            prev_conf <= '0';
            confirm_pulse <= '0';
        elsif rising_edge(clk) then
            if (confirmar = '1' and prev_conf = '0') then
                if stock(producto_sel) > 0 then
                    stock(producto_sel) <= stock(producto_sel) - 1;
                    confirm_pulse <= '1';
                else
                    confirm_pulse <= '0';
                end if;
            else
                confirm_pulse <= '0';
            end if;
            prev_conf <= confirmar;
        end if;
    end process;

    led_compra <= confirm_pulse;

    --------------------------------------------------------------------
    -- LEDs de stock (decodificación tipo barra, no binario)
    --------------------------------------------------------------------
    process(stock, producto_sel)
    begin
        case stock(producto_sel) is
            when 3 => stock_leds <= "111";
            when 2 => stock_leds <= "110";
            when 1 => stock_leds <= "100";
            when others => stock_leds <= "000";
        end case;
    end process;

    --------------------------------------------------------------------
    -- Conversión del número de producto a BCD
    --------------------------------------------------------------------
    dig_unid <= std_logic_vector(to_unsigned(producto_sel mod 10, 4));
    dig_dec  <= std_logic_vector(to_unsigned(producto_sel / 10, 4));

    --------------------------------------------------------------------
    -- Mostrar producto en los displays
    --------------------------------------------------------------------
    U1: systemd port map(A => dig_unid, D0 => disp2); -- unidades
    U2: systemd port map(A => dig_dec,  D0 => disp3); -- decenas

end arch;
