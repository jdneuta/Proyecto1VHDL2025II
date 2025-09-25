library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Para aritmética en STD_LOGIC_VECTOR

-- Entidad para detector de monedas (500 y 1000 pesos)
-- Detecta inserción, identifica tipo y acumula total.
-- Asume sensor que genera pulso en coin_sensor y coin_type para distinguir tipo.

entity Detector_Monedas is
    Port ( 
        clk : in STD_LOGIC;                      -- Reloj del sistema (ej. 50 MHz)
        reset : in STD_LOGIC;                    -- Reset activo alto
        enable : in STD_LOGIC;                   -- Enable: '1' para aceptar monedas (controlado por FSM)
        coin_sensor : in STD_LOGIC;              -- Pulso del sensor de inserción (activo alto, con rebotes)
        coin_type : in STD_LOGIC;                -- Tipo: '0' = 500 pesos, '1' = 1000 pesos
        coin_inserted : out STD_LOGIC;           -- Pulso de 1 ciclo: moneda detectada y aceptada
        coin_value : out STD_LOGIC_VECTOR(1 downto 0);  -- Valor: "01"=500, "10"=1000, "00"=nada
        total_money : out STD_LOGIC_VECTOR(11 downto 0) -- Total acumulado en pesos (12 bits, hasta 4095)
    );
end Detector_Monedas;

architecture Behavioral of Detector_Monedas is
    signal total_reg : STD_LOGIC_VECTOR(11 downto 0) := "000000000000";  -- Registro interno del total
    signal sensor_debounced : STD_LOGIC := '0';                          -- Sensor después de debounce
    signal prev_sensor_debounced : STD_LOGIC := '0';                     -- Valor anterior para detectar flanco
    signal debounce_cnt : INTEGER range 0 to 1000000 := 0;               -- Contador para debounce
    constant DEBOUNCE_TIME : INTEGER := 50000;                           -- ~1ms @ 50MHz para estabilizar sensor
    
begin
    -- Proceso para debounce del sensor de inserción
    debounce_process: process(clk, reset)
    begin
        if reset = '1' then
            debounce_cnt <= 0;
            sensor_debounced <= '0';
        elsif rising_edge(clk) then
            if coin_sensor = '1' then
                if debounce_cnt < DEBOUNCE_TIME then
                    debounce_cnt <= debounce_cnt + 1;
                else
                    sensor_debounced <= '1';
                end if;
            else
                debounce_cnt <= 0;
                sensor_debounced <= '0';
            end if;
        end if;
    end process;
    
    -- Proceso principal: Detectar flanco, identificar y acumular
    main_process: process(clk, reset)
        variable temp_value : STD_LOGIC_VECTOR(11 downto 0);  -- Valor temporal para suma
    begin
        if reset = '1' then
            total_reg <= "000000000000";  -- Reset total a 0
            prev_sensor_debounced <= '0';
            coin_inserted <= '0';
            coin_value <= "00";
            temp_value := "000000000000";
        elsif rising_edge(clk) then
            coin_inserted <= '0';  -- Default: pulso bajo cada ciclo
            coin_value <= "00";    -- Default: nada
            
            -- Detectar flanco de subida en sensor debounced (rising edge) Y enable activo
            if enable = '1' and sensor_debounced = '1' and prev_sensor_debounced = '0' then
                coin_inserted <= '1';  -- Generar pulso de 1 ciclo
                
                -- Identificar tipo y asignar valor
                if coin_type = '0' then
                    coin_value <= "01";  -- 500 pesos
                    temp_value := "000111101000";  -- 500 en binario (1F4 hex, 12 bits)
                else
                    coin_value <= "10";  -- 1000 pesos
                    temp_value := "001111010000";  -- 1000 en binario (3E8 hex, 12 bits)
                end if;
                
                -- Acumular al total
                total_reg <= total_reg + temp_value;
            end if;
            
            -- Siempre actualizar el registro anterior (al final del proceso)
            prev_sensor_debounced <= sensor_debounced;
        end if;
    end process;
    
    -- Salida del total
    total_money <= total_reg;

end Behavioral;
