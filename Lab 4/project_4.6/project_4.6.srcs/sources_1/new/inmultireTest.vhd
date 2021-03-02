----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2020 04:02:18 PM
-- Design Name: 
-- Module Name: inmultireTest - Behavioral
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

entity inmultireTest is
    Port (X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          Clk: in std_logic; 
          Rst: in std_logic; 
          An: out std_logic_vector(7 downto 0);
          Seg: out std_logic_vector(7 downto 0));
end inmultireTest;

architecture Behavioral of inmultireTest is
signal Data : std_logic_vector(31 downto 0);
signal P : std_logic_vector(15 downto 0);
begin

DUT: entity WORK.inmultireMatriceala port map(X=>X, Y=>Y, P=>P); 

Data(31 downto 16)<=P;
Data(15 downto 8)<=Y;
Data(7 downto 0)<=X;

display: entity WORK.displ7seg port map(Clk=>Clk, Rst=>Rst, Data=>Data, An=>An, Seg=>Seg);

end Behavioral;
