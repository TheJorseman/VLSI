library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_to_bin_test is
	port(
		-- Entradas
		clk   : in std_logic;                        -- Cuando haya un flanco de reloj de ready se realizara la operacion
		Dat0	 : in	std_logic_vector(3 downto 0);   -- Entrada de los bits menos significativos (unidades)
		Dat1	 : in	std_logic_vector(3 downto 0);   -- Entrada de bits (decenas)		
		-- Salidas	
		D_sal  : out std_logic_vector(6 downto 0);  -- Salida entera sin signo de los valores
		ready  : out std_logic							  -- Indica que hay una salida
	);
end bcd_to_bin_test;

architecture Behavioral of bcd_to_bin_test is

component bcd_to_bin is
	port(
		-- Entradas
		clk   : in std_logic;                        -- Cuando haya un flanco de reloj de ready se realizara la operacion

		Dat0	 : in	std_logic_vector(3 downto 0);   -- Entrada de los bits menos significativos (unidades)
		Dat1	 : in	std_logic_vector(3 downto 0);   -- Entrada de bits (decenas)
		Dat2	 : in	std_logic_vector(3 downto 0);   -- Entrada de bits (centenas)
		
		-- Salidas	
		D_sal  : out std_logic_vector(6 downto 0);  -- Salida entera sin signo de los valores
		ready  : out std_logic							  -- Indica que hay una salida
	);
end component;

begin
	
Bc : bcd_to_bin port map(clk,Dat0,Dat1,"0001",D_sal,ready);

end Behavioral;
