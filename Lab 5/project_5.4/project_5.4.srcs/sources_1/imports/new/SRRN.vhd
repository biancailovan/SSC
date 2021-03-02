----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 02:20:14 PM
-- Design Name: 
-- Module Name: SRRN - Behavioral
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

--Registru de deplasare la dreapta de n biti cu resetare sincrona
entity SRRN is
    generic(n: natural);
    Port (Clk: in std_logic;
          Rst: in std_logic; 
          CE: in std_logic;
          Load: in std_logic;
          SRI: in std_logic; 
          D: in std_logic_vector(n-1 downto 0);
          Q: out std_logic_vector(n-1 downto 0));
end SRRN;

architecture Behavioral of SRRN is
signal QQ: std_logic_vector(n-1 downto 0);
begin
process(Clk, Rst)
begin
    if (rising_edge(Clk)) then
         if (Rst='1') then
            QQ <= (others=>'0');
         else
            if (Load='1') then 
                QQ <= D;
            else
                if (CE='1') then 
                    QQ <= SRI & QQ(n-1 downto 1);
                end if;
            end if;
         end if;
     end if;
Q<=QQ;
end process;
            
end Behavioral;
