----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2020 07:44:45 PM
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
          Start: in std_logic;
          Tx: out std_logic;
          TxRdy: out std_logic);
end modulPrincipal;

architecture Behavioral of modulPrincipal is
signal TxData: std_logic_vector(7 downto 0):=(others=>'0');
signal Debouncer: std_logic:='0';
signal Tx_sgn: std_logic:='1';
signal TXRdy_sgn: std_logic:='0';
begin

UART_TX: entity WORK.uart_tx port map(TxData=>TxData, Clk=>Clk, Rst=>Rst, Start=>Debouncer, Tx=>Tx_sgn, TxRdy=>TxRdy_sgn);

Debounce: entity WORK.debounce port map(Clk=>Clk, Rst=>Rst, Din=>Start, Qout=>Debouncer);

VIO: entity WORK.vio_0
  PORT MAP (
    clk => clk,
    probe_in0 => Tx_sgn & TxRdy_sgn,
    probe_out0 => TxData
  );
  
Tx <= Tx_sgn;
TxRdy <= TxRdy_sgn; 


end Behavioral;
