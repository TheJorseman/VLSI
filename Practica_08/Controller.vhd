library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
    port( Clk : IN STD_LOGIC;
        SW : IN STD_LOGIC_VECTOR(3 downto 0);
        TX_WIRE : OUT STD_LOGIC;
		  baud : in STD_LOGIC_VECTOR(2 downto 0);
		  bandera: out STD_LOGIC;
		  INICIO : in STD_LOGIC);
end entity;

architecture behavioral OF Controller IS

	 component TransmissionS is
    port( Clk : IN STD_LOGIC;
        dato : IN STD_LOGIC_VECTOR(7 downto 0);
        TXD : OUT STD_LOGIC;
		  bandera : out STD_LOGIC;
		  baud : in STD_LOGIC_VECTOR(2 downto 0);
		  INICIO : in STD_LOGIC);
	 end component;


    signal conta : INTEGER := 0;
    signal valor : INTEGER := 70000;
    --signal INICIO: STD_LOGIC;
    signal dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal PRE : INTEGER RANGE 0 TO 5208 := 0;
    signal PRE_val: INTEGER range 0 to 41600;
    signal i : INTEGER range 0 to 4;
    signal pulso : STD_LOGIC:='0';
    signal contador: integer range 0 to 49999999 := 0;
    signal dato_bin: STD_LOGIC_VECTOR(3 DOWNTO 0);
    signal hex_val: STD_LOGIC_VECTOR(7 DOWNTO 0):= (others => '0');

begin

	 transmisor: TransmissionS port map(clk,dato,TX_WIRE,bandera,baud,INICIO); 

    TX_divisor : process(Clk)
    begin
        if rising_edge(Clk) then
            contador<=contador+1;
            if (contador < 140000) then
                pulso <= '1';
            else
                pulso <= '0';
            end if;
        end if;
    end process TX_divisor;

    TX_prepara : process(Clk, pulso)
        type arreglo is array (0 to 1) of STD_LOGIC_VECTOR(7 downto 0);
        variable asc_dato : arreglo := (X"30",X"0A");
    begin
        asc_dato(0):=hex_val;
        if (pulso='1') then
            if rising_edge(Clk) then
                if (conta=valor) then
                    conta <= 0;
                    --INICIO <= '1';
                    Dato <= asc_dato(i);
                    if (i = 1) then
                        i <= 0;
                    else
                        i <= i + 1;
                    end if;
                else
                    conta <= conta+1;
                    --INICIO <= '0';
                end if;
            end if;
        end if;
    end process TX_prepara;

    dato_bin<=SW;
    
    with(dato_bin) select
        hex_val <= X"41" when "0000",
                    X"42" when "0001",
                    X"43" when "0010",
                    X"44" when "0011",
                    X"45" when "0100",
                    X"46" when "0101",
                    X"47" when "0110",
                    X"48" when "0111",
                    X"49" when "1000",
                    X"4A" when "1001",
                    X"4B" when "1010",
                    X"4C" when "1011",
                    X"4D" when "1100",
                    X"4E" when "1101",
                    X"4F" when "1110",
                    X"50" when "1111",
                    X"23" when others;

    with (baud) select
        PRE_val <= 41600 when "000", -- 1200 bauds
                    20800 when "001", -- 2400 bauds
                    10400 when "010", -- 4800 bauds
                    5200 when "011", -- 9600 bauds
                    2600 when "100", -- 19200 bauds
                    1300 when "101", -- 38400 bauds
                    866 when "110", -- 57600 bauds
                    432 when others; --115200 bauds

end architecture behavioral;