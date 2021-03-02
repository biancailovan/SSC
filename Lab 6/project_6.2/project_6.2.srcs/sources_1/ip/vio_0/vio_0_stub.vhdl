-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Nov 16 20:17:57 2020
-- Host        : LAPTOP-FAE0D0IA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/bianc/Desktop/Facultate/An 3/SSC/Laborator/Laborator
--               8/project_6.2/project_6.2.srcs/sources_1/ip/vio_0/vio_0_stub.vhdl}
-- Design      : vio_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vio_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end vio_0;

architecture stub of vio_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[1:0],probe_out0[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2020.1";
begin
end;
