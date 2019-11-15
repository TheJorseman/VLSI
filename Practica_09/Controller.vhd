<<<<<<< HEAD
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Controller is
	port( 
	Clk   : IN STD_LOGIC;
	baud  : in STD_LOGIC_VECTOR(2 downto 0);
	luces : out STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; 
	Motor : out STD_LOGIC_VECTOR(3 downto 0);
 	RX_WIRE : IN STD_LOGIC);
end entity;

architecture behavioral OF Controller IS

component RX is
	port( Clk : IN STD_LOGIC;
	baud: in STD_LOGIC_VECTOR(2 downto 0);
	bandera: INOUT STD_LOGIC := '0';
	LEDS : OUT STD_LOGIC_VECTOR(7 downto 0);
 	RX_WIRE : IN STD_LOGIC);
end component;

component MotPasos is
 port ( clk : in STD_LOGIC;
 UD : in STD_LOGIC;
 rst : in STD_LOGIC;
 FH : in STD_LOGIC_VECTOR(1 downto 0);
 led : out STD_LOGIC_VECTOR(3 downto 0);
 MOT : out STD_LOGIC_VECTOR(3 downto 0) );
end component;


signal data : STD_LOGIC_VECTOR(7 downto 0);
signal bandera : STD_LOGIC;
signal direccion : STD_LOGIC;
signal enable: STD_LOGIC;
signal mode : STD_LOGIC_VECTOR(1 downto 0);
signal ledsMot : STD_LOGIC_VECTOR(3 downto 0);
signal leds_sal : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
begin
	Receptor: RX port map(clk,baud,bandera,data,RX_WIRE);
	MotorP : MotPasos port map(clk, direccion, enable, mode,ledsMot, Motor );

	asignacion: process(bandera,data)
		begin
			if(rising_edge(bandera)) then
				case data is
					when X"64" => 
						direccion <= '1';
						mode <= "11";
						enable <= '1';
					when X"69" =>
						direccion <= '0';
						mode <= "11";
						enable <= '1';
					when X"61" =>
						enable <= '0';
					when X"6c" =>
						leds_sal <= not leds_sal;
						luces <= leds_sal;
					when others =>
						ledsMot <= "0000";
				end case;
			end if;
	end process;	

end architecture behavioral;	

=======
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Controller is
	port( 
	Clk   : IN STD_LOGIC;
	baud  : in STD_LOGIC_VECTOR(2 downto 0);
	luces : out STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; 
	Motor : out STD_LOGIC_VECTOR(3 downto 0);
 	RX_WIRE : IN STD_LOGIC);
end entity;

architecture behavioral OF Controller IS

component RX is
	port( Clk : IN STD_LOGIC;
	baud: in STD_LOGIC_VECTOR(2 downto 0);
	bandera: INOUT STD_LOGIC := '0';
	LEDS : OUT STD_LOGIC_VECTOR(7 downto 0);
 	RX_WIRE : IN STD_LOGIC);
end component;

component MotPasos is
 port ( clk : in STD_LOGIC;
 UD : in STD_LOGIC;
 rst : in STD_LOGIC;
 FH : in STD_LOGIC_VECTOR(1 downto 0);
 led : out STD_LOGIC_VECTOR(3 downto 0);
 MOT : out STD_LOGIC_VECTOR(3 downto 0) );
end component;


signal data : STD_LOGIC_VECTOR(7 downto 0);
signal bandera : STD_LOGIC;
signal direccion : STD_LOGIC;
signal enable: STD_LOGIC;
signal mode : STD_LOGIC_VECTOR(1 downto 0);
signal ledsMot : STD_LOGIC_VECTOR(3 downto 0);
signal leds_sal : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
begin
	Receptor: RX port map(clk,baud,bandera,data,RX_WIRE);
	MotorP : MotPasos port map(clk, direccion, enable, mode,ledsMot, Motor );

	asignacion: process(bandera,data)
		begin
			if(rising_edge(bandera)) then
				case data is
					when X"64" => 
						direccion <= '0';
						mode <= "10";
						enable <= '1';
					when X"69" =>
						direccion <= '1';
						mode <= "10";
						enable <= '1';
					when X"61" =>
						enable <= '0';
					when X"6c" =>
						leds_sal <= not leds_sal;
						luces <= leds_sal;
					when others =>
						ledsMot <= "0000";
				end case;
			end if;
	end process;	

end architecture behavioral;	

>>>>>>> 462eed68601c265c376fbc655df2c6f127314045
