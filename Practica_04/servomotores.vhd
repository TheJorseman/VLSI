library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity servomotores is
    Port ( clk : in STD_LOGIC;
            Pini : in STD_LOGIC;
            Pfin : in STD_LOGIC;
            Inc : in STD_LOGIC;
            Dec : in STD_LOGIC;
            control : out STD_LOGIC;
            control2 : out STD_LOGIC);
end servomotores;
architecture Behavioral of servomotores is
    component divisor is
        Port ( clk : in std_logic;
        div_clk : out std_logic);
    end component;
    component PWM is
        Port ( Reloj : in STD_LOGIC;
        D : in STD_LOGIC_VECTOR (15 downto 0);
        S : out STD_LOGIC);
    end component;
        signal reloj : STD_LOGIC;
        signal ancho : STD_LOGIC_VECTOR (15 downto 0) := X"0fa0";
        signal ancho2 : STD_LOGIC_VECTOR (15 downto 0) := X"0fa0";
    begin
        U1: divisor port map (clk, reloj);
        U2: PWM port map (reloj, ancho, control);
        U4: PWM port map (reloj, ancho2, control2);
        process (reloj, Pini, Pfin, Inc, Dec)
        variable valor : STD_LOGIC_VECTOR (15 downto 0) := X"0fa0";
        variable valor2 : STD_LOGIC_VECTOR (15 downto 0) := X"0fa0";
        variable cuenta : integer range 0 to 1023 := 0;
        begin
        if reloj='1' and reloj'event then
            if cuenta>0 then
                cuenta := cuenta - 1;
                else
                if Pini='1'  and valor2<X"1999" then
                    valor2 := valor2 + 1;
                elsif Pfin='1' and  valor2>X"0CCC" then
                    valor2 := valor2 - 1;  
                elsif Inc='0' and valor<X"1999" then
                    valor := valor + 1;
                elsif Dec='0' and valor>X"0CCC" then
                    valor := valor - 1;
                end if;
                cuenta := 1023;
                ancho <= valor;
                ancho2 <= valor2;
            end if;
        end if;
    end process;
end Behavioral;