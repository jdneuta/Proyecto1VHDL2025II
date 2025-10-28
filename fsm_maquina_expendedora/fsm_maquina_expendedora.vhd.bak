library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm_maquina_expendedora is
    port(
        clk          : in  std_logic;
        reset        : in  std_logic;
        confirmar    : in  std_logic;
        hay_moneda   : in  std_logic;             -- '1' si se ingresó al menos una moneda
        saldo_ok     : in  std_logic;             -- '1' si el saldo >= precio producto
        stock_ok     : in  std_logic;             -- '1' si hay stock disponible
        anomalia     : in  std_logic;             -- '1' si ocurre una falla
        puerta_fin   : in  std_logic;             -- '1' cuando termina entrega
        -- salidas de control
        led_entrega  : out std_logic;
        led_anom     : out std_logic;
        habilitar_resta : out std_logic;          -- habilita módulo RESTADOR
        habilitar_entrega : out std_logic;        -- activa mecanismo de entrega
        estado_out   : out std_logic_vector(2 downto 0)
    );
end fsm_maquina_expendedora;

architecture arch of fsm_maquina_expendedora is

    type state_type is (
        ESPERA,          -- sin monedas
        MONEDAS,         -- recibiendo dinero
        VALIDACION,      -- verifica stock y saldo
        SIN_STOCK,       -- sin unidades
        ENTREGA,         -- dispensando producto
        CAMBIO,          -- devolviendo cambio
        HAY_ANOMALIA     -- error detectado
    );

    signal current_state, next_state : state_type;

begin

    --------------------------------------------------------------------
    -- MEMORIA DE ESTADO
    --------------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= ESPERA;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    --------------------------------------------------------------------
    -- LÓGICA DE TRANSICIÓN
    --------------------------------------------------------------------
    process(current_state, confirmar, hay_moneda, saldo_ok, stock_ok, anomalia, puerta_fin)
    begin
        next_state <= current_state;

        case current_state is

            when ESPERA =>
                if hay_moneda = '1' then
                    next_state <= MONEDAS;
                end if;

            when MONEDAS =>
                if confirmar = '1' then
                    next_state <= VALIDACION;
                end if;

            when VALIDACION =>
                if anomalia = '1' then
                    next_state <= HAY_ANOMALIA;
                elsif stock_ok = '0' then
                    next_state <= SIN_STOCK;
                elsif saldo_ok = '1' then
                    next_state <= ENTREGA;
                else
                    next_state <= MONEDAS;  -- falta dinero
                end if;

            when SIN_STOCK =>
                next_state <= MONEDAS;

            when ENTREGA =>
                if puerta_fin = '1' then
                    next_state <= CAMBIO;
                elsif anomalia = '1' then
                    next_state <= HAY_ANOMALIA;
                end if;

            when CAMBIO =>
                next_state <= ESPERA;

            when HAY_ANOMALIA =>
                next_state <= ESPERA;

            when others =>
                next_state <= ESPERA;
        end case;
    end process;

    --------------------------------------------------------------------
    -- LÓGICA DE SALIDAS
    --------------------------------------------------------------------
    process(current_state)
    begin
        -- valores por defecto
        led_entrega <= '0';
        led_anom <= '0';
        habilitar_resta <= '0';
        habilitar_entrega <= '0';
        estado_out <= "000";

        case current_state is
            when ESPERA =>
                estado_out <= "000";

            when MONEDAS =>
                estado_out <= "001";

            when VALIDACION =>
                habilitar_resta <= '1';  -- activa RESTADOR para comparar
                estado_out <= "010";

            when SIN_STOCK =>
                estado_out <= "011";

            when ENTREGA =>
                led_entrega <= '1';
                habilitar_entrega <= '1';
                estado_out <= "100";

            when CAMBIO =>
                estado_out <= "101";

            when HAY_ANOMALIA =>
                led_anom <= '1';
                estado_out <= "110";

            when others =>
                estado_out <= "000";
        end case;
    end process;

end arch;
