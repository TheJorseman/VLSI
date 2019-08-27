----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:08 08/13/2019 
-- Design Name: 
-- Module Name:    MuxDec4disp - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
entity reldig is
Port ( reloj : in std_logic;
 AN : out std_logic_vector (3 downto 0);
 L : out std_logic_vector (6 downto 0));
end reldig;

architecture behavioral of reldig is
 signal segundo : std_logic;
 signal rapido: std_logic;
 signal n : std_logic;
 signal Qs: std_logic_vector(3 downto 0);
 signal Qum: std_logic_vector(3 downto 0);
 signal Qdm: std_logic_vector(3 downto 0);
 signal e : std_logic;
 signal Qr: std_logic_vector(1 downto 0);
 signal Quh: std_logic_vector(3 downto 0);
 signal Qdh: std_logic_vector(3 downto 0);
 signal z : std_logic;
 signal u : std_logic;
 signal d : std_logic;
 signal reset : std_logic;
 signal parpadeo : std_logic;
begin
 divisor : process (reloj,parpadeo)
	variable CUENTA: STD_LOGIC_VECTOR(27 downto 0) := X"0000000";
 begin
	 if rising_edge (reloj) then
		 if CUENTA =X"48009E0" then
			CUENTA := X"0000000";
		 else
				-- El valor se obtuvo de una "regla de 3" al tener el valor de reset como el dia y 
				-- Asi dividirlo para obtener un porcentaje de ese dia.
				if CUENTA = X"4009E0" then
					parpadeo <=  "1";
				else
					CUENTA := CUENTA +1;
				end if;
		end if;
	 end if;
	 segundo <= CUENTA(22);
	 rapido <= CUENTA(10);
 end process;
 
 -- Código no probado de parpadeo que si parpadeo esta en alto por cada flanco de reloj va a hacer que el selector
 -- los displays de 7 segmentos 
 alarma : process (parpadeo,segundo)
 begin
	if parpadeo='1' then
		if rising_edge(segundo) then
			AN<= "1111";
		end if;
	end if;
 end process;
 
 
	UNIDADES: process (segundo)
		variable CUENTA: STD_LOGIC_VECTOR(3 downto 0) := "0000";
 begin
	 if rising_edge (segundo) then
		if CUENTA ="1001" then
			CUENTA :="0000";
			N <= '1';
		else
			CUENTA := CUENTA +1;
			N <= '0';
		end if;
	 end if;
	 Qum <= CUENTA;
 end process;
 
	DECENAS: process (N)
		variable CUENTA: STD_LOGIC_VECTOR(3 downto 0) := "0000";
 begin
	 if rising_edge (N) then
		if CUENTA ="0101" then
			CUENTA :="0000";
			E <= '1';
		else
			CUENTA := CUENTA +1;
			E <= '0';
		end if;
	 end if;
	 Qdm <= CUENTA;
 end process;
 
	HoraU: Process(E,reset)
		variable cuenta: std_logic_vector(3 downto 0):="0000";
 begin
	 if rising_edge(E) then
		 if cuenta="1001" then
			 cuenta:= "0000";
			 Z<='1';
		 else
			 cuenta:=cuenta+1;
			 Z<='0';
		 end if;
	 end if;
	 if reset='1' then
		cuenta:="0000";
	 end if;
	 Quh<=cuenta;
	 U<=cuenta(2);
 end Process;
 
	HORAD: Process(Z, reset)
		variable cuenta: std_logic_vector(3 downto 0):="0000";
 begin
	 if rising_edge(Z) then
		 if cuenta="0010" then
			cuenta:= "0000";
		 else
			cuenta:=cuenta+1;
		 end if;
	 end if;
	 if reset='1' then
		cuenta:="0000";
	end if;
	Qdh<=cuenta;
	D <=cuenta(1);
 end Process;
 
 inicia: process (U,D)

begin
	reset <= (U and D);
 end process;
 
	CONTRAPID: process (rapido)
		variable CUENTA: STD_LOGIC_VECTOR(1 downto 0) := "00";
 begin
	 if rising_edge (rapido) then
		CUENTA := CUENTA +1;
	 end if;
		Qr <= CUENTA;
	 end process;
	 
MUXY: PROCESS (Qr)
BEGIN
	 if Qr = "00" then
		Qs<= Qum;
	 elsif Qr = "01" then
		Qs<= Qdm;
	 elsif Qr = "10" then
		Qs<= Quh;
	 elsif Qr = "11" then
		Qs<= Qdh;
	 end if;
 end process;
 
 seledisplay: process (Qr,parpadeo)
 BEGIN
	 case Qr is
	 when "00" =>
		AN<= "1110";
	 when "01" =>
		AN<= "1101";
	 when "10" =>
		AN<= "1011";
	 when others =>
		AN<= "0111";
	 end case;
end process;

	 with Qs SELECT
	 L <= "1000000" when "0000", --0
	 "1111001" when "0001", --1
	 "0100100" when "0010", --2
	 "0110000" when "0011", --3
	 "0011001" when "0100", --4
	 "0010010" when "0101", --5
	 "0000010" when "0110", --6
	 "1111000" when "0111", --7
	 "0000000" when "1000", --8
	 "0010000" when "1001", --9
	 "1000000" when others; --F
end Behavioral;