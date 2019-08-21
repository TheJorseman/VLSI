----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:05:12 08/19/2019 
-- Design Name: 
-- Module Name:    P2 - Behavioral 
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
entity corri is
 Port ( reloj : in std_logic;
		  selector : in std_logic;
 display1, display2, display3, display4, display5, display6,
 display7, display8 : buffer std_logic_vector (6 downto 0));
end corri;

architecture Behavioral of corri is
 signal segundo : std_logic;
 signal Q : std_logic_vector(3 downto 0):="0000";
 signal displayn : std_logic_vector (6 downto 0);
 signal displayd : std_logic_vector (6 downto 0);
 
begin
 divisor : process (reloj)
 variable CUENTA: std_logic_vector(27 downto 0) := X"0000000";
 begin
 if rising_edge (reloj) then
	if CUENTA =X"48009E0" then
		cuenta := X"0000000";
	else
		cuenta := cuenta+1;
	end if;
 end if;
 segundo <=CUENTA(22);
end process;
 
 contador : process (segundo)
begin
 if rising_edge (segundo) then
	Q <= Q +1;
 end if;
end process;

	with Q select
	 displayn <= "0110000" when "0000", -- 3
	 "1111001" when "0001", -- 1
	 "0011001" when "0010", -- 4
	 "1111001" when "0011", -- 1
	 "0110000" when "0100", -- 3
	 "0000000" when "0101", -- 8
	 "1111001" when "0110", -- 1
	 "1111001" when "0111", -- 1
	 "1000000" when "1000", -- 0
	 "1111111" when others; -- espacios


	 with Q select
	 displayd <= "0000110" when "0000", -- E
	 "0101011" when "0001", -- n
	 "1111111" when "0010", -- espacio
	 "1000111" when "0011", -- L
	 "0001000" when "0100", -- A
	 "1111111" when "0101", -- espacio
	 "1000000" when "0110", -- O
	 "1000111" when "0111", -- L
	 "0001000" when "1000", -- A
	 "1111111" when others; -- espacios
	 
 FF0 : process (selector,displayn,displayd)
 begin
	if selector = '1' then
		display1 <= displayn;
	else
	   display1 <= displayd;
	end if;
 end process;
 
 FF1 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display2 <= display1;
	 end if;
 end process;
 
 FF2 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display3 <= display2;
	 end if;
 end process;
 
 FF3 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display4 <= display3;
	 end if;
 end process;
 
 FF4 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display5 <= display4;
	 end if;
 end process;
 
 FF5 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display6 <= display5;
	 end if;
 end process;
 
 FF6 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display7 <= display6;
	 end if;
 end process;
 
 FF7 : process (segundo)
 begin
	 if rising_edge (segundo) then
		display8 <= display7;
	 end if;
 end process;
end Behavioral;