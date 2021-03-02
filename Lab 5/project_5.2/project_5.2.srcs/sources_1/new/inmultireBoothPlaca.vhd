----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2020 06:10:11 PM
-- Design Name: 
-- Module Name: inmultireBoothPlaca - Behavioral
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

entity inmultireBoothPlaca is
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Start: in std_logic;
          X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          An: out std_logic_vector(7 downto 0);
          Seg: out std_logic_vector(7 downto 0);
          Term: out std_logic);         
end inmultireBoothPlaca;

architecture Behavioral of inmultireBoothPlaca is
signal A, Q: std_logic_vector(7 downto 0);
signal Data: std_logic_vector(31 downto 0);
begin

DUTBooth: entity WORK.inmultireBooth port map(Clk=>Clk, Rst=>Rst, Start=>Start, X=>X, Y=>Y, A=>A, Q=>Q, Term=>Term);

displ7seg: entity WORK.displ7seg port map(Clk=>Clk, Rst=>Rst, Data=>Data, An=>An, Seg=>Seg);

Data(7 downto 0) <= Q;
Data(15 downto 8) <= A;
Data (23 downto 16) <= Y;
Data (31 downto 24) <= X;


end Behavioral;
