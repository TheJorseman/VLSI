--------   -----------------
--fila[3]   | 0 | 1 | 2 | 3 |
--------   -----------------
--fila[2]   | 4 | 5 | 6 | 7 |
--------   -----------------
--fila[1]   | 8 | 9 | A | B |
--------   -----------------
--fila[0]   | C | D | E | F |
--------   -----------------
--Columnas 0010 0100 1000 0001

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
	signal conectornum: integer := 0; 
	signal reloj: std_logic;

begin 
	
	relojp: process (clk50MHz) is
    begin
        if rising_edge(clk50MHz) then
            reloj <= not reloj;
        end if;
    end process relojp; -- 25mhz
	
	p_cont: process(reloj) is
		begin
        if rising_edge(reloj) then
            conectornum <= conectornum + 1;
				if conectornum = 3 then
					conectornum <= 0;
				end if;
        end if;
	end process;
	
	p1: process (reloj,fila) is
		begin
		if rising_edge(reloj) then
			dato <= '0';
			case conectornum is
				when 0 =>
					columna <= "0010";
					if fila = "1000" then
						dato <= '1';
						data <= "0001"; -- 1
					elsif fila = "0100" then
						dato <= '1';
						data <= "0100";  -- 4 
					elsif fila = "0010" then
						dato <= '1';
						data <= "0111";  -- 7
					elsif fila = "0001" then
						dato <= '1';
						data <= "1110";  -- E(*)
					end if;
				when 1 =>
					columna <= "0100";
					if fila = "1000" then
						dato <= '1';
						data <= "0010";  -- 2
					elsif fila = "0100" then
						dato <= '1';
						data <= "0101";  -- 5
					elsif fila = "0010" then
						dato <= '1';
						data <= "1000";  -- 8
					elsif fila = "0001" then
						dato <= '1';
						data <= "0000";  -- 0
					end if;
				when 2 =>
					columna <= "1000";
					if fila = "1000" then
						dato <= '1';
						data <= "0011";  -- 3
					elsif fila = "0100" then
						dato <= '1';
						data <= "0110";  -- 6
					elsif fila = "0010" then
						dato <= '1';
						data <= "1001";  -- 9
					elsif fila = "0001" then
						dato <= '1';
						data <= "1111";  -- F(#)
					end if;
				when 3 =>
					columna <= "0001";
					if fila = "1000" then
						dato <= '1';
						data <= "1010";  -- A
					elsif fila = "0100" then
						dato <= '1';
						data <= "1011";  -- B
					elsif fila = "0010" then
						dato <= '1';
						data <= "1100";  -- C
					elsif fila = "0001" then
						dato <= '1';
						data <= "1101";  --D
					end if;
				when others =>
					columna <= "1100";
			end case;
		end if;
		end process p1;
end behavioral;