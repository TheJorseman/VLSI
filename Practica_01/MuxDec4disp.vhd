----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:39:41 08/14/2019 
-- Design Name: 
-- Module Name:    MuxDec4Disp - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MuxDec4Disp is
PORT(
		CLK : in std_logic;
		D0	 : in std_logic_vector  (3 downto 0);
		D1	 : in std_logic_vector  (3 downto 0);
		D2	 : in std_logic_vector  (3 downto 0);
		D3	 : in std_logic_vector  (3 downto 0);
		
		A   : out std_logic_vector (3 downto 0);
		L   : out std_logic_vector (6 downto 0) );
end MuxDec4Disp;

architecture Behavioral of MuxDec4Disp is
--Señales Auxiliares para realizar el recorrido 
signal Qs: std_logic_vector(3 downto 0);
signal Qr: std_logic_vector(1 downto 0);

begin
	Contador: process
		variable CUENTA: STD_LOGIC_VECTOR(1 downto 0) := "00";
 begin
	 if rising_edge (clk) then
		CUENTA := CUENTA +1;
	 end if;
		Qr <= CUENTA;
	 end process;
	 
	-- Código principal del Multiplexor 
	MUXY: PROCESS (Qr)
	BEGIN
		-- Añadimos en cada "estado" que Dn por transitividad vaya a la salida L
		-- Pasamos la entrada Dn a Qs para que ésta variable sea despues codificada a 7 segmentos.
		 -- Ademas hacemos que dependiendo del estado en el que se encuentre se habilitará ese display 
		-- con la forma de los habilitadores de la tarjeta (en este caso usando lógica negada) 
		 if Qr = "00" then
			Qs<= D0;
			A <= "1110"; 
		 elsif Qr = "01" then
			Qs<= D1;
			A <= "1101"; 
		 elsif Qr = "10" then
			Qs<= D2;
			A <= "1011"; 
		 elsif Qr = "11" then
			Qs<= D3;
			A <= "0111"; 
		 end if;
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

