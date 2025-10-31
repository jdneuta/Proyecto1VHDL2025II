library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_saldo is
    port(
        clk   : in  std_logic;
        we    : in  std_logic;  -- Write enable
        reset : in  std_logic;  -- Reset global para saldo inicial
        addr  : in  std_logic_vector(0 downto 0);  -- Dirección (solo 0 para saldo)
        din   : in  integer range 0 to 9500;       -- Dato a escribir (saldo)
        dout  : out integer range 0 to 9500        -- Dato leído (saldo)
    );
end ram_saldo;

architecture behavioral of ram_saldo is
    signal saldo_reg : integer range 0 to 9500 := 0;  -- Registro para almacenar el saldo
begin
    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;  -- Reset saldo a 0
        elsif rising_edge(clk) then
            if we = '1' then
                saldo_reg <= din;  -- Escribir nuevo saldo
            end if;
        end if;
    end process;
    
    dout <= saldo_reg;  -- Leer saldo actual
end behavioral;