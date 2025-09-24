library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- Para aritmética en STD_LOGIC_VECTOR (compatible con Quartus antiguo)

-- Entidad para el escáner de teclado matricial 4x4
-- Asume un teclado 4x4 estándar con pines para filas (rows) y columnas (cols)
-- Salida: key_code (4 bits) que representa la tecla presionada (0-15, 0 si no hay tecla)
-- clk: reloj del sistema (ej. 50 MHz)
-- reset: reset asíncrono

entity Teclado_matricial_4x4 is
    Port ( 
        clk : in STD_LOGIC;                      -- Reloj del sistema
        reset : in STD_LOGIC;                    -- Reset activo alto
        row_in : in STD_LOGIC_VECTOR(3 downto 0); -- Entradas de las columnas (leídas, con pull-ups)
        col_out : out STD_LOGIC_VECTOR(3 downto 0); -- Salidas para las filas (escaneadas)
        key_pressed : out STD_LOGIC;             -- Flag: '1' si hay tecla presionada
        key_code : out STD_LOGIC_VECTOR(3 downto 0) -- Código de la tecla (0-15, "0000" si no hay)
    );
end Teclado_matricial_4x4;

architecture Behavioral of Teclado_matricial_4x4 is
    signal row_counter : STD_LOGIC_VECTOR(1 downto 0) := "00";  -- Contador para escanear 4 filas (2 bits)
    signal current_row : STD_LOGIC_VECTOR(3 downto 0) := "1111"; -- Fila actual activa (una hot, inicial inactiva)
    signal key_valid : STD_LOGIC := '0';                       -- Tecla válida detectada
    signal latched_key_code : STD_LOGIC_VECTOR(3 downto 0) := "0000"; -- Código latcheado para estabilidad
    signal debounce_cnt : INTEGER range 0 to 1000000 := 0;     -- Contador para debounce (ajustar según clk)
    signal key_stable : STD_LOGIC := '0';                      -- Tecla estable después de debounce
    constant DEBOUNCE_TIME : INTEGER := 50000;                 -- Tiempo de debounce (ej. 1ms @ 50MHz)
    
    -- Matriz de códigos de teclas (estándar 4x4: 0-15 para simplicidad)
    -- fila0 col0=0, fila0 col1=1, ..., fila3 col3=15
    type row_type is array(0 to 3) of STD_LOGIC_VECTOR(3 downto 0);
    type key_matrix_t is array(0 to 3) of row_type;  -- Array de arrays para acceso anidado
    constant key_matrix : key_matrix_t := (
        (0 => "0000", 1 => "0001", 2 => "0010", 3 => "0011"),  -- Fila 0: 0,1,2,3
        (0 => "0100", 1 => "0101", 2 => "0110", 3 => "0111"),  -- Fila 1: 4,5,6,7
        (0 => "1000", 1 => "1001", 2 => "1010", 3 => "1011"),  -- Fila 2: 8,9,A,B
        (0 => "1100", 1 => "1101", 2 => "1110", 3 => "1111")   -- Fila 3: C,D,E,F
    );
    
begin
    -- Proceso para escanear filas (multiplexación)
    scan_process: process(clk, reset)
    begin
        if reset = '1' then
            row_counter <= "00";
            current_row <= "1111";  -- Inicial: todas altas (no activa)
        elsif rising_edge(clk) then
            row_counter <= row_counter + 1;  -- Ahora funciona con STD_LOGIC_UNSIGNED
            case row_counter is
                when "00" => current_row <= "1110";  -- Activar fila 0 (bit 0 bajo, otras altas)
                when "01" => current_row <= "1101";  -- Fila 1 (bit 1 bajo)
                when "10" => current_row <= "1011";  -- Fila 2 (bit 2 bajo)
                when "11" => current_row <= "0111";  -- Fila 3 (bit 3 bajo)
                when others => current_row <= "1111"; -- Inactiva
            end case;
        end if;
    end process;
    
    col_out <= current_row;  -- Conectar fila activa a salidas
    
    -- Proceso para detectar tecla (lectura de columnas)
    detect_process: process(clk, reset)
        variable col_index : INTEGER range -1 to 3 := -1;  -- Índice de columna (-1 = ninguna, 0-3 = presionada)
        variable row_index : INTEGER range 0 to 3 := 0;    -- Índice de fila (de row_counter)
    begin
        if reset = '1' then
            key_valid <= '0';
            latched_key_code <= "0000";
            col_index := -1;
            row_index := 0;
        elsif rising_edge(clk) then
            row_index := conv_integer(row_counter);  -- Convertir row_counter a entero (con STD_LOGIC_UNSIGNED)
            if current_row /= "1111" then  -- Solo cuando una fila está activa
                -- Detectar columna presionada (asumiendo pull-ups: columna baja = presionada)
                case row_in is
                    when "1110" => col_index := 0;  -- Col 0 presionada (bit 0 bajo)
                    when "1101" => col_index := 1;  -- Col 1
                    when "1011" => col_index := 2;  -- Col 2
                    when "0111" => col_index := 3;  -- Col 3
                    when others => col_index := -1; -- Ninguna (invalida)
                end case;
                
                if col_index /= -1 then  -- Tecla detectada
                    key_valid <= '1';
                    latched_key_code <= key_matrix(row_index)(col_index);  -- Acceso anidado
                else
                    key_valid <= '0';
                    latched_key_code <= "0000";
                end if;
            else
                key_valid <= '0';
                latched_key_code <= "0000";
            end if;
        end if;
    end process;
    
    -- Proceso de debounce para estabilizar la lectura de tecla
    debounce_process: process(clk, reset)
    begin
        if reset = '1' then
            debounce_cnt <= 0;
            key_stable <= '0';
        elsif rising_edge(clk) then
            if key_valid = '1' then
                if debounce_cnt < DEBOUNCE_TIME then
                    debounce_cnt <= debounce_cnt + 1;
                else
                    key_stable <= '1';
                end if;
            else
                debounce_cnt <= 0;
                key_stable <= '0';
            end if;
        end if;
    end process;
    
    -- Salidas finales
    key_pressed <= key_stable;
    key_code <= latched_key_code;  -- Latch el código para mantenerlo estable

end Behavioral;