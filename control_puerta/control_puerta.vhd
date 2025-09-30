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
