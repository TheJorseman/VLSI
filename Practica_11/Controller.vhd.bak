library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Controller is

	 port( clk50MHz: in std_logic;
		 red: out std_logic_vector (3 downto 0); -- al monitor
		 green: out std_logic_vector (3 downto 0);
		 blue: out std_logic_vector (3 downto 0);
		 h_sync: out std_logic;
		 v_sync: out std_logic;
		 dipsw: in std_logic_vector(3 downto 0)); -- numeros para
		 --a,b,c,d,e,f,g: out std_logic ); -- decodificador
end entity Controller;

architecture behavioral of Controller is

 signal column : integer := 0;
 signal d_ena : std_logic;
 signal row : integer := 0;
	
 component vga_generic is
	port(
		clk : in std_logic; --clk 50 Mhz
		renglon	: out integer;
		columna	: out  integer;
		h_sync: out std_logic;
		v_sync: out std_logic;
		display_ena : out std_logic :='0'
	);
end component;	


Component mivga is
	 port( clk50MHz: in std_logic;
		 red: out std_logic_vector (3 downto 0); -- al monitor
		 green: out std_logic_vector (3 downto 0);
		 blue: out std_logic_vector (3 downto 0);
		 row : in integer;
		 column : in integer;
		 desp1 : in integer;
		 dipsw: in std_logic_vector(3 downto 0)); -- numeros para
		 --a,b,c,d,e,f,g: out std_logic ); -- decodificador
 end Component mivga;
 
  signal red1 : std_logic_vector (3 downto 0);
 signal green1 : std_logic_vector (3 downto 0);
 signal blue1 : std_logic_vector (3 downto 0);
 
 
 signal red2 : std_logic_vector (3 downto 0);
 signal green2 : std_logic_vector (3 downto 0);
 signal blue2 : std_logic_vector (3 downto 0);
 signal contador : std_logic;
begin


VGA_G : vga_generic port map(clk50MHz,row,column,h_sync,v_sync);

VGA_D : mivga port map(clk50MHz,red1,green1,blue1,row,column,100,dipsw);

VGA_I : mivga port map(clk50MHz,red2,green2,blue2,row,column,0,dipsw);

    relojpixel: process (clk50MHz) is
       begin
           if rising_edge(clk50MHz) then
               contador <= not contador;
           end if;
			  
       end process relojpixel; -- 25mhz
		 
		process (contador)
		begin
			if contador = '0'then
				2 <= red1;
				green <= green1;
				blue <= blue1;
			else
				red <= red2;
				green <= green2;
				blue <= blue2;			
			end if;
		end process;

end behavioral;