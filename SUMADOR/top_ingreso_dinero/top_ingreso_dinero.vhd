library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_ingreso_dinero is
    port(
        clk50mhz : in  std_logic;                  -- reloj principal FPGA
        reset    : in  std_logic;                  -- reset manual
        sw500    : in  std_logic;                  -- switch moneda 500
        sw1000   : in  std_logic;                  -- switch moneda 1000
        disp0, disp1, disp2, disp3 : out std_logic_vector(6 downto 0)  -- displays
    );
end top_ingreso_dinero;

architecture arch_top_ingreso_dinero of top_ingreso_dinero is

    -- COMPONENTES
    component div_50millones
        port(
            clk  : in  std_logic;
            out1 : buffer std_logic
        );
    end component;

    component sumador_saldo
        port(
            clk    : in  std_logic;
            reset  : in  std_logic;
            sw500  : in  std_logic;
            sw1000 : in  std_logic;
            saldo  : out integer range 0 to 9500
        );
    end component;

    component bin_bcd
        port(
            bin : in integer range 0 to 9999;
            d0  : out std_logic_vector(3 downto 0);
            d1  : out std_logic_vector(3 downto 0);
            d2  : out std_logic_vector(3 downto 0);
            d3  : out std_logic_vector(3 downto 0)
        );
    end component;

    component systemd
        port(
            A  : in  std_logic_vector(3 downto 0);
            D0 : out std_logic_vector(6 downto 0)
        );
    end component;

    -- SEÑALES INTERNAS
    signal clk_lento : std_logic := '0';
    signal saldo_bin : integer range 0 to 9500 := 0;
    signal dig0, dig1, dig2, dig3 : std_logic_vector(3 downto 0);

begin

    -- INSTANCIAS
    U1: div_50millones port map(
        clk  => clk50mhz,
        out1 => clk_lento
    );

    U2: sumador_saldo port map(
        clk    => clk_lento,
        reset  => reset,
        sw500  => sw500,
        sw1000 => sw1000,
        saldo  => saldo_bin
    );

    U3: bin_bcd port map(
        bin => saldo_bin,
        d0  => dig0,
        d1  => dig1,
        d2  => dig2,
        d3  => dig3
    );

    -- DECODIFICADORES
    U4: systemd port map(A => dig0, D0 => disp0);
    U5: systemd port map(A => dig1, D0 => disp1);
    U6: systemd port map(A => dig2, D0 => disp2);
    U7: systemd port map(A => dig3, D0 => disp3);

end arch_top_ingreso_dinero;
