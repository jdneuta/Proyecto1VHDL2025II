library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom_productos is
    port(
        clk     : in  std_logic;
        address : in  std_logic_vector(3 downto 0);  -- 16 productos
        precio  : out integer range 0 to 9500
    );
end rom_productos;

architecture Behavioral of rom_productos is

    -- Tabla ROM de precios (múltiplos de 500)
    type rom_type is array (0 to 15) of integer range 0 to 9500;
    constant precios : rom_type := (
        0  => 1000,  -- Producto 1
        1  => 4500,
        2  => 8000,
        3  => 2500,
        4  => 9500,
        5  => 500,
        6  => 1500,  -- Producto 7
        7  => 4000,
        8  => 3000,
        9  => 2000,
        10 => 6000,
        11 => 7000,
        12 => 9000,
        13 => 8500,
        14 => 5500,
        15 => 7500
    );

    signal precio_reg : integer range 0 to 9500 := 0;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            precio_reg <= precios(to_integer(unsigned(address)));
        end if;
    end process;

    precio <= precio_reg;

end Behavioral;
