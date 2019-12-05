library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity data_driver is
	port(
		clk   : in std_logic;
		start : in std_logic;

		memory_ready : in std_logic;
		
		data_m   : in std_logic_vector(6 downto 0);
		tipo  : in natural;
		
		bomba1 : out std_logic;
		bomba2 : out std_logic;
		
		we_ram : out std_logic
	);
end data_driver;

architecture Behavioral of data_driver is

--
signal bomba_1s : std_logic;
signal bomba_2s : std_logic;
--TIMERS ------
component Timer is    
Port ( clk : in std_logic;           
		start : in std_logic;           
		Tms : in std_logic_vector (19 downto 0);           
		P : out std_logic); 
end component; 


constant lleno : integer := 10_000; 

--Seniales para temporizador 1
signal start1 : std_logic;
signal Tms1 : std_logic_vector (19 downto 0);    
--Seniales para temporizador 2
signal start2 : std_logic;
signal Tms2 : std_logic_vector (19 downto 0);
signal porcentaje : integer := 0;

	begin


	T1 : Timer port map(clk,start1,Tms1,bomba_1s);
	T2 : Timer port map(clk,start2,Tms2,bomba_2s);

	bomba1 <= bomba_1s;
	bomba2 <= bomba_2s;

	-- Proceso para llamar al memory controller

	-- Proceso que recibe la informacion de la memoria
	process (memory_ready, start) 
		begin
			if start = '1' then
				porcentaje <= (conv_integer(unsigned(data_m)) * 100);
				if tipo = 1 then
					Tms1 <= conv_std_logic_vector(porcentaje, Tms1'length);
					Tms2 <= conv_std_logic_vector(lleno - porcentaje , Tms2'length);
					start1 <= '1';
					start2 <= '1';
				else
					Tms2 <= conv_std_logic_vector(porcentaje, Tms1'length);
					Tms1 <= conv_std_logic_vector(lleno - porcentaje , Tms2'length);
					start1 <= '1';
					start2 <= '1';			
				end if;
			else
				start1 <= '0';
				start2 <= '0';			
			end if;
	end process;
	
	

end Behavioral;