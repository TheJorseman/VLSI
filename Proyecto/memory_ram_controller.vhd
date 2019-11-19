library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory_ram_controller is

	generic 
	(
		types_width : natural := 2;
		fav_width: natural := 2
	);

	port(
		-- Entradas
		clk   : in std_logic;                        				-- Cuando haya un flanco de reloj de ready se realizara la operacion

		data  : in std_logic_vector(6 downto 0);  					-- Entrada de bits a guardar en la memoria
		tipo  : in natural range 0 to 2**types_width - 1;			-- Tipo de bebida (1 o 0) esto servira para la direccion donde se guardara (addres)
		fav	: in natural range 0 to 2**fav_width - 1;				-- Numero de favoritos 

		-- Salidas ram
		--data_out  : out std_logic_vector(6 downto 0);  				 -- Salida entera sin signo de los valores
		--data_from_ram : out std_logic_vector (6 downto 0);
		--addres	 : out std_logic_vector(types_width downto 0); 	 -- Salida que corresponde a la direccion de memoria.
		--mode		 : out std_logic;											 -- Modo con el que se trabajara con la RAM
		--is_ram  	 : out std_logic;							  				 -- Indica si la salida fue hacia la ram
		
		--data_out_rom  : out std_logic_vector(6 downto 0);  			 -- Salida entera sin signo de los valores
		--data_from_rom : out std_logic_vector (6 downto 0);
		--addres_rom	 : out std_logic_vector(types_width downto 0); 	 -- Salida que corresponde a la direccion de memoria.
		--mode_rom		 : out std_logic;											 -- Modo con el que se trabajara con la RAM
		--is_rom  	 : out std_logic							  				 	 -- Indica si la salida fue hacia la rom
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

signal data_out  		: std_logic_vector(6 downto 0);  				 	-- Salida entera sin signo de los valores
signal data_from_ram : std_logic_vector (6 downto 0);
signal addres	 		: natural range 0 to 2**types_width - 1; 	 	 -- Salida que corresponde a la direccion de memoria.
signal mode		 		: std_logic;											 -- Modo con el que se trabajara con la RAM
signal is_ram  	 	: std_logic;							  				 -- Indica si la salida fue hacia la ram

signal data_out_rom  		: std_logic_vector(6 downto 0);  				 	-- Salida entera sin signo de los valores
signal data_from_rom : std_logic_vector (6 downto 0);
signal addres_rom	 		: natural range 0 to 2**types_width - 1; 	 	 -- Salida que corresponde a la direccion de memoria.
signal mode_rom		 		: std_logic;											 -- Modo con el que se trabajara con la RAM
signal is_rom  	 	: std_logic;							  				 -- Indica si la salida fue hacia la ram

begin

RAM : single_port_ram generic map(7,types_width) port map(is_ram,addres,data_out,mode,data_from_ram);
--ROM : single_port_ram generic map(7,fav_width) port map(is_rom,addres,data_out,mode,data_from_ram);
	process (clk)
		
		begin
			 if rising_edge(clk) then
				if fav = 0 then
					mode <= '1';
					addres <= tipo;
					data_out <= data;
					is_ram <= '1';
				end if;
				
			 end if;
	end process;
end Behavioral;
