----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2020 02:41:38 PM
-- Design Name: 
-- Module Name: sum8bit - Behavioral
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

entity sum8bit is
    Port (X: in STD_LOGIC_VECTOR(7 downto 0);
          Y: in STD_LOGIC_VECTOR(7 downto 0);
          Tin: in STD_LOGIC; 
          S: out STD_LOGIC_VECTOR(7 downto 0);
          Tout: out STD_LOGIC);
end sum8bit;

architecture Behavioral of sum8bit is
--signal S01, S23, S45, S67: STD_LOGIC_VECTOR(1 downto 0);
signal P01, P23, P45, P67: STD_LOGIC;
signal G01, G23, G45, G67: STD_LOGIC;
signal T2, T4, T6 : STD_LOGIC;

begin

--instantiere 4 componente pe 2 biti
SUMATOR_1: entity WORK.sum2bit port map(X=>X(1 downto 0), Y=>Y(1 downto 0), Tin=>Tin, S=>S(1 downto 0), P=>P01, G=>G01);
SUMATOR_2: entity WORK.sum2bit port map(X=>X(3 downto 2), Y=>Y(3 downto 2), Tin=>Tin, S=>S(3 downto 2), P=>P23, G=>G23);
SUMATOR_3: entity WORK.sum2bit port map(X=>X(5 downto 4), Y=>Y(5 downto 4), Tin=>Tin, S=>S(5 downto 4), P=>P45, G=>G45);
SUMATOR_4: entity WORK.sum2bit port map(X=>X(7 downto 6), Y=>Y(7 downto 6), Tin=>Tin, S=>S(7 downto 6), P=>P67, G=>G67);    

--asignari concurente
T2<=G01 or (P01 and Tin); 
T4<=G23 or (P23 and T2); 
T6<=G45 or (P45 and T4); 
Tout<=G67 or (P67 and T6);
--S<=S67 & S45 & S23 & S01;

end Behavioral;
