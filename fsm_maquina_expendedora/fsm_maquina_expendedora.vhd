library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_maquina_expendedora is
    port(
        clk            : in  std_logic;
        reset          : in  std_logic;
        -- Entradas
        sel_prod       : in  std_logic_vector(3 downto 0);
        coin500        : in  std_logic;
        coin1000       : in  std_logic;
        confirmar      : in  std_logic;
        anomalia_sw    : in  std_logic;
        stock_data     : in  std_logic_vector(1 downto 0);
        precio_data    : in  integer range 0 to 9500;
        saldo          : in  integer range 0 to 9500;
        cambio         : in  integer range -9999 to 9999;
        clk_2s         : in  std_logic;
        clk_500ms      : in  std_logic;
        entrega_done   : in  std_logic;

        -- Control de memoria
        ram_we         : out std_logic;
        ram_addr       : out std_logic_vector(3 downto 0);
        ram_din        : out std_logic_vector(1 downto 0);
        ram_saldo_we   : out std_logic;
        ram_saldo_addr : out std_logic_vector(0 downto 0);
        ram_saldo_din  : out integer range 0 to 9500;

        -- Salidas de control
        reset_stock    : out std_logic;
        mostrar_cambio : out std_logic;
        valor_saldo    : out integer range 0 to 99;
        valor_producto : out integer range 0 to 15;
        valor_display_full : out integer range 0 to 9999;
        led_compra     : out std_logic;
        stock_leds     : out std_logic_vector(2 downto 0);
        alerta_led     : out std_logic;
        door_led       : out std_logic;
        entrega_led    : out std_logic;
        anomalia_led   : out std_logic;
        buzzer         : out std_logic;
        debug_venta    : out std_logic;
        start_entrega  : out std_logic
    );
end fsm_maquina_expendedora;

architecture behavioral of fsm_maquina_expendedora is

    type state_type is (WAITING_SELECTION, DISPENSING, ANOMALY);
    signal state : state_type := WAITING_SELECTION;

    signal producto_sel      : integer range 0 to 15 := 0;
    signal stock_actual      : integer range 0 to 3 := 0;
    signal precio_actual     : integer range 0 to 9500 := 0;
    signal saldo_suficiente  : std_logic := '0';

    -- Latch de confirmación
    signal prev_confirmar    : std_logic := '0';
    signal confirm_latched   : std_logic := '0';

    -- Pulsos de monedas
    signal prev_coin500      : std_logic := '0';
    signal prev_coin1000     : std_logic := '0';
    signal coin_p500         : std_logic := '0';
    signal coin_p1000        : std_logic := '0';

    -- Señales registradas
    signal r_ram_we          : std_logic := '0';
    signal r_ram_addr        : std_logic_vector(3 downto 0) := (others=>'0');
    signal r_ram_din         : std_logic_vector(1 downto 0) := (others=>'0');
    signal r_ram_saldo_we    : std_logic := '0';
    signal r_ram_saldo_addr  : std_logic_vector(0 downto 0) := "0";
    signal r_ram_saldo_din   : integer range 0 to 9500 := 0;
    signal r_reset_stock     : std_logic := '0';
    signal r_mostrar_cambio  : std_logic := '0';
    signal r_valor_saldo     : integer range 0 to 99 := 0;
    signal r_valor_producto  : integer range 0 to 15 := 0;
    signal r_valor_full      : integer range 0 to 9999 := 0;
    signal r_led_compra      : std_logic := '0';
    signal r_stock_leds      : std_logic_vector(2 downto 0) := "111";
    signal r_alerta_led      : std_logic := '0';
    signal r_door_led        : std_logic := '0';
    signal r_entrega_led     : std_logic := '0';
    signal r_anomalia_led    : std_logic := '0';
    signal r_buzzer          : std_logic := '0';
    signal r_debug_venta     : std_logic := '0';
    signal r_start_entrega   : std_logic := '0';

    signal write_done_this_confirm : std_logic := '0';

begin
    --------------------------------------------------------------------
    -- Conversiones básicas
    --------------------------------------------------------------------
    producto_sel     <= to_integer(unsigned(sel_prod));
    stock_actual     <= to_integer(unsigned(stock_data));
    precio_actual    <= precio_data;
    saldo_suficiente <= '1' when saldo >= precio_actual else '0';
    r_ram_addr       <= sel_prod;

    --------------------------------------------------------------------
    -- Detección de flancos: confirmación y monedas
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            prev_confirmar  <= '0';
            confirm_latched <= '0';
            prev_coin500    <= '0';
            prev_coin1000   <= '0';
            coin_p500       <= '0';
            coin_p1000      <= '0';
        elsif rising_edge(clk) then
            coin_p500  <= '0';
            coin_p1000 <= '0';
            if (confirmar = '1' and prev_confirmar = '0') then
                confirm_latched <= '1';
            else
                confirm_latched <= '0';
            end if;
            prev_confirmar <= confirmar;

            if (coin500 = '1' and prev_coin500 = '0') then
                coin_p500 <= '1';
            end if;
            if (coin1000 = '1' and prev_coin1000 = '0') then
                coin_p1000 <= '1';
            end if;
            prev_coin500  <= coin500;
            prev_coin1000 <= coin1000;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Proceso síncrono principal (estado + salidas)
    --------------------------------------------------------------------
    process(clk, reset)
        variable nuevo_stock : integer range 0 to 3;
    begin
        if reset = '1' then
            state <= WAITING_SELECTION;
            r_ram_we <= '0'; r_ram_saldo_we <= '0';
            r_reset_stock <= '0';
            r_mostrar_cambio <= '0';
            r_valor_saldo <= 0; r_valor_producto <= 0;
            r_valor_full <= 0; r_led_compra <= '0';
            r_stock_leds <= "111"; r_alerta_led <= '0';
            r_door_led <= '0'; r_entrega_led <= '0';
            r_anomalia_led <= '0'; r_buzzer <= '0';
            r_debug_venta <= '0'; r_start_entrega <= '0';
            write_done_this_confirm <= '0';

        elsif rising_edge(clk) then

            ----------------------------------------------------------------
            -- Defaults en cada ciclo
            ----------------------------------------------------------------
            r_ram_we          <= '0';
            r_ram_saldo_we    <= '0';
            r_reset_stock     <= '0';
            r_led_compra      <= '0';
            r_buzzer          <= '0';
            r_start_entrega   <= '0';
            r_alerta_led      <= '0';
            r_mostrar_cambio  <= '0';
            r_door_led        <= '0';
            r_entrega_led     <= '0';
            r_anomalia_led    <= '0';

            -- Mostrar saldo y producto siempre
            r_valor_saldo    <= saldo / 100;
            r_valor_producto <= producto_sel;

            case stock_actual is
                when 3 => r_stock_leds <= "111";
                when 2 => r_stock_leds <= "110";
                when 1 => r_stock_leds <= "100";
                when others => r_stock_leds <= "000";
            end case;

            ----------------------------------------------------------------
            -- FSM SINCRÓNICA
            ----------------------------------------------------------------
            case state is
                ----------------------------------------------------------------
                when WAITING_SELECTION =>
                    -- alerta si no hay stock
                    if stock_actual = 0 then
                        r_alerta_led <= clk_2s;
                    end if;

                    -- sumar monedas
                    if coin_p500 = '1' then
                        r_ram_saldo_we  <= '1';
                        r_ram_saldo_din <= saldo + 500;
                    elsif coin_p1000 = '1' then
                        r_ram_saldo_we  <= '1';
                        r_ram_saldo_din <= saldo + 1000;
                    end if;

                    -- Compra válida → pasa a DISPENSING
                    if (confirm_latched = '1' and anomalia_sw = '0' and stock_actual > 0 and saldo_suficiente = '1') then
                        -- Actualiza stock
                        if write_done_this_confirm = '0' then
                            nuevo_stock := stock_actual - 1;
                            r_ram_we    <= '1';
                            r_ram_din   <= std_logic_vector(to_unsigned(nuevo_stock, 2));
                            write_done_this_confirm <= '1';
                        end if;
                        r_led_compra     <= '1';
                        r_door_led       <= '1';
                        r_entrega_led    <= clk_500ms;
                        r_buzzer         <= '1';
                        r_mostrar_cambio <= '1';
                        if cambio < 0 then
                            r_valor_full <= -cambio;
                        else
                            r_valor_full <= cambio;
                        end if;
                        r_start_entrega <= '1';
                        state <= DISPENSING;
                    else
                        write_done_this_confirm <= '0';
                    end if;

                ----------------------------------------------------------------
                when DISPENSING =>
                    r_door_led       <= '1';
                    r_entrega_led    <= clk_500ms;
                    r_mostrar_cambio <= '1';
                    if cambio < 0 then
                        r_valor_full <= -cambio;
                    else
                        r_valor_full <= cambio;
                    end if;
                    -- si termina entrega → reset saldo y volver
                    if entrega_done = '1' then
                        r_ram_saldo_we  <= '1';
                        r_ram_saldo_din <= 0;
                        write_done_this_confirm <= '0';
                        state <= WAITING_SELECTION;
                    end if;

                ----------------------------------------------------------------
                when ANOMALY =>
                    r_anomalia_led <= '1';
                    if anomalia_sw = '0' then
                        state <= WAITING_SELECTION;
                    end if;
            end case;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Asignación de salidas
    --------------------------------------------------------------------
    ram_we            <= r_ram_we;
    ram_addr          <= r_ram_addr;
    ram_din           <= r_ram_din;
    ram_saldo_we      <= r_ram_saldo_we;
    ram_saldo_addr    <= r_ram_saldo_addr;
    ram_saldo_din     <= r_ram_saldo_din;
    reset_stock       <= r_reset_stock;
    mostrar_cambio    <= r_mostrar_cambio;
    valor_saldo       <= r_valor_saldo;
    valor_producto    <= r_valor_producto;
    valor_display_full<= r_valor_full;
    led_compra        <= r_led_compra;
    stock_leds        <= r_stock_leds;
    alerta_led        <= r_alerta_led;
    door_led          <= r_door_led;
    entrega_led       <= r_entrega_led;
    anomalia_led      <= r_anomalia_led;
    buzzer            <= r_buzzer;
    debug_venta       <= r_debug_venta;
    start_entrega     <= r_start_entrega;

end behavioral;
