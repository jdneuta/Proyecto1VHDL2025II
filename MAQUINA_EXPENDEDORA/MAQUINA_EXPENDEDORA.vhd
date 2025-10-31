 -- ==========================================================
-- Máquina expendedora completa con control de servos, sensores y displays
-- ==========================================================
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
        anomalia_sw : in  std_logic; -- Anomalia
        sensorin500 : in std_logic;  -- Entrada del sensor infrarrojo para 500
        sensorin1000: in std_logic;  -- Entrada del sensor infrarrojo para 1000

        -- Displays 7 segmetos 
        disp0       : out std_logic_vector(6 downto 0);
        disp1       : out std_logic_vector(6 downto 0);
        disp2       : out std_logic_vector(6 downto 0);
        disp3       : out std_logic_vector(6 downto 0);

        -- LEDs de estado
        led_compra  : out std_logic;
        stock_leds  : out std_logic_vector(2 downto 0);
        alerta_led  : out std_logic;
        door_led    : buffer std_logic;
        entrega_led : out std_logic;
        anomalia_led: out std_logic;
        
        -- Señal PWM para los servos
        servo_pwm_1 : out std_logic;
        servo_pwm_2 : out std_logic;
        
        -- Nuevas salidas para PWM de servos de monedas
        servo_pwm_1000 : out std_logic; --servo moneda 1000
        servo_pwm_500  : out std_logic; --servo moneda 500
        
		  --Salida de Buzzer
        buzzer_out : out std_logic;
        
        servo_puerta_pwm : out std_logic
    );
end maquina_expendedora;

architecture arch_maquina_expendedora of maquina_expendedora is
    --------------------------------------------------------------------
    -- Componentes 
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
            alerta_led,door_led,entrega_led,anomalia_led,buzzer,debug_venta,start_entrega:out std_logic;
            servo1000_sw, servo500_sw : out std_logic  -- Nuevas señales para activar servos de monedas
        );
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
    
    component SensorInfrarojo
        port(
            sensorin : in  std_logic;
            sensorout: out std_logic);
    end component;
    
    component sumador_saldo
        port(
            clk    : in  std_logic;
            reset  : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo  : out integer range 0 to 9500
        );
    end component;
    
    component servo_giro180
        generic (
            clk_hz : integer := 50000000;
            pulse_hz : integer := 50;
            stop_pulse_us : integer := 1500;
            full_speed_us : integer := 2000;
            turn_time_ms : integer := 1000
        );
        port (
            clk : in std_logic;
            rst : in std_logic;
            switch : in std_logic;
            pwm : out std_logic
        );
    end component;
    
    component BUZZER
        port(
            CLK     : in  STD_LOGIC;
            RESET   : in  STD_LOGIC;
            ENABLE  : in  STD_LOGIC;
            BEEP    : out STD_LOGIC
        );
    end component;

    -- Nuevo componente para servos de monedas
    component servos_monedas
        generic (
            clk_hz : integer := 50000000;
            pulse_hz : integer := 50;
            stop_pulse_us : integer := 1500;
            full_speed_us : integer := 2000;
            min_speed_us  : integer := 1000;
            turn_time_ms  : integer := 1050
        );
        port (
            clk : in std_logic;
            rst : in std_logic;
            switch1 : in std_logic;  -- Para servo de 1000 (horario)
            switch2 : in std_logic;  -- Para servo de 500 (antihorario)
            pwm_servo1 : out std_logic;
            pwm_servo2 : out std_logic
        );
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
    
    -- Salidas de sensores
    signal sensor500_out : std_logic;
    signal sensor1000_out: std_logic;

    -- Entrega y sincronización
    signal entrega_done_raw, entrega_done_sync1, entrega_done_sync2, entrega_done_main : std_logic;
    
    -- Señales dummy para monedas (ya no usadas, conectadas a '0')
    signal coin500_dummy : std_logic := '0';
    signal coin1000_dummy: std_logic := '0';
    
    -- Señal para PWM del servo
    signal servo_pwm_sig1 : std_logic;
    signal servo_pwm_sig2 : std_logic;

    signal activar_servo1 : std_logic := '0';
    signal activar_servo2 : std_logic := '0';
    
    signal servo_sel1 : std_logic;
    signal servo_sel2 : std_logic;
    
    signal buzzer_sig : std_logic;
    
    signal reset_auto : std_logic := '0';
    
    -- Nuevas señales para servos de monedas
    signal servo1000_sw : std_logic;
    signal servo500_sw  : std_logic;
    signal pwm_servo1000_sig : std_logic;
    signal pwm_servo500_sig  : std_logic;
    
begin
    --------------------------------------------------------------------
    -- Conversión binario a BCD y control de displays
    --------------------------------------------------------------------
	 
    U_bcd1: bin_bcd port map(bin=>valor_saldo,d0=>d0,d1=>d1,d2=>open,d3=>open);
    U_bcd2: bin_bcd port map(bin=>valor_producto,d0=>d2,d1=>d3,d2=>open,d3=>open);
    U_bcd3: bin_bcd port map(bin=>valor_display_full,d0=>d0f,d1=>d1f,d2=>d2f,d3=>d3f);
	 
	 --Seleccionar que valor mostrar 
    process(mostrar_cambio,d0,d1,d2,d3,d0f,d1f,d2f,d3f)
    begin
        if mostrar_cambio='1' then
            dd0<=d0f; dd1<=d1f; dd2<=d2f; dd3<=d3f;
        else
            dd0<=d0; dd1<=d1; dd2<=d2; dd3<=d3;
        end if;
    end process;
	--Mapeo a displays 
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

    -- Contador de 5 segundos para la entrega 
    Ucont: cont30 port map(clk=>clk_1Hz, reset=>reset, start=>start_entrega, done=>entrega_done_raw);

    
    -- Sincronizacion de la senal de entrega 
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
    
    process(clk, reset)
    begin
        if reset = '1' then
            activar_servo1 <= '0';
            activar_servo2 <= '0';
        elsif rising_edge(clk) then
            -- Detectar flanco de start_entrega (ya sincronizado)
            if start_entrega = '1' then
                if sel_prod = "0000" then
                    activar_servo1 <= '1';
                elsif sel_prod = "0011" then
                    activar_servo2 <= '1';
                end if;
            else
                activar_servo1 <= '0';
                activar_servo2 <= '0';
            end if;
        end if;
    end process;
    
    --------------------------------------------------------------------
    -- FSM principal de la maquina 
    --------------------------------------------------------------------
    UFSM: fsm_maquina_expendedora
        port map(
            clk=>clk,
            reset=>reset or reset_auto,
            sel_prod=>sel_prod,
            coin500=>coin500_dummy,
            coin1000=>coin1000_dummy,
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
            start_entrega=>start_entrega,
            servo1000_sw=>servo1000_sw,
            servo500_sw=>servo500_sw
        );

    --------------------------------------------------------------------
    -- Memorias y cálculo de camnbio 
    --------------------------------------------------------------------
    URAM: ram_stock port map(clk=>clk,we=>ram_we,reset=>reset_stock_i,addr=>ram_addr,din=>ram_din,dout=>stock_data);
    UROM: rom_productos port map(addr=>sel_prod,dout=>precio_int);
    URES: restador port map(clk=>clk,reset=>reset,confirmar=>confirmar,
                            dinero_ingresado=>saldo_bin,precio_producto=>precio_int,cambio=>cambio_int);
                            
    --------------------------------------------------------------------
    -- Sumador de saldo con sensores de monedas
    --------------------------------------------------------------------
    U_saldo: sumador_saldo
        port map(
            clk    => clk,
            reset  => reset,  -- O (reset or reset_saldo) si quieres resetear al finalizar entrega
            sw500  => sensor500_out,
            sw1000 => sensor1000_out,
            saldo  => saldo_bin
        );                            
                            
    --------------------------------------------------------------------
    -- Sensores infrarrojos
    --------------------------------------------------------------------
    U_sensor500: SensorInfrarojo
        port map(
            sensorin  => sensorin500,
            sensorout => sensor500_out);
    U_sensor1000: SensorInfrarojo
        port map(
            sensorin  => sensorin1000,
            sensorout => sensor1000_out);    
            
    -- Servos de entrega de productos
	     U_SERVO1: servo_giro180
        generic map (
            clk_hz => 50000000,
            pulse_hz => 50,
            stop_pulse_us => 1500,
            full_speed_us => 2000,
            turn_time_ms => 1000
        )
        port map (
            clk => clk,
            rst => reset,
            switch => servo_sel1,
            pwm => servo_pwm_sig1
        );
    
		U_SERVO2: servo_giro180
        generic map (
            clk_hz => 50000000,
            pulse_hz => 50,
            stop_pulse_us => 1500,
            full_speed_us => 2000,
            turn_time_ms => 1000
        )
        port map (
            clk => clk,
            rst => reset,
            switch => servo_sel2,
            pwm => servo_pwm_sig2
        );

    servo_pwm_1 <= servo_pwm_sig1;
    servo_pwm_2 <= servo_pwm_sig2;
    
    servo_sel1 <= start_entrega when sel_prod = "0000" else '0';
    servo_sel2 <= start_entrega when sel_prod = "0011" else '0';
    
    --------------------------------------------------------------------
    -- Buzzer: suena mientras se entrega el producto
    --------------------------------------------------------------------
    U_BUZZER: BUZZER
        port map (
            CLK     => clk,
            RESET   => reset,
            ENABLE  => door_led,  -- suena durante la entrega
            BEEP    => buzzer_sig
        );

    -- conectar señal interna al puerto de salida
    buzzer_out <= buzzer_sig;

    --------------------------------------------------------------------
    -- Servos para monedas de cambio
    --------------------------------------------------------------------
    U_SERVOS_MONEDAS: servos_monedas
        generic map (
            clk_hz => 50000000,
            pulse_hz => 50,
            stop_pulse_us => 1500,
            full_speed_us => 2000,
            min_speed_us => 1000,
            turn_time_ms => 1050
        )
        port map (
            clk => clk,
            rst => reset,
            switch1 => servo1000_sw,  -- Activa servo de 1000 (horario)
            switch2 => servo500_sw,   -- Activa servo de 500 (antihorario)
            pwm_servo1 => pwm_servo1000_sig,
            pwm_servo2 => pwm_servo500_sig
        );

    -- Conectar PWM de servos de monedas a salidas
    servo_pwm_1000 <= pwm_servo1000_sig;
    servo_pwm_500  <= pwm_servo500_sig;

    
    -- Reset automático después de entrega
    
    U_RESET_AUTO: cont30
        port map(
            clk   => clk_1Hz,           -- reloj de 1 Hz 
            reset => '0',               -- no lo reiniciamos manualmente
            start => entrega_done_main, -- arranca el conteo SOLO cuando termina la entrega
            done  => reset_auto
        );

    -- Servo de puerta
    U_SERVO_PUERTA: entity work.servo_puerta
        generic map(
            clk_hz => 50000000,  
            turn_time_ms => 800  -- tiempo del giro 
        )
        port map(
            clk        => clk,
            rst        => reset_auto,     -- mismo automático 
            switch_cw  => door_led,       -- abre puerta cuando LED está encendido
            switch_ccw => not door_led,   -- cierra cuando LED se apaga
            pwm        => servo_puerta_pwm
        );
        
end arch_maquina_expendedora;