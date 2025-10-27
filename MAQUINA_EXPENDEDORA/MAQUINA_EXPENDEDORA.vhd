library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MAQUINA_EXPENDEDORA is
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        sw500      : in  std_logic;
        sw1000     : in  std_logic;
        confirmar  : in  std_logic;
        sel_prod   : in  std_logic_vector(3 downto 0); -- selección producto

        -- Señales físicas de la máquina
        puerta_fin : in  std_logic;   -- sensor: producto entregado
        anomalia   : in  std_logic;   -- sensor: falla

        -- Displays
        disp0 : out std_logic_vector(6 downto 0);
        disp1 : out std_logic_vector(6 downto 0);
        disp2 : out std_logic_vector(6 downto 0);
        disp3 : out std_logic_vector(6 downto 0);

        -- LEDs indicadores
        led_entrega : out std_logic;
        led_anom    : out std_logic;
        stock_leds  : out std_logic_vector(2 downto 0);
        alerta_led  : buffer std_logic;
        led_estado  : out std_logic_vector(2 downto 0)
    );
end MAQUINA_EXPENDEDORA;

architecture Behavioral of MAQUINA_EXPENDEDORA is

    ------------------------------------------------------------------
    -- COMPONENTES
    ------------------------------------------------------------------
    component sumador_saldo
        port(
            clk    : in  std_logic;
            reset  : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo  : out integer range 0 to 9500
        );
    end component;

    component RESTADOR
        port(
            clk              : in  std_logic;
            reset            : in  std_logic;
            confirmar        : in  std_logic;
            dinero_ingresado : in  integer range 0 to 9999;
            precio_producto  : in  integer range 0 to 9999;
            cambio           : out integer range -9999 to 9999
        );
    end component;

    component top_productos
        port(
            clk        : in  std_logic;
            reset      : in  std_logic;
            confirmar  : in  std_logic;
            sel_prod   : in  std_logic_vector(3 downto 0);
            led_compra : out std_logic;
            disp2      : out std_logic_vector(6 downto 0);
            disp3      : out std_logic_vector(6 downto 0);
            precio_out : out integer range 0 to 9500
        );
    end component;

    component fsm_maquina_expendedora
        port(
            clk               : in  std_logic;
            reset             : in  std_logic;
            confirmar         : in  std_logic;
            hay_moneda        : in  std_logic;
            saldo_ok          : in  std_logic;
            stock_ok          : in  std_logic;
            anomalia          : in  std_logic;
            puerta_fin        : in  std_logic;
            led_entrega       : out std_logic;
            led_anom          : out std_logic;
            habilitar_resta   : out std_logic;
            habilitar_entrega : out std_logic;
            estado_out        : out std_logic_vector(2 downto 0)
        );
    end component;

    component rom_productos
        port(
            clk     : in  std_logic;
            address : in  std_logic_vector(3 downto 0);
            precio  : out integer range 0 to 9500
        );
    end component;

    component ram_stock
        port(
            clk      : in  std_logic;
            address  : in  std_logic_vector(3 downto 0);
            data_in  : in  std_logic_vector(2 downto 0);
            data_out : out std_logic_vector(2 downto 0)
        );
    end component;

    component systemd
        port(
            A   : in  std_logic_vector(3 downto 0);
            D0  : out std_logic_vector(6 downto 0)
        );
    end component;

    ------------------------------------------------------------------
    -- SEÑALES INTERNAS
    ------------------------------------------------------------------
    signal saldo_sig        : integer range 0 to 9500 := 0;
    signal cambio_sig       : integer range -9999 to 9999 := 0;
    signal precio_sig       : integer range 0 to 9500 := 0;

    signal hay_moneda_sig   : std_logic := '0';
    signal saldo_ok_sig     : std_logic := '0';
    signal stock_ok_sig     : std_logic := '0';

    signal led_compra_sig   : std_logic := '0';
    signal habilitar_resta_sig   : std_logic := '0';
    signal habilitar_entrega_sig : std_logic := '0';

    -- señales BCD para displays
    signal miles, centenas, decenas, unidades : std_logic_vector(3 downto 0);

    -- RAM stock interna
    signal stock_ram : std_logic_vector(2 downto 0);

begin
    ------------------------------------------------------------------
    -- INSTANCIA: SUMADOR DE SALDO
    ------------------------------------------------------------------
    U1_sumador: sumador_saldo
        port map(
            clk    => clk,
            reset  => reset,
            sw500  => sw500,
            sw1000 => sw1000,
            saldo  => saldo_sig
        );

    -- Detecta si hay al menos una moneda ingresada
    hay_moneda_sig <= '1' when saldo_sig > 0 else '0';

    ------------------------------------------------------------------
    -- INSTANCIA: PRODUCTOS
    ------------------------------------------------------------------
    U2_productos: top_productos
        port map(
            clk        => clk,
            reset      => reset,
            confirmar  => confirmar,
            sel_prod   => sel_prod,
            led_compra => led_compra_sig,
            disp2      => disp2,
            disp3      => disp3,
            precio_out => precio_sig
        );

    ------------------------------------------------------------------
    -- INSTANCIA: RESTADOR
    ------------------------------------------------------------------
    U3_restador: RESTADOR
        port map(
            clk              => clk,
            reset            => reset,
            confirmar        => habilitar_resta_sig,
            dinero_ingresado => saldo_sig,
            precio_producto  => precio_sig,
            cambio           => cambio_sig
        );

    -- Saldo suficiente si cambio >= 0
    saldo_ok_sig <= '1' when cambio_sig >= 0 else '0';

    ------------------------------------------------------------------
    -- INSTANCIA: RAM STOCK
    ------------------------------------------------------------------
    ram_inst: ram_stock
        port map(
            clk      => clk,
            address  => sel_prod,
            data_in  => (others => '0'),  -- no escribimos en este ejemplo
            data_out => stock_ram
        );

    -- Stock disponible para FSM y LEDs
    stock_ok_sig <= '1' when stock_ram > "000" else '0';
    stock_leds   <= stock_ram;
    alerta_led   <= '1' when stock_ram = "000" else '0';

    ------------------------------------------------------------------
    -- INSTANCIA: FSM PRINCIPAL
    ------------------------------------------------------------------
    U4_fsm: fsm_maquina_expendedora
        port map(
            clk               => clk,
            reset             => reset,
            confirmar         => confirmar,
            hay_moneda        => hay_moneda_sig,
            saldo_ok          => saldo_ok_sig,
            stock_ok          => stock_ok_sig,
            anomalia          => anomalia,
            puerta_fin        => puerta_fin,
            led_entrega       => led_entrega,
            led_anom          => led_anom,
            habilitar_resta   => habilitar_resta_sig,
            habilitar_entrega => habilitar_entrega_sig,
            estado_out        => led_estado
        );

    ------------------------------------------------------------------
    -- CÁLCULO BCD DEL SALDO
    ------------------------------------------------------------------
    process(saldo_sig)
        variable temp : integer := 0;
    begin
        temp := saldo_sig;
        miles    <= std_logic_vector(to_unsigned(temp / 1000,4));
        temp     := temp mod 1000;
        centenas <= std_logic_vector(to_unsigned(temp / 100,4));
        temp     := temp mod 100;
        decenas  <= std_logic_vector(to_unsigned(temp / 10,4));
        unidades <= std_logic_vector(to_unsigned(temp mod 10,4));
    end process;

    ------------------------------------------------------------------
    -- INSTANCIA: DISPLAYS
    ------------------------------------------------------------------
    -- saldo (últimos dos displays)
    U_disp0: systemd port map(A => centenas, D0 => disp0); -- centenas en disp0
    U_disp1: systemd port map(A => miles,    D0 => disp1); -- miles en disp1

end Behavioral;
