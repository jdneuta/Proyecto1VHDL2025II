library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity maquina_expendedora is
    port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        monedas    : in  std_logic_vector(3 downto 0); -- switches monedas
        producto   : in  std_logic_vector(3 downto 0); -- producto
        confirmar  : in  std_logic;
        anomaly_sw : in  std_logic;

        -- Displays
        display0   : out std_logic_vector(6 downto 0);
        display1   : out std_logic_vector(6 downto 0);
        display2   : out std_logic_vector(6 downto 0);
        display3   : out std_logic_vector(6 downto 0);

        -- LEDs
        door_led   : out std_logic;
        anomaly_led: out std_logic
    );
end entity;

architecture rtl of maquina_expendedora is

    --------------------------------------------------------------------
    -- Señales internas
    --------------------------------------------------------------------
    signal saldo_bin     : integer range 0 to 9999 := 0; -- saldo contado
    signal saldo_real    : integer range 0 to 9999 := 0; -- saldo actualizado
    signal cambio_int    : integer range -9999 to 9999 := 0;
    signal precio_int    : integer range 0 to 9999 := 0;
    signal mostrar_cambio: std_logic := '0';

    signal d0, d1, d2, d3 : std_logic_vector(3 downto 0);
    signal valor_a_mostrar: integer range 0 to 9999 := 0;
    signal saldo_dos_dig  : integer range 0 to 99 := 0;

    -- Control de puerta y anomalía
    signal door_led_int   : std_logic := '0';
    signal anomaly_led_int: std_logic := '0';

begin

    --------------------------------------------------------------------
    -- SUMADOR DE MONEDAS (saldo acumulado)
    --------------------------------------------------------------------
    sumador_saldo_inst: entity work.sumador_saldo
        port map(
            clk     => clk,
            reset   => reset,
            monedas => monedas,
            saldo   => saldo_bin
        );

    --------------------------------------------------------------------
    -- PRECIOS FIJOS PARA LOS PRODUCTOS
    --------------------------------------------------------------------
    process(producto)
    begin
        case producto is
            when "0001" => precio_int <= 1500;
            when "0010" => precio_int <= 2000;
            when "0011" => precio_int <= 2500;
            when "0100" => precio_int <= 3000;
            when "0101" => precio_int <= 3500;
            when "0110" => precio_int <= 4000;
            when "0111" => precio_int <= 4500;
            when "1000" => precio_int <= 5000;
            when "1001" => precio_int <= 6000;
            when "1010" => precio_int <= 7000;
            when "1011" => precio_int <= 8000;
            when "1100" => precio_int <= 9000;
            when others => precio_int <= 500;
        end case;
    end process;

    --------------------------------------------------------------------
    -- RESTADOR (cambio)
    --------------------------------------------------------------------
    cambio_int <= saldo_bin - precio_int;

    --------------------------------------------------------------------
    -- CONTROL DE PUERTA Y ANOMALÍA (30 s)
    --------------------------------------------------------------------
    door_control_inst: entity work.door_control
        port map(
            clk        => clk,
            reset      => reset,
            confirmar  => confirmar,
            anomaly_sw => anomaly_sw,
            door_led   => door_led_int,
            anomaly_led=> anomaly_led_int
        );

    door_led    <= door_led_int;
    anomaly_led <= anomaly_led_int;

    --------------------------------------------------------------------
    -- ACTUALIZACIÓN DE SALDO
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            mostrar_cambio <= '0';
            saldo_real     <= 0;
        elsif rising_edge(clk) then
            if confirmar = '1' and anomaly_led_int = '0' then
                mostrar_cambio <= '1';
            elsif door_led_int = '0' and mostrar_cambio = '1' then
                -- Fin de la entrega → actualizar saldo
                if saldo_bin >= precio_int then
                    saldo_real <= saldo_bin - precio_int;
                else
                    saldo_real <= saldo_bin; -- saldo insuficiente
                end if;
                mostrar_cambio <= '0';
            else
                -- Si no hay compra en curso, saldo_real sigue a saldo_bin
                if mostrar_cambio = '0' then
                    saldo_real <= saldo_bin;
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- QUÉ MOSTRAR EN LOS DISPLAYS
    --------------------------------------------------------------------
    process(mostrar_cambio, saldo_real, cambio_int)
    begin
        if mostrar_cambio = '1' then
            valor_a_mostrar <= abs(cambio_int); -- cambio
        else
            saldo_dos_dig   <= saldo_real / 100;
            valor_a_mostrar <= saldo_dos_dig;   -- saldo (xx)
        end if;
    end process;

    --------------------------------------------------------------------
    -- BIN A BCD
    --------------------------------------------------------------------
    bin_bcd_inst: entity work.bin_bcd
        port map(
            bin => valor_a_mostrar,
            d0  => d0,
            d1  => d1,
            d2  => d2,
            d3  => d3
        );

    --------------------------------------------------------------------
    -- DECODIFICADORES A 7 SEGMENTOS
    --------------------------------------------------------------------
    deco0: entity work.deco7segmentos port map(bin => d0, seg => display0);
    deco1: entity work.deco7segmentos port map(bin => d1, seg => display1);
    deco2: entity work.deco7segmentos port map(bin => d2, seg => display2);
    deco3: entity work.deco7segmentos port map(bin => d3, seg => display3);

end architecture;
