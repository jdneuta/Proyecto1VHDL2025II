library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_bcd is
    port(
        bin : in integer range 0 to 9999;   -- número en binario
        d0  : out std_logic_vector(3 downto 0); -- unidades
        d1  : out std_logic_vector(3 downto 0); -- decenas
        d2  : out std_logic_vector(3 downto 0); -- centenas
        d3  : out std_logic_vector(3 downto 0)  -- millares
    );
end bin_bcd;

architecture arch_bin_bcd of bin_bcd is
    signal value : integer range 0 to 9999;
begin
    process(bin)
        variable temp : integer range 0 to 9999;
        variable u, d, c, m : integer range 0 to 9;
    begin
        value <= bin;
        temp := bin;

        -- Cálculo de cada dígito (división sucesiva)
        m := temp / 1000;        -- millares
        temp := temp mod 1000;

        c := temp / 100;         -- centenas
        temp := temp mod 100;

        d := temp / 10;          -- decenas
        u := temp mod 10;        -- unidades

        -- Asignación a salidas en std_logic_vector
        d3 <= std_logic_vector(to_unsigned(m, 4));
        d2 <= std_logic_vector(to_unsigned(c, 4));
        d1 <= std_logic_vector(to_unsigned(d, 4));
        d0 <= std_logic_vector(to_unsigned(u, 4));
    end process;
end arch_bin_bcd;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont30 is
    port(
        clk    : in  std_logic;  -- reloj lento de 1Hz
        reset  : in  std_logic;
        start  : in  std_logic;  -- señal de inicio (compra confirmada)
        door   : out std_logic   -- LED encendido mientras está activo
    );
end cont30;

architecture arch_cont30 of cont30 is
    signal count   : unsigned(5 downto 0) := (others => '0'); -- cuenta hasta 30
    signal active  : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count  <= (others => '0');
            active <= '0';
        elsif rising_edge(clk) then
            if start = '1' and active = '0' then
                -- iniciar conteo
                active <= '1';
                count  <= (others => '0');
            elsif active = '1' then
                if count < 29 then
                    count <= count + 1;
                else
                    active <= '0'; -- apagar después de 30s
                end if;
            end if;
        end if;
    end process;

    -- LED encendido mientras está activo
    door <= active;
end arch_cont30;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_puerta is
    port(
        clk         : in  std_logic;  -- reloj lento (1Hz)
        reset       : in  std_logic;
        confirmar   : in  std_logic;  -- inicio de entrega
        anomaly_sw  : in  std_logic;  -- switch de anomalía
        door_led    : out std_logic;  -- LED puerta
        anomaly_led : out std_logic;  -- LED anomalía
        permitir_compra : out std_logic -- habilita o bloquea la resta
    );
end control_puerta;

architecture Behavioral of control_puerta is
    signal contador      : integer range 0 to 30 := 0;
    signal activo        : std_logic := '0';
    signal puerta_int    : std_logic := '0';
    signal anomaly_reg   : std_logic := '0';
begin

    process(clk, reset)
    begin
        if reset = '1' then
            contador     <= 0;
            activo       <= '0';
            puerta_int   <= '0';
            anomaly_reg  <= '0';
        elsif rising_edge(clk) then
            if confirmar = '1' and activo = '0' then
                -- inicia entrega
                activo      <= '1';
                puerta_int  <= '1';
                contador    <= 30;
                anomaly_reg <= '0';
            elsif activo = '1' then
                if anomaly_sw = '1' then
                    -- anomalía detectada
                    puerta_int  <= '0';
                    anomaly_reg <= '1';
                    activo      <= '0';
                    contador    <= 0;
                elsif contador > 0 then
                    contador <= contador - 1;
                    if contador = 1 then
                        puerta_int <= '0'; -- cerrar puerta al llegar a 0
                        activo     <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    door_led        <= puerta_int;
    anomaly_led     <= anomaly_reg;
    permitir_compra <= (not anomaly_reg); -- si hubo anomalía, bloquear compra

end Behavioral;
library ieee;
use ieee.std_logic_1164.all;

entity div_2seg is
    port(
        clk   : in  std_logic;
        out1  : buffer std_logic
    );
end div_2seg;

architecture arch_div_2seg of div_2seg is
    signal count1 : integer range 0 to 49_999_999 := 0;
begin
    process(clk)
    begin
        if (clk'event and clk = '1') then
            count1 <= count1 + 1;

            if (count1 = 24_999_999) then   -- medio periodo = 1 s
                out1   <= not out1;
                count1 <= 0;
            end if;
        end if;
    end process;
end arch_div_2seg;
library ieee;
use ieee.std_logic_1164.all;

entity div_500ms is
    port(
        clk  : in  std_logic;
        out1 : buffer std_logic
    );
end div_500ms;

architecture arch_div_500ms of div_500ms is
    -- Para 50 MHz: 50e6 ciclos en 1 s
    -- Queremos periodo total 0,5 s → toggle cada 0,25 s
    -- 0,25 s * 50e6 = 12_500_000 ciclos
    signal count1 : integer range 0 to 12499999 := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if count1 = 12499999 then
                out1   <= not out1;
                count1 <= 0;
            else
                count1 <= count1 + 1;
            end if;
        end if;
    end process;
end arch_div_500ms;
library ieee;
use ieee.std_logic_1164.all;

entity div_50millones is
	port
	(
		clk : in std_logic;
		out1: buffer std_logic
	);
end div_50millones;

architecture arch_div_50millones of div_50millones is
	signal count1 : integer range 0 to 49999999;
begin
	process (clk)
	begin
		if (clk'event and clk='1') then
			count1 <= count1 + 1;
			
			if (count1 = 24999999 ) then
				out1 <= not out1;
				count1 <= 0;
			end if;
		end if;
	end process;
end arch_div_50millones;
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_productos is
    port(
        clk        : in  std_logic;                     -- reloj
        reset      : in  std_logic;                     -- reset general
        confirmar  : in  std_logic;                     -- botón confirmar compra
        sel_prod   : in  std_logic_vector(3 downto 0);  -- selección producto (4 bits)
        led_compra : out std_logic;                     -- LED confirma compra (1 ciclo)
        stock_leds : out std_logic_vector(2 downto 0);  -- LEDs muestran stock (3=111 ... 0=000)
        disp2      : out std_logic_vector(6 downto 0);  -- display unidades producto
        disp3      : out std_logic_vector(6 downto 0);  -- display decenas producto
	alerta_led : out std_logic
    );
end top_productos;

architecture arch of top_productos is
    -- COMPONENTE divisor de 2 segundos
    component div_2seg 
    port(
        clk   : in  std_logic;
        out1  : buffer std_logic
    );
    end component;

    -- COMPONENTE decodificador 7 segmentos
    component systemd
        port(
            A  : in  std_logic_vector(3 downto 0);
            D0 : out std_logic_vector(6 downto 0)
        );
    end component;

    -- stock de 15 productos
    type stock_array is array (0 to 14) of integer range 0 to 3;
    signal stock : stock_array := (others => 3);

    -- precio actual (solo interno, no se muestra)
    signal precio : integer range 0 to 9500 := 0;

    -- producto seleccionado
    signal producto_sel : integer range 0 to 15 := 0;

    -- BCD para mostrar producto
    signal dig_unid, dig_dec : std_logic_vector(3 downto 0);

    -- señales para detectar flanco de confirmación
    signal prev_conf : std_logic := '0';
    signal confirm_pulse : std_logic := '0';
    
    -- señal 2 segundos
    signal clk_2s : std_logic := '0';
    signal alerta_sig : std_logic := '0'; --señal interna para la alerta

begin
    --------------------------------------------------------------------
    -- Selección de producto
    --------------------------------------------------------------------
    producto_sel <= to_integer(unsigned(sel_prod));

    --------------------------------------------------------------------
    -- Precios de productos (case, máximo 9500)
    --------------------------------------------------------------------
    process(producto_sel)
    begin
        case producto_sel is
            when 0  => precio <= 1500;
            when 1  => precio <= 2500;
            when 2  => precio <= 3000;
            when 3  => precio <= 4500;
            when 4  => precio <= 5000;
            when 5  => precio <= 5200;
            when 6  => precio <= 5800;
            when 7  => precio <= 6000;
            when 8  => precio <= 6200;
            when 9  => precio <= 7000;
            when 10 => precio <= 7200;
            when 11 => precio <= 8000;
            when 12 => precio <= 8500;
            when 13 => precio <= 9000;
            when 14 => precio <= 9500;
            when others => precio <= 0;
        end case;
    end process;

    --------------------------------------------------------------------
    -- Confirmar compra: restar stock y dar pulso a LED
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            stock <= (others => 3);
            prev_conf <= '0';
            confirm_pulse <= '0';
        elsif rising_edge(clk) then
            if (confirmar = '1' and prev_conf = '0') then
                if stock(producto_sel) > 0 then
                    stock(producto_sel) <= stock(producto_sel) - 1;
                    confirm_pulse <= '1';
                else
                    confirm_pulse <= '0';
                end if;
            else
                confirm_pulse <= '0';
            end if;
            prev_conf <= confirmar;
        end if;
    end process;

    led_compra <= confirm_pulse;

    --------------------------------------------------------------------
    -- LEDs de stock (decodificación tipo barra, no binario)
    --------------------------------------------------------------------
    process(stock, producto_sel)
    begin
        case stock(producto_sel) is
            when 3 => stock_leds <= "111";
            when 2 => stock_leds <= "110";
            when 1 => stock_leds <= "100";
            when others => stock_leds <= "000";
        end case;
    end process;
    
    --------------------------------------------------------------------
    -- INSTANCIAR 2 SEGUNDOS
    --------------------------------------------------------------------
    Udiv: div_2seg
        port map(
            clk  => clk,
            out1 => clk_2s
        );
    
    process(clk_2s, reset)
    begin
        if reset = '1' then
            alerta_sig <= '0';
        elsif rising_edge(clk_2s) then
            if stock(producto_sel) = 0 then
                alerta_sig <= not alerta_sig; -- parpadea cada 2s
            else
                alerta_sig <= '0'; -- apagado si hay stock
            end if;
        end if;
    end process;

    alerta_led <= alerta_sig;

    --------------------------------------------------------------------
    -- Conversión del número de producto a BCD
    --------------------------------------------------------------------
    dig_unid <= std_logic_vector(to_unsigned(producto_sel mod 10, 4));
    dig_dec  <= std_logic_vector(to_unsigned(producto_sel / 10, 4));

    --------------------------------------------------------------------
    -- Mostrar producto en los displays
    --------------------------------------------------------------------
    U1: systemd port map(A => dig_unid, D0 => disp2); -- unidades
    U2: systemd port map(A => dig_dec,  D0 => disp3); -- decenas

end arch;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RESTADOR is
    port(
        clk             : in  std_logic;                     -- reloj
        reset           : in  std_logic;                     -- reset general
        confirmar       : in  std_logic;                     -- confirma compra
        dinero_ingresado: in  integer range 0 to 9999;       -- viene de sumador_saldo
        precio_producto : in  integer range 0 to 9999;       -- viene de top_productos
        cambio          : out integer range -9999 to 9999    -- resultado de la resta
    );
end RESTADOR;

architecture Behavioral of RESTADOR is
    signal cambio_reg : integer range -9999 to 9999 := 0;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            cambio_reg <= 0;
        elsif rising_edge(clk) then
            if confirmar = '1' then
                cambio_reg <= dinero_ingresado - precio_producto;
            end if;
        end if;
    end process;

    cambio <= cambio_reg;

end Behavioral;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_saldo is
    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
        sw500   : in  std_logic;
        sw1000  : in  std_logic;
        saldo   : out integer range 0 to 9500
    );
end entity;

architecture Behavioral of sumador_saldo is
    constant DEBOUNCE_CYCLES : integer := 1000000; -- ~20 ms @ 50 MHz (ajusta si tu reloj no es 50MHz)

    signal saldo_reg   : integer range 0 to 9500 := 0;
    signal prev500     : std_logic := '0';
    signal prev1000    : std_logic := '0';

    signal lock500     : std_logic := '0';
    signal lock1000    : std_logic := '0';
    signal cnt500      : integer range 0 to DEBOUNCE_CYCLES := 0;
    signal cnt1000     : integer range 0 to DEBOUNCE_CYCLES := 0;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;
            prev500   <= '0';
            prev1000  <= '0';
            lock500   <= '0';
            lock1000  <= '0';
            cnt500    <= 0;
            cnt1000   <= 0;

        elsif rising_edge(clk) then
            -- decrement / release debounce locks
            if lock500 = '1' then
                if cnt500 > 0 then
                    cnt500 <= cnt500 - 1;
                else
                    lock500 <= '0';
                end if;
            end if;

            if lock1000 = '1' then
                if cnt1000 > 0 then
                    cnt1000 <= cnt1000 - 1;
                else
                    lock1000 <= '0';
                end if;
            end if;

            -- detectar flanco de subida y aplicar suma UNA vez (si no está bloqueado)
            if (sw500 = '1' and prev500 = '0' and lock500 = '0') then
                if saldo_reg <= 9000 then
                    saldo_reg <= saldo_reg + 500;
                else
                    saldo_reg <= 9500;
                end if;
                -- bloquear durante debounce
                lock500 <= '1';
                cnt500  <= DEBOUNCE_CYCLES;
            end if;

            if (sw1000 = '1' and prev1000 = '0' and lock1000 = '0') then
                if saldo_reg <= 8500 then
                    saldo_reg <= saldo_reg + 1000;
                else
                    saldo_reg <= 9500;
                end if;
                -- bloquear durante debounce
                lock1000 <= '1';
                cnt1000  <= DEBOUNCE_CYCLES;
            end if;

            -- actualizar estados previos
            prev500  <= sw500;
            prev1000 <= sw1000;
        end if;
    end process;

    saldo <= saldo_reg;

end architecture;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_ingreso_dinero is
    port(
        clk50mhz : in  std_logic;                  -- reloj principal FPGA
        reset    : in  std_logic;                  -- reset manual
        sw500    : in  std_logic;                  -- switch moneda 500
        sw1000   : in  std_logic;                  -- switch moneda 1000
        disp0, disp1, disp2, disp3 : out std_logic_vector(6 downto 0)  -- displays
    );
end top_ingreso_dinero;

architecture arch_top_ingreso_dinero of top_ingreso_dinero is

    -- COMPONENTES
    component div_50millones
        port(
            clk  : in  std_logic;
            out1 : buffer std_logic
        );
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

    -- SEÑALES INTERNAS
    signal clk_lento : std_logic := '0';
    signal saldo_bin : integer range 0 to 9500 := 0;
    signal dig0, dig1, dig2, dig3 : std_logic_vector(3 downto 0);

begin

    -- INSTANCIAS
    U1: div_50millones port map(
        clk  => clk50mhz,
        out1 => clk_lento
    );

    U2: sumador_saldo port map(
        clk    => clk_lento,
        reset  => reset,
        sw500  => sw500,
        sw1000 => sw1000,
        saldo  => saldo_bin
    );

    U3: bin_bcd port map(
        bin => saldo_bin,
        d0  => dig0,
        d1  => dig1,
        d2  => dig2,
        d3  => dig3
    );

    -- DECODIFICADORES
    U4: systemd port map(A => dig0, D0 => disp0);
    U5: systemd port map(A => dig1, D0 => disp1);
    U6: systemd port map(A => dig2, D0 => disp2);
    U7: systemd port map(A => dig3, D0 => disp3);

end arch_top_ingreso_dinero;
library ieee;
use ieee.std_logic_1164.all;

entity systemd is
	port
	(
		-- Input ports A
		A : in std_logic_vector(3 downto 0);
		-- Output ports B
		D0 : out std_logic_vector(6 downto 0)

	);
end systemd;

architecture arch_systemd of systemd is
begin
	with A select
	D0 <= "1000000" when "0000",
	      "1111001" when "0001",
	      "0100100" when "0010",
	      "0110000" when "0011",
	      "0011001" when "0100",
	      "0010010" when "0101",
	      "0000010" when "0110",
	      "1111000" when "0111",
	      "0000000" when "1000",
	      "0010000" when "1001",
	      "1111111" when others;

end arch_systemd;
