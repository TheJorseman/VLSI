library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Acelerometro is
    Port ( clk: in STD_LOGIC;
        scl: inout STD_LOGIC;
        sda: inout STD_LOGIC;
        leds: out STD_LOGIC_VECTOR(9 downto 0);
        error: out STD_LOGIC;
        reset: in STD_LOGIC);
end Acelerometro;

architecture Behavioral of Acelerometro is
    component i2c_master IS
		  GENERIC(
				input_clk : INTEGER; --input clock speed from user logic in Hz
				bus_clk   : INTEGER);
        PORT(
            clk : IN STD_LOGIC; --system clock
            resetn : IN STD_LOGIC; --active low reset
            ena : IN STD_LOGIC; --latch in command
            addr : IN STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
            rw : IN STD_LOGIC; --'O' is write, '1' is read
            data_wr : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
            busy : OUT STD_LOGIC;--indicates transaction in progress
            data_rd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
            ack_error : BUFFER STD_LOGIC; --flag if improper acknowledge from slave
            sda : INOUT STD_LOGIC; --serial data output of i2c bus
            scl : INOUT STD_LOGIC); --serial clock output of 12c bus
    end component i2c_master;

    component Divisor is
		  Generic ( N : integer);
        Port ( clk : in std_logic;
            div_clk : out std_logic);
    end component Divisor;

constant adx1345: std_logic_vector(6 downto 0) := "1010011"; -- 0X53
constant reg_dataX0 : std_logic_vector(7 downto 0) := X"32";
constant reg_PwrCtrl: std_logic_vector(7 downto 0) := X"2D";
signal AX : std_logic_vector(15 downto 0);

signal i2c_reset_n: std_logic;
signal i2c_ena: std_logic;
signal i2c_addr: std_logic_vector(6 downto 0);
signal i2c_rw: std_logic;
signal i2c_data_wr: std_logic_vector(7 downto 0);
signal i2c_busy: std_logic;
signal i2c_data_rd: std_logic_vector(7 downto 0);
signal i2c_ack_error: STD_LOGIC;
signal clk_muestra: std_logic;
signal busy_prev: std_logic;
signal muestra_prev: std_logic;


-- Señales para la maquina de estados
    type estados is (inicia, lee, espera);
    signal edo_actual, edo_sig : estados;

begin
    U1: i2c_master generic map (50_000_000,400_000) port map (clk, i2c_reset_n, i2c_ena, i2c_addr, i2c_rw, i2c_data_wr, i2c_busy, i2c_data_rd,i2c_ack_error, sda, scl);
    U2: Divisor generic map (24) port map (clk, clk_muestra);
    
    i2c_reset_n <= '1';
    --Proceso para sincronizacion de estados
    process (clk)
    begin
        if (clk'event and clk = '1') then
            if (reset = '1') then
                edo_actual <= inicia;
            else
                edo_actual <= edo_sig;
            end if;
        end if;
    end process;
        
    -- Proceso para la decodificacion de estados
    process (edo_actual, clk_muestra, i2c_busy, i2c_data_rd)
        variable busy_cnt: integer range 0 to 15 := 0;
    begin
        edo_sig <= edo_actual;
        case (edo_actual) is
            when inicia =>
                busy_prev <= i2c_busy; --
                IF (busy_prev = '0' AND i2c_busy = '1') THEN --
                    busy_cnt := busy_cnt + 1; --
                END IF;
                CASE busy_cnt IS --
                    WHEN 0 => --
                        i2c_ena <= '1';
                        i2c_addr <= adx1345;
                        i2c_rw <= '0';
                        i2c_data_wr <= reg_PwrCtrl;
                    WHEN 1 => --
                        i2c_data_wr <= X"08";
                        i2c_ena <= '1';
                        i2c_addr <= adx1345;
                        i2c_rw <= '0';
                    WHEN 2 => --
                        i2c_ena <= '0';
                        IF(i2c_busy = '0') THEN
                            busy_cnt := 0;
                            edo_sig <= espera;
                        END IF;
                        i2c_addr <= adx1345;
                        i2c_rw <= '0';
                        i2c_data_wr <= X"08";
                    WHEN OTHERS =>
                        busy_cnt := 0;
                        i2c_ena <= '0';
                        i2c_addr <= (others => '0');
                        i2c_rw <= '0';
                        i2c_data_wr <= (others => '0');
                END CASE;

            when lee =>
                busy_prev <= i2c_busy; --
                IF(busy_prev = '0' AND i2c_busy = '1') THEN --
                    busy_cnt := busy_cnt + 1; --
                END IF;
                CASE busy_cnt IS --
                    WHEN 0 => --
                        i2c_ena <= '1';
                        i2c_addr <= adx1345;
                        i2c_rw <= '0';
                        i2c_data_wr <= reg_dataX0;
                    WHEN 1 => --
                        i2c_rw <= '1';
                        i2c_ena <= '1';
                        i2c_addr <= adx1345;
                        i2c_data_wr <= reg_dataX0;
                    WHEN 2 =>
                        IF(i2c_busy = '0') THEN
                            AX (7 DOWNTO 0) <= i2c_data_rd;
                        END IF;
                        i2c_ena <= '1';
                        i2c_addr <= adx1345;
                        i2c_rw <= '1';
                        i2c_data_wr <= reg_dataX0;
                    WHEN 3 => 
                        i2c_ena <= '0';
                        IF(i2c_busy = '0') THEN
                            AX(15 DOWNTO 8) <= i2c_data_rd;
                            busy_cnt := 0;
                            edo_sig <= espera;
                        END IF;
                        i2c_addr <= adx1345;
                        i2c_rw <= '1';
                        i2c_data_wr <= reg_dataX0;
                    WHEN OTHERS =>
                        busy_cnt := 0;
                        i2c_ena <= '0';
                        i2c_addr <= (others => '0');
                        i2c_rw <= '0';
                        i2c_data_wr <= (others => '0');
                END CASE;
            when espera =>
                muestra_prev <= clk_muestra;
                busy_cnt := 0;
                if (muestra_prev = '0' AND clk_muestra = '1') then
                    edo_sig <= lee;
                end if;
                busy_prev <= i2c_busy;
                i2c_ena <= '0';
                i2c_addr <= (others => '0');
                i2c_rw <= '0';
                i2c_data_wr <= (others => '0');
            when others =>
                edo_sig <= espera;
                busy_prev <= i2c_busy;
                i2c_ena <= '0';
                i2c_addr <= (others => '0');
                i2c_rw <= '0';
                i2c_data_wr <= (others => '0');
        end case;
    end process;

    error <= i2c_ack_error;
    leds <= AX(9 DOWNTO 0);
end Behavioral;