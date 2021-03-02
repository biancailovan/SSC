----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2020 06:53:16 PM
-- Design Name: 
-- Module Name: modul_principal_nexys - Behavioral
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

entity modul_principal_nexys is
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Read: in std_logic;
          Sel: in std_logic;
          MISO: in std_logic;
          MOSI: out std_logic;
          SCLK: out std_logic;
          SS: out std_logic;
          An: out std_logic_vector(7 downto 0);
          Seg: out std_logic_vector(7 downto 0));
end modul_principal_nexys;

architecture Behavioral of modul_principal_nexys is
signal Data1, Data2: std_logic_vector(31 downto 0):=(others=>'0');
signal Data: std_logic_vector(31 downto 0):=(others=>'0');
signal Read_sgn: std_logic:='0';
begin

Data <= Data1 when Sel = '1' else Data2;

accelerometru: entity WORK.modul_principal 
                      generic map(n=>8)
                      port map(Clk=>Clk, Rst=>Rst, Read=>REad_sgn, MISO=>MISO, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, Data1=>Data1, Data2=>Data2);

debouncer: entity WORK.debounce port map(Clk=>Clk, Rst=>Rst, Din=>Read, Qout=>Read_sgn);

Display: entity WORK.displ7seg port map(Clk=>Clk, Rst=>Rst, Data=>Data, An=>An, Seg=>Seg);

end Behavioral;
