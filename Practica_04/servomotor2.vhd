library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
 
entity Servomotor2 is     
Port ( clk : in  STD_LOGIC;                       
		control : out  STD_LOGIC);
		
end Servomotor2; 
 
architecture Behavioral of Servomotor2 is  
  
	component divisor is       
		Port ( clk : in std_logic;              
		div_clk : out std_logic);    
	end component;  
	
	component PWM is       
		Port ( Reloj : in  STD_LOGIC;                  
		D : in  STD_LOGIC_VECTOR (15 downto 0);                  
		S : out  STD_LOGIC);    
	end component;   
	
	signal reloj : STD_LOGIC;    
	signal ancho : STD_LOGIC_VECTOR (15 downto 0) := X"1999"; 
	begin    
	U1: divisor port map (clk, reloj);    
	U2: PWM port map (reloj, ancho, control); 
	 
	   process (reloj)       
			variable posicion: integer:=50;
			variable valor : integer;
		   variable cuenta : integer range 0 to 1023 := 0; 
		   variable valor_vect:STD_LOGIC_VECTOR(15 downto 0);
	   begin       
		   if reloj='1' and reloj'event then          
    
				valor := (6553-3277)/(100*posicion+3277);
				cuenta := 1023;  
				valor_vect := conv_std_logic_vector(valor,16);
				ancho <= valor_vect;          
			         
		   end if;    
	   end process; 
   end Behavioral;
