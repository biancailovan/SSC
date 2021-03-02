----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2020 10:32:03 PM
-- Design Name: 
-- Module Name: BCDconv - Behavioral
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
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDconv is
    Port (Hex: in std_logic_vector(3 downto 0);
    BCD0: out std_logic_vector(3 downto 0);
    BCD1: out std_logic_vector(3 downto 0));   
end BCDconv;

architecture Behavioral of BCDconv is
begin

process(Hex)
begin
case Hex is
    when x"0"=>BCD0<=x"0";BCD1<=x"0";
    when x"1"=>BCD0<=x"1";BCD1<=x"0";
    when x"2"=>BCD0<=x"2";BCD1<=x"0";
    when x"3"=>BCD0<=x"3";BCD1<=x"0";
    when x"4" =>BCD0<=x"4";BCD1<=x"0";
    when x"5"=>BCD0<=x"5";BCD1<=x"0";
    when x"6"=>BCD0<=x"6";BCD1<=x"0";
    when x"7"=>BCD0<=x"7";BCD1<=x"0";
    when x"8"=>BCD0<=x"8";BCD1<=x"0";
    when x"9"=>BCD0<=x"9";BCD1<=x"0"; 
    when x"A"=>BCD0<=x"0";BCD1<=x"1";
    when x"B"=>BCD0<=x"1";BCD1<=x"1";
    when x"C"=>BCD0<=x"2";BCD1<=x"1";
    when x"D"=>BCD0<=x"3";BCD1<=x"1";
    when x"E"=>BCD0<=x"4";BCD1<=x"1";
    when x"F"=>BCD0<=x"5";BCD1<=x"1";   
    when others=>BCD0<="0000";    
end case;
end process;

 
end Behavioral;
