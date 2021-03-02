----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2020 02:12:04 PM
-- Design Name: 
-- Module Name: sumatorElementar - Behavioral
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

entity sumatorElementar is
    Port (X: in std_logic; 
          Y: in std_logic; 
          Tin: in std_logic;
          S: out std_logic; 
          Tout: out std_logic);
end sumatorElementar;

architecture Behavioral of sumatorElementar is

begin

S<= X xor Y xor Tin;
Tout<= (X and Y) or ((X or Y) and Tin);


end Behavioral;
