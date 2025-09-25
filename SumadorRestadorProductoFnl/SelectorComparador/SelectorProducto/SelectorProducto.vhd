library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entidad que recibe el código del producto y devuelve su precio en binario
entity SelectorProducto is
    port (
        codigo_producto : in  std_logic_vector(5 downto 0); -- 6 bits = 0 a 63
        precio          : out std_logic_vector(9 downto 0)  -- 10 bits = 0 a 1023 (pero luego validamos)
    );
end SelectorProducto;

architecture arch_SelectorProducto of SelectorProducto is
begin
    process(codigo_producto)
        variable index : integer range 0 to 63;  -- Código del producto como entero
        variable valor : integer;                -- Precio temporal del producto
    begin
        -- Convertimos de binario a entero
        index := to_integer(unsigned(codigo_producto));

        -- Asignación de precios a cada código de producto
        case index is
            when 0  => valor := 500;
            when 1  => valor := 1000;
            when 2  => valor := 1500;
            when 3  => valor := 2000;
            when 4  => valor := 1000;
            when 5  => valor := 500;
            when 6  => valor := 1500;
            when 7  => valor := 2500;
            when 8  => valor := 3000;
            when 9  => valor := 1500;
            when 10 => valor := 1000;
            when 11 => valor := 1500;
            when 12 => valor := 500;
            when 13 => valor := 4000;
            when 14 => valor := 5500;
            when 15 => valor := 500;
            when 16 => valor := 500;
            when 17 => valor := 1500;
            when 18 => valor := 1000;
            when 19 => valor := 6500;
            when 20 => valor := 500;
            when 21 => valor := 2000;
            when 22 => valor := 2000;
            when 23 => valor := 2500;
            when 24 => valor := 1500;
            when 25 => valor := 500;
            when 26 => valor := 500;
            when 27 => valor := 1000;
            when 28 => valor := 1000;
            when 29 => valor := 1500;
            when 30 => valor := 2000;
            when 31 => valor := 1500;
            when 32 => valor := 1000;
            when 33 => valor := 500;
            when 34 => valor := 7000;
            when 35 => valor := 500;
            when 36 => valor := 1000;
            when 37 => valor := 9500;
            when 38 => valor := 500;
            when 39 => valor := 1000;
            when 40 => valor := 1000;
            when 41 => valor := 1500;
            when 42 => valor := 1500;
            when 43 => valor := 3500;
            when 44 => valor := 5500;
            when others => valor := 0;
        end case;

        -- Validación: si el precio supera 9500, se bloquea (asignamos precio 0)
        if valor > 9500 then
            precio <= (others => '0');  -- Bloqueo: precio inválido
        else
            precio <= std_logic_vector(to_unsigned(valor, 10));  -- Precio válido
        end if;

    end process;
end arch_SelectorProducto;
