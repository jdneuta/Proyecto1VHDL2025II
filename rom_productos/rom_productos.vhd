library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_productos is
    port(
        addr : in  std_logic_vector(3 downto 0);  -- Dirección (0-15 para 16 productos)
        dout : out integer range 0 to 9500       -- Precio leído
    );
end rom_productos;

architecture behavioral of rom_productos is
    type rom_type is array (0 to 15) of integer range 0 to 9500;
    constant rom : rom_type := (
        1000, 500,  1500, 1500,  -- 0000: 1000, 0001: 500, 0010: 1500, 0011: 1500
        2000, 2500, 3000, 3500,  -- 0100-0111: aleatorios múltiplos de 500
        4000, 4500, 5000, 5500,  -- 1000-1011: aleatorios
        6000, 6500, 7000, 7500   -- 1100-1111: aleatorios
    );
begin
    dout <= rom(to_integer(unsigned(addr)));
end behavioral;