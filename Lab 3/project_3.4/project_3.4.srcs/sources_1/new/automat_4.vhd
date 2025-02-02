----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/14/2020 04:34:01 PM
-- Design Name: 
-- Module Name: automat_4 - Behavioral
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

entity automat_4 is
Port (Clk : in STD_LOGIC;
          Rst : in STD_LOGIC;
          Frame : in STD_LOGIC;
          Hit : in STD_LOGIC;
          OE : out STD_LOGIC;
          GO : out STD_LOGIC;
          ACT : out STD_LOGIC);
end automat_4;

architecture Behavioral of automat_4 is
signal Stare: STD_LOGIC_VECTOR(3 downto 0);
constant idle: STD_LOGIC_VECTOR(3 downto 0):= "0000";
constant decode: STD_LOGIC_VECTOR(3 downto 0):= "0001";
constant busy: STD_LOGIC_VECTOR(3 downto 0):= "0010";
constant xfer1: STD_LOGIC_VECTOR(3 downto 0):= "1110";
constant xfer2: STD_LOGIC_VECTOR(3 downto 0):= "1010"; 
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

--proc2: process(Stare)
--begin
    --case Stare is
        --when idle=>OE<='0'; GO<='0'; ACT<='0';
        --when decode=>OE<='0'; GO<='0'; ACT<='0';
        --when busy=>OE<='0'; GO<='0'; ACT<='1';
        --when xfer1=>OE<='1'; GO<='1'; ACT<='1';
        --when xfer2=>OE<='1'; GO<='0'; ACT<='1';
    --end case;
--end process;

 -- Iesiri asociate cu continutul registrelor 
OE <= Stare(3);
GO <= Stare(2);
ACT <= Stare(1);

end Behavioral;
