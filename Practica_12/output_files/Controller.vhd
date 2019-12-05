library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity Controller is
	Port ( clk  : in    STD_LOGIC;
				 scl  : inout STD_LOGIC;
				 sda  : inout STD_LOGIC;
				 leds : out   STD_LOGIC_VECTOR(9 downto 0);
				 error: out   STD_LOGIC;
				 reset: in    STD_LOGIC;
				 --reg_dataX0 : in std_logic_vector(7 downto 0) := X"34";
				 modo: in STD_LOGIC;
				 mclk : out std_logic );
	end Controller;

architecture Behavioral of Controller is

	signal reg_dataX0 : std_logic_vector(7 downto 0) := X"34";
	signal salida_s: std_logic_vector(9 downto 0);
	constant nivel: integer := 10;
	constant minimo: integer := -2048;
	constant maximo: integer := 2048;
	signal particion: integer := 410;
	signal n: integer := 0;
	signal valor: integer;
	signal sal_aux: std_logic_vector(9 downto 0);
	

	component Acelerometro IS
		PORT(clk  : in    STD_LOGIC;
          scl  : inout STD_LOGIC;
          sda  : inout STD_LOGIC;
          leds : out   STD_LOGIC_VECTOR(9 downto 0);
          error: out   STD_LOGIC;
          reset: in    STD_LOGIC;
			 reg_dataX0 : in std_logic_vector(7 downto 0) := X"34";
          mclk : out std_logic );
	end component Acelerometro;
	
	begin
	
	A1: Acelerometro port map (clk, scl, sda, salida_s, error, reset,reg_dataX0, mclk);
	
	With modo select reg_dataX0 <=
		X"34" when '0',
		X"32" when '1',
		X"36" when others;
		
	p_cont: process(clk)
	begin
		if rising_edge(clk) then
			if (n > nivel) then
				n <= 0;
			elsif (n < nivel) then
				n <= n + 1;
			end if;
		end if;
	end process;
		
	p_nivel: process(clk, n, salida_s)
	begin
		if rising_edge(clk) then
			valor <= conv_integer(signed(salida_s));
			if(valor > minimo + n * particion and valor < minimo + (n + 1) * particion) then
			--sal_aux <= X"00";
				leds <= "0000000000";
				leds(n) <= '1';
			end if;
		end if;
		
	end process;
		

end Behavioral;