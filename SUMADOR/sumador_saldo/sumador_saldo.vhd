library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_saldo is
    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
        sw500   : in  std_logic;
        sw1000  : in  std_logic;
        saldo   : out integer range 0 to 9500
    );
end entity;

architecture Behavioral of sumador_saldo is
    constant DEBOUNCE_CYCLES : integer := 1000000; -- ~20 ms @ 50 MHz (ajusta si tu reloj no es 50MHz)

    signal saldo_reg   : integer range 0 to 9500 := 0;
    signal prev500     : std_logic := '0';
    signal prev1000    : std_logic := '0';

    signal lock500     : std_logic := '0';
    signal lock1000    : std_logic := '0';
    signal cnt500      : integer range 0 to DEBOUNCE_CYCLES := 0;
    signal cnt1000     : integer range 0 to DEBOUNCE_CYCLES := 0;
begin

    process(clk, reset)
    begin
        if reset = '1' then
            saldo_reg <= 0;
            prev500   <= '0';
            prev1000  <= '0';
            lock500   <= '0';
            lock1000  <= '0';
            cnt500    <= 0;
            cnt1000   <= 0;

        elsif rising_edge(clk) then
            -- decrement / release debounce locks
            if lock500 = '1' then
                if cnt500 > 0 then
                    cnt500 <= cnt500 - 1;
                else
                    lock500 <= '0';
                end if;
            end if;

            if lock1000 = '1' then
                if cnt1000 > 0 then
                    cnt1000 <= cnt1000 - 1;
                else
                    lock1000 <= '0';
                end if;
            end if;

            -- detectar flanco de subida y aplicar suma UNA vez (si no está bloqueado)
            if (sw500 = '1' and prev500 = '0' and lock500 = '0') then
                if saldo_reg <= 9000 then
                    saldo_reg <= saldo_reg + 500;
                else
                    saldo_reg <= 9500;
                end if;
                -- bloquear durante debounce
                lock500 <= '1';
                cnt500  <= DEBOUNCE_CYCLES;
            end if;

            if (sw1000 = '1' and prev1000 = '0' and lock1000 = '0') then
                if saldo_reg <= 8500 then
                    saldo_reg <= saldo_reg + 1000;
                else
                    saldo_reg <= 9500;
                end if;
                -- bloquear durante debounce
                lock1000 <= '1';
                cnt1000  <= DEBOUNCE_CYCLES;
            end if;

            -- actualizar estados previos
            prev500  <= sw500;
            prev1000 <= sw1000;
        end if;
    end process;

    saldo <= saldo_reg;

end architecture;