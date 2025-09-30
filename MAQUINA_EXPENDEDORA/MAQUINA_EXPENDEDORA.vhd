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
        anomalia_sw : in  std_logic;  -- switch de anomalia

        -- displays
        disp0       : out std_logic_vector(6 downto 0);
        disp1       : out std_logic_vector(6 downto 0);
        disp2       : out std_logic_vector(6 downto 0);
        disp3       : out std_logic_vector(6 downto 0);

        -- leds
        led_compra  : out std_logic;
        stock_leds  : out std_logic_vector(2 downto 0);
        alerta_led  : out std_logic;
        door_led    : out std_logic;          -- ahora salida normal
        entrega_led : out std_logic;          -- parpadeo durante entrega
        anomalia_led: out std_logic           -- LED de anomalia
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

    --------------------------------------------------------------------
    -- Constantes
    --------------------------------------------------------------------
    type arr_precios is array (0 to 15) of integer range 0 to 9500;
    constant precios : arr_precios := (
        500,1000,1500,2000,
        2500,3000,4000,4500,
        5000,6000,6500,7000,
        7500,8000,9000,9500
    );

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9500 := 0;
    signal precio_int    : integer range 0 to 9500 := 0;
    signal cambio_int    : integer range -9999 to 9999 := 0;

    signal mostrar_cambio  : std_logic := '0';
    signal valor_a_mostrar : integer range 0 to 9999 := 0;
    signal saldo_dos_dig   : integer range 0 to 99 := 0;

    signal d0,d1,d2,d3 : std_logic_vector(3 downto 0);

    signal disp2_top_s, disp3_top_s : std_logic_vector(6 downto 0);
    signal disp2_bcd_s, disp3_bcd_s : std_logic_vector(6 downto 0);

    signal clk_1Hz    : std_logic;
    signal clk_500ms  : std_logic;
    signal clk_2s     : std_logic;

    signal confirmar_valido : std_logic;
    signal alerta_stock     : std_logic;

    -- reset de saldo al finalizar entrega
    signal prev_door   : std_logic := '0';
    signal reset_saldo : std_logic := '0';

    -- puerta interna real
    signal door_led_int: std_logic := '0';

begin
    --------------------------------------------------------------------
    -- Instancias
    --------------------------------------------------------------------
    U_saldo: sumador_saldo
        port map(clk=>clk, reset=>(reset or reset_saldo),
                 sw500=>coin500, sw1000=>coin1000, saldo=>saldo_bin);

    U_prod: top_productos
        port map(clk=>clk, reset=>reset, confirmar=>confirmar_valido, sel_prod=>sel_prod,
                 led_compra=>led_compra, stock_leds=>stock_leds,
                 disp2=>disp2_top_s, disp3=>disp3_top_s, alerta_led=>alerta_stock);

    U_rest: restador
        port map(clk=>clk, reset=>reset, confirmar=>confirmar_valido,
                 dinero_ingresado=>saldo_bin, precio_producto=>precio_int, cambio=>cambio_int);

    U_bcd: bin_bcd
        port map(bin=>valor_a_mostrar, d0=>d0, d1=>d1, d2=>d2, d3=>d3);

    U_d0: systemd port map(A=>d0, D0=>disp0);
    U_d1: systemd port map(A=>d1, D0=>disp1);
    U_d2: systemd port map(A=>d2, D0=>disp2_bcd_s);
    U_d3: systemd port map(A=>d3, D0=>disp3_bcd_s);

    U_div: div_50millones port map(clk=>clk, out1=>clk_1Hz);

    -- cont30 genera la señal interna real de puerta
    U_door: cont30 port map(
        clk   => clk_1Hz,
        reset => reset,
        start => (confirmar_valido and not anomalia_sw),
        door  => door_led_int
    );

    U_div500: div_500ms port map(clk=>clk, out1=>clk_500ms);
    U_div2s:  div_2seg  port map(clk=>clk, out1=>clk_2s);

    --------------------------------------------------------------------
    -- Precio según selección
    --------------------------------------------------------------------
    process(sel_prod)
    begin
        precio_int <= precios(to_integer(unsigned(sel_prod)));
    end process;

    --------------------------------------------------------------------
    -- Filtro de confirmar (bloquea si no hay stock o hay anomalía)
    --------------------------------------------------------------------
    confirmar_valido <= '1'
        when (confirmar='1' and door_led_int='0' and saldo_bin>=precio_int and alerta_stock='0' and anomalia_sw='0')
        else '0';

    --------------------------------------------------------------------
    -- Control mostrar cambio / saldo
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset='1' then
            mostrar_cambio <= '0';
        elsif rising_edge(clk) then
            if confirmar_valido='1' then
                mostrar_cambio <= '1';
            elsif door_led_int='0' then
                mostrar_cambio <= '0';
            end if;
        end if;
    end process;

    process(mostrar_cambio, saldo_bin, cambio_int)
    begin
        if mostrar_cambio='1' then
            valor_a_mostrar <= abs(cambio_int);
        else
            saldo_dos_dig   <= saldo_bin/100;
            valor_a_mostrar <= saldo_dos_dig;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Mux de displays
    --------------------------------------------------------------------
    with mostrar_cambio select
        disp2 <= disp2_bcd_s when '1', disp2_top_s when others;

    with mostrar_cambio select
        disp3 <= disp3_bcd_s when '1', disp3_top_s when others;

    --------------------------------------------------------------------
    -- Led de entrega (parpadeo 500ms)
    --------------------------------------------------------------------
    entrega_led <= clk_500ms when door_led_int='1' else '0';

    --------------------------------------------------------------------
    -- Led de alerta (parpadeo 2s cuando no hay stock)
    --------------------------------------------------------------------
    alerta_led <= clk_2s when alerta_stock='1' else '0';

    --------------------------------------------------------------------
    -- Led de anomalía
    --------------------------------------------------------------------
    anomalia_led <= '1' when (anomalia_sw='1' and door_led_int='1') else '0';

    --------------------------------------------------------------------
    -- Salida de puerta: se apaga si hay anomalía
    --------------------------------------------------------------------
    door_led <= '0' when anomalia_sw='1' else door_led_int;

    --------------------------------------------------------------------
    -- Resetear saldo al terminar entrega (normal, no en anomalía)
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset='1' then
            prev_door   <= '0';
            reset_saldo <= '0';
        elsif rising_edge(clk) then
            if (prev_door='1' and door_led_int='0') then
                if anomalia_sw='0' then
                    reset_saldo <= '1';  -- normal: reset
                else
                    reset_saldo <= '0';  -- anomalía: conservar saldo
                end if;
            else
                reset_saldo <= '0';
            end if;
            prev_door <= door_led_int;
        end if;
    end process;

end arch;