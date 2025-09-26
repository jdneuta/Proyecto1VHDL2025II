library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_productos is
    port(
        clk      : in  std_logic;                    -- reloj principal FPGA
        reset    : in  std_logic;                    -- reset general
        sw_sel   : in  std_logic_vector(3 downto 0); -- switches para seleccionar producto (0-14)
        buy      : in  std_logic;                    -- botón de compra
        disp2    : out std_logic_vector(6 downto 0); -- display decenas producto
        disp3    : out std_logic_vector(6 downto 0)  -- display unidades producto
    );
end top_productos;

architecture arch_top_productos of top_productos is

    -- COMPONENTES
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
    type product_array is array (0 to 14) of integer range 0 to 3;
    signal stock : product_array := (others => 3);  -- stock inicial de cada producto
    signal sel_prod_int : integer range 0 to 14;    -- número del producto seleccionado
    signal dig0, dig1 : std_logic_vector(3 downto 0); -- dígitos BCD para displays
    signal prev_buy : std_logic := '0';               -- para detectar flanco de subida de buy

begin

    -- Convertir selección de switches a entero
    sel_prod_int <= to_integer(unsigned(sw_sel));

    -- PROCESO PRINCIPAL: manejar stock y flanco de compra
    process(clk, reset)
    begin
        if reset = '1' then
            stock <= (others => 3);   -- reiniciar stock
            prev_buy <= '0';
        elsif rising_edge(clk) then
            -- Detectar flanco de subida del botón buy
            if (buy = '1' and prev_buy = '0') then
                if stock(sel_prod_int) > 0 then
                    stock(sel_prod_int) <= stock(sel_prod_int) - 1;
                end if;
            end if;

            -- Actualizar estado previo del botón
            prev_buy <= buy;
        end if;
    end process;

    -- INSTANCIAS

    -- Conversión del número de producto a BCD
    U_bcd_prod: bin_bcd port map(
        bin => sel_prod_int,
        d0  => dig0, -- unidades
        d1  => dig1, -- decenas
        d2  => open,
        d3  => open
    );

    -- Decodificar dígitos a 7 segmentos
    U_disp2: systemd port map(
        A => dig0, -- unidades
        D0 => disp2
    );

    U_disp3: systemd port map(
        A => dig1, -- decenas
        D0 => disp3
    );

end arch_top_productos;
