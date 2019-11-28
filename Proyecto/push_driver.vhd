library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity push_driver is
	port(
		start : in std_logic;
		fav1   : in std_logic;
		fav2   : in std_logic;
		
		is_ram : in std_logic;
		is_rom : in std_logic;

		data_m   : out std_logic_vector(6 downto 0);
		address  : out natural;
		we_rom	: out std_logic
	);
end push_driver;

architecture Behavioral of push_driver is

component bcd_to_bin is


begin

	process(start,fav1,fav2,bcd_ready) 
		begin
			-- Maneja Favoritos
			if is_ram = '1' then
				--Si ya hubo digitos y se guardaron en ram y se presiona algun favorito entonces guarda en rom.
				if fav1 = '1' then
					we_rom <= '1';
					address <= 1;
				elsif fav2 = '1' then
					we_rom <= '1';
					address <= 1;			
				end if;
				
				
			else
			
			end if;
		
		
	end process;	

end Behavioral;