----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/27/2020 02:15:59 PM
-- Design Name: 
-- Module Name: inmultireMatriceala - Behavioral
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

entity inmultireMatriceala is 
    Port (X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          P: out std_logic_vector(15 downto 0));
end inmultireMatriceala;

architecture Behavioral of inmultireMatriceala is
type arrayPP is array(0 to 7) of std_logic_vector(7 downto 0); 
type arrayS is array(0 to 7) of std_logic_vector(8 downto 0);
type arrayT is array(0 to 6) of std_logic_vector(8 downto 0);

signal PP: arrayPP;
signal S: arrayS;
signal T: arrayT;

begin

for_pp: for i in 0 to 7 generate
            eticheta: for j in 0 to 7 generate
                PP(i)(j)<=X(j) and Y(i); 
            end generate;
        end generate;
        
exceptie_s: S(0)(8)<='0';
continuare1_s: for i in 1 to 7 generate
                  S(0)(i)<=PP(0)(i);
              end generate;
continuare2_s: for i in 1 to 7 generate
                  S(i)(8) <= T(i-1)(8);
               end generate;
S(0)(0)<= PP(0)(0);
        
for_t: for i in 0 to 6 generate
            T(i)(0)<='0';
       end generate;
       

inmultire_matriceala: for i in 0 to 6 generate
          inmultire_coloane: for j in 0 to 7 generate
                instantiere_sumator: entity WORK.sumatorElementar port map(X=> S(i)(j+1), Y=> PP(i+1)(j), Tin=> T(i)(j), S=> S(i+1)(j),Tout=> T(i)(j+1));
                              end generate;
                      end generate;  
                      
P(0)<= X(0) and Y(0);
produs: for i in 1 to 6 generate
            P(i)<= S(i)(0);
        end generate;                     
final: for i in 7 to 15 generate
            P(i) <= S(7)(i-7);
       end generate;           


end Behavioral;
