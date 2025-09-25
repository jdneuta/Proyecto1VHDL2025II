library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SumadorProductosFnl is
    port (
        CLK50MHz      : in  std_logic;
        reset         : in  std_logic;
        moneda_500    : in  std_logic;
        moneda_1000   : in  std_logic;
        producto_sel  : in  std_logic_vector(5 downto 0);  -- Hasta 45 productos (6 bits)
        activar       : in  std_logic;

        -- Displays: dinero (D3-D0), cambio (C3-C0)
        seg_d0, seg_d1, seg_d2, seg_d3 : out std_logic_vector(6 downto 0);
        seg_c0, seg_c1, seg_c2, seg_c3 : out std_logic_vector(6 downto 0);

        LED_ENTREGADO     : out std_logic;
        DINERO_INSUF      : out std_logic
    );
end SumadorProductosFnl;

architecture arch_SumadorProductosFnl of SumadorProductosFnl is

    -- Señales internas
    signal clk_1Hz         : std_logic;
    signal dinero          : unsigned(9 downto 0);
    signal precio          : std_logic_vector(9 downto 0);
    signal cambio          : std_logic_vector(9 downto 0);
    signal entregar_prod   : std_logic;

    -- BCD conversion
    signal dinero_bcd, cambio_bcd : std_logic_vector(15 downto 0);  -- 4 dígitos c/u

begin

    -- Divisor de Frecuencia
    Divisor: entity work.DivisorFrecuencia 
        port map (
            clk  => CLK50MHz,
            out1 => clk_1Hz
        );

    -- Detector de Monedas
    Monedas: entity work.DetectorMonedas 
        port map (
            clk         => clk_1Hz,
            reset       => reset,
            moneda_500  => moneda_500,
            moneda_1000 => moneda_1000,
            dinero      => dinero
        );

    -- Selector de Producto
    Selector: entity work.SelectorProducto 
        port map (
            codigo_producto  => producto_sel,
            precio  => precio
        );

    -- Comparador y cambio
    Comparador: entity work.ComparadorMonedas 
        port map (
            clk                 => clk_1Hz,
            reset               => reset,
            activar             => activar,
            dinero              => std_logic_vector(dinero),
            precio              => precio,
            entregar_producto   => entregar_prod,
            dinero_insuficiente => DINERO_INSUF,
            cambio              => cambio
        );

    -- Control de Entrega (30s)
    Entrega: entity work.ControlEntrega 
        port map (
            clk_1Hz           => clk_1Hz,
            reset             => reset,
            entregar_producto => entregar_prod,
            LED_ENTREGADO     => LED_ENTREGADO,
            entrega_activa    => open
        );

    -- Conversor binario a BCD para dinero
    DineroBCD: entity work.BinBCD 
        port map (
             bin_in    => std_logic_vector(dinero),
			  bcd_miles => dinero_bcd(15 downto 12),
			  bcd_cent  => dinero_bcd(11 downto 8),
			  bcd_dec   => dinero_bcd(7 downto 4),
			  bcd_uni   => dinero_bcd(3 downto 0)
        );

    -- Conversor binario a BCD para cambio
    CambioBCD: entity work.BinBCD 
        port map (
            bin_in    => cambio,
			  bcd_miles => cambio_bcd(15 downto 12),
			  bcd_cent  => cambio_bcd(11 downto 8),
			  bcd_dec   => cambio_bcd(7 downto 4),
			  bcd_uni   => cambio_bcd(3 downto 0)
        );

    -- Displays de dinero
    DisplayD0: entity work.SieteSegmentos port map (A => dinero_bcd(3 downto 0),   S0 => seg_d0);
    DisplayD1: entity work.SieteSegmentos port map (A => dinero_bcd(7 downto 4),   S0 => seg_d1);
    DisplayD2: entity work.SieteSegmentos port map (A => dinero_bcd(11 downto 8),  S0 => seg_d2);
    DisplayD3: entity work.SieteSegmentos port map (A => dinero_bcd(15 downto 12), S0 => seg_d3);

    -- Displays de cambio
    DisplayC0: entity work.SieteSegmentos port map (A => cambio_bcd(3 downto 0),   S0 => seg_c0);
    DisplayC1: entity work.SieteSegmentos port map (A => cambio_bcd(7 downto 4),   S0 => seg_c1);
    DisplayC2: entity work.SieteSegmentos port map (A => cambio_bcd(11 downto 8),  S0 => seg_c2);
    DisplayC3: entity work.SieteSegmentos port map (A => cambio_bcd(15 downto 12), S0 => seg_c3);

end arch_SumadorProductosFnl;
