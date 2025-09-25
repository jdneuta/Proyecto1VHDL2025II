library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidad que compara dinero y precio para decidir si entregar el producto
entity ComparadorMonedas is
    port (
        clk                 : in  std_logic;  -- Reloj del sistema
        reset               : in  std_logic;  -- Reinicio
        activar             : in  std_logic;  -- Botón de compra
        dinero              : in  std_logic_vector(9 downto 0);  -- Dinero insertado
        precio              : in  std_logic_vector(9 downto 0);  -- Precio del producto

        entregar_producto   : out std_logic;  -- Señal de entrega
        dinero_insuficiente : out std_logic;  -- Señal de error
        cambio              : out std_logic_vector(9 downto 0)   -- Cambio a devolver
    );
end ComparadorMonedas;

architecture arch_ComparadorMonedas of ComparadorMonedas is
    signal dinero_int : unsigned(9 downto 0); -- Señales internas en formato unsigned
    signal precio_int : unsigned(9 downto 0);
    signal cambio_int : unsigned(9 downto 0);
begin

    process(clk, reset)
    begin
        if reset = '1' then
            -- Reiniciar todas las salidas
            entregar_producto   <= '0';
            dinero_insuficiente <= '0';
            cambio              <= (others => '0');

        elsif rising_edge(clk) then
            -- Convertir entradas a unsigned para hacer operaciones
            dinero_int <= unsigned(dinero);
            precio_int <= unsigned(precio);

            -- Solo comparar si el usuario activa la compra
            if activar = '1' then
                if dinero_int >= precio_int and precio_int > 0 then
                    -- Dinero suficiente → entregar producto
                    entregar_producto   <= '1';
                    dinero_insuficiente <= '0';
                    cambio_int          <= dinero_int - precio_int;
                    cambio              <= std_logic_vector(cambio_int);
                else
                    -- Dinero insuficiente o precio inválido
                    entregar_producto   <= '0';
                    dinero_insuficiente <= '1';
                    cambio              <= dinero;  -- Se mantiene el dinero
                end if;
            else
                -- Si no se activa, todo queda inactivo
                entregar_producto   <= '0';
                dinero_insuficiente <= '0';
            end if;
        end if;
    end process;
end arch_ComparadorMonedas;
