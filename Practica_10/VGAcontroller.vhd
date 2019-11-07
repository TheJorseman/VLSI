library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity VGAcontroller is 
	port (clk50MHz: in std_logic;
                red: out std_logic_vector (3 downto 0);
                green: out std_logic_vector (3 downto 0);
                blue: out std_logic_vector (3 downto 0);
                h_sync: out std_logic;
                v_sync: out std_logic 
	);
end entity VGAcontroller;

architecture behavioral OF VGAcontroller IS




component SincroniaVGA is 
    port ( clk: in std_logic;
					 renglon : out std_logic_vector(9 downto 0);
					 columna : out std_logic_vector(9 downto 0); 

					 display_ena : out std_logic;
                h_sync: out std_logic;
                v_sync: out std_logic );
end component;

component imageGen is
	port ( 
				 columna: in std_logic_vector (9 downto 0);
				 fila : in std_logic_vector (9 downto 0);
				 
				 display_ena : in std_logic;
				 
             red: out std_logic_vector (3 downto 0);
             green: out std_logic_vector (3 downto 0);
             blue: out std_logic_vector (3 downto 0));
end component;

signal reloj_pixel : std_logic;
signal renglon : std_logic_vector(9 downto 0);
signal columna : std_logic_vector(9 downto 0);
signal display_ena : std_logic;

begin

sync : SincroniaVGA port map (reloj_pixel, renglon, columna, display_ena , h_sync, v_sync );
ImgGen : imageGen port map (columna, renglon, display_ena, red, green, blue);

relojpixel: process (clk50MHz) is
    begin
        if rising_edge(clk50MHz) then
            reloj_pixel <= not reloj_pixel;
        end if;
    end process relojpixel; -- 25mhz
	 
end architecture behavioral;