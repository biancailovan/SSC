----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2020 03:03:06 PM
-- Design Name: 
-- Module Name: num4 - Behavioral
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

entity num4 is
--  Port ( );
port (Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    En : in STD_LOGIC;
    Num : out STD_LOGIC_VECTOR (3 downto 0)); 
end num4;

architecture Behavioral of num4 is

function INC_BV (A : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
variable Rez : STD_LOGIC_VECTOR (A'range);
variable C : STD_LOGIC; 

begin
    C := '1';
    for i in A'low to A'high loop
        Rez(i) := A(i) xor C;
        C := A(i) and C;    
    end loop;
    return Rez;
end INC_BV;

signal Num_int : STD_LOGIC_VECTOR (3 downto 0);

begin
process (Clk)
begin
    if (Clk'event and Clk = '1') then
        if (Rst = '1') then
            Num_int <= (others => '0');
        elsif (En = '1') then
            Num_int <= INC_BV (Num_int);
        end if;
    end if;
end process;
Num <= Num_int; 

end Behavioral;
