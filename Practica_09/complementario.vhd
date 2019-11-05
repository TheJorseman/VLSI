library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
	port( Clk : IN STD_LOGIC;
	datos: in STD_LOGIC_VECTOR(7 downto 0);
	bandera: IN STD_LOGIC := '0';
	UD : OUT STD_LOGIC;
	FH : OUT STD_LOGIC_VECTOR(1 downto 0);
	ledsL: OUT STD_LOGIC_VECTOR(3 downto 0);
	Motor: OUT STD_LOGIC_vector(3 downto 0);
	led: OUT STD_LOGIC_vector(3 downto 0);
	rst : OUT STD_LOGIC:='1');
end entity;

architecture behavioral OF Controller IS

component MotPasos is 
		 Port (clk : in STD_LOGIC;
				 UD : in STD_LOGIC;
				 rst : in STD_LOGIC;
				 FH : in STD_LOGIC_VECTOR(1 downto 0);
				 led : out STD_LOGIC_VECTOR(3 downto 0);
				 MOT : out STD_LOGIC_VECTOR(3 downto 0));
	 end component;
begin
	Motor: MotPasos port map(clk,UD,rst,FH,ledsL,Motor);
	asignacion: process(bandera)
		begin
			if(rising_edge(bandera)) then
				case datos is
					when X"64" => 
						UD <= '1';
						FH <= "11";
						rst <= '1';
					when X"69" =>
						UD <= '0';
						FH <= "11";
						rst <= '1';
					when X"61" =>
						UD <= '1';
						FH <= "11";
						rst <= '0';
					when X"6c" =>
						UD <= '1';
						FH <= "11";
						rst <= '0';
				end case;
			end if;
	end process;
end architecture behavioral;	