library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Módulo que gestiona la entrega de producto con temporizador de 30 segundos
entity ControlEntrega is
    port (
        clk_1Hz           : in  std_logic;   -- Reloj lento (1 Hz desde DivisorFrecuencia)
        reset             : in  std_logic;   -- Reset global
        entregar_producto : in  std_logic;   -- Señal desde ComparadorMonedas

        LED_ENTREGADO     : out std_logic;   -- LED activo durante entrega
        entrega_activa    : out std_logic    -- Señal útil para displays o temporización
    );
end ControlEntrega;

architecture arch_ControlEntrega of ControlEntrega is

    -- Estados del sistema: espera o entrega activa
    type estado_t is (ESPERA, ENTREGANDO);
    signal estado_actual : estado_t := ESPERA;

    -- Contador de segundos (de 0 a 29 = 30 segundos)
    signal contador : unsigned(5 downto 0) := (others => '0');  -- 6 bits para contar hasta 30

begin

    process(clk_1Hz, reset)
    begin
        if reset = '1' then
            -- Reiniciar estado y salidas
            estado_actual   <= ESPERA;
            contador        <= (others => '0');
            LED_ENTREGADO   <= '0';
            entrega_activa  <= '0';

        elsif rising_edge(clk_1Hz) then
            case estado_actual is

                when ESPERA =>
                    -- Esperando señal de entrega
                    if entregar_producto = '1' then
                        estado_actual   <= ENTREGANDO;
                        contador        <= (others => '0');
                        LED_ENTREGADO   <= '1';
                        entrega_activa  <= '1';
                    else
                        LED_ENTREGADO   <= '0';
                        entrega_activa  <= '0';
                    end if;

                when ENTREGANDO =>
                    -- Contando hasta 30 segundos de entrega
                    if contador < 29 then
                        contador <= contador + 1;
                    else
                        -- Terminar entrega después de 30s
                        estado_actual   <= ESPERA;
                        LED_ENTREGADO   <= '0';
                        entrega_activa  <= '0';
                        contador        <= (others => '0');
                    end if;
            end case;
        end if;
    end process;

end arch_ControlEntrega;
