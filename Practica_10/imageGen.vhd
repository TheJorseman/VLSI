library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity imageGen is 
	port ( 
				 columna: in std_logic_vector (9 downto 0);
				 fila : in std_logic_vector (9 downto 0);
				 
				 display_ena : in std_logic;
				 
             red: out std_logic_vector (3 downto 0);
             green: out std_logic_vector (3 downto 0);
             blue: out std_logic_vector (3 downto 0));
				 
end entity imageGen;

architecture behavioral OF imageGen IS
	signal column : INTEGER;
	signal row : INTEGER;
begin 

generador_imagen: PROCESS(display_ena, row, column)
    BEGIN
        IF(display_ena = '1') THEN
		  
				column <= to_integer(unsigned(columna));
				row <= to_integer(unsigned(fila));		  
		  
            if ((row > 300 and row <350) and (column>350 and column<400)) THEN
                red <= (OTHERS => '1');
                green<=(OTHERS => '0');
                blue<=(OTHERS => '0');
            elsif ((row > 300 and row <350) and (column>450 and column<500)) THEN
                red <= (OTHERS => '0');
                green<=(OTHERS => '1');
                blue<=(OTHERS => '0');
            elsif ((row > 300 and row <350) and (column>550 and column<600)) THEN
                red <= (OTHERS => '0');
                green<=(OTHERS => '0');
                blue<=(OTHERS => '1');
            else
                red <= (OTHERS => '0');
                green <= (OTHERS => '0');
                blue <= (OTHERS => '0');
            end if;
        ELSE
            red<= (OTHERS => '0');
            green <= (OTHERS => '0');
            blue<= (OTHERS => '0');
        END IF;
END PROCESS generador_imagen;

end architecture behavioral;