--------   -----------------
--fila 0   | 0 | 1 | 2 | 3 |
--------   -----------------
--fila 1   | 4 | 5 | 6 | 7 |
--------   -----------------
--fila 2   | 8 | 9 | A | B |
--------   -----------------
--fila 3   | C | D | E | F |
--------   -----------------
--Columnas 1000 0100 0010 0001

library ieee;
use ieee.std_logic_1164.all;

entity Teclado is
	port (
		fila	: in std_logic_vector(3 downto 0);
		clk50MHz: in std_logic;
		data	: out std_logic_vector (3 downto 0);
		dato	: out std_logic := '0';
		columna : out std_logic_vector (3 downto 0);
		is_digit  : out std_logic;
		is_oper   : out std_logic;
		is_ready  : out std_logic
		); 
end Teclado;

architecture behavioral of Teclado is
	constant cero: std_logic_vector(3 downto 0):="1000"; 
	constant uno: std_logic_vector(3 downto 0):="0100";
	constant dos: std_logic_vector(3 downto 0):="0010";
	constant tres: std_logic_vector(3 downto 0):="0001";
	signal conectornum:std_logic_vector(3 downto 0); 
	signal reloj: std_logic;

begin 
	
	relojp: process (clk50MHz) is
    begin
        if rising_edge(clk50MHz) then
            reloj <= not reloj;
        end if;
    end process relojp; -- 25mhz
	
	with fila select conectornum <= --decodificador para los números
	 "1000" when "0000",
	 "0100" when "0001",
	 "0010" when "0010",
	 "0001" when "0011",
	 "0000" when others;
	
	p1: process (reloj) is
		begin
		if rising_edge(reloj) then
			case conectornum is
				when cero =>
					columna <= "1000";
					if fila = "1000" then
						dato <= '1';
						data <= "0100"; -- 4
					elsif fila = "0100" then
						dato <= '1';
						data <= "1000";  -- 8 
					elsif fila = "0010" then
						dato <= '1';
						data <= "1100";  -- C
					elsif fila = "0001" then
						dato <= '1';
						data <= "0000";  -- 0
					end if;
				when uno =>
					columna <= "0100";
					if fila = "1000" then
						dato <= '1';
						data <= "0011";  -- 3
					elsif fila = "0100" then
						dato <= '1';
						data <= "0111";  -- 7
					elsif fila = "0010" then
						dato <= '1';
						data <= "1011";  -- 11
					elsif fila = "0001" then
						dato <= '1';
						data <= "1111";  -- 15
					end if;
				when dos =>
					columna <= "0010";
					if fila = "1000" then
						dato <= '1';
						data <= "0010";  -- 2
					elsif fila = "0100" then
						dato <= '1';
						data <= "0110";  -- 6
					elsif fila = "0010" then
						dato <= '1';
						data <= "1010";  -- 10
					elsif fila = "0001" then
						dato <= '1';
						data <= "1110";  -- E
					end if;
				when tres =>
					columna <= "0001";
					if fila = "1000" then
						dato <= '1';
						data <= "0001";  -- 1
					elsif fila = "0100" then
						dato <= '1';
						data <= "0101";  -- 5
					elsif fila = "0010" then
						dato <= '1';
						data <= "1001";  -- 9
					elsif fila = "0001" then
						dato <= '1';
						data <= "1101";  --D
					end if;
				when others =>
					columna <= "1000";
			end case;
		end if;
		end process p1;
end behavioral;