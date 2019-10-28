library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TransmissionS is
    port( Clk : IN STD_LOGIC;
        dato : IN STD_LOGIC_VECTOR(7 downto 0);
        TXD : OUT STD_LOGIC;
		  bandera : out STD_LOGIC;
		  baud : in STD_LOGIC_VECTOR(2 downto 0);
		  INICIO : in STD_LOGIC);
end entity;


architecture behavioral OF TransmissionS IS
    --signal conta : INTEGER := 0;
    --signal valor : INTEGER := 70000;
    --signal INICIO: STD_LOGIC;
    --signal dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal PRE : INTEGER RANGE 0 TO 5208 := 0;
    signal INDICE: INTEGER RANGE 0 TO 9 := 0;
    signal BUFF : STD_LOGIC_VECTOR(9 DOWNTO 0);
    signal Flag : STD_LOGIC := '0';
    signal PRE_val: INTEGER range 0 to 41600;
    --signal i : INTEGER range 0 to 4;
    signal pulso : STD_LOGIC:='0';
    signal contador: integer range 0 to 49999999 := 0;
    --signal dato_bin: STD_LOGIC_VECTOR(3 DOWNTO 0);
    --signal hex_val: STD_LOGIC_VECTOR(7 DOWNTO 0):= (others => '0');
	 signal ini : STD_LOGIC := '0';
	 signal btn_before : STD_LOGIC := '0';
	 --signal btn_ini : STD_LOGIC_VECTOR(2 downto 0);

begin
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
	
	
	 btn_ini : process(clk)
		begin
			if rising_edge(Clk) then
				if INICIO = '0' and btn_before = '0' then
					ini <= '1';
				elsif INICIO = '0' and  btn_before = '1' then 
					ini <= '0';
				end if;
				btn_before <= not INICIO;
				
			end if;
	 end process;
	 
    TX_envia : process(Clk,ini,dato)
    begin
        if(Clk'EVENT and Clk = '1') then
            if(Flag = '0' and ini = '1') then
                Flag<= '1';
                BUFF(0) <= '0';
                BUFF(9) <= '1';
                BUFF(8 DOWNTO 1) <= dato;
            end if;
            if(Flag = '1') then
                if(PRE < PRE_val) then
                    PRE <= PRE + 1;
                else
                    PRE <= 0;
                end if;
                if(PRE = PRE_val/2) then
                    TXD <= BUFF(INDICE);
                    if(INDICE < 9) then
                        INDICE <= INDICE + 1;
                    else
                        Flag <= '0';
                        INDICE <= 0;
                    end if;
                end if;
            end if;
        end if;
    end process TX_envia;

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
