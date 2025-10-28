library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_stock is
    port(
        clk   : in  std_logic;
        we    : in  std_logic;  -- Write enable
        reset : in  std_logic;  -- Reset global para stock inicial
        addr  : in  std_logic_vector(3 downto 0);  -- Dirección (0-15 para 16 productos)
        din   : in  std_logic_vector(1 downto 0);  -- Dato a escribir (0-3)
        dout  : out std_logic_vector(1 downto 0)  -- Dato leído
    );
end ram_stock;

architecture behavioral of ram_stock is
    type ram_type is array (0 to 15) of std_logic_vector(1 downto 0);
    signal ram : ram_type := (
        "11", "00", "00", "11",  -- 0000: 3, 0001: 0, 0010: 0, 0011: 3
        "00", "00", "00", "00",  -- 0100-0111: 0
        "00", "00", "00", "00",  -- 1000-1011: 0
        "00", "00", "00", "00"   -- 1100-1111: 0
    );  -- Inicializar stock: solo 0000 y 0011 con 3, demás con 0
begin
    process(clk, reset)
    begin
        if reset = '1' then
            ram <= (
                "11", "00", "00", "11",  -- Reset a inicial
                "00", "00", "00", "00",
                "00", "00", "00", "00",
                "00", "00", "00", "00"
            );
        elsif rising_edge(clk) then
            if we = '1' then
                ram(to_integer(unsigned(addr))) <= din;
            end if;
        end if;
    end process;
    
    dout <= ram(to_integer(unsigned(addr)));
end behavioral;