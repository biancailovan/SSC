----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 03:02:58 PM
-- Design Name: 
-- Module Name: automat_3 - Behavioral
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

entity automat_3 is
    Port (Clk : in STD_LOGIC;
          Rst : in STD_LOGIC;
          Frame : in STD_LOGIC;
          Hit : in STD_LOGIC;
          OE : out STD_LOGIC;
          GO : out STD_LOGIC;
          ACT : out STD_LOGIC);
end automat_3;

architecture automat_stare of automat_3 is
type TIP_STARE is(idle, decode, busy, xfer1, xfer2);
signal Stare: TIP_STARE;

begin

proc1: process(Clk)
begin
    if rising_edge(Clk) then
        if (Rst='1') then
            Stare<=idle;
        else
            case Stare is 
                when idle=> if (Frame='1') then
                                Stare<=decode;
                            else
                                Stare<=idle;
                            end if;
                when decode=> if (Hit='1') then
                                Stare<=xfer1;
                              else
                                Stare<=busy;
                              end if;
                when busy=> if(Frame='1') then
                                Stare<=idle;
                            else
                                Stare<=busy;
                             end if;
                when xfer1=> if(Frame='1') then
                                Stare<=xfer2;
                             else
                                Stare<=xfer1;
                             end if;
                when xfer2=> Stare<=idle;
                when others=>Stare<=idle;
           end case;
       end if;
    end if;
end process;

proc2: process(Stare)
begin
    case Stare is
        when idle=>OE<='0'; GO<='0'; ACT<='0';
        when decode=>OE<='0'; GO<='0'; ACT<='0';
        when busy=>OE<='0'; GO<='0'; ACT<='1';
        when xfer1=>OE<='1'; GO<='1'; ACT<='1';
        when xfer2=>OE<='1'; GO<='0'; ACT<='1';
    end case;
end process;


end automat_stare;
