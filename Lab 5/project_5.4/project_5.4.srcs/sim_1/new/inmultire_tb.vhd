----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2020 04:05:33 PM
-- Design Name: 
-- Module Name: inmultire_tb - Behavioral
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inmultire_tb is
--  Port ( );
end inmultire_tb;

architecture Behavioral of inmultire_tb is

constant CLK_PERIOD: time := 20 ns;
signal Clk: std_logic;
signal Rst, Start: std_logic:='0';
signal X, Y: std_logic_vector(7 downto 0):= (others => '0');
signal Q: std_logic_vector(7 downto 0);
signal A: std_logic_vector(8 downto 0);
signal P,PCorect: std_logic_vector(15 downto 0);
signal Term: std_logic;

begin

CLK_process :process

begin
    Clk <= '0';
    wait for CLK_PERIOD/2;
	Clk <= '1';
	wait for CLK_PERIOD/2;
end process;

DUT: entity WORK.inmultire
            port map(Clk=>Clk, Rst=>Rst, Start=>Start, X=>X, Y=>Y, A=>A, Q=>Q, Term=>Term);

proc2: process
variable rezCorect: integer;
begin
          Rst<='1';
          wait for 20 ns;
          Rst <= '0';
          wait for 20 ns;
          Start <= '1';
          wait for 20 ns;
       
          X <= conv_std_logic_vector(2, 8);
          Y <= conv_std_logic_vector(-2, 8);
          Start <= '1';
          wait for 300 ns; 
          Start <='0';   
          P <= A(7 downto 0)&Q;
          wait for 20 ns;
           
          X <= conv_std_logic_vector(123, 8);
          Y <= conv_std_logic_vector(129, 8);
          Start <= '1';
          wait for 300 ns; 
          Start <='0';   
          P <= A(7 downto 0)&Q;
          wait for 20 ns;
          
          X <= conv_std_logic_vector(252, 8);
          Y <= conv_std_logic_vector(253, 8);
          Start <= '1';
          wait for 300 ns;
          Start <='0';   
          P <= A(7 downto 0)&Q;
          wait for 20 ns;
  
            
end process;

end Behavioral;