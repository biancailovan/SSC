----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 02:47:38 PM
-- Design Name: 
-- Module Name: UC - Behavioral
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

--Unitatea de comanda,
--sub forba unui automat de stare
entity UC is
    generic(n: natural);
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Start: in std_logic;
          Q0Q1: in std_logic_vector(1 downto 0);
          LoadA: out std_logic;
          ShlAQ: out std_logic;
          LoadQ: out std_logic;
          RstA: out std_logic;
          RstQ1: out std_logic;
          SubB: out std_logic;
          LoadB: out std_logic;
          Term: out std_logic);        
end UC;

architecture Behavioral of UC is
type TIP_STARE is (idle, init, decision, add, sub, shift, count, stop);
signal stare:TIP_STARE;
signal c: integer; 
begin

process1: process(Clk)
begin
    if (rising_edge(Clk)) then
        if (Rst='1') then
            stare <= idle;
         else
            case stare is
            when idle => 
                if (Start = '1' ) then  
                    stare <= init;
                else
                    stare <= idle;
                end if;
            when init => 
                c <= n - 1;
                stare <= decision; 
            when decision => 
               case Q0Q1 is
                    when "00" => stare <= shift;
                    when "01" => stare <= add;
                    when "10" => stare <= sub;
                    when "11" => stare <= shift;
                    when others => stare <= idle;
               end case;
            when add =>
                stare <= shift;      
            when sub =>
                stare <= shift;
            when shift => 
                stare <= count;
            when count =>
                c <= c - 1;
                if(c=0) then
                    stare <= stop; 
                else 
                    stare <= decision;
            end if;
            when stop => 
                stare <= idle;
            end case;
        end if;
   end if;
end process;

 process2: process(stare)
 begin
        LoadB <='0'; LoadQ <='0'; LoadA<='0'; ShlAQ <='0'; RstA <='0'; RstQ1 <='0'; SubB <='0'; Term <= '0';
        case Stare is
            when idle => 
                 RstQ1 <='0'; RstA <='0'; ShlAQ <='0'; LoadB <='0'; LoadQ <='0'; SubB <='0'; Term <= '0';
            when init => 
                 RstQ1 <='1'; RstA <='1'; LoadB <='1'; LoadQ <='1';
            when add => 
                LoadA <= '1';
            when sub => 
                LoadA <= '1'; SubB <= '1'; 
            when decision =>
                 LoadQ <= '0'; LoadA <= '0'; ShlAQ <= '0'; RstQ1 <= '0'; LoadB <= '0'; RstA <= '0'; SubB <= '0'; Term <= '0';
            when shift => 
                ShlAQ <= '1'; 
            when count => 
                 LoadQ <= '0'; LoadA <= '0'; ShlAQ <= '0'; RstQ1 <= '0'; LoadB <= '0'; RstA <= '0'; SubB <= '0'; Term <= '0';
            when stop => 
                Term <= '1';
        end case;
 end process;
                


end Behavioral;
