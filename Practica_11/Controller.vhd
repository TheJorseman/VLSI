library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Controller is

	 port( clk50MHz: in std_logic;
		 red: out std_logic_vector (3 downto 0); -- al monitor
		 green: out std_logic_vector (3 downto 0);
		 blue: out std_logic_vector (3 downto 0);
		 h_sync: out std_logic;
		 v_sync: out std_logic);
		 --dipsw: in std_logic_vector(3 downto 0)); -- numeros para
		 --a,b,c,d,e,f,g: out std_logic ); -- decodificador
end entity Controller;

architecture behavioral of Controller is

 signal column : integer := 0;
 signal d_ena : std_logic;
 signal row : integer := 0;
	
 component vga_generic is
	port(
		reloj_pixel : in std_logic; --clk 25 Mhz
		renglon	: out integer;
		columna	: out  integer;
		h_sync: out std_logic;
		v_sync: out std_logic;
		display_ena : out std_logic :='0'
	);
end component;	


Component mivga is
	 port(  reloj_pixel: in std_logic;
		 red: out std_logic_vector (3 downto 0); 
		 green: out std_logic_vector (3 downto 0);
		 blue: out std_logic_vector (3 downto 0);
		 row : in integer;
		 column : in integer;
		 desp1 : in integer;
		 decenas: in std_logic;
		 dipswDec: in std_logic_vector(3 downto 0);
		 dipsw: in std_logic_vector(3 downto 0));
 end Component mivga;
 
  component divisor is
	  Generic ( N : integer := 24);
	  Port (  clk : in std_logic;
				 div_clk : out std_logic);
 end component;
 
 signal decenas : std_logic := '1';
 signal dipswDec: std_logic_vector(3 downto 0) := "0000";
 signal dipsw: std_logic_vector(3 downto 0) := "0000";
 signal contador : integer := 0;
 signal reloj_pixel : std_logic;
 signal clk_cont : std_logic;
begin

relojpixel: process (clk50MHz) is
    begin
        if rising_edge(clk50MHz) then
            reloj_pixel <= not reloj_pixel;
        end if;
    end process relojpixel; -- 25mhz

	 
contador_p : process(clk_cont) is
	begin
		if rising_edge(clk_cont) then
			if contador <= 20 then
				contador <= contador + 1;
				if (contador > 9 and contador < 20 ) then
					dipswDec <= "0001";
					
					decenas <= '1';
				elsif contador = 20 then
					dipswDec <= "0010";
					decenas <= '1';
				else 
				end if;
				dipsw <= std_logic_vector(to_unsigned(contador mod 10, dipsw'length));
			else
				decenas <= '0';
				contador <= 0;
			end if;
		end if;

end process contador_p;
	 
R1: divisor generic map (25) port map (clk50MHz, clk_cont);
VGA_G : vga_generic port map(reloj_pixel,row,column,h_sync,v_sync);

VGA_D : mivga port map(reloj_pixel,red,green,blue,row,column,100,decenas,dipswDec,dipsw);

		 
end behavioral;