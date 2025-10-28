library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_maquina_expendedora is
    port(
        clk         : in  std_logic;
        reset       : in  std_logic;
        sel_prod    : in  std_logic_vector(3 downto 0);  -- Selección de producto (0-15)
        coin500     : in  std_logic;
        coin1000    : in  std_logic;
        confirmar   : in  std_logic;
        anomalia_sw : in  std_logic;
        stock_data  : in  std_logic_vector(1 downto 0);  -- Stock leído de RAM (0-3)
        precio_data : in  integer range 0 to 9500;       -- Precio leído de ROM
        saldo       : in  integer range 0 to 9500;       -- Saldo actual
        cambio      : in  integer range -9999 to 9999;   -- Cambio calculado
        clk_2s      : in  std_logic;                     -- Reloj para alerta (de div_2seg)
        
        -- Salidas de control
        ram_we      : out std_logic;                     -- Write enable para RAM stock
        ram_addr    : out std_logic_vector(3 downto 0); -- Dirección para RAM (producto seleccionado)
        ram_din     : out std_logic_vector(1 downto 0); -- Dato a escribir en RAM (nuevo stock)
        reset_saldo : out std_logic;                     -- Reset de saldo
        reset_stock : out std_logic;                     -- Reset de stock a inicial
        mostrar_cambio : out std_logic;                  -- Mostrar cambio en displays
        valor_saldo   : out integer range 0 to 99;       -- Saldo en centenas para disp0/disp1
        valor_producto: out integer range 0 to 15;       -- Producto para disp2/disp3
        led_compra  : out std_logic;                     -- LED de compra
        stock_leds  : out std_logic_vector(2 downto 0);  -- LEDs de stock
        alerta_led  : out std_logic;                     -- LED de alerta stock
        door_led    : out std_logic;                     -- LED de puerta
        entrega_led : out std_logic;                     -- LED de entrega (parpadeo)
        anomalia_led: out std_logic;                     -- LED de anomalía
        buzzer      : out std_logic                      -- Señal sonora (alta en anomalía o entrega)
    );
end fsm_maquina_expendedora;

architecture behavioral of fsm_maquina_expendedora is
    type state_type is (IDLE, WAITING_SELECTION, WAITING_PAYMENT, DISPENSING, ANOMALY);
    signal state, next_state : state_type := IDLE;
    
    signal producto_sel : integer range 0 to 15 := 0;
    signal stock_actual : integer range 0 to 3 := 0;
    signal precio_actual : integer range 0 to 9500 := 0;
    signal saldo_suficiente : std_logic := '0';
    signal entrega_activa : std_logic := '0';
    signal clk_500ms : std_logic := '0';  -- Para parpadeo (de div_500ms)
    
    -- Señales internas para control
    signal prev_confirmar : std_logic := '0';
    signal confirm_pulse : std_logic := '0';
    signal venta_completada : std_logic := '0';  -- Para reset saldo y decremento
begin
    producto_sel <= to_integer(unsigned(sel_prod));
    stock_actual <= to_integer(unsigned(stock_data));
    precio_actual <= precio_data;
    saldo_suficiente <= '1' when saldo >= precio_actual else '0';
    
    -- Detección de pulso mejorada para FPGA
    process(clk, reset)
    begin
        if reset = '1' then
            prev_confirmar <= '0';
            confirm_pulse <= '0';
            venta_completada <= '0';
        elsif rising_edge(clk) then
            if confirmar = '1' and prev_confirmar = '0' then
                confirm_pulse <= '1';
            elsif confirm_pulse = '1' then
                confirm_pulse <= '0';  -- Reset pulso inmediatamente después de detectar
            end if;
            prev_confirmar <= confirmar;
            -- Marcar venta completada al terminar entrega
            if state = DISPENSING and entrega_activa = '0' then
                venta_completada <= '1';
            else
                venta_completada <= '0';
            end if;
        end if;
    end process;
    
    -- Lógica de próximo estado
    process(state, sel_prod, coin500, coin1000, confirm_pulse, anomalia_sw, stock_actual, saldo_suficiente, entrega_activa)
    begin
        next_state <= state;
        case state is
            when IDLE =>
                if sel_prod /= "0000" then  -- Selección activa
                    next_state <= WAITING_SELECTION;
                end if;
            when WAITING_SELECTION =>
                if confirm_pulse = '1' and stock_actual > 0 and saldo_suficiente = '1' and entrega_activa = '0' then
                    next_state <= WAITING_PAYMENT;
                elsif anomalia_sw = '1' then
                    next_state <= ANOMALY;
                end if;
            when WAITING_PAYMENT =>
                if confirm_pulse = '1' then
                    next_state <= DISPENSING;  -- Compra confirmada: mostrar cambio y puerta inmediatamente
                elsif anomalia_sw = '1' then
                    next_state <= ANOMALY;
                end if;
            when DISPENSING =>
                if entrega_activa = '0' then  -- Entrega terminada
                    next_state <= IDLE;
                elsif anomalia_sw = '1' then
                    next_state <= ANOMALY;
                end if;
            when ANOMALY =>
                if anomalia_sw = '0' then
                    next_state <= IDLE;
                end if;
        end case;
    end process;
    
    -- Registro de estado
    process(clk, reset)
    begin
        if reset = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;
    
    -- Lógica de salidas
    process(state, clk, reset, stock_actual, cambio, saldo, producto_sel, anomalia_sw, entrega_activa, clk_500ms, clk_2s, venta_completada, confirm_pulse)
    begin
        -- Valores por defecto
        ram_we <= '0';
        ram_addr <= sel_prod;
        ram_din <= std_logic_vector(to_unsigned(stock_actual, 2));
        reset_saldo <= '0';
        reset_stock <= '0';
        mostrar_cambio <= '0';
        valor_saldo <= saldo / 100;  -- Siempre mostrar saldo en centenas
        valor_producto <= producto_sel;  -- Siempre mostrar producto seleccionado
        led_compra <= '0';
        stock_leds <= "000";
        alerta_led <= '0';
        door_led <= '0';
        entrega_led <= '0';
        anomalia_led <= '0';
        buzzer <= '0';
        
        if reset = '1' then
            -- Reset global: todo a cero
            reset_saldo <= '1';
            reset_stock <= '1';
            valor_saldo <= 0;
            valor_producto <= 0;
        else
            case state is
                when IDLE =>
                    -- Luces apagadas, máquina inactiva
                    valor_saldo <= 0;
                    valor_producto <= 0;
                when WAITING_SELECTION =>
                    -- LEDs de stock
                    case stock_actual is
                        when 3 => stock_leds <= "111";
                        when 2 => stock_leds <= "110";
                        when 1 => stock_leds <= "100";
                        when others => stock_leds <= "000";
                    end case;
                    -- Alerta si no hay stock
                    if stock_actual = 0 then
                        alerta_led <= clk_2s;
                    end if;
                when WAITING_PAYMENT =>
                    if confirm_pulse = '1' then
                        led_compra <= '1';
                        -- Restar stock en RAM inmediatamente
                        ram_we <= '1';
                        ram_din <= std_logic_vector(to_unsigned(stock_actual - 1, 2));
                        -- Mostrar cambio inmediatamente y encender puerta
                        mostrar_cambio <= '1';
                        valor_saldo <= abs(cambio) / 100;  -- Cambio en centenas para disp0/disp1
                        valor_producto <= abs(cambio) mod 100;  -- Cambio en unidades para disp2/disp3
                        door_led <= '1';
                        buzzer <= '1';  -- Señal sonora
                    end if;
                when DISPENSING =>
                    -- Mantener cambio mostrado y puerta encendida durante entrega
                    mostrar_cambio <= '1';
                    valor_saldo <= abs(cambio) / 100;
                    valor_producto <= abs(cambio) mod 100;
                    door_led <= '1';
                    entrega_led <= clk_500ms;  -- Parpadeo durante entrega
                    buzzer <= '1';
                    entrega_activa <= '1';  -- Simular entrega (integrar con cont30)
                    if venta_completada = '1' then
                        reset_saldo <= '1';  -- Reset saldo a 0 al terminar
                    end if;
                when ANOMALY =>
                    door_led <= '0';  -- Cerrar puerta
                    anomalia_led <= '1';
                    buzzer <= '1';  -- Alarma sonora
            end case;
        end if;
    end process;
    
    -- Integración de relojes para parpadeo (asumir instancias externas)
    -- clk_500ms debe provenir de div_500ms en el top-level
end behavioral;