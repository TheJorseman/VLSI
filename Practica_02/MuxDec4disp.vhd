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
		D0	 : in std_logic_vector  (6 downto 0);
		D1	 : in std_logic_vector  (6 downto 0);
		D2	 : in std_logic_vector  (6 downto 0);
		D3	 : in std_logic_vector  (6 downto 0);
		
		A   : out std_logic_vector (3 downto 0);
		L   : out std_logic_vector (6 downto 0) );
end MuxDec4Disp;

architecture Behavioral of MuxDec4Disp is

signal Qs: std_logic_vector(3 downto 0);
signal Qr: std_logic_vector(1 downto 0);
signal segundo: std_logic;
begin

 divisor : process (clk)
	variable CUENTA: STD_LOGIC_VECTOR(27 downto 0) := X"0000000";
 begin
	 if rising_edge (clk) then
		 if CUENTA =X"48009E0" then
			CUENTA := X"0000000";
		 else
			CUENTA:= CUENTA +1;
		end if;
	 end if;
	 segundo <= CUENTA(10);
 end process;

	Contador: process (segundo)
		variable CUENTA: STD_LOGIC_VECTOR(1 downto 0) := "00";
 begin
	 if rising_edge (segundo) then
		CUENTA := CUENTA +1;
	 end if;
	 Qr <= CUENTA;
	 end process;
	 
	
	MUXY: PROCESS (Qr)
	BEGIN
		 if Qr = "00" then
			L<= D0;
			A <= "1110"; 
		 elsif Qr = "01" then
			L<= D1;
			A <= "1101"; 
		 elsif Qr = "10" then
			L<= D2;
			A <= "1011"; 
		 elsif Qr = "11" then
			L<= D3;
			A <= "0111"; 
		 end if;
	 end process;

end Behavioral;