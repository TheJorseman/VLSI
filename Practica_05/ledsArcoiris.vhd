library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Leds is
    Port (  clk : in STD_LOGIC;
            led1 : out STD_LOGIC;
            led2 : out STD_LOGIC;
            led3 : out STD_LOGIC);
end Leds;
architecture Behavioral of Leds is
    component divisor is
        Generic ( N : integer := 25);
        Port (  clk : in std_logic;
                div_clk : out std_logic);
    end component;
    component PWM is
    Port ( Reloj : in STD_LOGIC;
                D : in STD_LOGIC_VECTOR (7 downto 0);
                S : out STD_LOGIC);
    end component;
    signal relojPWM : STD_LOGIC;
    signal relojCiclo : STD_LOGIC;
    signal R : STD_LOGIC_VECTOR (7 downto 0) := X"FF";
    signal G : STD_LOGIC_VECTOR (7 downto 0) := X"01";
    signal B : STD_LOGIC_VECTOR (7 downto 0) := X"01";
 
begin
    R1: divisor generic map (10) port map (clk, relojPWM);
    R2: divisor generic map (24) port map (clk, relojCiclo);
    P1: PWM port map (relojPWM, R, led1);
    P2: PWM port map (relojPWM, G, led2);
    P3: PWM port map (relojPWM, B, led3);
    process (relojCiclo)
        variable Cuenta : integer range 0 to 255 := 0;
		  variable contador : integer range 0 to 6:= 0;
    begin
        if relojCiclo='1' and relojCiclo'event then
			
			if contador = 0 then		
				R <= X"FF";
				G <= X"00";
				B <= X"00";
			elsif contador = 1 then
				R <= X"FF";
				G <= X"80";
				B <= X"0F";
			elsif contador = 2 then
				R <= X"FF";
				G <= X"FF";
				B <= X"00";		
			elsif contador = 3 then
				R <= X"00";
				G <= X"FF";
				B <= X"00";
			elsif contador = 4 then
				R <= X"00";
				G <= X"C1";
				B <= X"FF";
			elsif contador = 5 then
				R <= X"00";
				G <= X"00";
				B <= X"FF";
			elsif contador = 6 then
				R <= X"80";
				G <= X"00";
				B <= X"FF";
			end if;
			contador := contador + 1;	
        end if;
		  
		  
    end process;
end Behavioral;