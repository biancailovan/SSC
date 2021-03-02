----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2020 03:09:58 PM
-- Design Name: 
-- Module Name: num4_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity num4_tb is
--  Port ( );
end num4_tb;

architecture Behavioral of num4_tb is
signal Clk: std_logic:='0';
signal Rst: std_logic:='0';
signal En: std_logic:='0';
signal Num: std_logic_vector(3 downto 0):="0000";
constant CLK_PERIOD: time:=10 ns;
begin

--instantiere
DUT: entity WORK.num4 port map(Clk=>Clk, Rst=>Rst, En=>En, Num=>Num);

gen_clk: process
         begin
            Clk <= '0';
            wait for (CLK_PERIOD/2);
            Clk <= '1';
            wait for (CLK_PERIOD/2);
         end process;
         
 gen_vec_test: process
               variable RezCorect: std_logic_vector(3 downto 0):= "0000";
               variable NrErori: integer:= 0; 
               begin
                    Rst <= '1';
                    wait for CLK_PERIOD;
                    Rst <= '0';
                    wait for CLK_PERIOD;
                    En <= '1';  
                     
                    for i in 0 to 15 loop
                        if (Num /= RezCorect) then
                            report "Iesirea corecta ("&std_logic'image(RezCorect(3))&std_logic'image(RezCorect(2))&std_logic'image(RezCorect(1))&std_logic'image(RezCorect(0))&") /= valoare obtinuta (" &std_logic'image(Num(3))&std_logic'image(Num(2))&std_logic'image(Num(1))&std_logic'image(Num(0))&")time = "&TIME'image(now)severity ERROR;
                            NrErori:= NrErori + 1;
                        end if;
                        RezCorect:= RezCorect + 1;
                        wait for (CLK_PERIOD);
                    end loop;
                    
                    report "Testare terminata cu "&integer'image(NrErori)&"erori";
                    wait;
               end process;

end Behavioral;
