----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2020 11:12:21 PM
-- Design Name: 
-- Module Name: BCDconv_tb - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCDconv_tb is
--  Port ( );
end BCDconv_tb;

architecture Behavioral of BCDconv_tb is
signal Hex: std_logic_vector(3 downto 0):="0000";
signal BCD0: std_logic_vector(3 downto 0);
signal BCD1: std_logic_vector(3 downto 0);
begin

DUT: entity WORK.BCDconv port map(Hex=>Hex, BCD0=>BCD0, BCD1=>BCD1);
gen_vec_test: process
              variable RezCorect: std_logic_vector(7 downto 0):="00000000";
              variable HexnR: std_logic_vector(3 downto 0):="0000";
              variable NrErori: integer:= 0; 
              begin
                   for i in 0 to 15 loop 
 
                       if ((BCD1&BCD0) /= RezCorect) then
                           report "Rezultat asteptat BCD1 ("&std_logic'image(RezCorect(7))&std_logic'image(RezCorect(6))&std_logic'image(RezCorect(5))&std_logic'image(RezCorect(4))&
                           "Rezultat asteptat BCD0 ("&std_logic'image(RezCorect(3))&std_logic'image(RezCorect(2))&std_logic'image(RezCorect(1))&std_logic'image(RezCorect(0))&
                           ") /= valoare obtinuta (" &std_logic'image(BCD1(3))&std_logic'image(BCD1(2))&std_logic'image(BCD1(1))&std_logic'image(BCD1(0))&std_logic'image(BCD0(3))&std_logic'image(BCD0(2))&std_logic'image(BCD0(1))&std_logic'image(BCD0(0))
                           &")time = "&TIME'image(now)severity ERROR;
                           NrErori:= NrErori + 1;
                       end if;
                        
                       if HexNr<=x"9" then
                           RezCorect(7 downto 4):=x"0";
                           RezCorect(3 downto 0):=HexNr;
                        else
                           RezCorect(7 downto 4):=x"1";
                           RezCorect(3 downto 0):=HexNr-x"A";
                        end if;
                       HexNr:= HexNr + 1;
                       Hex<=HexNr;                   
                       wait for 50 ns;
                   end loop;
                    
                   report "Testare terminata cu "&integer'image(NrErori)&"erori";
                   wait;
              end process;

end Behavioral;
