library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity vga_movimiento is
port ( clk: in std_logic;
		 red: out std_logic_vector (3 downto 0);
		 green: out std_logic_vector (3 downto 0);
		 h_sync: out std_logic;
		 v_sync: out std_logic;
		 blue: out std_logic_vector (3 downto 0)
		  );
end entity vga_movimiento;

architecture behavioral of vga_movimiento is
component vga_generic is
GENERIC( --Constantes para monitor VGA en 640x480
	CONSTANT h_pulse : INTEGER := 96;
	CONSTANT h_bp : INTEGER := 48;
	CONSTANT h_pixels : INTEGER := 640;
	CONSTANT h_fp : INTEGER := 16;
	CONSTANT v_pulse : INTEGER := 2;
	CONSTANT v_bp : INTEGER := 33;
	CONSTANT v_pixels : INTEGER := 480;
	CONSTANT v_fp : INTEGER := 10
	
);
port(
	reloj_pixel : in std_logic; --clk 25 Mhz
	renglon	: out integer;
	columna	: out  integer;
	h_sync: out std_logic;
	v_sync: out std_logic; 
	display_ena : out std_logic :='0'
);
end component;

component Divisor_de_frecuencia is
	Port (clk : in std_logic;
			div_clk : out std_logic);
end component ;

	signal reloj_pixel : std_logic := '0';
	signal column : integer := 0;
	signal row : integer := 0;
	signal display_ena : std_logic := '0';
	signal horizontal_asc : integer range 0 to 480 := 0;
	signal horizontal_desc : integer range 0 to 480 := 350;
	signal vertical_asc : integer range 0 to 640 := 550;
	signal div_clk: std_logic;


begin

relojpixel: process (clk) is
begin
if rising_edge(clk) then
	reloj_pixel <= not reloj_pixel;
end if;
end process relojpixel; -- 25mhz

U1: divisor_de_frecuencia port map(clk, div_clk);
U2: vga_generic port map(reloj_pixel, row, column, h_sync, v_sync, display_ena);
movimiento: process(div_clk)
	begin
		if div_clk = '1' then
			horizontal_asc <= horizontal_asc+1;
			horizontal_desc <= horizontal_desc-1;
			vertical_asc <= vertical_asc+1;
		end if;
end process;


generador_imagen: PROCESS(display_ena, row, column)
BEGIN
	IF(display_ena = '1') THEN
--Si estoy entre la region tal y tal, pongo punto de tal color
		if ((row > horizontal_asc-50 and row < horizontal_asc) and (column>350 and column<400)) THEN
				red <= (OTHERS => '1');
				green<=(OTHERS => '1');
				blue<=(OTHERS => '0');
		elsif ((row > horizontal_desc-50 and row <horizontal_desc) and (column>450 and column<500)) THEN
				red <= (OTHERS => '0');
				green<=(OTHERS => '1');
				blue<=(OTHERS => '1');
		elsif ((row > 300 and row <350) and (column>vertical_asc-50 and column<vertical_asc)) THEN
				red <= (OTHERS => '1');
				green<=(OTHERS => '0');
				blue<=(OTHERS => '1');
		else
			red <= (OTHERS => '0');
			green <= (OTHERS => '0');
			blue <= (OTHERS => '0');
		end if;

	ELSE
		red<= (OTHERS => '0');
		green <= (OTHERS => '0');
		blue<= (OTHERS => '0');
END IF;
END PROCESS generador_imagen;

end behavioral;