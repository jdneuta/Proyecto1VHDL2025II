library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- Para unsigned si lo expandes después

entity DivisorFrecuencia is
    port (
	 
        clk : in std_logic;
        out1 : out std_logic  -- Solo out1 para 1 Hz; quito buffer y out2
		  
    );
end DivisorFrecuencia;

architecture arch_DivisorFrecuencia of DivisorFrecuencia is

    signal count1 : integer range 0 to 25000000 := 0;  -- Rango ajustado; init a 0
    signal clk_out_internal : std_logic := '0';  -- Señal interna para toggle
	 
begin

    process (clk)
    begin
        if (clk'event and clk = '1') then
            if (count1 = 24999999) then  -- Chequea antes de incrementar (viejo valor)
                clk_out_internal <= not clk_out_internal;
                count1 <= 0;
            else
                count1 <= count1 + 1;
            end if;
        end if;
    end process;
    out1 <= clk_out_internal;  -- Asigna la señal interna
	 
end arch_DivisorFrecuencia;
