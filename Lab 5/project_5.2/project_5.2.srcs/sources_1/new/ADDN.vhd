----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 02:33:26 PM
-- Design Name: 
-- Module Name: ADDN - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--Sumator de n biti
entity ADDN is
    generic(n: natural);
    Port (X: in std_logic_vector(n-1 downto 0);
          Y: in std_logic_vector(n-1 downto 0);
          Tin: in std_logic; 
          S: out std_logic_vector(n-1 downto 0);
          OVF: out std_logic;
          Tout: out std_logic);
end ADDN;

architecture Behavioral of ADDN is
signal T: std_logic_vector(n downto 0);
begin

process(X, Y, Tin)
begin
        T(0)<= Tin;
        
		for i in 0 to n-1 loop
			S(i) <= X(i) xor Y(i) xor T(i);
			T(i+1) <= (X(i) and Y(i)) or ((X(i) or Y(i)) and T(i));
		end loop;
		
		OVF <= T(n) xor T(n-1);
		Tout <= T(n);
		
end process;	

end Behavioral;
