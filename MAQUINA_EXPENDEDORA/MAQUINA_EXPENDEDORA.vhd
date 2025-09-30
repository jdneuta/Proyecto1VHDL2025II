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
    -- Componentes
    --------------------------------------------------------------------
    component sumador_saldo
        port(
            clk    : in  std_logic;
            reset  : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo  : out integer range 0 to 9999
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
            clk   : in std_logic;
            reset : in std_logic;
            start : in std_logic;
            door  : out std_logic
        );
    end component;

    --------------------------------------------------------------------
    -- Tabla de precios
    --------------------------------------------------------------------
    type arr_precios is array (0 to 15) of integer range 0 to 9500;
    constant precios : arr_precios := (
        500,   -- producto 0
        1000,  -- producto 1
        1500,  -- producto 2
        2000,  -- producto 3
        2500,  -- producto 4
        3000,  -- producto 5
        4000,  -- producto 6
        4500,  -- producto 7
        5000,  -- producto 8
        6000,  -- producto 9
        6500,  -- producto 10
        7000,  -- producto 11
        7500,  -- producto 12
        8000,  -- producto 13
        9000,  -- producto 14
        9500   -- producto 15
    );

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9999 := 0;
    signal precio_int    : integer range 0 to 9999 := 0;
    signal cambio_int    : integer range -9999 to 9999 := 0;

    signal mostrar_cambio    : std_logic := '0';
    signal valor_a_mostrar   : integer range 0 to 9999 := 0;
    signal saldo_dos_dig     : integer range 0 to 99 := 0;

    -- BCD
    signal d0, d1, d2, d3 : std_logic_vector(3 downto 0);

    -- Señales internas para displays
    signal disp2_top_s  : std_logic_vector(6 downto 0);
    signal disp3_top_s  : std_logic_vector(6 downto 0);
    signal disp2_bcd_s  : std_logic_vector(6 downto 0);
    signal disp3_bcd_s  : std_logic_vector(6 downto 0);

    -- reloj lento
    signal clk_1Hz : std_logic;

begin
    --------------------------------------------------------------------
    -- Instancias
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
            confirmar  => confirmar,
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
            confirmar       => confirmar,
            dinero_ingresado=> saldo_bin,
            precio_producto => precio_int,
            cambio          => cambio_int
        );

    -- Conversor binario → BCD
    U_bcd: bin_bcd
        port map(
            bin => valor_a_mostrar,
            d0  => d0,
            d1  => d1,
            d2  => d2,
            d3  => d3
        );

    -- Decodificadores a 7seg
    U_d0: systemd port map(A => d0, D0 => disp0);
    U_d1: systemd port map(A => d1, D0 => disp1);
    U_d2: systemd port map(A => d2, D0 => disp2_bcd_s);
    U_d3: systemd port map(A => d3, D0 => disp3_bcd_s);

    --------------------------------------------------------------------
    -- Selección de precio según producto
    --------------------------------------------------------------------
    process(sel_prod)
    begin
        precio_int <= precios(to_integer(unsigned(sel_prod)));
    end process;

    --------------------------------------------------------------------
    -- Lógica de control
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            mostrar_cambio <= '0';
        elsif rising_edge(clk) then
            if confirmar = '1' then
                mostrar_cambio <= '1';
            elsif door_led = '0' then
                mostrar_cambio <= '0';
            end if;
        end if;
    end process;

    process(mostrar_cambio, saldo_bin, cambio_int)
    begin
        if mostrar_cambio = '1' then
            valor_a_mostrar <= abs(cambio_int);
        else
            saldo_dos_dig   <= saldo_bin / 100;
            valor_a_mostrar <= saldo_dos_dig;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Multiplexor de salidas disp2/disp3
    --------------------------------------------------------------------
    with mostrar_cambio select
        disp2 <= disp2_bcd_s when '1',
                 disp2_top_s when others;

    with mostrar_cambio select
        disp3 <= disp3_bcd_s when '1',
                 disp3_top_s when others;

    --------------------------------------------------------------------
    -- divisor + contador 30s
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
            start => confirmar,
            door  => door_led
        );

end arch;
