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
        stock_leds : out std_logic_vector(2 downto 0)
    );
end maquina_expendedora;

architecture arch of maquina_expendedora is

    --------------------------------------------------------------------
    -- Componentes
    --------------------------------------------------------------------
    component sumador_saldo
        port(
            clk      : in  std_logic;
            reset    : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo    : out integer range 0 to 9999
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
            disp3      : out std_logic_vector(6 downto 0)
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

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9999 := 0;
    signal precio_int    : integer range 0 to 9999 := 0;
    signal cambio_int    : integer range -9999 to 9999 := 0;

    -- control de qué mostrar
    signal mostrar_cambio    : std_logic := '0';
    signal valor_a_mostrar   : integer range 0 to 9999 := 0;

    -- BCD
    signal d0, d1, d2, d3 : std_logic_vector(3 downto 0);

begin
    --------------------------------------------------------------------
    -- Instancias
    --------------------------------------------------------------------
    U_saldo: sumador_saldo
        port map(
            clk      => clk,
            reset    => reset,
            sw500    => coin500,
            sw1000  =>  coin1000,
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
            disp2      => disp2,
            disp3      => disp3
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

    -- Displays
    U_d0: systemd port map(A => d0, D0 => disp0);
    U_d1: systemd port map(A => d1, D0 => disp1);
    U_d2: systemd port map(A => d2, D0 => disp2);
    U_d3: systemd port map(A => d3, D0 => disp3);

    --------------------------------------------------------------------
    -- Lógica de control: decidir qué mostrar
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            mostrar_cambio <= '0';
        elsif rising_edge(clk) then
            if confirmar = '1' then
                mostrar_cambio <= '1'; -- después de compra, mostrar cambio
            end if;
        end if;
    end process;

    process(mostrar_cambio, saldo_bin, cambio_int)
    begin
        if mostrar_cambio = '1' then
            valor_a_mostrar <= abs(cambio_int); -- mostrar cambio
        else
            valor_a_mostrar <= saldo_bin;       -- mostrar saldo
        end if;
    end process;

end arch;
