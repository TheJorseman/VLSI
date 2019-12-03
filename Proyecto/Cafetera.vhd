--Aqui va el codigo de la cafetera :)

library ieee;
use ieee.std_logic_1164.all;

entity Cafetera is
	Port(
		fila	: in std_logic_vector(3 downto 0);
		clk50MHz: in std_logic;
		columna : out std_logic_vector (3 downto 0);
		start: in std_logic;
		f1: in std_logic;
		f2: in std_logic;
		siete_seg_u : out std_logic_vector (6 downto 0);
		siete_seg_d : out std_logic_vector (6 downto 0);
		siete_seg_c : out std_logic_vector (6 downto 0);
		siete_seg_t : out std_logic_vector (6 downto 0); --tipo
		reset: in std_logic;
		data: out std_logic_vector (3 downto 0);
		debug_d : out std_logic_vector(3 downto 0);
		bomba_1: out std_logic;
		bomba_2: out std_logic
	);
end entity;

architecture behavioral of Cafetera is
	-- Teclado Matricial
	signal dato: std_logic := '0';
	signal is_digit  : std_logic;
	signal is_oper   : std_logic;
	signal is_ready  : std_logic;
	signal data_t  : std_logic_vector (3 downto 0);

	component Teclado is
		Port( fila	: in std_logic_vector(3 downto 0);
			clk50MHz: in std_logic;
			data	: out std_logic_vector (3 downto 0);
			dato	: buffer std_logic := '0';
			columna : out std_logic_vector (3 downto 0);
			is_digit  : out std_logic;
			is_oper   : out std_logic;
			is_ready  : out std_logic);
	end component;

	-- Digits
	--signal reset_digits : std_logic;
	signal exception : std_logic;
	signal digits_output : std_logic;
	
	signal digits_out_1 : std_logic_vector(3 downto 0);
	signal digits_out_2 : std_logic_vector(3 downto 0);
	signal digits_out_3 : std_logic_vector(3 downto 0);

	component Digits is
		port
		(
			-- Entradas
			clk		 : in	std_logic;					
			is_digit  : in std_logic;			
			is_oper   : in std_logic;                      
			--is_ready  : in std_logic;					
			digits	 : in	std_logic_vector(3 downto 0);		 
			--tipo 		 : in std_logic;						
			reset	 : in	std_logic;
			Sal0	 : out	std_logic_vector(3 downto 0);  
			Sal1	 : out	std_logic_vector(3 downto 0);  
			Sal2	 : out	std_logic_vector(3 downto 0);   
			exception : out std_logic := '0'; 
			debug : out std_logic_vector(3 downto 0);
			save_o : out	std_logic   						 
		);
	end component;

begin
	T : Teclado port map (fila,clk50MHz,data_t,dato,columna,is_digit,is_oper,is_ready);
	D : Digits port map	(dato, is_digit, is_oper, data_t, reset,digits_out_1,digits_out_2, digits_out_3, exception, debug_d ,digits_output);
	data <= data_t;
	-- 7 Segmentos Unidades
	with digits_out_1 SELECT
	siete_seg_u <= "1000000" when "0000", --0
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

	with digits_out_2 SELECT
	siete_seg_d <= "1000000" when "0000", --0
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

	with digits_out_3 SELECT
	siete_seg_c <= "1000000" when "0000", --0
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


end behavioral; 