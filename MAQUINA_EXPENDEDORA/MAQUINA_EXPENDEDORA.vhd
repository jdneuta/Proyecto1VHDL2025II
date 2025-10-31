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

        -- Displays
        disp0       : out std_logic_vector(6 downto 0);
        disp1       : out std_logic_vector(6 downto 0);
        disp2       : out std_logic_vector(6 downto 0);
        disp3       : out std_logic_vector(6 downto 0);

        -- LEDs
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
    -- Componentes (idénticos a los tuyos)
    --------------------------------------------------------------------
    component restador
        port(clk,reset,confirmar:in std_logic;
             dinero_ingresado,precio_producto:in integer range 0 to 9999;
             cambio:out integer range -9999 to 9999);
    end component;

    component bin_bcd
        port(bin:in integer range 0 to 9999;
             d0,d1,d2,d3:out std_logic_vector(3 downto 0));
    end component;

    component systemd
        port(A:in std_logic_vector(3 downto 0);
             D0:out std_logic_vector(6 downto 0));
    end component;

    component div_50millones
        port(clk:in std_logic; out1:buffer std_logic);
    end component;

    component div_500ms
        port(clk:in std_logic; out1:buffer std_logic);
    end component;

    component div_2seg
        port(clk:in std_logic; out1:buffer std_logic);
    end component;

    component cont30
        port(clk,reset,start:in std_logic; done:out std_logic);
    end component;

    component fsm_maquina_expendedora
        port(
            clk,reset:in std_logic;
            sel_prod:in std_logic_vector(3 downto 0);
            coin500,coin1000,confirmar,anomalia_sw:in std_logic;
            stock_data:in std_logic_vector(1 downto 0);
            precio_data:in integer range 0 to 9500;
            saldo:in integer range 0 to 9500;
            cambio:in integer range -9999 to 9999;
            clk_2s,clk_500ms,entrega_done:in std_logic;
            ram_we:out std_logic;
            ram_addr:out std_logic_vector(3 downto 0);
            ram_din:out std_logic_vector(1 downto 0);
            ram_saldo_we:out std_logic;
            ram_saldo_addr:out std_logic_vector(0 downto 0);
            ram_saldo_din:out integer range 0 to 9500;
            reset_stock,mostrar_cambio:out std_logic;
            valor_saldo:out integer range 0 to 99;
            valor_producto:out integer range 0 to 15;
            valor_display_full:out integer range 0 to 9999;
            led_compra:out std_logic;
            stock_leds:out std_logic_vector(2 downto 0);
            alerta_led,door_led,entrega_led,anomalia_led,buzzer,debug_venta,start_entrega:out std_logic);
    end component;

    component ram_stock
        port(clk,we,reset:in std_logic;
             addr:in std_logic_vector(3 downto 0);
             din:in std_logic_vector(1 downto 0);
             dout:out std_logic_vector(1 downto 0));
    end component;

    component ram_saldo
        port(clk,we,reset:in std_logic;
             addr:in std_logic_vector(0 downto 0);
             din:in integer range 0 to 9500;
             dout:out integer range 0 to 9500);
    end component;

    component rom_productos
        port(addr:in std_logic_vector(3 downto 0);
             dout:out integer range 0 to 9500);
    end component;

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9500 := 0;
    signal cambio_int    : integer range -9999 to 9999 := 0;
    signal precio_int    : integer range 0 to 9500 := 0;
    signal stock_data    : std_logic_vector(1 downto 0);

    signal d0,d1,d2,d3   : std_logic_vector(3 downto 0);
    signal d0f,d1f,d2f,d3f : std_logic_vector(3 downto 0);
    signal dd0,dd1,dd2,dd3 : std_logic_vector(3 downto 0);

    signal clk_1Hz,clk_500ms,clk_2s : std_logic;
    signal ram_we,ram_saldo_we,reset_stock_i : std_logic;
    signal ram_addr : std_logic_vector(3 downto 0);
    signal ram_din  : std_logic_vector(1 downto 0);
    signal ram_saldo_addr : std_logic_vector(0 downto 0);
    signal ram_saldo_din  : integer range 0 to 9500;
    signal mostrar_cambio : std_logic;
    signal valor_saldo    : integer range 0 to 99;
    signal valor_producto : integer range 0 to 15;
    signal valor_display_full : integer range 0 to 9999;
    signal start_entrega  : std_logic;

    -- entrega_done y sincronización
    signal entrega_done_raw, entrega_done_sync1, entrega_done_sync2, entrega_done_main : std_logic;
begin
    --------------------------------------------------------------------
    -- Conversión BCD / Displays
    --------------------------------------------------------------------
    U_bcd1: bin_bcd port map(bin=>valor_saldo,d0=>d0,d1=>d1,d2=>open,d3=>open);
    U_bcd2: bin_bcd port map(bin=>valor_producto,d0=>d2,d1=>d3,d2=>open,d3=>open);
    U_bcd3: bin_bcd port map(bin=>valor_display_full,d0=>d0f,d1=>d1f,d2=>d2f,d3=>d3f);

    process(mostrar_cambio,d0,d1,d2,d3,d0f,d1f,d2f,d3f)
    begin
        if mostrar_cambio='1' then
            dd0<=d0f; dd1<=d1f; dd2<=d2f; dd3<=d3f;
        else
            dd0<=d0; dd1<=d1; dd2<=d2; dd3<=d3;
        end if;
    end process;

    U_D0: systemd port map(A=>dd0,D0=>disp0);
    U_D1: systemd port map(A=>dd1,D0=>disp1);
    U_D2: systemd port map(A=>dd2,D0=>disp2);
    U_D3: systemd port map(A=>dd3,D0=>disp3);

    --------------------------------------------------------------------
    -- Divisores de frecuencia
    --------------------------------------------------------------------
    U1: div_50millones port map(clk=>clk,out1=>clk_1Hz);
    U2: div_500ms      port map(clk=>clk,out1=>clk_500ms);
    U3: div_2seg       port map(clk=>clk,out1=>clk_2s);

    --------------------------------------------------------------------
    -- Contador de 5 s
    --------------------------------------------------------------------
    Ucont: cont30 port map(clk=>clk_1Hz, reset=>reset, start=>start_entrega, done=>entrega_done_raw);

    --------------------------------------------------------------------
    -- Sincronizador + pulso limpio (1 ciclo)
    --------------------------------------------------------------------
    process(clk,reset)
    begin
        if reset='1' then
            entrega_done_sync1<='0'; entrega_done_sync2<='0';
        elsif rising_edge(clk) then
            entrega_done_sync1<=entrega_done_raw;
            entrega_done_sync2<=entrega_done_sync1;
        end if;
    end process;
    entrega_done_main <= entrega_done_sync1 and not entrega_done_sync2; -- pulso de 1 ciclo en clk principal

    --------------------------------------------------------------------
    -- FSM principal
    --------------------------------------------------------------------
    UFSM: fsm_maquina_expendedora
        port map(
            clk=>clk,
            reset=>reset,
            sel_prod=>sel_prod,
            coin500=>coin500,
            coin1000=>coin1000,
            confirmar=>confirmar,
            anomalia_sw=>anomalia_sw,
            stock_data=>stock_data,
            precio_data=>precio_int,
            saldo=>saldo_bin,
            cambio=>cambio_int,
            clk_2s=>clk_2s,
            clk_500ms=>clk_500ms,
            entrega_done=>entrega_done_main,
            ram_we=>ram_we,
            ram_addr=>ram_addr,
            ram_din=>ram_din,
            ram_saldo_we=>ram_saldo_we,
            ram_saldo_addr=>ram_saldo_addr,
            ram_saldo_din=>ram_saldo_din,
            reset_stock=>reset_stock_i,
            mostrar_cambio=>mostrar_cambio,
            valor_saldo=>valor_saldo,
            valor_producto=>valor_producto,
            valor_display_full=>valor_display_full,
            led_compra=>led_compra,
            stock_leds=>stock_leds,
            alerta_led=>alerta_led,
            door_led=>door_led,
            entrega_led=>entrega_led,
            anomalia_led=>anomalia_led,
            buzzer=>open,
            debug_venta=>open,
            start_entrega=>start_entrega);

    --------------------------------------------------------------------
    -- Memorias / ROM / Restador
    --------------------------------------------------------------------
    URAM: ram_stock port map(clk=>clk,we=>ram_we,reset=>reset_stock_i,addr=>ram_addr,din=>ram_din,dout=>stock_data);
    URAMs: ram_saldo port map(clk=>clk,we=>ram_saldo_we,reset=>reset,addr=>ram_saldo_addr,din=>ram_saldo_din,dout=>saldo_bin);
    UROM: rom_productos port map(addr=>sel_prod,dout=>precio_int);
    URES: restador port map(clk=>clk,reset=>reset,confirmar=>confirmar,
                            dinero_ingresado=>saldo_bin,precio_producto=>precio_int,cambio=>cambio_int);
end arch;
