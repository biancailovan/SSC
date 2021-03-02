----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2020 03:15:17 PM
-- Design Name: 
-- Module Name: inmultire - Behavioral
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

entity inmultire is
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Start: in std_logic;
          X: in std_logic_vector(7 downto 0);
          Y: in std_logic_vector(7 downto 0);
          A: out std_logic_vector(8 downto 0);
          Q: out std_logic_vector(7 downto 0);
          Term: out std_logic);
end inmultire;

architecture Behavioral of inmultire is
signal OVF, Tout, LoadA, LoadB, LoadQ, SubB, Q0, RstA, RstQ, ShlAQ: std_logic:='0';
signal sgn_Q: std_logic_vector(7 downto 0):=(others=>'0');
signal sgn_A: std_logic_vector(8 downto 0):=(others=>'0');
signal sgn_out: std_logic_vector(8 downto 0):=(others=>'0');
signal sgn_in, sgn_B: std_logic_vector(8 downto 0):=(others=>'0');

begin

reg: entity WORK.FDN  
          generic map (n=>8) 
          port map (Clk=>Clk, Rst=>'0', CE=>LoadB, D=>X , Q=>sgn_B(7 downto 0));

SRRN_A: entity WORK.SRRN 
       generic map(n=>9) 
       port map (Clk=>Clk, Rst=>RstA, CE =>ShlAQ, Load=>LoadA, SRI=>'0', D=>sgn_out, Q=>sgn_A);
       
SRRN_Q: entity WORK.SRRN 
       generic map(n=>8) 
       port map (Clk=>Clk, Rst=>Rst, CE =>ShlAQ, Load=>LoadQ, SRI=>sgn_A(0), D=>Y, Q=>sgn_Q);
             
ADDN: entity WORK.ADDN 
         generic map(n=>9) 
         --port map(X=>sgn_A, Y=>sgn_in, Tin=>SubB, S=>sgn_out, OVF=>OVF, Tout =>Tout);
         port map(X=>sgn_B, Y=>sgn_A, Tin=>'0', S=>sgn_out, OVF=>OVF, Tout =>Tout);
                   
ComandUnit: entity WORK.UC
           port map (Clk=>Clk, Rst=>Rst, Start=>Start, Q0=>sgn_Q(0), LoadA=>LoadA, ShlAQ=>ShlAQ, LoadQ=>LoadQ, RstA=>RstA, SubB=>SubB, LoadB=>LoadB, Term=>Term);

Q <= sgn_Q;
Q0 <= sgn_Q(0);
A(8) <= Tout;

end Behavioral;
