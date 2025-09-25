library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador is
    port(
        clk      : in  std_logic;
        reset    : in  std_logic;
        coin500  : in  std_logic;
        coin1000 : in  std_logic;
        seg_un   : out std_logic_vector(6 downto 0);  -- display unidades
        seg_de   : out std_logic_vector(6 downto 0);  -- display decenas
        seg_ce   : out std_logic_vector(6 downto 0);  -- display centenas
        seg_mi   : out std_logic_vector(6 downto 0)   -- display millares
    );
end sumador;

architecture arch_sumador of sumador is

    -- COMPONENTES
    component sumador_1000_500 is
        port(
            clk      : in  std_logic;
            reset    : in  std_logic;
            coin500  : in  std_logic;
            coin1000 : in  std_logic;
            saldo    : out integer range 0 to 9999
        );
    end component;

    component bin_bcd is
    port(
        bin : in integer range 0 to 9999;
        d0  : out std_logic_vector(3 downto 0);
        d1  : out std_logic_vector(3 downto 0);
        d2  : out std_logic_vector(3 downto 0);
        d3  : out std_logic_vector(3 downto 0)
    );
end component;

    component deco7seg is
    port(
        A  : in  std_logic_vector(3 downto 0);
        D0 : out std_logic_vector(6 downto 0)
    );
end component;

    component div_50millones is
	port
	(
		clk : in std_logic;
		out1: buffer std_logic
	);
end component;

    -- SEÑALES INTERNAS
    signal saldo_int : integer range 0 to 9999;
    signal clk_div : std_logic;
    signal dig0, dig1, dig2, dig3 : std_logic_vector(3 downto 0);

begin

    -- Instancia del sumador
    U1: sumador_1000_500
        port map(
            clk      => clk_div,
            reset    => reset,
            coin500  => coin500,
            coin1000 => coin1000,
            saldo    => saldo_int
        );

    -- Instancia del conversor binario a BCD
    U2: bin_bcd
    port map(
        bin => saldo_int,
        d0  => dig0,
        d1  => dig1,
        d2  => dig2,
        d3  => dig3
    );

    -- Instancias de decodificadores a 7 segmentos
    U3: deco7seg port map(A => dig0, D0 => seg_un);
    U4: deco7seg port map(A => dig1, D0 => seg_de);
    U5: deco7seg port map(A => dig2, D0 => seg_ce);
    U6: deco7seg port map(A => dig3, D0 => seg_mi);
    
    Udiv: div_50millones
    port map(
        clk  => clk,
        out1 => clk_div
    );

end arch_sumador;
