----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2020 09:45:59 PM
-- Design Name: 
-- Module Name: sumImplementation - Behavioral
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

entity sumImplementation is
    Port (Clk: in std_logic; 
          Rst: in std_logic;
          X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          An: out std_logic_vector(7 downto 0);
          Seg: out std_logic_vector(7 downto 0));
end sumImplementation;

architecture Behavioral of sumImplementation is
signal Data: std_logic_vector(31 downto 0);
signal S: std_logic_vector(7 downto 0);
signal Tout: std_logic; 
begin

DUT: entity WORK.sum8bit port map(X=>x, Y=>Y, Tin=> '0', S=>S, Tout=>Tout);

Data(31 downto 24)<= X(7 downto 0);
Data(23 downto 16)<= Y(7 downto 0);
Data(8)<= Tout;
Data(7 downto 0)<= S(7 downto 0);
displ7seg: entity WORK.displ7seg port map(Clk=>Clk, Rst=>Rst, Data=>Data, An=>An, Seg=>Seg);


end Behavioral;
