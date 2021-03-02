----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 04:40:31 PM
-- Design Name: 
-- Module Name: automat_4_tb - Behavioral
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

entity automat_4_tb is
--  Port ( );
end automat_4_tb;

architecture Behavioral of automat_4_tb is
signal Clk: STD_LOGIC:='0';
signal Rst: STD_LOGIC:='0';
signal Frame: STD_LOGIC:='0';
signal Hit: STD_LOGIC:='0';
signal OE: STD_LOGIC:='0';
signal GO: STD_LOGIC:='0';
signal ACT: STD_LOGIC:='0';
constant CLK_PERIOD: TIME:= 10 ns;
begin

DUT: entity WORK.automat_4 port map(Clk=>Clk, Rst=>Rst, Frame=>Frame, Hit=>Hit, OE=>OE, GO=>GO, ACT=>ACT);

gen_clk: process
begin
    Clk<='0';
    wait for (CLK_PERIOD/2);
    Clk<='1';
    wait for(CLK_PERIOD/2);
end process;

gen_other: process
begin
    wait for 20 ns;
    Rst<='1';
    wait for 20 ns;
    Rst<='0';
    wait for 20 ns;
    Frame<='1';
    wait for 20 ns;
    Frame<='0'; 
    wait for 20 ns;
    Hit<='0';
    wait for 20 ns;
    Hit<='1'; 
    wait for 20 ns;
    Frame<='1';
    wait for 20 ns;
    Frame<='0';
    wait for 20 ns;
end process;

end Behavioral;
