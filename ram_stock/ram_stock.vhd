library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_stock is
    port(
        clk      : in  std_logic;
        we       : in  std_logic;
        address  : in  std_logic_vector(3 downto 0);  -- 16 productos
        data_in  : in  std_logic_vector(2 downto 0);  -- solo 3 bits (0–7 unidades)
        data_out : out std_logic_vector(2 downto 0)
    );
end ram_stock;

architecture Behavioral of ram_stock is
    type ram_type is array (0 to 15) of std_logic_vector(2 downto 0);
    signal ram : ram_type := (
        0  => "011",  -- producto 0 (stock 3)
        6  => "011",  -- producto 6 (stock 3)
        others => "000"  -- los demás sin stock
    );
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if we = '1' then
                ram(to_integer(unsigned(address))) <= data_in;
            end if;
        end if;
    end process;

    -- cambio de nombres para no remapear los displays
    data_out <= ram(to_integer(unsigned(address)));

end Behavioral;
