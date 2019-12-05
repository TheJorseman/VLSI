--Aqui va el codigo de la cafetera :)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Cafetera is
	port( 
		clk50MHz: in std_logic;
		RX_WIRE : IN STD_LOGIC;
		--Salidas
		disp_unidades : out std_logic_vector(6 downto 0);
		disp_decenas  : out std_logic_vector(6 downto 0);
		disp_centenas : out std_logic_vector(6 downto 0);
		disp_tipo: out std_logic_vector(6 downto 0);
		
		start : in std_logic;
		debug : out std_logic_vector (3 downto 0);
		debug_bin : out std_logic_vector(6 downto 0);
		debug_state : out std_logic_vector (3 downto 0);
		bomba1 : out STD_LOGIC;
		bomba2 : out STD_LOGIC
		
	);
	
end entity;

architecture behavioral OF Cafetera is

component Input is
	port( 
		clk: in std_logic;
		RX_WIRE : IN STD_LOGIC;
		--start  :  out std_logic;
		data	: out std_logic_vector (3 downto 0);
		dato	: out std_logic := '0';
		is_digit  : out std_logic;
		is_oper   : out std_logic;
		tipo		 : out integer := 0;
		favorito  : out integer := 0
	);
end component;
-- Seniales correspondientes al RX

signal data : std_logic_vector (3 downto 0);
signal dato : std_logic;
signal is_digit  :  std_logic;
signal is_oper  :  std_logic;
signal tipo		 :  integer := 0;
signal favorito :  integer := 0;
--signal start  :  std_logic := '0';
------------------------------------------
--Digits
component Digits is

	port
	(
		-- Entradas
		clk		 : in	std_logic;								 -- Reloj Para controlar lo saltos de estados
		dato_input: in	std_logic;
		is_digit  : in std_logic;								 -- El digito entrante es un digito	(0-9)
		is_oper   : in std_logic;                        -- El digito entrante es una operacion (*,#)
		--is_ready  : in std_logic;								 -- Si los datos es para indicar que inicie el proceso (D)
		
		digits	 : in	std_logic_vector(3 downto 0);		 -- Datos de entrada del keypad
		--tipo 		 : in std_logic;								 -- Tipo de liquido
		reset	 : in	std_logic;									 -- Reset :)
		-- Salidas
		Sal0	 : out	std_logic_vector(3 downto 0);  -- Salida de los bits menos significativos (unidades)
		Sal1	 : out	std_logic_vector(3 downto 0);   -- Salida de bits (decenas)
		Sal2	 : out	std_logic_vector(3 downto 0);   -- Salida de bits (centenas)
		exception : out std_logic; 						 -- Bandera que se activa cuando la cantidad excede los 100
		--debug 	 : out std_logic_vector(3 downto 0);
		debug_state : out std_logic_vector (3 downto 0);
		save_o : out	std_logic   						 -- Bandera para indicar que se debe guardar
	);

end component;

signal reset : std_logic := '0';
signal bcd_unidades : std_logic_vector(3 downto 0);
signal bcd_decenas : std_logic_vector(3 downto 0);
signal bcd_centenas : std_logic_vector(3 downto 0);
signal exeption : std_logic := '0';
signal save_o : std_logic;


component Divisor is
	Generic ( N : integer := 24);
	Port ( clk : in std_logic;
	div_clk : out std_logic);
end component;

signal clk_div : STD_LOGIC;

------------ bcd to bin ------
Component bcd_to_bin is
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

signal cant : std_logic_vector(6 downto 0);
signal ready: std_logic;

---------- MEMORY CONTROLLER -------------
component memory_ram_controller is

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
		we_ram : in std_logic;
		we_rom : in std_logic;

		data_out_mc  : out std_logic_vector(6 downto 0);  				 -- Salida entera sin signo de los valores

		is_ram_o  	 : out std_logic;
		is_rom_o  	 : out std_logic
	);
end component;

signal we_ram : std_logic := '1' ;
signal we_rom : std_logic := '1'; 
signal data_out_mc  : std_logic_vector(6 downto 0);
signal is_ram_o  	 : std_logic;
signal is_rom_o  	 : std_logic;


---------- DATA DRIVER --------------------
component data_driver is
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
end component;


begin
R1: divisor generic map (24) port map (clk50MHz, clk_div);
RX : Input port map (clk50MHz, RX_WIRE,data, dato, is_digit, is_oper, tipo, favorito);
Dig: Digits port map(clk_div , dato,is_digit, is_oper, data, reset, bcd_unidades, bcd_decenas, bcd_centenas, exeption, debug_state ,save_o);
bcd: bcd_to_bin port map(save_o,bcd_unidades, bcd_decenas, bcd_centenas,cant,ready);
mc : memory_ram_controller generic map(2,2) port map (ready,cant,tipo,favorito,we_ram,we_rom,data_out_mc,is_ram_o,is_rom_o);
dd : data_driver port map(clk50MHz, start, is_ram_o, cant,tipo, bomba1, bomba2, we_ram);
debug_bin <= cant;
debug <= data;
--start_l <= start;
--------- BIN TO 7 SEG ------------------
	with bcd_unidades SELECT
	disp_unidades <= "1000000" when "0000", --0
	"1111001" when "0001", --1
	"0100100" when "0010", --2
	"0110000" when "0011", --3
	"0011001" when "0100", --4
	"0010010" when "0101", --5
	"0000010" when "0110", --6
	"1111000" when "0111", --7
	"0000000" when "1000", --8
	"0010000" when "1001", --9
	"1000000" when others; --F

	with bcd_decenas SELECT
	disp_decenas <= "1000000" when "0000", --0
	"1111001" when "0001", --1
	"0100100" when "0010", --2
	"0110000" when "0011", --3
	"0011001" when "0100", --4
	"0010010" when "0101", --5
	"0000010" when "0110", --6
	"1111000" when "0111", --7
	"0000000" when "1000", --8
	"0010000" when "1001", --9
	"1000000" when others; --F

	with bcd_centenas SELECT
	disp_centenas <= "1000000" when "0000", --0
	"1111001" when "0001", --1
	"0100100" when "0010", --2
	"0110000" when "0011", --3
	"0011001" when "0100", --4
	"0010010" when "0101", --5
	"0000010" when "0110", --6
	"1111000" when "0111", --7
	"0000000" when "1000", --8
	"0010000" when "1001", --9
	"1000000" when others; --F


	with tipo SELECT
	disp_tipo <= 
	"0001000" when 1, -- A
	"0000000" when 2, -- B
	"1000000" when others; -- 0
	


end architecture behavioral;	