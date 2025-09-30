library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont30 is
    port(
        clk    : in  std_logic;  -- reloj lento de 1Hz
        reset  : in  std_logic;
        start  : in  std_logic;  -- señal de inicio (compra confirmada)
        door   : out std_logic   -- LED encendido mientras está activo
    );
end cont30;

architecture arch_cont30 of cont30 is
    signal count   : unsigned(5 downto 0) := (others => '0'); -- cuenta hasta 30
    signal active  : std_logic := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            count  <= (others => '0');
            active <= '0';
        elsif rising_edge(clk) then
            if start = '1' and active = '0' then
                -- iniciar conteo
                active <= '1';
                count  <= (others => '0');
            elsif active = '1' then
                if count < 29 then
                    count <= count + 1;
                else
                    active <= '0'; -- apagar después de 30s
                end if;
            end if;
        end if;
    end process;

    -- LED encendido mientras está activo
    door <= active;
end arch_cont30;
