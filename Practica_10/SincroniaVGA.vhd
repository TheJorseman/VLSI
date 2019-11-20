library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SincroniaVGA is
		GENERIC( --Constantes para monitor VGA en 640x480
    CONSTANT h_pulse : INTEGER := 96;
    CONSTANT h_bp : INTEGER := 48;
    CONSTANT h_pixels : INTEGER := 640;
    CONSTANT h_fp : INTEGER := 16;
    CONSTANT v_pulse : INTEGER := 2;
    CONSTANT v_bp : INTEGER := 33;      
    CONSTANT v_pixels : INTEGER := 480;
    CONSTANT v_fp : INTEGER := 10);
	 
    port ( clk: in std_logic;
					 renglon : out std_logic_vector(9 downto 0);
					 columna : out std_logic_vector(9 downto 0); 
					 
                --red: out std_logic_vector (3 downto 0);
                --green: out std_logic_vector (3 downto 0);
                --blue: out std_logic_vector (3 downto 0);
					 display_ena : out std_logic;
                h_sync: out std_logic;
                v_sync: out std_logic );
end entity SincroniaVGA;

architecture behavioral OF SincroniaVGA IS

 --Contadores
	constant h_period : INTEGER := h_pulse + h_bp + h_pixels + h_fp;
	constant v_period : INTEGER := v_pulse + v_bp + v_pixels + v_fp;
	signal h_count : INTEGER RANGE 0 TO h_period - 1 := 0;
	signal v_count : INTEGER RANGE 0 TO v_period - 1 := 0; 
	
	--signal clk : std_logic;
	signal column : INTEGER;
	signal row : INTEGER;
	--signal display_ena : std_logic;
begin

contadores : process (clk) -- H_periodo=800, V_periodo=525
    begin
        if rising_edge(clk) then
            if h_count<(h_period-1) then
                h_count<=h_count+1;
            else
                h_count<=0;
                if v_count<(v_period-1) then
                    v_count<=v_count+1;
                else
                    v_count<=0;
                end if;
            end if;
        end if;
end process contadores;

senial_hsync : process (clk) --h_pixel+h_fp+h_pulse= 784
    begin
        if rising_edge(clk) then
            if h_count>(h_pixels + h_fp) or
                h_count>(h_pixels + h_fp + h_pulse) then
                h_sync<='0';
            else
                h_sync<='1';
            end if;
        end if;
end process senial_hsync;

senial_vsync : process (clk) --vpixels+v_fp+v_pulse=525
    begin --checar si se en parte visible es 1 o 0
        if rising_edge(clk) then
            if v_count>(v_pixels + v_fp) or
                v_count>(v_pixels + v_fp + v_pulse) then
                v_sync<='0';
            else
                v_sync<='1';
            end if;
        end if;
end process senial_vsync;

coords_pixel: process(clk)
    begin --asignar una coordenada en parte visible
        if rising_edge(clk) then
            if (h_count < h_pixels) then
                column <= h_count;
					 columna <= std_logic_vector(to_unsigned(column, columna'length)); 
            end if;
            if (v_count < v_pixels) then
                row <= v_count;
					 renglon <= std_logic_vector(to_unsigned(row, renglon'length));
            end if;
        end if;
end process coords_pixel;


display_enable: process(clk) --- h_pixels=640; y_pixeles=480
    begin
        if rising_edge(clk) then
            if (h_count < h_pixels AND v_count < v_pixels) THEN
                display_ena <= '1';
            else
                display_ena <= '0';
            end if;
        end if;
end process display_enable;
end architecture behavioral;