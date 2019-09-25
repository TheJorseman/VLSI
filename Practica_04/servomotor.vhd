library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
 
entity Servomotor is     
Port ( clk : in  STD_LOGIC;            
Pini : in  STD_LOGIC;            
Pfin : in  STD_LOGIC;            
Inc : in  STD_LOGIC;            
Dec : in  STD_LOGIC;            
control : out  STD_LOGIC); 
end Servomotor; 
 
architecture Behavioral of Servomotor is  
  
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
	signal ancho : STD_LOGIC_VECTOR (15 downto 0) := X"0CCD"; 
	begin    
	U1: divisor port map (clk, reloj);    
	U2: PWM port map (reloj, ancho, control); 
	 
	   process (reloj, Pini, Pfin, Inc, Dec)       
		   variable valor : STD_LOGIC_VECTOR (15 downto 0) := X"0CCD";      
		   variable cuenta : integer range 0 to 1023 := 0;    
	   begin       
		   if reloj='1' and reloj'event then          
			   if cuenta>0 then             
				   cuenta := cuenta -1;          
			   else             
				   if Pini='1' then                
					valor := X"0CCD";          
				   elsif Pfin='1' then                
					valor := X"199A";             
				   elsif Inc='0' and valor<X"199A" then           
					valor := valor + 1;             
				   elsif Dec='0' and valor>X"0CCD" then                 
					valor := valor - 1;             
				   end if;             
				   cuenta := 1023;             
				   ancho <= valor;          
			   end if;       
		   end if;    
	   end process; 
   end Behavioral;
