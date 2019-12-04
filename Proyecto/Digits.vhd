-- Quartus Prime VHDL Template
-- Four-State Mealy State Machine

-- A Mealy machine has outputs that depend on both the state and
-- the inputs.	When the inputs change, the outputs are updated
-- immediately, without waiting for a clock edge.  The outputs
-- can be written more than once per state or per clock cycle.

library ieee;
use ieee.std_logic_1164.all;

entity Digits is

	port
	(
		-- Entradas
		clk		 : in	std_logic;								 -- Reloj Para controlar lo saltos de estados
		is_digit  : in std_logic;								 -- El digito entrante es un digito	(0-9)
		is_oper   : in std_logic;                        -- El digito entrante es una operacion (*,#)
		--is_ready  : in std_logic;								 -- Si los datos es para indicar que inicie el proceso (D)
		
		digits	 : in	std_logic_vector(3 downto 0);		 -- Datos de entrada del keypad
		--tipo 		 : in std_logic;								 -- Tipo de liquido
		reset	 : in	std_logic;									 -- Reset :)
		-- Salidas
		Sal0	 : out	std_logic_vector(3 downto 0);  -- Salida de los bits menos significativos (unidades)
		Sal1	 : out	std_logic_vector(3 downto 0);   -- Salida de bits (decenas)
		Sal2	 : out	std_logic_vector(3 downto 0);   -- Salida de bits (centenas)
		exception : out std_logic := '0'; 						 -- Bandera que se activa cuando la cantidad excede los 100
		debug 	 : out std_logic_vector(3 downto 0);
		save_o : out	std_logic   						 -- Bandera para indicar que se debe guardar
	);

end entity;

architecture rtl of Digits is

	-- Build an enumerated type for the state machine
	type state_type is (Idle, D1, D2, D3);

	-- Register to hold the current state
	signal state : state_type;
	
	signal is_zero1 : std_logic := '0';
	signal is_zero2 : std_logic := '0';
	
	signal unidades : std_logic_vector(3 downto 0); 
	signal decenas : std_logic_vector(3 downto 0);
	signal centenas : std_logic_vector(3 downto 0);
begin

	process (clk, reset)
	begin

		if reset = '1' then
			state <= Idle;

		elsif (rising_edge(clk)) then

			-- Determine the next state synchronously, based on
			-- the current state and the input
			case state is
				when Idle=>
					if is_digit = '1' then
						state <= D1;
					else
						state <= Idle;
					end if;
				when D1=>
					if is_digit = '1' then
						state <= D2;
					elsif is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							state <= Idle;
						else							 -- Si el digito es # entonces guardara.
							state <= Idle;
						end if;
					else								 -- Si no es ninguna opcion se queda en el estado.
						state <= D1;
					end if;
				when D2=>
					if is_digit = '1' then								-- Se verifica que la cantidad no exceda los 100 permitidos
						if digits = "0001" then
							if is_zero1 = '1' and is_zero1 = '1' then
								state <= D3;
							else
								state <= D2;
							end if;
						else
							state <= D2;					
						end if;
					elsif is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							state <= D1;
						else							 -- Si el digito es # entonces guardara.
							state <= Idle;
						end if;
					else								 -- Si no es ninguna opcion se queda en el estado.
						state <= D2;
					end if;
				when D3=>
					if is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							state <= D2;
						else							 -- Si el digito es # entonces guardara.
							state <= Idle;
						end if;
					else								 -- Si no es ninguna opcion se queda en el estado.
						state <= D3;
					end if;
			end case;

		end if;
	end process;

	-- Determine the output based only on the current state
	-- and the input (do not wait for a clock edge).
	process (state, is_digit,is_oper)
	begin
			case state is
				when Idle=>
					if is_digit = '1' then
						debug <= "0001";
						if digits = "0000" then
							is_zero1 <='1';
						end if;
						Sal0   <= digits;
						unidades <= digits;
						Sal1   <= "0000";
						Sal2   <= "0000";
						save_o <= '0';
					else
						Sal0   <= "0000";
						Sal1   <= "0000";
						Sal2   <= "0000";
						save_o <= '0';
					end if;
				when D1=>
					debug <= "0010";
					if is_digit = '1' then
						if digits = "0000" then
							is_zero2 <='1';
						end if;
						Sal0   <= digits; 
						Sal1   <= unidades;
						decenas <= unidades;
						Sal2   <= "0000";
						save_o <= '0';
					elsif is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							Sal0   <= "0000";
							Sal1   <= "0000";
							Sal2   <= "0000";
							save_o <= '0';
						else							 -- Si el digito es # entonces guardara.
							Sal1   <= "0000";
							Sal2   <= "0000";
							save_o <= '1';
						end if;
					else								 -- Si no es ninguna opcion se queda en el estado.
						Sal0   <= "0000";
						Sal1   <= "0000";
						Sal2   <= "0000";
						save_o <= '0';
					end if;
				when D2=>
					debug <= "0011";
					if is_digit = '1' then
						if digits = "0001" then
							if is_zero1 = '1' and is_zero1 = '1' then
								Sal2   <= decenas;
								Sal1	 <= unidades;
								Sal0   <= digits;
								save_o <= '0';
							else
								exception <= '1';
								save_o <= '0';
							end if;
						else
								exception <= '1';
								save_o <= '0';						
						end if;
					elsif is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							Sal1   <= "0000";
							Sal2   <= "0000";
							save_o <= '0';
						else							 -- Si el digito es # entonces guardara.
							Sal2   <= "0000";
							save_o <= '1';
						end if;
					else								 -- Si no es ninguna opcion se queda en el estado.
						Sal0   <= "0000";
						Sal1   <= "0000";
						Sal2   <= "0000";
						save_o <= '0';
					end if;
				when D3=>
					debug <= "1000";
					if is_oper = '1' then
						if digits = "1110" then  -- Si el digito es * regresa a un estado anterior.
							Sal2   <= "0000";
							save_o <= '0';
						else							 -- Si el digito es # entonces guardara.
							save_o <= '1';
						end if;
					else							 -- Si no es ninguna opcion se queda en el estado.
						save_o <= '0';
					end if;
			end case;
	end process;

end rtl;
