----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 02:22:40 PM
-- Design Name: 
-- Module Name: sum2bit - Behavioral
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

entity sum2bit is
    Port (X: in STD_LOGIC_VECTOR(1 downto 0);
          Y: in STD_LOGIC_VECTOR(1 downto 0);
          Tin: in STD_LOGIC; 
          S: out STD_LOGIC_VECTOR(1 downto 0);
          P: out STD_LOGIC;
          G: out STD_LOGIC);
end sum2bit;

architecture Behavioral of sum2bit is
signal p0, p1, g0, g1: STD_LOGIC;
signal T: STD_LOGIC:='0';

begin

S(0)<=X(0) xor Y(0) xor Tin;
T<=(X(0) and Y(0)) or ((X(0) or Y(0)) and Tin);
S(1) <= X(1) xor Y(1) xor T;
--S(1) <= X(1) xor Y(1) xor ((X(0) and Y(0)) or ((X(0) or Y(0)) and Tin));

p0<=X(0) or Y(0); --propagarea intrarii de transport
g0<=X(0) and Y(0); --generarea transportului
p1<=X(1) or Y(1);
g1<=X(1) and Y(1);

P<=p1 and p0; --functie de propagare a transportului pe grup P
G<=g1 or (p1 and g0); --functie de generare a transportului pe grup G


end Behavioral;
