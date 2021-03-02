----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 06:16:47 PM
-- Design Name: 
-- Module Name: automat_5_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity automat_5_tb is
--  Port ( );
end automat_5_tb;

architecture Behavioral of automat_5_tb is
signal Clk: std_logic;
signal Rst: std_logic:='0';
signal Data: std_logic:='0';
signal Sync: std_logic:='0'; 
signal PError: std_logic:='0';
constant CLK_PERIOD: TIME:=10ns;
begin

DUT: entity WORK.automat_5 port map(Clk=>Clk, Rst=>Rst, Data=>Data, Sync=>Sync, PError=>PError);

gen_clk: process
begin
    Clk<='0';
    wait for(CLK_PERIOD/2);
    Clk<='1';
    wait for(CLK_PERIOD/2);
end process;

other_proc: process
begin
    --wait for 20 ns;
    Rst<='1';
    wait for CLK_PERIOD; 
    Rst<='0';Data<='1';
    wait for CLK_PERIOD;
    Data<='0';
    wait for CLK_PERIOD;
    Data<='1';
    Sync<='0';
    wait for CLK_PERIOD;
    Data<='0';
    wait for CLK_PERIOD;
    Data<='1';
    wait for CLK_PERIOD;
    Sync<='1';
    wait for CLK_PERIOD;
    Sync<='0';
    wait for CLK_PERIOD;
end process;
    
end Behavioral;
