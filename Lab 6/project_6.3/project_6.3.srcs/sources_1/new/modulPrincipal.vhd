----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2020 12:00:36 PM
-- Design Name: 
-- Module Name: modulPrincipal - Behavioral
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
use WORK.SSC_pkg.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modulPrincipal is
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Button1: in std_logic;
          Button2: in std_logic;
          Tx: out std_logic;
          Rdy: out std_logic);
end modulPrincipal;

architecture Behavioral of modulPrincipal is
signal Button1_sgn, Button2_sgn: std_logic:='0';
signal Data1_sgn, Data2_sgn: std_logic_vector(63 downto 0):=(others=>'0');
signal Send: std_logic:='0';
signal Tx_sgn: std_logic;
signal Rdy_sgn: std_logic:='1';
attribute keep : STRING;
signal Data1: string(1 to 8);
signal Data2: string(9 to 16);
begin

Data1_sgn <= S8_TOASCII(Data1(1 to 8));
Data2_sgn <= S8_TOASCII(Data2(9 to 16));

Button_1: entity WORK.debounce port map(Clk=>Clk, Rst=>Rst, Din=>Button1, Qout=>Button1_sgn);
Button_2: entity WORK.debounce port map(Clk=>Clk, Rst=>Rst, Din=>Button2, Qout=>Button2_sgn);
uart_send: entity WORK.uart_send16 port map(Clk=>Clk, Rst=>Rst, Data1=>Data1_sgn, Data2=>Data2_sgn, Send=>Send, Tx=>Tx_sgn, Rdy=>Rdy_sgn);

Send <= (Button1_sgn xor Button2_sgn) and Rdy_sgn;
Rdy <= Rdy_sgn;
TX <= Tx_sgn;

end Behavioral;
