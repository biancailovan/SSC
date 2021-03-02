----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2020 02:50:48 PM
-- Design Name: 
-- Module Name: inmultireMatriceala_tb - Behavioral
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
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inmultireMatriceala_tb is
--  Port ( );
end inmultireMatriceala_tb;

architecture Behavioral of inmultireMatriceala_tb is
signal X, Y: STD_LOGIC_VECTOR(7 downto 0):="00000000";
signal P: STD_LOGIC_VECTOR(15 downto 0);
begin

DUT: entity WORK.inmultireMatriceala port map(X=>X, Y=>Y, P=>P);

gen_other: process
          variable RezCorect: INTEGER:= 0;
	      variable NrErori: INTEGER:= 0; 
	      begin
	      
	      wait for 20 ns;
          X<=conv_std_logic_vector(0,8); --0
          wait for 20 ns; --2
          Y<=conv_std_logic_vector(2,8); --2
          wait for 20 ns; 
          X<=conv_std_logic_vector(1,8); --1
          wait for 20 ns;
          y<=conv_std_logic_vector(2,8); --2
          wait for 20 ns;
          X<=conv_std_logic_vector(253,8); --253
          wait for 20 ns;
          Y<=conv_std_logic_vector(255,8); --255
          wait for 20 ns;
          X<=conv_std_logic_vector(254,8); --253
          wait for 20 ns;
          Y<=conv_std_logic_vector(254,8); --255
          wait for 20 ns;
          
		      for i in 0 to 15 loop
			     for j in 0 to 15 loop 
				    X <= conv_std_logic_vector(i,8);
				    Y <= conv_std_logic_vector(j,8);
				    RezCorect:= i*j;
				    wait for 10 ns;
				    
				    --daca iesirea e diferita de cea corecta	    
				    if((P) /= conv_std_logic_vector(RezCorect,16)) then
					   NrErori:= NrErori+1;
				    end if;		
				    
			     end loop; 
		      end loop;
		  --Numar erori
		  report "Testare terminata cu "&INTEGER'image(NrErori) & " erori";
	      wait;
	      end process;

end Behavioral;
