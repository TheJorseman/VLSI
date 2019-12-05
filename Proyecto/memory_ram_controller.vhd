library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory_ram_controller is

	generic 
	(
		types_width : natural := 3;
		fav_width: natural := 3
	);

	port(
		-- Entradas
		clk   : in std_logic;                        				-- Cuando haya un flanco de reloj de ready se realizara la operacion

		data  : in std_logic_vector(6 downto 0);  					-- Entrada de bits a guardar en la memoria
		tipo  : in natural range 0 to 2**types_width - 1;			-- Tipo de bebida (1 o 0) esto servira para la direccion donde se guardara (addres)
		fav	: in natural range 0 to 2**fav_width - 1;				-- Numero de favoritos 
		we_ram : in std_logic;
		we_rom : in std_logic;

		data_out_mc  : out std_logic_vector(6 downto 0);  				 -- Salida entera sin signo de los valores

		is_ram_o  	 : out std_logic;
		is_rom_o  	 : out std_logic
	);
end memory_ram_controller;

architecture Behavioral of memory_ram_controller is
 
component single_port_ram is
	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 6
	);
	port 
	(
		clk		: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end component;

signal data_ram  		: std_logic_vector(6 downto 0);  				 	-- Salida entera sin signo de los valores
signal data_from_ram : std_logic_vector (6 downto 0);
signal addres_ram	 		: natural range 0 to 2**types_width - 1; 	 	 -- Salida que corresponde a la direccion de memoria.
signal mode_ram		 		: std_logic;											 -- Modo con el que se trabajara con la RAM
signal is_ram  	 	: std_logic;							  				 -- Indica si la salida fue hacia la ram

signal data_rom  		: std_logic_vector(6 downto 0);  				 	-- Salida entera sin signo de los valores
signal data_from_rom : std_logic_vector (6 downto 0);
signal addres_rom	 		: natural range 0 to 2**types_width - 1; 	 	 -- Salida que corresponde a la direccion de memoria.
signal mode_rom		 		: std_logic;											 -- Modo con el que se trabajara con la RAM
signal is_rom  	 	: std_logic;							  				 -- Indica si la salida fue hacia la ram

begin

RAM : single_port_ram generic map(7,types_width) port map(is_ram,addres_ram,data_ram,mode_ram,data_from_ram);
ROM : single_port_ram generic map(7,fav_width) port map(is_rom,addres_rom,data_rom,mode_rom,data_from_rom);
	process (clk)
		
		begin
			 if rising_edge(clk) then
				--Escribe en ram
				if we_ram = '1' then
					mode_ram <= '1';
					addres_ram <= tipo;
					data_ram <= data;
					data_out_mc <= data_from_ram;
					is_ram <= '1';
				--Lee de la ram
				elsif we_ram = '0'then
					mode_ram <= '0';
					addres_ram <= tipo;
					data_out_mc <= data_from_ram;
					is_ram <= '1';
				-- Escribe en la ROM
				elsif we_rom = '1' then
					mode_rom <= '0';
					addres_rom <= fav;
					data_rom <= data;
					data_out_mc <= data_from_rom;
					is_rom <= '1';
				-- Lee de la ROM
				elsif we_rom = '0' then
					mode_rom <= '0';
					addres_rom <= tipo;
					data_out_mc <= data_from_rom;
					is_rom <= '1';					
				else
					is_ram <= '0';
					is_rom <= '0';
				end if;
			 end if;
	end process;
end Behavioral;
