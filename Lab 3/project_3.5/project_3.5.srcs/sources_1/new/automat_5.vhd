----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 05:32:10 PM
-- Design Name: 
-- Module Name: automat_5 - Behavioral
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

entity automat_5 is
    Port (Clk: in STD_LOGIC;
          Rst: in STD_LOGIC;
          Data: in STD_LOGIC;
          Sync: in STD_LOGIC;
          PError: out STD_LOGIC);
end automat_5;

architecture Behavioral of automat_5 is
type TIP_STARE is(idle, increment, odd, even);
signal Stare: TIP_STARE;
signal incr: STD_LOGIC_VECTOR(2 downto 0):="000";
signal dataSgn: STD_LOGIC:='0';
begin

PROC1: process(Clk,Rst)--rst asincron
begin
    if (Rst='1') then
        if (rising_edge(Clk)) then
            Stare<=idle;
        else
            case Stare is
                when idle=>if (Sync='1') then
                                Stare<=idle;
                           else
                                Stare<=increment;
                           end if;
                when increment=>if (incr=8) then
                                    if (dataSgn='0') then
                                        Stare<= even;
                                    else
                                        Stare<=odd;
                                    end if;
                                else
                                    dataSgn<=dataSgn xor data;
                                    incr<=incr+1;
                                end if;
               when odd=>if(Sync='1') then
                            Stare<=odd;
                            dataSgn<='1';
                         else --if (Sync='0') then
                            Stare<=idle;
                         end if;
               when even=>if(Sync='1') then
                            Stare<=even;
                            dataSgn<='0';
                         else --if (Sync='0') then
                            Stare<=idle;
                            dataSgn<='1';
                         end if;
               end case;
          end if;
      end if;
end process;

PROC2: process(Stare)
begin
    case Stare is                         
        when idle=>PError<='0';
        when increment=>PError<='0';
        when even=>PError<='0';
        when odd=>PError<='1';
    end case;
end process;      


end Behavioral;
