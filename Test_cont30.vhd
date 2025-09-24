library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Test_cont30 is
    port (
        CLK50MHz : in std_logic;
        Enable, Reset : in std_logic;
        LED, LED_FIN : out std_logic;
        S0, S1 : out std_logic_vector(6 downto 0) -- Display unidades y decenas
    );
end entity Test_cont30;

architecture arch_Test_cont30 of Test_cont30 is
    component DivisorFrecuencia is
        port (
            clk : in std_logic;
            out1 : out std_logic
        );
    end component;
    component cont30 is
        port (
            enable, reset : in std_logic;
            clk : in std_logic;
            D0, D1, D2, D3, D4 : out std_logic;
            Fin : out std_logic
        );
    end component;
    component SieteSegmentos is
        port (
            A : in std_logic_vector(3 downto 0);
            S0 : out std_logic_vector(6 downto 0)
        );
    end component;

    -- Señales intermedias
		 signal clk_1Hz : std_logic;
		 signal D : std_logic_vector(4 downto 0);
		 signal FinSig : std_logic;
		 signal unidades, decenas : std_logic_vector(3 downto 0);

begin
   -- Instancia del divisor (ajustado)
    X1: DivisorFrecuencia port map (clk => CLK50MHz, out1 => clk_1Hz);

    -- Instancia del contador (igual)
    X2: cont30 port map (enable => Enable, reset => Reset, clk => clk_1Hz,
                         D0 => D(0), D1 => D(1), D2 => D(2), D3 => D(3), D4 => D(4),
                         Fin => FinSig);

    -- Conversión a BCD (igual, pero más clara)
    unidades <= std_logic_vector(to_unsigned(to_integer(unsigned(D)) mod 10, 4));
    decenas <= std_logic_vector(to_unsigned(to_integer(unsigned(D)) / 10, 4));

    -- Decodificadores (igual)
    X3U: SieteSegmentos port map (A => unidades, S0 => S0);  -- Unidades
    X3D: SieteSegmentos port map (A => decenas, S0 => S1);   -- Decenas

    -- LEDs (igual, pero comentario actualizado)
    LED <= Enable;  -- Led encendido si enable = 1
    LED_FIN <= FinSig;  -- Led fin: encendido cuando llega a 30
end arch_Test_cont30;
