----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2020 05:49:02 PM
-- Design Name: 
-- Module Name: modul_principal - Behavioral
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

entity modul_principal is
    Generic (n: integer:= 8);
    Port (Clk: in std_logic;
          Rst: in std_logic; --semnal resetare sincrona
          Read: in std_logic; --indica inceperea operatiei de citire
          MISO: in std_logic; --al interfetei SPI
          MOSI: out std_logic;
          SCLK: out std_logic;
          SS: out std_logic;
          Data1: out std_logic_vector(31 downto 0); --datele receptionate de accelerometru, date care vor fi memorate intr-un set de registre
          Data2: out std_logic_vector(31 downto 0));
end modul_principal;

architecture Behavioral of modul_principal is
--semnal integer, contorizarea octetilor receptionati de la accelerometru
signal CntBit: integer:= 0;
--semnale de control pentru SPI
signal Start, TxRdy, RxRdy : std_logic;
signal TxData, RxData : STD_LOGIC_VECTOR(n - 1 downto 0);

type TIP_STARE is (idle, st1, st2, st3, st4, st5, st6, st7, st8);
signal St: TIP_STARE;

signal semnal_comanda: std_logic:='0';

--tablou 8 vector a cate 8 biti fiecare
type reg is array(0 to 7) of std_logic_vector(7 downto 0);
signal reg_sgn: reg; --un semnal de acest tip

begin

--instantiere controler SPI
controller_SPI: entity WORK.controler_SPI 
                generic map(n=>n)
                port map(Clk=>Clk, Rst=>Rst, Start=>Start, TxData=>TxData, MISO=>MISO, MOSI=>MOSI, SCLK=>SCLK, SS=>SS, TxRdy=>TxRdy, RxRdy=>RxRdy, RxData=>RxData);

--automat de stare => unitatea de control a modulului
automat_UC:process(Clk)
begin

    if RISING_EDGE(Clk) then
        if Rst = '1' then
            St <= idle;
        else
            case St is
                when idle => 
                    CntBit <= 0;
                        if Read = '1' then
                            St <= st1;
                        end if;
                when st1 =>
                    St <= st2;
                when st2 =>
                    St <= st3;
                when st3 =>
                    if TxRdy = '1' then
                        St <= st4;
                    end if;
                when st4 =>
                    St <= st5;
                when st5 =>
                    St <= st6;
                when st6 =>
                    if RxRdy = '1' then
                        St <= st7;
                    end if;
                when st7 =>
                     --semnal_comanda <= '1';
                     CntBit <= CntBit + 1;
                     St <= st8;
                when st8 =>
                    if CntBit = 8 then
                        St <= idle;
                    else
                        St <= st3;
                    end if;
                end case;
             end if;
       end if;   

end process;

--instructiuni concurente
TxData <= x"0B" when St = st1 or St = st2 else x"00";
Start <= '1' when St = st2 or St =st5;
semnal_comanda <= '1' when St = st7 else '0';

--proces pentru setul de registre
--memorarea datelor receptionate
--inscriem datele de la iesirea RxData in reg cu indexul dat de contorul de octeti actualizat in automatul de stare

reg_memorare: process(Clk)
begin
    if RISING_EDGE(Clk) then
        if semnal_comanda = '1' then
            REG_SGN(CntBit) <= RxData;
        end if;
    end if;
end process;

--instructiuni concurente pentru asignare Data1, Data2
--Data1: concatenarea primelor 4 registre
Data1 <= reg_sgn(0) & reg_sgn(1) & reg_sgn(2) & reg_sgn(3);
--Data2: concatenarea urmatoarelor 4 registre
Data2 <= reg_sgn(4) & reg_sgn(5) & reg_sgn(6) & reg_sgn(7);

end Behavioral;
