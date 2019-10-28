library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity supersonicos is
    Port (clk: in STD_LOGIC;
		  inicio : in STD_LOGIC;
        sensor_disp: out STD_LOGIC;
        sensor_eco: in STD_LOGIC;
		  binaryCent: out STD_LOGIC_VECTOR(8 downto 0);
		  sevseg1 : out STD_LOGIC_VECTOR (7 downto 0);
		  sevseg2 : out STD_LOGIC_VECTOR (7 downto 0);
		  sevseg3 : out STD_LOGIC_VECTOR (7 downto 0);
		  sevseg4 : out STD_LOGIC_VECTOR (7 downto 0));
end supersonicos;
architecture Behavioral of supersonicos is
    signal cuenta: unsigned(16 downto 0) := (others => '0');
    signal centimetros: unsigned(15 downto 0) := (others => '0');
    signal centimetros_unid: unsigned(3 downto 0) := (others => '0');
    signal centimetros_dece: unsigned(3 downto 0) := (others => '0');
	--se añade la señal para contar las centenas    
	signal centimetros_cent: unsigned(3 downto 0) := (others => '0');
	 
    signal sal_unid: unsigned(3 downto 0) := (others => '0');
    signal sal_dece: unsigned(3 downto 0) := (others => '0');
	--Se añade la variable para medir las centenas
	 signal sal_cent: unsigned(3 downto 0) := (others => '0');
	 
    signal digito: unsigned(3 downto 0) := (others => '0');
    signal eco_pasado: std_logic := '0';
    signal eco_sinc: std_logic := '0';
    signal eco_nsinc: std_logic := '0';
    signal espera: std_logic:= '0';

	 signal anodos: STD_LOGIC_VECTOR (3 downto 0);
	 signal segmentos: STD_LOGIC_VECTOR (7 downto 0);
	 --Declaramos el multiplexor para utilizar displays de 7 segmentos no multiplexados
	 component MUX7SEG is 
		 Port (clk: in STD_LOGIC;
			  selector : in STD_LOGIC_VECTOR (3 downto 0);
			  entrada: in STD_LOGIC_VECTOR (7 downto 0);
			  segmentos: out STD_LOGIC_VECTOR (7 downto 0);
			  segmentos1: out STD_LOGIC_VECTOR (7 downto 0);
			  segmentos2: out STD_LOGIC_VECTOR (7 downto 0);
			  segmentos3: out STD_LOGIC_VECTOR (7 downto 0));
	 end component;
begin

	 M : MUX7SEG port map(clk,anodos,segmentos,sevseg1,sevseg2,sevseg3,sevseg4);
    
    siete_seg: process(clk)
	     variable siete_seg_cuenta: integer range 0 to 3 := 0 ;
    begin
        if rising_edge(clk) then
		  
            if siete_seg_cuenta = 0 then
                digito <= sal_unid;
                anodos <= "0111";
            elsif siete_seg_cuenta = 1 then
                digito <= sal_dece;
                anodos <= "1011";
				else
					digito <= sal_cent;
					anodos <= "1101";
            end if;
            siete_seg_cuenta := siete_seg_cuenta +1;
        end if;
    end process;
	 
	 
	 binaryDataP:process(sal_unid,sal_dece,sal_cent)
		variable suma : integer := 0;
	 begin
	 
		suma := to_integer(sal_unid) + 10* to_integer(sal_dece) +  100* to_integer(sal_cent);
		binaryCent <= std_logic_vector(to_unsigned(suma,binaryCent'length));
	 end process;
	 
	 
    Trigger:process(clk,inicio)
    begin
        if rising_edge(clk) and inicio='1' then
            if espera = '0' then
                if cuenta = 500 then
                    sensor_disp <= '0';
                    espera <= '1';
                    cuenta <= (others => '0');
                else
                    sensor_disp <= '1';
                    cuenta <= cuenta+1;
                end if;
					 
            elsif eco_pasado = '0' and eco_sinc = '1' then
                cuenta <= (others => '0');
                centimetros <= (others => '0');
                centimetros_unid <= (others => '0');
                centimetros_dece <= (others => '0');
					 centimetros_cent <= (others => '0');
            elsif eco_pasado = '1' and eco_sinc = '0' then
                sal_unid <= centimetros_unid;
                sal_dece <= centimetros_dece;
					 sal_cent <= centimetros_cent;
            elsif cuenta = 2900-1 then
                if centimetros_unid = 9 then
                    centimetros_unid <= (others => '0');
                    centimetros_dece <= centimetros_dece + 1;
                elsif centimetros_dece = 9 then
						centimetros_unid <= (others => '0');
						centimetros_dece <= (others => '0');
						centimetros_cent <= centimetros_cent + 1;
					 else
                    centimetros_unid <= centimetros_unid + 1;
                end if;
                centimetros <= centimetros + 1;
                cuenta<= (others => '0');
                if centimetros = 3448 then
                    espera <= '0';
                end if;
            else
                cuenta <= cuenta + 1;
            end if;
            eco_pasado<= eco_sinc;
            eco_sinc <= eco_nsinc;
            eco_nsinc <= sensor_eco;
        end if;
    end process;
    Decodificador: process (digito)
    begin
        if digito=X"0" then segmentos <= "00000010"; -- G F E D C B A dp
        elsif digito=X"1" then segmentos <= "10011110";
        elsif digito=X"2" then segmentos <= "00100100";
        elsif digito=X"3" then segmentos <= "00001100";
        elsif digito=X"4" then segmentos <= "10011000";
        elsif digito=X"5" then segmentos <= "01001000";
        elsif digito=X"6" then segmentos <= "01000000";
        elsif digito=X"7" then segmentos <= "00011110";
        elsif digito=X"8" then segmentos <= "00000000";
        elsif digito=X"9" then segmentos <= "00001000";
        elsif digito=X"a" then segmentos <= "00000100";
        elsif digito=X"b" then segmentos <= "11000000";
        elsif digito=X"c" then segmentos <= "01100010";
        elsif digito=X"d" then segmentos <= "10000100";
        elsif digito=X"e" then segmentos <= "01100000";
        else
            segmentos<= "01110000";
        end if;
    end process;
end Behavioral;