library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mivga is
	 port( clk50MHz: in std_logic;
		 red: out std_logic_vector (3 downto 0); -- al monitor
		 green: out std_logic_vector (3 downto 0);
		 blue: out std_logic_vector (3 downto 0);
		 --h_sync: out std_logic;
		 --v_sync: out std_logic;
		 row : in integer;
		 column : in integer;
		 desp1 : in integer;
		 dipsw: in std_logic_vector(3 downto 0)); -- numeros para
		 --a,b,c,d,e,f,g: out std_logic ); -- decodificador
 end entity mivga;

architecture behavioral of mivga is
 constant cero: std_logic_vector(6 downto 0):="0111111"; --gfedcba
 constant uno: std_logic_vector(6 downto 0):="0000110";
 constant dos: std_logic_vector(6 downto 0):="1011011";
 constant tres: std_logic_vector(6 downto 0):="1001111";
 constant cuatro: std_logic_vector(6 downto 0):="1100110";
 constant cinco: std_logic_vector(6 downto 0):="1101101";
 constant seis: std_logic_vector(6 downto 0):="1111101";
 constant siete: std_logic_vector(6 downto 0):="0000111";
 constant ocho: std_logic_vector(6 downto 0):="1111111";
 constant nueve: std_logic_vector(6 downto 0):="1110011";
 constant r1:std_logic_vector(3 downto 0):=(OTHERS => '1');
 constant r0:std_logic_vector(3 downto 0):=(OTHERS => '0');
 constant g1:std_logic_vector(3 downto 0):=(OTHERS => '1');
 constant g0:std_logic_vector(3 downto 0):=(OTHERS => '0');
 constant b1:std_logic_vector(3 downto 0):=(OTHERS => '1');
 constant b0:std_logic_vector(3 downto 0):=(OTHERS => '0');
 
 --constant desp1: integer := 100;

 
 --signal column : integer := 0;
 --signal d_ena : std_logic;
	--signal row : integer := 0;
 signal reloj_pixel : std_logic;
 -- variable a,b,c,d,e,f: std_logic;
 signal conectornum:std_logic_vector(6 downto 0); -- coneccion del
 -- decodificador con image_gen


 begin
 
	--VGA_G : vga_generic port map(clk50MHz,row,column,h_sync,v_sync);
 
    relojpixel: process (clk50MHz) is
       begin
           if rising_edge(clk50MHz) then
               reloj_pixel <= not reloj_pixel;
           end if;
       end process relojpixel; -- 25mhz


 with dipsw select conectornum <= --decodificador para los números
 "0111111" when "0000",
 "0000110" when "0001",
 "1011011" when "0010",
 "1001111" when "0011",
 "1100110" when "0100",
 "1101101" when "0101",
 "1111101" when "0110",
 "0000111" when "0111",
 "1111111" when "1000",
 "1110011" when "1001",
 "0000000" when others;

gen_im: process(reloj_pixel)
begin

if(rising_edge(reloj_pixel)) then
case conectornum is
when cero=>
	 if ((row > 200  and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- b verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1  and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
     elsif ((row > 250 and row <280) and (column>100 + desp1 and column<110 + desp1)) THEN -- e cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
         Blue <= (OTHERS => '1');
     elsif ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	end if;

when uno=>
	 if ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c rojo
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	 end if;
when dos=>
	 if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1 and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>100 + desp1  and column<110 + desp1)) THEN -- e cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
		 end if;
when tres=>
	 if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1 and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	end if;

when cuatro=>
    if ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
        red <= (OTHERS => '0');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '0');
    elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c rojo
        red <= (OTHERS => '1');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '0');
    elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- f amarillo
        red <= (OTHERS => '1');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '0');
    elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
        red <= (OTHERS => '1');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '1');
    else -- fondo
        red <= (OTHERS => '0');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '0');
    end if;

when cinco=>
	 if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- f verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1 and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	end if;

when seis=>
	 if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- b verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1 and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
         blue <= (OTHERS => '1');
     elsif ((row > 250 and row <280) and (column>100 + desp1 and column<110 + desp1)) THEN -- e cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	end if;

when siete=>
	 if ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c rojo
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
         blue <= (OTHERS => '0');
     elsif ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	 end if;

when ocho=>
	 if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '1');
	 elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- b verde
		 Red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 elsif ((row > 280 and row <290) and (column>110 + desp1 and column<140 + desp1)) THEN -- d blanco
		 Red <= (OTHERS => '1');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '1');
	 elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
		 Blue <= (OTHERS => '1');
	 elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
		 red <= (OTHERS => '1');
		 green <= (OTHERS => '0');
         blue <= (OTHERS => '1');
     elsif ((row > 250 and row <280) and (column>100 + desp1 and column<110 + desp1)) THEN -- e cian
		 Red <= (OTHERS => '0');
		 Green <= (OTHERS => '1');
         Blue <= (OTHERS => '1');
     elsif ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '1');
		 blue <= (OTHERS => '0');
	 else -- fondo
		 red <= (OTHERS => '0');
		 green <= (OTHERS => '0');
		 blue <= (OTHERS => '0');
	end if;

when nueve=>
    if ((row > 200 and row <210) and (column>110 + desp1 and column<140 + desp1)) THEN -- a azul
        red <= (OTHERS => '0');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '1');
    elsif ((row > 210 and row <240) and (column>140 + desp1 and column<150 + desp1)) THEN -- b verde
        red <= (OTHERS => '0');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '0');
    elsif ((row > 250 and row <280) and (column>140 + desp1 and column<150 + desp1)) THEN -- c rojo
        red <= (OTHERS => '1');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '0');
    elsif ((row > 210 and row <240) and (column>100 + desp1 and column<110 + desp1)) THEN -- f amarillo
        red <= (OTHERS => '1');
        green <= (OTHERS => '1');
        blue <= (OTHERS => '0');
    elsif ((row > 240 and row <250) and (column>110 + desp1 and column<140 + desp1)) THEN -- g violeta
        red <= (OTHERS => '1');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '1');
    else -- fondo
        red <= (OTHERS => '0');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '0');
    end if;
	--end if;
	when others => 
		red <= (OTHERS => '0');
        green <= (OTHERS => '0');
        blue <= (OTHERS => '0');
end case;
end if;
end process;


end behavioral;