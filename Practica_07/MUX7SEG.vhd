library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX7SEG is
    Port (clk: in STD_LOGIC;
		  selector : in STD_LOGIC_VECTOR (3 downto 0);
		  entrada: in STD_LOGIC_VECTOR (7 downto 0);
        segmentos: out STD_LOGIC_VECTOR (7 downto 0);
		  segmentos1: out STD_LOGIC_VECTOR (7 downto 0);
		  segmentos2: out STD_LOGIC_VECTOR (7 downto 0);
        segmentos3: out STD_LOGIC_VECTOR (7 downto 0));
end MUX7SEG;

architecture Behavioral of MUX7SEG is
	begin 
		process (clk,selector)
		begin
			if rising_edge(clk) then
				if selector = "1110" then
					segmentos3 <= entrada; 
				elsif selector = "1101" then
					segmentos2 <= entrada; 
				elsif selector = "1011" then
					segmentos1 <= entrada; 
				elsif selector = "0111" then
					segmentos <= entrada;
				end if;
			end if;
		end process;
end Behavioral;
