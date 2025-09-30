library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maquina_expendedora is
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        confirmar  : in  std_logic;
        sel_prod   : in  std_logic_vector(3 downto 0);
        coin500    : in  std_logic;
        coin1000   : in  std_logic;
        -- displays
        disp0      : out std_logic_vector(6 downto 0);
        disp1      : out std_logic_vector(6 downto 0);
        disp2      : out std_logic_vector(6 downto 0);
        disp3      : out std_logic_vector(6 downto 0);
        -- leds
        led_compra : out std_logic;
        stock_leds : out std_logic_vector(2 downto 0);
        alerta_led : out std_logic;
        door_led   : buffer std_logic
    );
end maquina_expendedora;

architecture arch of maquina_expendedora is

    --------------------------------------------------------------------
    -- Component declarations (deben coincidir con tus archivos .vhd)
    --------------------------------------------------------------------
    component sumador_saldo
        port(
            clk    : in  std_logic;
            reset  : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo  : out integer range 0 to 9500
        );
    end component;

    component top_productos
        port(
            clk        : in  std_logic;
            reset      : in  std_logic;
            confirmar  : in  std_logic;
            sel_prod   : in  std_logic_vector(3 downto 0);
            led_compra : out std_logic;
            stock_leds : out std_logic_vector(2 downto 0);
            disp2      : out std_logic_vector(6 downto 0);
            disp3      : out std_logic_vector(6 downto 0);
            alerta_led : out std_logic
        );
    end component;

    component restador
        port(
            clk             : in  std_logic;
            reset           : in  std_logic;
            confirmar       : in  std_logic;
            dinero_ingresado: in integer range 0 to 9999;
            precio_producto : in integer range 0 to 9999;
            cambio          : out integer range -9999 to 9999
        );
    end component;

    component bin_bcd
        port(
            bin : in integer range 0 to 9999;
            d0  : out std_logic_vector(3 downto 0);
            d1  : out std_logic_vector(3 downto 0);
            d2  : out std_logic_vector(3 downto 0);
            d3  : out std_logic_vector(3 downto 0)
        );
    end component;

    component systemd
        port(
            A  : in  std_logic_vector(3 downto 0);
            D0 : out std_logic_vector(6 downto 0)
        );
    end component;

    component div_50millones
        port(
            clk  : in std_logic;
            out1 : buffer std_logic
        );
    end component;

    component cont30
        port(
            clk   : in  std_logic;
            reset : in  std_logic;
            start : in  std_logic;
            door  : out std_logic
        );
    end component;

    --------------------------------------------------------------------
    -- Tabla de precios (ejemplo — puedes cambiar valores)
    --------------------------------------------------------------------
    type arr_precios is array (0 to 15) of integer range 0 to 9500;
    constant precios : arr_precios := (
        500,   -- 0
        1000,  -- 1
        1500,  -- 2
        2000,  -- 3
        2500,  -- 4
        3000,  -- 5
        4000,  -- 6
        4500,  -- 7
        5000,  -- 8
        6000,  -- 9
        6500,  -- 10
        7000,  -- 11
        7500,  -- 12
        8000,  -- 13
        9000,  -- 14
        9500   -- 15
    );

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9500 := 0;   -- viene de sumador_saldo
    signal precio_int    : integer range 0 to 9500 := 0;   -- precio producto seleccionado
    signal cambio_int    : integer range -9999 to 9999 := 0; -- viene del restador

    signal mostrar_cambio  : std_logic := '0';
    signal valor_a_mostrar : integer range 0 to 9999 := 0;
    signal saldo_dos_dig   : integer range 0 to 99 := 0;

    -- BCD (salida para decodificador)
    signal d0, d1, d2, d3 : std_logic_vector(3 downto 0);

    -- señales internas para displays
    signal disp2_top_s  : std_logic_vector(6 downto 0);
    signal disp3_top_s  : std_logic_vector(6 downto 0);
    signal disp2_bcd_s  : std_logic_vector(6 downto 0);
    signal disp3_bcd_s  : std_logic_vector(6 downto 0);

    -- reloj lento (divisor 50M -> 1Hz)
    signal clk_1Hz : std_logic;

    -- SEÑAL NUEVA: confirmar solo válida si no hay entrega y hay saldo suficiente
    signal confirmar_valido : std_logic;

begin
    --------------------------------------------------------------------
    -- INSTANCIAS (sin cambiar nombres / puertos)
    --------------------------------------------------------------------
    U_saldo: sumador_saldo
        port map(
            clk      => clk,
            reset    => reset,
            sw500    => coin500,
            sw1000   => coin1000,
            saldo    => saldo_bin
        );

    U_prod: top_productos
        port map(
            clk        => clk,
            reset      => reset,
            confirmar  => confirmar_valido,  -- <- FILTRO aplicado aquí
            sel_prod   => sel_prod,
            led_compra => led_compra,
            stock_leds => stock_leds,
            disp2      => disp2_top_s,
            disp3      => disp3_top_s,
            alerta_led => alerta_led
        );

    U_rest: restador
        port map(
            clk             => clk,
            reset           => reset,
            confirmar       => confirmar_valido, -- <- FILTRO aplicado aquí
            dinero_ingresado=> saldo_bin,
            precio_producto => precio_int,
            cambio          => cambio_int
        );

    -- BCD converter: bin -> 4 dígitos BCD
    U_bcd: bin_bcd
        port map(
            bin => valor_a_mostrar,
            d0  => d0,
            d1  => d1,
            d2  => d2,
            d3  => d3
        );

    -- decodificadores 7seg
    U_d0: systemd port map(A => d0, D0 => disp0);
    U_d1: systemd port map(A => d1, D0 => disp1);
    U_d2: systemd port map(A => d2, D0 => disp2_bcd_s);
    U_d3: systemd port map(A => d3, D0 => disp3_bcd_s);

    --------------------------------------------------------------------
    -- Precio current product (concurrent)
    --------------------------------------------------------------------
    process(sel_prod)
    begin
        precio_int <= precios(to_integer(unsigned(sel_prod)));
    end process;

    --------------------------------------------------------------------
    -- FILTRO de confirmar:
    -- confirmar_valido = '1' solo si:
    --   1) el switch confirmar = '1'
    --   2) NO hay entrega en curso (door_led = '0')
    --   3) saldo_bin >= precio_int (suficiente dinero)
    --------------------------------------------------------------------
    confirmar_valido <= '1'
        when (confirmar = '1' and door_led = '0' and saldo_bin >= precio_int)
        else '0';

    --------------------------------------------------------------------
    -- Mostrar cambio / saldo (comportamiento original):
    -- al aceptar compra (confirmar_valido) se muestra cambio;
    -- cuando entrega termina (door_led = '0') volvemos a mostrar saldo.
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            mostrar_cambio <= '0';
        elsif rising_edge(clk) then
            if confirmar_valido = '1' then
                mostrar_cambio <= '1';
            elsif door_led = '0' then
                mostrar_cambio <= '0';
            end if;
        end if;
    end process;

    process(mostrar_cambio, saldo_bin, cambio_int)
    begin
        if mostrar_cambio = '1' then
            -- mostrar cambio completo en los 4 displays
            valor_a_mostrar <= abs(cambio_int);
        else
            -- mostrar saldo reducido a 2 dígitos (centenas -> ejemplo: 2500 -> 25)
            saldo_dos_dig   <= saldo_bin / 100;
            valor_a_mostrar <= saldo_dos_dig;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Mux: cuando mostramos cambio usamos bin_bcd; si no, dejamos
    -- los displays 2 y 3 (producto) que vienen de top_productos.
    --------------------------------------------------------------------
    with mostrar_cambio select
        disp2 <= disp2_bcd_s when '1',
                 disp2_top_s when others;

    with mostrar_cambio select
        disp3 <= disp3_bcd_s when '1',
                 disp3_top_s when others;

    --------------------------------------------------------------------
    -- Divisor de reloj 50MHz -> 1Hz y contador 30s (start usa confirmar_valido)
    --------------------------------------------------------------------
    U_div: div_50millones
        port map(
            clk  => clk,
            out1 => clk_1Hz
        );

    U_door: cont30
        port map(
            clk   => clk_1Hz,
            reset => reset,
            start => confirmar_valido,  -- <- arranca la entrega solo si confirmar_valido
            door  => door_led
        );

end arch;
