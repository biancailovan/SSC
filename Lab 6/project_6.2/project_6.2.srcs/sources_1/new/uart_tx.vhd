----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2020 07:27:53 PM
-- Design Name: 
-- Module Name: uart_tx - Behavioral
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

entity uart_tx is
    generic(BitRate: integer:=115_200); --pentru VIO
    --generic(BitRate: integer:=10_000_000); -- pentru ILA
    Port (TxData: in std_logic_vector(7 downto 0);
          Clk: in std_logic;
          Rst: in std_logic;
          Start: in std_logic;
          Tx: out std_logic;
          TxRdy: out std_logic);
end uart_tx;

architecture Behavioral of uart_tx is
constant frecventa_ceas: integer:=100_000_000;
constant T_BIT: integer:=868; --pentru VIO
--constant T_BIT: integer:=10; --pentru ILA
type stare is (ready, load, send, waitbit, shift);
signal St: stare:=ready;
signal CntBit, CntRate: integer:=0;
signal LdData, ShData, TxEn: std_logic:='0';
signal TSR: std_logic_vector(9 downto 0):=(others=>'0');

--atributul keep, folosit la modulul ILA
attribute keep : STRING;
    attribute keep of St: signal is "TRUE";
    attribute keep of CntRate: signal is "TRUE";
    attribute keep of CntBit: signal is "TRUE";
    attribute keep of TSR: signal is "TRUE";
begin

-- Automat de stare pentru unitatea de control a transmitatorului serial
 proc_control: process (Clk)
 begin
 if RISING_EDGE (Clk) then
 if (Rst = '1') then
 St <= ready;
 else
 case St is
 when ready =>
 CntRate <= 0;
 CntBit <= 0;
 if (Start = '1') then
 St <= load;
 end if;
 when load =>
 St <= send;
when send =>
CntBit <= CntBit + 1; --mutare
 St <= waitbit;
when waitbit =>
 CntRate <= CntRate + 1;
 if (CntRate = T_BIT - 3) then
 CntRate <= 0;
 St <= shift;
 end if;
 when shift =>
 --CntBit <= CntBit + 1; --se muta in send
 if (CntBit = 10) then
 St <= ready;
 else
 St <= send;
end if;
 when others =>
 St <= ready;
 end case;
 end if;
 end if;
 end process proc_control;
-- Setarea semnalelor de comanda
 LdData <= '1' when St = load else '0';
 ShData <= '1' when St = shift else '0';
 TxEn <= '0' when St = ready or St = load else '1';
-- Setarea semnalelor de iesire
 Tx <= TSR(0) when TxEn = '1' else '1';
 TxRdy <= '1' when St = ready else '0'; 

--Registru deplasare TSR 
reg_TSR: process(Clk)
begin
    if RISING_EDGE(Clk) then
        if Rst='1' then
            TSR <= (others=>'0');
        -- reg se incarca cu datele de intrare TxData
        --completate cu un bit de STOP(1) pe poz bitului 9 si un bit de START(0) pe poz bitului 0
        elsif LdData='1' then
            TSR <= '1' & TxData & '0';
        -- reg se deplaseaza la dreapta cu o pozitie
        elsif ShData='1' then 
            TSR <= '0' & TSR(9 downto 1);
        end if;
    end if;
end process;

end Behavioral;
