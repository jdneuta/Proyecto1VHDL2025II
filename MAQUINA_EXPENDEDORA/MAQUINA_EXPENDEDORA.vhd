library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maquina_expendedora is
    port(
        clk         : in  std_logic;
        reset       : in  std_logic;
        confirmar   : in  std_logic;
        sel_prod    : in  std_logic_vector(3 downto 0);
        coin500     : in  std_logic;
        coin1000    : in  std_logic;
        anomalia_sw : in  std_logic;

        -- displays
        disp0       : out std_logic_vector(6 downto 0);
        disp1       : out std_logic_vector(6 downto 0);
        disp2       : out std_logic_vector(6 downto 0);
        disp3       : out std_logic_vector(6 downto 0);

        -- leds
        led_compra  : out std_logic;
        stock_leds  : out std_logic_vector(2 downto 0);
        alerta_led  : out std_logic;
        door_led    : out std_logic;
        entrega_led : out std_logic;
        anomalia_led: out std_logic
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
            saldo  : out integer range 0 to 9500
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
            clk  : in  std_logic;
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

    component div_500ms
        port(
            clk  : in  std_logic;
            out1 : buffer std_logic
        );
    end component;

    component div_2seg
        port(
            clk  : in  std_logic;
            out1 : buffer std_logic
        );
    end component;

    component fsm_maquina_expendedora
        port(
            clk           : in  std_logic;
            reset         : in  std_logic;
            sel_prod      : in  std_logic_vector(3 downto 0);
            coin500       : in  std_logic;
            coin1000      : in  std_logic;
            confirmar     : in  std_logic;
            anomalia_sw   : in  std_logic;
            stock_data    : in  std_logic_vector(1 downto 0);
            precio_data   : in  integer range 0 to 9500;
            saldo         : in  integer range 0 to 9500;
            cambio        : in  integer range -9999 to 9999;
            clk_2s        : in  std_logic;
            ram_we        : out std_logic;
            ram_addr      : out std_logic_vector(3 downto 0);
            ram_din       : out std_logic_vector(1 downto 0);
            reset_saldo   : out std_logic;
            reset_stock   : out std_logic;
            mostrar_cambio: out std_logic;
                        valor_saldo   : out integer range 0 to 99;
            valor_producto: out integer range 0 to 15;
            led_compra    : out std_logic;
            stock_leds    : out std_logic_vector(2 downto 0);
            alerta_led    : out std_logic;
            door_led      : out std_logic;
            entrega_led   : out std_logic;
            anomalia_led  : out std_logic;
            buzzer        : out std_logic
        );
    end component;

    component ram_stock
        port(
            clk   : in  std_logic;
            we    : in  std_logic;
            reset : in  std_logic;
            addr  : in  std_logic_vector(3 downto 0);
            din   : in  std_logic_vector(1 downto 0);
            dout  : out std_logic_vector(1 downto 0)
        );
    end component;

    component rom_productos
        port(
            addr : in  std_logic_vector(3 downto 0);
            dout : out integer range 0 to 9500
        );
    end component;

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9500 := 0;
    signal cambio_int    : integer range -9999 to 9999 := 0;
    signal precio_int    : integer range 0 to 9500 := 0;
    signal stock_data    : std_logic_vector(1 downto 0);
    signal d0, d1, d2, d3 : std_logic_vector(3 downto 0);
    signal clk_1Hz        : std_logic;
    signal clk_500ms      : std_logic;
    signal clk_2s         : std_logic;
    signal ram_we         : std_logic;
    signal ram_addr       : std_logic_vector(3 downto 0);
    signal ram_din        : std_logic_vector(1 downto 0);
    signal reset_saldo_int: std_logic;
    signal reset_stock_int: std_logic;
    signal mostrar_cambio : std_logic;
    signal valor_saldo    : integer range 0 to 99;
    signal valor_producto : integer range 0 to 15;
    signal buzzer         : std_logic;  -- Señal sonora (puedes conectarla a un buzzer físico si es necesario)

begin
    --------------------------------------------------------------------
    -- Instancias
    --------------------------------------------------------------------
    U_saldo: sumador_saldo
        port map(
            clk    => clk,
            reset  => reset_saldo_int,
            sw500  => coin500,
            sw1000 => coin1000,
            saldo  => saldo_bin
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

    -- BCD para saldo (disp0/disp1)
    U_bcd_saldo: bin_bcd
        port map(
            bin => valor_saldo,
            d0  => d0,
            d1  => d1,
            d2  => open,  -- No usado para saldo
            d3  => open   -- No usado para saldo
        );

    -- BCD para producto o cambio (disp2/disp3)
    U_bcd_prod: bin_bcd
        port map(
            bin => valor_producto,
            d0  => d2,
            d1  => d3,
            d2  => open,  -- No usado
            d3  => open   -- No usado
        );

    U_d0: systemd port map(A => d0, D0 => disp0);
    U_d1: systemd port map(A => d1, D0 => disp1);
    U_d2: systemd port map(A => d2, D0 => disp2);
    U_d3: systemd port map(A => d3, D0 => disp3);

    U_div: div_50millones port map(clk => clk, out1 => clk_1Hz);
    U_div500: div_500ms port map(clk => clk, out1 => clk_500ms);
    U_div2s: div_2seg port map(clk => clk, out1 => clk_2s);

    U_cont30: cont30
        port map(
            clk   => clk_1Hz,
            reset => reset,
            start => (confirmar and not anomalia_sw),  -- Integrar con FSM si es necesario
            door  => open  -- Usado internamente en FSM
        );

    U_fsm: fsm_maquina_expendedora
        port map(
            clk           => clk,
            reset         => reset,
            sel_prod      => sel_prod,
            coin500       => coin500,
            coin1000      => coin1000,
            confirmar     => confirmar,
            anomalia_sw   => anomalia_sw,
            stock_data    => stock_data,
            precio_data   => precio_int,
            saldo         => saldo_bin,
            cambio        => cambio_int,
            clk_2s        => clk_2s,
            ram_we        => ram_we,
            ram_addr      => ram_addr,
            ram_din       => ram_din,
            reset_saldo   => reset_saldo_int,
            reset_stock   => reset_stock_int,
            mostrar_cambio=> mostrar_cambio,
            valor_saldo   => valor_saldo,
            valor_producto=> valor_producto,
            led_compra    => led_compra,
            stock_leds    => stock_leds,
            alerta_led    => alerta_led,
            door_led      => door_led,
            entrega_led   => entrega_led,
            anomalia_led  => anomalia_led,
            buzzer        => buzzer
        );

    U_ram: ram_stock
        port map(
            clk   => clk,
            we    => ram_we,
            reset => reset_stock_int,
            addr  => ram_addr,
            din   => ram_din,
            dout  => stock_data
        );

    U_rom: rom_productos
        port map(
            addr => sel_prod,
            dout => precio_int
        );

end arch;