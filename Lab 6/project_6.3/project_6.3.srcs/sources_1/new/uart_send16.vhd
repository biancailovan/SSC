----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2020 01:49:22 PM
-- Design Name: 
-- Module Name: uart_send16 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_send16 is
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Data1: in std_logic_vector(63 downto 0); --codurile ASCII ale caracterelor ce trebuie transmise
          Data2: in std_logic_vector(63 downto 0);
          Send: in std_logic; --indica inceperea transmisiei sirului de caractere
          Tx: out std_logic; --linia seriala pe care sunt transmise caracterele
          Rdy: out std_logic); --starea activa => terminarea transmisiei 
end uart_send16;

architecture Behavioral of uart_send16 is

signal Data_sgn: std_logic_vector(7 downto 0):=(others=>'0');
signal Cnt: integer;
signal TxRdy, Start_sgn: std_logic;

type stare is (ready, load, sendd, stop);
signal St: stare:=ready;

begin

proc: process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst = '1' then
            St <= ready;
            Cnt <= 0;
        else
            case St is     
                when ready =>          
                    if Send = '1' then
                        St <= load;
                        Cnt <= 0;
                    end if;
                    
                when load =>            
                    if Cnt /= 18 then 
                        --se activeaza semnal start
                        Start_sgn <= '1';
                        St <= sendd;
                    else
                        St <= stop;
                    end if;
                    
                when sendd => 
                    Start_sgn <= '0';
                    if TxRdy = '1' then
                        St <= load;
                        Cnt <= Cnt + 1;
                    end if;
                    
                when stop =>
                    St <= ready;
           end case;
      end if;
   end if;
end process;
                    
 Rdy  <= '1' when St = stop else '0';
 
 --asignare selectiva
 with Cnt select Data_sgn <= Data1(63 downto 56) when 0, --cand Cnt e x"00", se pune pe Data
                             Data1(55 downto 48) when 1,
                             Data1(47 downto 40) when 2,
                             Data1(39 downto 32) when 3,
                             Data1(31 downto 24) when 4,
                             Data1(23 downto 16) when 5,
                             Data1(15 downto 8) when 6,
                             Data1(7 downto 0) when 7,
                             Data2(63 downto 56) when 8,
                             Data2(55 downto 48) when 9,
                             Data2(47 downto 40) when 10,
                             Data2(39 downto 32) when 11,
                             Data2(31 downto 24) when 12,
                             Data2(23 downto 16) when 13,
                             Data2(15 downto 8) when 14,
                             Data2(7 downto 0) when 15,
                             x"0D" when 16, --carriage return
                             x"0A" when 17, --line feed                            
                             x"00" when others;
 
uart_tx: entity WORK.uart_tx port map(TxData=>Data_sgn, Clk=>Clk, Rst=>Rst, Start=>Start_sgn, Tx=>Tx, TxRdy=>TxRdy);
                                      
end Behavioral;
