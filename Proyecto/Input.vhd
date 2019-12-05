library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Input is
	port( 
		clk: in std_logic;
		RX_WIRE : IN STD_LOGIC;
		--debug 	 : out std_logic_vector(3 downto 0); 
		--start  :  out std_logic;
		data	: out std_logic_vector (3 downto 0);
		dato	: out std_logic := '0';
		is_digit  : out std_logic;
		is_oper   : out std_logic;
		tipo		 : out integer := 0;
		favorito  : out integer := 0
	);
end entity;

architecture behavioral OF Input IS

component RX is
	port( Clk : IN STD_LOGIC;
	baud: in STD_LOGIC_VECTOR(2 downto 0);
	bandera: INOUT STD_LOGIC := '0';
	LEDS : OUT STD_LOGIC_VECTOR(7 downto 0);
 	RX_WIRE : IN STD_LOGIC);
end component;

component Divisor is
	Generic ( N : integer := 24);
	Port ( clk : in std_logic;
	div_clk : out std_logic);
end component;

signal data_rx : STD_LOGIC_VECTOR(7 downto 0);
signal bandera : STD_LOGIC;
--signal leds_sal : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
signal baud: STD_LOGIC_VECTOR(2 downto 0) := "011";
signal clk_div : STD_LOGIC;
signal start_s : std_logic := '0';
begin
	Receptor: RX port map(clk,baud,bandera,data_rx,RX_WIRE);

	R1: divisor generic map (21) port map (clk, clk_div);
	
	dato <= bandera;
	asignacion: process(bandera,data_rx, clk , clk_div)
		begin
			
			if(rising_edge(clk_div)) then
				case data_rx is
					when X"30" => -- 0
						--dato <= '1';
						is_digit <= '1';
						data <= "0000";
					when X"31" => -- 1
						--dato <= '1';
						is_digit <= '1';
						data <= "0001";
					when X"32" => -- 2
						--dato <= '1';
						is_digit <= '1';
						data <= "0010";
					when X"33" => -- 3
						--dato <= '1';
						is_digit <= '1';
						data <= "0011";
					when X"34" => -- 4
						--dato <= '1';
						is_digit <= '1';
						data <= "0100";
					when X"35" => -- 5
						--dato <= '1';
						is_digit <= '1';
						data <= "0101";
					when X"36" => -- 6
						--dato <= '1';
						is_digit <= '1';
						data <= "0110";
					when X"37" => -- 7
						--dato <= '1';
						is_digit <= '1';
						data <= "0111";
					when X"38" => -- 8
						--dato <= '1';
						is_digit <= '1';
						data <= "1000";
					when X"39" => -- 9
						--dato <= '1';
						is_digit <= '1';
						data <= "1001";
					when X"67" => -- g
						--dato <= '1';
						is_oper <= '1';
						data <= "1100";
					when X"72" => -- r
						--dato <= '1';
						is_oper <= '1';
						data <= "1101";
					when X"64" => -- d (f1)
						favorito <= 1;
						--dato <= '0';
						is_digit <= '0';
						is_oper <= '0';
					when X"66" => -- f (f2)
						favorito <= 2;
						--dato <= '0';
						is_digit <= '0';
						is_oper <= '0';
					when X"61" => -- a
						tipo <= 1;
						--dato <= '0';
						is_digit <= '0';
						is_oper <= '0';
					when X"62" => -- b
						tipo <= 2;
						--dato <= '0';
						is_digit <= '0';
						is_oper <= '0';
					when others =>
						--data_rx <= X"00";
						data <= "1111";
						--dato <= '0';
						is_digit <= '0';
						is_oper <= '0';
				end case;
			end if;
			
	end process;	
	
		
end architecture behavioral;	



