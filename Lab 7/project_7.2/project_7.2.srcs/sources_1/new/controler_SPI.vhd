----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2020 04:35:41 PM
-- Design Name: 
-- Module Name: controler_SPI - Behavioral
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

entity controler_SPI is
    Generic (frecv_SCLK: integer:= 5_000_000; -- frecventa semnal ceas SCLK
             n: integer:= 8); --dimensiunea cuvantului
    Port (Clk: in std_logic;
          Rst: in std_logic;
          Start: in std_logic;
          TxData: in std_logic_vector((n-1) downto 0);
          MISO: in std_logic;
          MOSI: out std_logic;
          RxData : out std_logic_vector((n-1) downto 0);
          SCLK: out std_logic;
          SS: out std_logic;
          TxRdy: out std_logic;
          RxRdy: out std_logic);
end controler_SPI;

architecture Behavioral of controler_SPI is
constant frecv_Clk: integer:= 100_000_000; --constanta pentru frecventa samnal ceas
constant frecv_div: integer:= frecv_Clk / frecv_SCLK; --val cu care trebuie divizata frecventa semnalului de ceas
--semnale de control, toate initializate la 0.
signal Start_reg, Start_int, RstStart: std_logic:= '0';
signal Q_TxData_reg, Q_TxRx_reg: std_logic_vector(n-1 downto 0);
signal SCLK_int, SclkEn, LdTxRx, ShTxRx, Sin: std_logic:= '0';
signal CE_p: std_logic:= '0'; --seaplica la intrarea CE a bistabilului std_logic_1164
signal CE_n: std_logic:= '0'; --se aplica la intrarea de validare CE a registrului de deplasare TxRx_reg si la intrarea de validare CE a UC

--pentru automatul de stare din diagrama
type TIP_STARE is (idle, load, tx_rx, bit0, ready);
signal St: TIP_STARE;

signal Cnt: integer:= 0;

begin

--implementare modul Gen_Sclk -> genereaza semnal de ceas SCLK, CE_p, CE_n
modul_Gen_Sclk: process(Clk, Cnt)
begin
    
    CE_p <= '0';
    CE_n <= '0';
    if RISING_EDGE (Clk) then
        Cnt <= Cnt + 1;
        if Cnt = frecv_div/2 then
            SCLK_int <= not (SCLK_int);
            CE_p <= '1';
        elsif Cnt = frecv_div then 
             SCLK_int <= not (SCLK_int);
             CE_n <= '1';
             Cnt <= 0;
        end if;
     end if;
     
end process;

--bistabil D, Start_reg
Start_regg: process(Clk, RstStart)
begin
    
    --conditie front crescator
    if RISING_EDGE (Clk) then
        --semnal de resetare sincrona e diferit aici
        if RstStart = '1' then 
            Start_int <= '0';
        else
            Start_int <= Start_reg;
        end if;
     end if;

end process;

--registrul TxData
TxData_reg: process(Clk, Start)
begin

    if RISING_EDGE(Clk) then
        if Rst = '1' then 
            Q_TxData_reg <= (others => '0');
         elsif Start = '1' then
            Q_TxData_reg <= TxData;
         end if;
    end if;
    
end process;

--registrul Rx
Rx_reg: process(Clk, CE_p, Rst)
begin

    if RISING_EDGE(Clk) then
        if CE_p = '1' then 
            if Rst = '1' then 
                Sin <= '0';
            else
                Sin <= MISO;
            end if;
        end if;
    end if;
    
end process;

SCLK <= SCLK_int when SCLKEn='1' else '0';
        
--registru TxRx
TxRx_reg: process(Clk)
begin

    if RISING_EDGE(Clk) then 
        if CE_n = '1' then
            if Rst = '1' then
                Q_TxRx_reg <= (others => '0');
            else
                if ShTxRx = '1' then 
                    Q_TxRx_reg <= Q_TxData_reg(n-2 downto 0) & Sin;
                    MOSI <= Q_TxRx_reg(n - 1);
                else
                    if LdTxRx = '1' then 
                        Q_TxRx_reg <= Q_TxData_reg;
                    end if;
                end if;
            end if;
        end if;
    end if;
    
end process;

automat_stare: process(Clk)
variable CntBit :INTEGER := 0; --pentru contorizarea bitilor transmisi si receptionati
begin

    if RISING_EDGE(Clk) then
        if CE_n = '1' then
            if Rst = '1' then
                St <= idle;
            else
                case St is
                    when idle =>
                        if Start_int = '1' then
                            CntBit:= n - 1;
                            St <= load;
                        end if;
                    when load =>
                        CntBit:= n - 1;
                        St <= tx_rx;
                    when tx_rx =>
                        if CntBit = 0 then
                            St <= bit0;
                        else
                            CntBit:= CntBit - 1;
                        end if;
                    when bit0 =>
                        St <= ready;
                    when ready  =>
                        CntBit:= n - 1;
                        if Start_int = '0' then
                            St <= idle;
                        else
                           St <= tx_rx;
                        end if;
                end case;
           end if;
       end if;
    end if;

end process;

--in starea load
RstStart <= '1' when St = load else '0';
LdTxRx <= '1' when St = load else '0';
SS <= '1' when St = load else '0';  
--in starea tx_rx
SclkEn <= '1' when St = tx_rx else '0';
ShTxRx <= '1' when St = tx_rx else '0'; 
--in starea bit0 
TxRdy <= '1' when St = bit0 else '0'; --se poate initia transmiterea unui nou cuvant 
RxRdy <= '1' when St = ready else '0';

RxData <= Q_TxRx_reg;

end Behavioral;
