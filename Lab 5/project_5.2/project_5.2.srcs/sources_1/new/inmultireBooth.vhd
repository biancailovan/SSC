----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/04/2020 02:45:40 PM
-- Design Name: 
-- Module Name: inmultireBooth - Behavioral
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

entity inmultireBooth is
    generic(n: natural:=8);
    Port (Clk: in std_logic;
          Rst: in std_logic; 
          Start: in std_logic; 
          X: in std_logic_vector(n-1 downto 0);
          Y: in std_logic_vector(n-1 downto 0); 
          A: out std_logic_vector(n-1 downto 0);
          Q: out std_logic_vector(n-1 downto 0);
          Term: out std_logic);
end inmultireBooth;

architecture Behavioral of inmultireBooth is
signal OVF, Tout, LoadA, LoadB, LoadQ, SubB, Q1, RstA, RstQ, ShlAQ: std_logic:='0';
signal Q0Q1: std_logic_vector(1 downto 0):="00";
signal sgn_A, sgn_B, sgn_Q: std_logic_vector(n-1 downto 0):=(others=>'0');
signal sgn_in, sgn_out: std_logic_vector(n-1 downto 0):=(others=>'0');
signal sgn: std_logic_vector(n-1 downto 0):=(others=>'0');
begin

Q0Q1 <= sgn_Q(0) & Q1;

regN: entity WORK.FDN  
          generic map (n=>n) 
          port map (Clk=>Clk, Rst=>Rst, CE=>LoadB, D=>X , Q=>sgn_B);
          
FD: entity WORK.FD port map(Clk=>Clk, Rst => RstQ, CE=>ShlAQ, D=>sgn_Q(0), Q=>Q1);

SRRN_A: entity WORK.SRRN 
       generic map(n=>n) 
       port map (Clk=>Clk, Rst=>RstA, CE =>ShlAQ, Load=>LoadA, SRI=>sgn_A(n-1), D=>sgn_out, Q=>sgn_A);
       
SRRN_Q: entity WORK.SRRN 
       generic map(n=>n) 
       port map (Clk=>Clk, Rst=>Rst, CE =>ShlAQ, Load=>LoadQ, SRI=>sgn_A(0), D=>Y, Q=>sgn_Q);
             
ADDN: entity WORK.ADDN 
         generic map(n=>n) 
         --port map(X=>sgn_A, Y=>sgn_in, Tin=>SubB, S=>sgn_out, OVF=>OVF, Tout =>Tout);
         port map(X=>sgn_in, Y=>sgn_A, Tin=>SubB, S=>sgn_out, OVF=>OVF, Tout =>Tout);
                   
ComandUnit: entity WORK.UC
           generic map(n=>n)
           port map (Clk=>Clk, Rst=>Rst, Start=>Start, Q0Q1=>Q0Q1, LoadA=>LoadA, ShlAQ=>ShlAQ, LoadQ=>LoadQ, RstA=>RstA, RstQ1=>RstQ, SubB=>SubB, LoadB=>LoadB, Term=>Term);

--process(SubB, sgn_B)
--begin
  --for i in 0 to n-1 loop
     sgn_in <= sgn xor sgn_B;
     sgn <= (others => SubB);
  --end loop;
--end process;    
             
A<=sgn_A;
Q<=sgn_Q;


end Behavioral;
