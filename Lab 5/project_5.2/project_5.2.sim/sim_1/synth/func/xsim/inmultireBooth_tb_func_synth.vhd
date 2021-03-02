-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Nov 11 15:12:37 2020
-- Host        : LAPTOP-FAE0D0IA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/bianc/Desktop/Facultate/An
--               3/SSC/Laborator/Laborator
--               6/project_5.2/project_5.2.sim/sim_1/synth/func/xsim/inmultireBooth_tb_func_synth.vhd}
-- Design      : inmultireBoothPlaca
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FDN is
  port (
    p_2_in13_in : out STD_LOGIC;
    p_2_in3_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SubB : in STD_LOGIC;
    \QQ_reg[4]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Rst_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end FDN;

architecture STRUCTURE of FDN is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_2_in3_in\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  p_2_in3_in <= \^p_2_in3_in\;
\QQ[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7EA40A2"
    )
        port map (
      I0 => SubB,
      I1 => \^q\(0),
      I2 => \QQ_reg[4]\(0),
      I3 => \^q\(1),
      I4 => \QQ_reg[4]\(1),
      O => \^p_2_in3_in\
    );
\QQ[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3BFEEC32208C08"
    )
        port map (
      I0 => \^p_2_in3_in\,
      I1 => SubB,
      I2 => \^q\(2),
      I3 => \QQ_reg[4]\(2),
      I4 => \^q\(3),
      I5 => \QQ_reg[4]\(3),
      O => p_2_in13_in
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => Rst_IBUF
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => Rst_IBUF
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => Rst_IBUF
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => Rst_IBUF
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => Rst_IBUF
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => Rst_IBUF
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => Rst_IBUF
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => Rst_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SRRN is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \QQ_reg[4]_0\ : out STD_LOGIC;
    \QQ_reg[5]_0\ : out STD_LOGIC;
    \QQ_reg[6]_0\ : out STD_LOGIC;
    \QQ_reg[7]_0\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \QQ_reg[4]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SubB : in STD_LOGIC;
    p_2_in13_in : in STD_LOGIC;
    LoadA : in STD_LOGIC;
    p_2_in3_in : in STD_LOGIC;
    \Seg_OBUF[6]_inst_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Seg_OBUF[6]_inst_i_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end SRRN;

architecture STRUCTURE of SRRN is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 2 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\QQ[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \QQ_reg[4]_1\(0),
      I2 => SubB,
      I3 => p_2_in3_in,
      I4 => LoadA,
      I5 => \^q\(3),
      O => p_1_in(2)
    );
\QQ[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \QQ_reg[4]_1\(1),
      I2 => SubB,
      I3 => p_2_in13_in,
      I4 => LoadA,
      I5 => \^q\(5),
      O => p_1_in(4)
    );
\QQ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\QQ_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\QQ_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(2),
      Q => \^q\(2),
      R => SR(0)
    );
\QQ_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(3),
      R => SR(0)
    );
\QQ_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(4),
      Q => \^q\(4),
      R => SR(0)
    );
\QQ_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \^q\(5),
      R => SR(0)
    );
\QQ_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \^q\(6),
      R => SR(0)
    );
\QQ_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \^q\(7),
      R => SR(0)
    );
\Seg_OBUF[6]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(2),
      I2 => \Seg_OBUF[6]_inst_i_3\(1),
      I3 => \Seg_OBUF[6]_inst_i_2\(6),
      I4 => \Seg_OBUF[6]_inst_i_3\(0),
      I5 => \Seg_OBUF[6]_inst_i_2\(2),
      O => \QQ_reg[6]_0\
    );
\Seg_OBUF[6]_inst_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(1),
      I2 => \Seg_OBUF[6]_inst_i_3\(1),
      I3 => \Seg_OBUF[6]_inst_i_2\(5),
      I4 => \Seg_OBUF[6]_inst_i_3\(0),
      I5 => \Seg_OBUF[6]_inst_i_2\(1),
      O => \QQ_reg[5]_0\
    );
\Seg_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      I2 => \Seg_OBUF[6]_inst_i_3\(1),
      I3 => \Seg_OBUF[6]_inst_i_2\(7),
      I4 => \Seg_OBUF[6]_inst_i_3\(0),
      I5 => \Seg_OBUF[6]_inst_i_2\(3),
      O => \QQ_reg[7]_0\
    );
\Seg_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \Seg_OBUF[6]_inst_i_3\(1),
      I3 => \Seg_OBUF[6]_inst_i_2\(4),
      I4 => \Seg_OBUF[6]_inst_i_3\(0),
      I5 => \Seg_OBUF[6]_inst_i_2\(0),
      O => \QQ_reg[4]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SRRN_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SRRN_0 : entity is "SRRN";
end SRRN_0;

architecture STRUCTURE of SRRN_0 is
begin
\QQ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => Rst_IBUF
    );
\QQ_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => Rst_IBUF
    );
\QQ_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => Rst_IBUF
    );
\QQ_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => Rst_IBUF
    );
\QQ_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => Rst_IBUF
    );
\QQ_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => Rst_IBUF
    );
\QQ_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => Rst_IBUF
    );
\QQ_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => Rst_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UC is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Term_OBUF : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    SubB : out STD_LOGIC;
    LoadA : out STD_LOGIC;
    \FSM_sequential_stare_reg[2]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_sequential_stare_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q_reg : out STD_LOGIC;
    Rst_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q1 : in STD_LOGIC;
    \QQ_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \QQ_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Start_IBUF : in STD_LOGIC;
    Y_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end UC;

architecture STRUCTURE of UC is
  signal \ADDN/p_2_in\ : STD_LOGIC;
  signal \ADDN/p_2_in18_in\ : STD_LOGIC;
  signal \ADDN/p_2_in23_in\ : STD_LOGIC;
  signal \ADDN/p_2_in8_in\ : STD_LOGIC;
  signal \FSM_sequential_stare[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_9_n_0\ : STD_LOGIC;
  signal \^loada\ : STD_LOGIC;
  signal S212_out : STD_LOGIC;
  signal S29_out : STD_LOGIC;
  signal S313_out : STD_LOGIC;
  signal \^subb\ : STD_LOGIC;
  signal \c0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__0_n_0\ : STD_LOGIC;
  signal \c0_carry__0_n_1\ : STD_LOGIC;
  signal \c0_carry__0_n_2\ : STD_LOGIC;
  signal \c0_carry__0_n_3\ : STD_LOGIC;
  signal \c0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__1_n_0\ : STD_LOGIC;
  signal \c0_carry__1_n_1\ : STD_LOGIC;
  signal \c0_carry__1_n_2\ : STD_LOGIC;
  signal \c0_carry__1_n_3\ : STD_LOGIC;
  signal \c0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__2_n_0\ : STD_LOGIC;
  signal \c0_carry__2_n_1\ : STD_LOGIC;
  signal \c0_carry__2_n_2\ : STD_LOGIC;
  signal \c0_carry__2_n_3\ : STD_LOGIC;
  signal \c0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__3_n_0\ : STD_LOGIC;
  signal \c0_carry__3_n_1\ : STD_LOGIC;
  signal \c0_carry__3_n_2\ : STD_LOGIC;
  signal \c0_carry__3_n_3\ : STD_LOGIC;
  signal \c0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__4_n_0\ : STD_LOGIC;
  signal \c0_carry__4_n_1\ : STD_LOGIC;
  signal \c0_carry__4_n_2\ : STD_LOGIC;
  signal \c0_carry__4_n_3\ : STD_LOGIC;
  signal \c0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \c0_carry__5_n_0\ : STD_LOGIC;
  signal \c0_carry__5_n_1\ : STD_LOGIC;
  signal \c0_carry__5_n_2\ : STD_LOGIC;
  signal \c0_carry__5_n_3\ : STD_LOGIC;
  signal \c0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \c0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \c0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \c0_carry__6_n_2\ : STD_LOGIC;
  signal \c0_carry__6_n_3\ : STD_LOGIC;
  signal c0_carry_i_1_n_0 : STD_LOGIC;
  signal c0_carry_i_2_n_0 : STD_LOGIC;
  signal c0_carry_i_3_n_0 : STD_LOGIC;
  signal c0_carry_i_4_n_0 : STD_LOGIC;
  signal c0_carry_n_0 : STD_LOGIC;
  signal c0_carry_n_1 : STD_LOGIC;
  signal c0_carry_n_2 : STD_LOGIC;
  signal c0_carry_n_3 : STD_LOGIC;
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[31]_i_1_n_0\ : STD_LOGIC;
  signal \c[31]_i_2_n_0\ : STD_LOGIC;
  signal \c_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_reg_n_0_[10]\ : STD_LOGIC;
  signal \c_reg_n_0_[11]\ : STD_LOGIC;
  signal \c_reg_n_0_[12]\ : STD_LOGIC;
  signal \c_reg_n_0_[13]\ : STD_LOGIC;
  signal \c_reg_n_0_[14]\ : STD_LOGIC;
  signal \c_reg_n_0_[15]\ : STD_LOGIC;
  signal \c_reg_n_0_[16]\ : STD_LOGIC;
  signal \c_reg_n_0_[17]\ : STD_LOGIC;
  signal \c_reg_n_0_[18]\ : STD_LOGIC;
  signal \c_reg_n_0_[19]\ : STD_LOGIC;
  signal \c_reg_n_0_[1]\ : STD_LOGIC;
  signal \c_reg_n_0_[20]\ : STD_LOGIC;
  signal \c_reg_n_0_[21]\ : STD_LOGIC;
  signal \c_reg_n_0_[22]\ : STD_LOGIC;
  signal \c_reg_n_0_[23]\ : STD_LOGIC;
  signal \c_reg_n_0_[24]\ : STD_LOGIC;
  signal \c_reg_n_0_[25]\ : STD_LOGIC;
  signal \c_reg_n_0_[26]\ : STD_LOGIC;
  signal \c_reg_n_0_[27]\ : STD_LOGIC;
  signal \c_reg_n_0_[28]\ : STD_LOGIC;
  signal \c_reg_n_0_[29]\ : STD_LOGIC;
  signal \c_reg_n_0_[2]\ : STD_LOGIC;
  signal \c_reg_n_0_[30]\ : STD_LOGIC;
  signal \c_reg_n_0_[31]\ : STD_LOGIC;
  signal \c_reg_n_0_[3]\ : STD_LOGIC;
  signal \c_reg_n_0_[4]\ : STD_LOGIC;
  signal \c_reg_n_0_[5]\ : STD_LOGIC;
  signal \c_reg_n_0_[6]\ : STD_LOGIC;
  signal \c_reg_n_0_[7]\ : STD_LOGIC;
  signal \c_reg_n_0_[8]\ : STD_LOGIC;
  signal \c_reg_n_0_[9]\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sgn_in__7\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \stare__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_c0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[0]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "count:110,idle:000,init:001,sub:100,add:011,shift:101,decision:010,stop:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "count:110,idle:000,init:001,sub:100,add:011,shift:101,decision:010,stop:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "count:110,idle:000,init:001,sub:100,add:011,shift:101,decision:010,stop:111";
  attribute SOFT_HLUTNM of \QQ[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QQ[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \QQ[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QQ[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QQ[3]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \QQ[4]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QQ[5]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QQ[6]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QQ[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QQ[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QQ[7]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QQ[7]_i_11\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QQ[7]_i_12\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QQ[7]_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QQ[7]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QQ[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QQ[7]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QQ[7]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QQ[7]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QQ[7]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Q[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Q_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of Term_OBUF_inst_i_1 : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of c0_carry : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \c[0]_i_1\ : label is "soft_lutpair3";
begin
  LoadA <= \^loada\;
  SubB <= \^subb\;
\FSM_sequential_stare[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAAEEFFBABBBA"
    )
        port map (
      I0 => \FSM_sequential_stare[0]_i_2_n_0\,
      I1 => stare(1),
      I2 => Start_IBUF,
      I3 => stare(2),
      I4 => \FSM_sequential_stare[2]_i_2_n_0\,
      I5 => stare(0),
      O => \stare__0\(0)
    );
\FSM_sequential_stare[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => Q1,
      I3 => Q(0),
      O => \FSM_sequential_stare[0]_i_2_n_0\
    );
\FSM_sequential_stare[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66662622"
    )
        port map (
      I0 => stare(0),
      I1 => stare(1),
      I2 => Q(0),
      I3 => Q1,
      I4 => stare(2),
      O => \stare__0\(1)
    );
\FSM_sequential_stare[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3CBC8CBCBC"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_n_0\,
      I1 => stare(2),
      I2 => stare(1),
      I3 => Q(0),
      I4 => Q1,
      I5 => stare(0),
      O => \stare__0\(2)
    );
\FSM_sequential_stare[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \c_reg_n_0_[10]\,
      I1 => \c_reg_n_0_[11]\,
      I2 => \c_reg_n_0_[8]\,
      I3 => \c_reg_n_0_[9]\,
      O => \FSM_sequential_stare[2]_i_10_n_0\
    );
\FSM_sequential_stare[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_3_n_0\,
      I1 => \FSM_sequential_stare[2]_i_4_n_0\,
      I2 => \FSM_sequential_stare[2]_i_5_n_0\,
      I3 => \FSM_sequential_stare[2]_i_6_n_0\,
      O => \FSM_sequential_stare[2]_i_2_n_0\
    );
\FSM_sequential_stare[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \c_reg_n_0_[21]\,
      I1 => \c_reg_n_0_[20]\,
      I2 => \c_reg_n_0_[23]\,
      I3 => \c_reg_n_0_[22]\,
      I4 => \FSM_sequential_stare[2]_i_7_n_0\,
      O => \FSM_sequential_stare[2]_i_3_n_0\
    );
\FSM_sequential_stare[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \c_reg_n_0_[29]\,
      I1 => \c_reg_n_0_[28]\,
      I2 => \c_reg_n_0_[30]\,
      I3 => \c_reg_n_0_[31]\,
      I4 => \FSM_sequential_stare[2]_i_8_n_0\,
      O => \FSM_sequential_stare[2]_i_4_n_0\
    );
\FSM_sequential_stare[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \c_reg_n_0_[5]\,
      I1 => \c_reg_n_0_[4]\,
      I2 => \c_reg_n_0_[7]\,
      I3 => \c_reg_n_0_[6]\,
      I4 => \FSM_sequential_stare[2]_i_9_n_0\,
      O => \FSM_sequential_stare[2]_i_5_n_0\
    );
\FSM_sequential_stare[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \c_reg_n_0_[13]\,
      I1 => \c_reg_n_0_[12]\,
      I2 => \c_reg_n_0_[15]\,
      I3 => \c_reg_n_0_[14]\,
      I4 => \FSM_sequential_stare[2]_i_10_n_0\,
      O => \FSM_sequential_stare[2]_i_6_n_0\
    );
\FSM_sequential_stare[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \c_reg_n_0_[18]\,
      I1 => \c_reg_n_0_[19]\,
      I2 => \c_reg_n_0_[16]\,
      I3 => \c_reg_n_0_[17]\,
      O => \FSM_sequential_stare[2]_i_7_n_0\
    );
\FSM_sequential_stare[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \c_reg_n_0_[26]\,
      I1 => \c_reg_n_0_[27]\,
      I2 => \c_reg_n_0_[24]\,
      I3 => \c_reg_n_0_[25]\,
      O => \FSM_sequential_stare[2]_i_8_n_0\
    );
\FSM_sequential_stare[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \c_reg_n_0_[2]\,
      I1 => \c_reg_n_0_[3]\,
      I2 => \c_reg_n_0_[0]\,
      I3 => \c_reg_n_0_[1]\,
      O => \FSM_sequential_stare[2]_i_9_n_0\
    );
\FSM_sequential_stare_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \stare__0\(0),
      Q => stare(0),
      R => Rst_IBUF
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \stare__0\(1),
      Q => stare(1),
      R => Rst_IBUF
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \stare__0\(2),
      Q => stare(2),
      R => Rst_IBUF
    );
\QQ[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6FF6FF00600600"
    )
        port map (
      I0 => \QQ_reg[6]\(0),
      I1 => \QQ_reg[7]\(0),
      I2 => stare(0),
      I3 => stare(2),
      I4 => stare(1),
      I5 => \QQ_reg[6]\(1),
      O => D(0)
    );
\QQ[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(0),
      I1 => stare(2),
      I2 => Q(1),
      O => \FSM_sequential_stare_reg[2]_0\(0)
    );
\QQ[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \QQ_reg[6]\(1),
      I1 => \QQ_reg[7]\(1),
      I2 => \^subb\,
      I3 => \ADDN/p_2_in\,
      I4 => \^loada\,
      I5 => \QQ_reg[6]\(2),
      O => D(1)
    );
\QQ[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(1),
      I1 => stare(2),
      I2 => Q(2),
      O => \FSM_sequential_stare_reg[2]_0\(1)
    );
\QQ[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF020002"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      I3 => \QQ_reg[7]\(0),
      I4 => \QQ_reg[6]\(0),
      O => \ADDN/p_2_in\
    );
\QQ[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(2),
      I1 => stare(2),
      I2 => Q(3),
      O => \FSM_sequential_stare_reg[2]_0\(2)
    );
\QQ[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \QQ_reg[6]\(3),
      I1 => \QQ_reg[7]\(3),
      I2 => \^subb\,
      I3 => \ADDN/p_2_in8_in\,
      I4 => \^loada\,
      I5 => \QQ_reg[6]\(4),
      O => D(2)
    );
\QQ[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(3),
      I1 => stare(2),
      I2 => Q(4),
      O => \FSM_sequential_stare_reg[2]_0\(3)
    );
\QQ[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3BFEEC32208C08"
    )
        port map (
      I0 => \ADDN/p_2_in\,
      I1 => \^subb\,
      I2 => \QQ_reg[7]\(1),
      I3 => \QQ_reg[6]\(1),
      I4 => \QQ_reg[7]\(2),
      I5 => \QQ_reg[6]\(2),
      O => \ADDN/p_2_in8_in\
    );
\QQ[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(4),
      I1 => stare(2),
      I2 => Q(5),
      O => \FSM_sequential_stare_reg[2]_0\(4)
    );
\QQ[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \QQ_reg[6]\(5),
      I1 => \QQ_reg[7]\(5),
      I2 => \^subb\,
      I3 => \ADDN/p_2_in18_in\,
      I4 => \^loada\,
      I5 => \QQ_reg[6]\(6),
      O => D(3)
    );
\QQ[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(5),
      I1 => stare(2),
      I2 => Q(6),
      O => \FSM_sequential_stare_reg[2]_0\(5)
    );
\QQ[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF3BFEEC32208C08"
    )
        port map (
      I0 => \ADDN/p_2_in8_in\,
      I1 => \^subb\,
      I2 => \QQ_reg[7]\(3),
      I3 => \QQ_reg[6]\(3),
      I4 => \QQ_reg[7]\(4),
      I5 => \QQ_reg[6]\(4),
      O => \ADDN/p_2_in18_in\
    );
\QQ[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \QQ_reg[6]\(6),
      I1 => \QQ_reg[7]\(6),
      I2 => \^subb\,
      I3 => \ADDN/p_2_in23_in\,
      I4 => \^loada\,
      I5 => \QQ_reg[6]\(7),
      O => D(4)
    );
\QQ[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(6),
      I1 => stare(2),
      I2 => Q(7),
      O => \FSM_sequential_stare_reg[2]_0\(6)
    );
\QQ[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      O => \^subb\
    );
\QQ[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => stare(1),
      I1 => stare(2),
      I2 => stare(0),
      O => E(0)
    );
\QQ[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(5),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(5)
    );
\QQ[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD02"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      I3 => \QQ_reg[7]\(3),
      I4 => \QQ_reg[6]\(3),
      O => S313_out
    );
\QQ[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(2),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(2)
    );
\QQ[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(1),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(1)
    );
\QQ[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      O => \FSM_sequential_stare_reg[1]_0\(0)
    );
\QQ[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995FFFF566A0000"
    )
        port map (
      I0 => \sgn_in__7\(7),
      I1 => \ADDN/p_2_in23_in\,
      I2 => \sgn_in__7\(6),
      I3 => \QQ_reg[6]\(6),
      I4 => \^loada\,
      I5 => \QQ_reg[6]\(7),
      O => D(5)
    );
\QQ[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => Y_IBUF(7),
      I1 => stare(2),
      I2 => \QQ_reg[6]\(0),
      O => \FSM_sequential_stare_reg[2]_0\(7)
    );
\QQ[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(7),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(7)
    );
\QQ[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => S212_out,
      I1 => S29_out,
      I2 => \sgn_in__7\(4),
      I3 => \QQ_reg[6]\(4),
      I4 => \sgn_in__7\(5),
      I5 => \QQ_reg[6]\(5),
      O => \ADDN/p_2_in23_in\
    );
\QQ[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(6),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(6)
    );
\QQ[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => stare(0),
      I1 => stare(2),
      I2 => stare(1),
      O => \^loada\
    );
\QQ[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FD020000"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      I3 => \QQ_reg[7]\(3),
      I4 => \QQ_reg[6]\(3),
      O => S212_out
    );
\QQ[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => S313_out,
      I1 => \QQ_reg[6]\(2),
      I2 => \sgn_in__7\(2),
      I3 => \QQ_reg[6]\(1),
      I4 => \sgn_in__7\(1),
      I5 => \ADDN/p_2_in\,
      O => S29_out
    );
\QQ[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A9AA"
    )
        port map (
      I0 => \QQ_reg[7]\(4),
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      O => \sgn_in__7\(4)
    );
\Q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => stare(0),
      I1 => stare(2),
      I2 => stare(1),
      O => SR(0)
    );
Q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACA0AAAA"
    )
        port map (
      I0 => Q1,
      I1 => Q(0),
      I2 => stare(1),
      I3 => stare(2),
      I4 => stare(0),
      O => Q_reg
    );
Term_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => Term_OBUF
    );
c0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c0_carry_n_0,
      CO(2) => c0_carry_n_1,
      CO(1) => c0_carry_n_2,
      CO(0) => c0_carry_n_3,
      CYINIT => \c_reg_n_0_[0]\,
      DI(3) => \c_reg_n_0_[4]\,
      DI(2) => \c_reg_n_0_[3]\,
      DI(1) => \c_reg_n_0_[2]\,
      DI(0) => \c_reg_n_0_[1]\,
      O(3 downto 0) => in5(4 downto 1),
      S(3) => c0_carry_i_1_n_0,
      S(2) => c0_carry_i_2_n_0,
      S(1) => c0_carry_i_3_n_0,
      S(0) => c0_carry_i_4_n_0
    );
\c0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => c0_carry_n_0,
      CO(3) => \c0_carry__0_n_0\,
      CO(2) => \c0_carry__0_n_1\,
      CO(1) => \c0_carry__0_n_2\,
      CO(0) => \c0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[8]\,
      DI(2) => \c_reg_n_0_[7]\,
      DI(1) => \c_reg_n_0_[6]\,
      DI(0) => \c_reg_n_0_[5]\,
      O(3 downto 0) => in5(8 downto 5),
      S(3) => \c0_carry__0_i_1_n_0\,
      S(2) => \c0_carry__0_i_2_n_0\,
      S(1) => \c0_carry__0_i_3_n_0\,
      S(0) => \c0_carry__0_i_4_n_0\
    );
\c0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[8]\,
      O => \c0_carry__0_i_1_n_0\
    );
\c0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[7]\,
      O => \c0_carry__0_i_2_n_0\
    );
\c0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[6]\,
      O => \c0_carry__0_i_3_n_0\
    );
\c0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[5]\,
      O => \c0_carry__0_i_4_n_0\
    );
\c0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__0_n_0\,
      CO(3) => \c0_carry__1_n_0\,
      CO(2) => \c0_carry__1_n_1\,
      CO(1) => \c0_carry__1_n_2\,
      CO(0) => \c0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[12]\,
      DI(2) => \c_reg_n_0_[11]\,
      DI(1) => \c_reg_n_0_[10]\,
      DI(0) => \c_reg_n_0_[9]\,
      O(3 downto 0) => in5(12 downto 9),
      S(3) => \c0_carry__1_i_1_n_0\,
      S(2) => \c0_carry__1_i_2_n_0\,
      S(1) => \c0_carry__1_i_3_n_0\,
      S(0) => \c0_carry__1_i_4_n_0\
    );
\c0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[12]\,
      O => \c0_carry__1_i_1_n_0\
    );
\c0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[11]\,
      O => \c0_carry__1_i_2_n_0\
    );
\c0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[10]\,
      O => \c0_carry__1_i_3_n_0\
    );
\c0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[9]\,
      O => \c0_carry__1_i_4_n_0\
    );
\c0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__1_n_0\,
      CO(3) => \c0_carry__2_n_0\,
      CO(2) => \c0_carry__2_n_1\,
      CO(1) => \c0_carry__2_n_2\,
      CO(0) => \c0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[16]\,
      DI(2) => \c_reg_n_0_[15]\,
      DI(1) => \c_reg_n_0_[14]\,
      DI(0) => \c_reg_n_0_[13]\,
      O(3 downto 0) => in5(16 downto 13),
      S(3) => \c0_carry__2_i_1_n_0\,
      S(2) => \c0_carry__2_i_2_n_0\,
      S(1) => \c0_carry__2_i_3_n_0\,
      S(0) => \c0_carry__2_i_4_n_0\
    );
\c0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[16]\,
      O => \c0_carry__2_i_1_n_0\
    );
\c0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[15]\,
      O => \c0_carry__2_i_2_n_0\
    );
\c0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[14]\,
      O => \c0_carry__2_i_3_n_0\
    );
\c0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[13]\,
      O => \c0_carry__2_i_4_n_0\
    );
\c0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__2_n_0\,
      CO(3) => \c0_carry__3_n_0\,
      CO(2) => \c0_carry__3_n_1\,
      CO(1) => \c0_carry__3_n_2\,
      CO(0) => \c0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[20]\,
      DI(2) => \c_reg_n_0_[19]\,
      DI(1) => \c_reg_n_0_[18]\,
      DI(0) => \c_reg_n_0_[17]\,
      O(3 downto 0) => in5(20 downto 17),
      S(3) => \c0_carry__3_i_1_n_0\,
      S(2) => \c0_carry__3_i_2_n_0\,
      S(1) => \c0_carry__3_i_3_n_0\,
      S(0) => \c0_carry__3_i_4_n_0\
    );
\c0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[20]\,
      O => \c0_carry__3_i_1_n_0\
    );
\c0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[19]\,
      O => \c0_carry__3_i_2_n_0\
    );
\c0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[18]\,
      O => \c0_carry__3_i_3_n_0\
    );
\c0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[17]\,
      O => \c0_carry__3_i_4_n_0\
    );
\c0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__3_n_0\,
      CO(3) => \c0_carry__4_n_0\,
      CO(2) => \c0_carry__4_n_1\,
      CO(1) => \c0_carry__4_n_2\,
      CO(0) => \c0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[24]\,
      DI(2) => \c_reg_n_0_[23]\,
      DI(1) => \c_reg_n_0_[22]\,
      DI(0) => \c_reg_n_0_[21]\,
      O(3 downto 0) => in5(24 downto 21),
      S(3) => \c0_carry__4_i_1_n_0\,
      S(2) => \c0_carry__4_i_2_n_0\,
      S(1) => \c0_carry__4_i_3_n_0\,
      S(0) => \c0_carry__4_i_4_n_0\
    );
\c0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[24]\,
      O => \c0_carry__4_i_1_n_0\
    );
\c0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[23]\,
      O => \c0_carry__4_i_2_n_0\
    );
\c0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[22]\,
      O => \c0_carry__4_i_3_n_0\
    );
\c0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[21]\,
      O => \c0_carry__4_i_4_n_0\
    );
\c0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__4_n_0\,
      CO(3) => \c0_carry__5_n_0\,
      CO(2) => \c0_carry__5_n_1\,
      CO(1) => \c0_carry__5_n_2\,
      CO(0) => \c0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \c_reg_n_0_[28]\,
      DI(2) => \c_reg_n_0_[27]\,
      DI(1) => \c_reg_n_0_[26]\,
      DI(0) => \c_reg_n_0_[25]\,
      O(3 downto 0) => in5(28 downto 25),
      S(3) => \c0_carry__5_i_1_n_0\,
      S(2) => \c0_carry__5_i_2_n_0\,
      S(1) => \c0_carry__5_i_3_n_0\,
      S(0) => \c0_carry__5_i_4_n_0\
    );
\c0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[28]\,
      O => \c0_carry__5_i_1_n_0\
    );
\c0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[27]\,
      O => \c0_carry__5_i_2_n_0\
    );
\c0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[26]\,
      O => \c0_carry__5_i_3_n_0\
    );
\c0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[25]\,
      O => \c0_carry__5_i_4_n_0\
    );
\c0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \c0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_c0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \c0_carry__6_n_2\,
      CO(0) => \c0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \c_reg_n_0_[30]\,
      DI(0) => \c_reg_n_0_[29]\,
      O(3) => \NLW_c0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in5(31 downto 29),
      S(3) => '0',
      S(2) => \c0_carry__6_i_1_n_0\,
      S(1) => \c0_carry__6_i_2_n_0\,
      S(0) => \c0_carry__6_i_3_n_0\
    );
\c0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[31]\,
      O => \c0_carry__6_i_1_n_0\
    );
\c0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[30]\,
      O => \c0_carry__6_i_2_n_0\
    );
\c0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[29]\,
      O => \c0_carry__6_i_3_n_0\
    );
c0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[4]\,
      O => c0_carry_i_1_n_0
    );
c0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[3]\,
      O => c0_carry_i_2_n_0
    );
c0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[2]\,
      O => c0_carry_i_3_n_0
    );
c0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[1]\,
      O => c0_carry_i_4_n_0
    );
\c[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAB6A"
    )
        port map (
      I0 => \c_reg_n_0_[0]\,
      I1 => stare(2),
      I2 => stare(1),
      I3 => stare(0),
      I4 => Rst_IBUF,
      O => \c[0]_i_1_n_0\
    );
\c[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Rst_IBUF,
      I1 => stare(0),
      I2 => stare(1),
      I3 => stare(2),
      O => \c[31]_i_1_n_0\
    );
\c[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0018"
    )
        port map (
      I0 => stare(2),
      I1 => stare(1),
      I2 => stare(0),
      I3 => Rst_IBUF,
      O => \c[31]_i_2_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => \c_reg_n_0_[0]\,
      R => '0'
    );
\c_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(10),
      Q => \c_reg_n_0_[10]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(11),
      Q => \c_reg_n_0_[11]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(12),
      Q => \c_reg_n_0_[12]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(13),
      Q => \c_reg_n_0_[13]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(14),
      Q => \c_reg_n_0_[14]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(15),
      Q => \c_reg_n_0_[15]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(16),
      Q => \c_reg_n_0_[16]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(17),
      Q => \c_reg_n_0_[17]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(18),
      Q => \c_reg_n_0_[18]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(19),
      Q => \c_reg_n_0_[19]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(1),
      Q => \c_reg_n_0_[1]\,
      S => \c[31]_i_1_n_0\
    );
\c_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(20),
      Q => \c_reg_n_0_[20]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(21),
      Q => \c_reg_n_0_[21]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(22),
      Q => \c_reg_n_0_[22]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(23),
      Q => \c_reg_n_0_[23]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(24),
      Q => \c_reg_n_0_[24]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(25),
      Q => \c_reg_n_0_[25]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(26),
      Q => \c_reg_n_0_[26]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(27),
      Q => \c_reg_n_0_[27]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(28),
      Q => \c_reg_n_0_[28]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(29),
      Q => \c_reg_n_0_[29]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(2),
      Q => \c_reg_n_0_[2]\,
      S => \c[31]_i_1_n_0\
    );
\c_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(30),
      Q => \c_reg_n_0_[30]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(31),
      Q => \c_reg_n_0_[31]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(3),
      Q => \c_reg_n_0_[3]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(4),
      Q => \c_reg_n_0_[4]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(5),
      Q => \c_reg_n_0_[5]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(6),
      Q => \c_reg_n_0_[6]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(7),
      Q => \c_reg_n_0_[7]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(8),
      Q => \c_reg_n_0_[8]\,
      R => \c[31]_i_1_n_0\
    );
\c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_2_n_0\,
      D => in5(9),
      Q => \c_reg_n_0_[9]\,
      R => \c[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity displ7seg is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    An_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \Seg_OBUF[1]_inst_i_1_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Seg_OBUF[1]_inst_i_1_1\ : in STD_LOGIC;
    \Seg_OBUF[1]_inst_i_1_2\ : in STD_LOGIC;
    \Seg_OBUF[1]_inst_i_1_3\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end displ7seg;

architecture STRUCTURE of displ7seg is
  signal Num : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \Num0_carry__0_n_0\ : STD_LOGIC;
  signal \Num0_carry__0_n_1\ : STD_LOGIC;
  signal \Num0_carry__0_n_2\ : STD_LOGIC;
  signal \Num0_carry__0_n_3\ : STD_LOGIC;
  signal \Num0_carry__1_n_0\ : STD_LOGIC;
  signal \Num0_carry__1_n_1\ : STD_LOGIC;
  signal \Num0_carry__1_n_2\ : STD_LOGIC;
  signal \Num0_carry__1_n_3\ : STD_LOGIC;
  signal \Num0_carry__2_n_0\ : STD_LOGIC;
  signal \Num0_carry__2_n_1\ : STD_LOGIC;
  signal \Num0_carry__2_n_2\ : STD_LOGIC;
  signal \Num0_carry__2_n_3\ : STD_LOGIC;
  signal \Num0_carry__3_n_2\ : STD_LOGIC;
  signal \Num0_carry__3_n_3\ : STD_LOGIC;
  signal Num0_carry_n_0 : STD_LOGIC;
  signal Num0_carry_n_1 : STD_LOGIC;
  signal Num0_carry_n_2 : STD_LOGIC;
  signal Num0_carry_n_3 : STD_LOGIC;
  signal \Num[0]_i_1_n_0\ : STD_LOGIC;
  signal \Num[19]_i_2_n_0\ : STD_LOGIC;
  signal \Num[19]_i_3_n_0\ : STD_LOGIC;
  signal \Num[19]_i_4_n_0\ : STD_LOGIC;
  signal \Num[19]_i_5_n_0\ : STD_LOGIC;
  signal \Num[19]_i_6_n_0\ : STD_LOGIC;
  signal \Num_reg_n_0_[0]\ : STD_LOGIC;
  signal \Num_reg_n_0_[10]\ : STD_LOGIC;
  signal \Num_reg_n_0_[11]\ : STD_LOGIC;
  signal \Num_reg_n_0_[12]\ : STD_LOGIC;
  signal \Num_reg_n_0_[13]\ : STD_LOGIC;
  signal \Num_reg_n_0_[14]\ : STD_LOGIC;
  signal \Num_reg_n_0_[15]\ : STD_LOGIC;
  signal \Num_reg_n_0_[16]\ : STD_LOGIC;
  signal \Num_reg_n_0_[1]\ : STD_LOGIC;
  signal \Num_reg_n_0_[2]\ : STD_LOGIC;
  signal \Num_reg_n_0_[3]\ : STD_LOGIC;
  signal \Num_reg_n_0_[4]\ : STD_LOGIC;
  signal \Num_reg_n_0_[5]\ : STD_LOGIC;
  signal \Num_reg_n_0_[6]\ : STD_LOGIC;
  signal \Num_reg_n_0_[7]\ : STD_LOGIC;
  signal \Num_reg_n_0_[8]\ : STD_LOGIC;
  signal \Num_reg_n_0_[9]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \Seg_OBUF[6]_inst_i_11_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_13_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \Seg_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_Num0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Num0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \An_OBUF[0]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \An_OBUF[1]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \An_OBUF[2]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \An_OBUF[3]_inst_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \An_OBUF[4]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \An_OBUF[5]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \An_OBUF[6]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \An_OBUF[7]_inst_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of Num0_carry : label is 35;
  attribute ADDER_THRESHOLD of \Num0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \Num0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \Num0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \Num0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \Num[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Num[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Num[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Num[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Num[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \Num[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Num[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Num[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Num[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Num[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Num[19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \Num[19]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Num[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Num[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Num[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Num[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Num[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Num[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Num[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Num[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Seg_OBUF[1]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Seg_OBUF[6]_inst_i_1\ : label is "soft_lutpair16";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\An_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(1),
      I1 => sel0(2),
      I2 => \^q\(0),
      O => An_OBUF(0)
    );
\An_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(1),
      I1 => sel0(2),
      I2 => \^q\(0),
      O => An_OBUF(1)
    );
\An_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => sel0(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => An_OBUF(2)
    );
\An_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => sel0(2),
      O => An_OBUF(3)
    );
\An_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => sel0(2),
      O => An_OBUF(4)
    );
\An_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => sel0(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => An_OBUF(5)
    );
\An_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^q\(1),
      I1 => sel0(2),
      I2 => \^q\(0),
      O => An_OBUF(6)
    );
\An_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sel0(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => An_OBUF(7)
    );
Num0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Num0_carry_n_0,
      CO(2) => Num0_carry_n_1,
      CO(1) => Num0_carry_n_2,
      CO(0) => Num0_carry_n_3,
      CYINIT => \Num_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \Num_reg_n_0_[4]\,
      S(2) => \Num_reg_n_0_[3]\,
      S(1) => \Num_reg_n_0_[2]\,
      S(0) => \Num_reg_n_0_[1]\
    );
\Num0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Num0_carry_n_0,
      CO(3) => \Num0_carry__0_n_0\,
      CO(2) => \Num0_carry__0_n_1\,
      CO(1) => \Num0_carry__0_n_2\,
      CO(0) => \Num0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \Num_reg_n_0_[8]\,
      S(2) => \Num_reg_n_0_[7]\,
      S(1) => \Num_reg_n_0_[6]\,
      S(0) => \Num_reg_n_0_[5]\
    );
\Num0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Num0_carry__0_n_0\,
      CO(3) => \Num0_carry__1_n_0\,
      CO(2) => \Num0_carry__1_n_1\,
      CO(1) => \Num0_carry__1_n_2\,
      CO(0) => \Num0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \Num_reg_n_0_[12]\,
      S(2) => \Num_reg_n_0_[11]\,
      S(1) => \Num_reg_n_0_[10]\,
      S(0) => \Num_reg_n_0_[9]\
    );
\Num0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Num0_carry__1_n_0\,
      CO(3) => \Num0_carry__2_n_0\,
      CO(2) => \Num0_carry__2_n_1\,
      CO(1) => \Num0_carry__2_n_2\,
      CO(0) => \Num0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \Num_reg_n_0_[16]\,
      S(2) => \Num_reg_n_0_[15]\,
      S(1) => \Num_reg_n_0_[14]\,
      S(0) => \Num_reg_n_0_[13]\
    );
\Num0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Num0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_Num0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Num0_carry__3_n_2\,
      CO(0) => \Num0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_Num0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2) => sel0(2),
      S(1 downto 0) => \^q\(1 downto 0)
    );
\Num[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Num[19]_i_2_n_0\,
      I1 => \Num_reg_n_0_[0]\,
      O => \Num[0]_i_1_n_0\
    );
\Num[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(10),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(10)
    );
\Num[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(11),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(11)
    );
\Num[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(12),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(12)
    );
\Num[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(13),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(13)
    );
\Num[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(14),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(14)
    );
\Num[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(15),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(15)
    );
\Num[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(16),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(16)
    );
\Num[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(17),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(17)
    );
\Num[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(18),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(18)
    );
\Num[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(19),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(19)
    );
\Num[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \Num_reg_n_0_[16]\,
      I2 => \^q\(1),
      I3 => sel0(2),
      I4 => \Num[19]_i_3_n_0\,
      I5 => \Num[19]_i_4_n_0\,
      O => \Num[19]_i_2_n_0\
    );
\Num[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \Num_reg_n_0_[5]\,
      I1 => \Num_reg_n_0_[4]\,
      I2 => \Num_reg_n_0_[7]\,
      I3 => \Num_reg_n_0_[6]\,
      I4 => \Num[19]_i_5_n_0\,
      O => \Num[19]_i_3_n_0\
    );
\Num[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \Num_reg_n_0_[13]\,
      I1 => \Num_reg_n_0_[12]\,
      I2 => \Num_reg_n_0_[15]\,
      I3 => \Num_reg_n_0_[14]\,
      I4 => \Num[19]_i_6_n_0\,
      O => \Num[19]_i_4_n_0\
    );
\Num[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Num_reg_n_0_[2]\,
      I1 => \Num_reg_n_0_[3]\,
      I2 => \Num_reg_n_0_[0]\,
      I3 => \Num_reg_n_0_[1]\,
      O => \Num[19]_i_5_n_0\
    );
\Num[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Num_reg_n_0_[10]\,
      I1 => \Num_reg_n_0_[11]\,
      I2 => \Num_reg_n_0_[8]\,
      I3 => \Num_reg_n_0_[9]\,
      O => \Num[19]_i_6_n_0\
    );
\Num[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(1),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(1)
    );
\Num[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(2),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(2)
    );
\Num[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(3),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(3)
    );
\Num[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(4),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(4)
    );
\Num[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(5),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(5)
    );
\Num[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(6),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(6)
    );
\Num[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(7),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(7)
    );
\Num[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(8),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(8)
    );
\Num[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data0(9),
      I1 => \Num[19]_i_2_n_0\,
      O => Num(9)
    );
\Num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \Num[0]_i_1_n_0\,
      Q => \Num_reg_n_0_[0]\,
      R => SR(0)
    );
\Num_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(10),
      Q => \Num_reg_n_0_[10]\,
      R => SR(0)
    );
\Num_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(11),
      Q => \Num_reg_n_0_[11]\,
      R => SR(0)
    );
\Num_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(12),
      Q => \Num_reg_n_0_[12]\,
      R => SR(0)
    );
\Num_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(13),
      Q => \Num_reg_n_0_[13]\,
      R => SR(0)
    );
\Num_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(14),
      Q => \Num_reg_n_0_[14]\,
      R => SR(0)
    );
\Num_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(15),
      Q => \Num_reg_n_0_[15]\,
      R => SR(0)
    );
\Num_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(16),
      Q => \Num_reg_n_0_[16]\,
      R => SR(0)
    );
\Num_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(17),
      Q => \^q\(0),
      R => SR(0)
    );
\Num_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(18),
      Q => \^q\(1),
      R => SR(0)
    );
\Num_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(19),
      Q => sel0(2),
      R => SR(0)
    );
\Num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(1),
      Q => \Num_reg_n_0_[1]\,
      R => SR(0)
    );
\Num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(2),
      Q => \Num_reg_n_0_[2]\,
      R => SR(0)
    );
\Num_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(3),
      Q => \Num_reg_n_0_[3]\,
      R => SR(0)
    );
\Num_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(4),
      Q => \Num_reg_n_0_[4]\,
      R => SR(0)
    );
\Num_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(5),
      Q => \Num_reg_n_0_[5]\,
      R => SR(0)
    );
\Num_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(6),
      Q => \Num_reg_n_0_[6]\,
      R => SR(0)
    );
\Num_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(7),
      Q => \Num_reg_n_0_[7]\,
      R => SR(0)
    );
\Num_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(8),
      Q => \Num_reg_n_0_[8]\,
      R => SR(0)
    );
\Num_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Num(9),
      Q => \Num_reg_n_0_[9]\,
      R => SR(0)
    );
\Seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_3_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_5_n_0\,
      O => Seg_OBUF(0)
    );
\Seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_3_n_0\,
      O => Seg_OBUF(1)
    );
\Seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_3_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_5_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_4_n_0\,
      O => Seg_OBUF(2)
    );
\Seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_3_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_5_n_0\,
      O => Seg_OBUF(3)
    );
\Seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_5_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_3_n_0\,
      O => Seg_OBUF(4)
    );
\Seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_3_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_5_n_0\,
      O => Seg_OBUF(5)
    );
\Seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \Seg_OBUF[6]_inst_i_2_n_0\,
      I1 => \Seg_OBUF[6]_inst_i_3_n_0\,
      I2 => \Seg_OBUF[6]_inst_i_4_n_0\,
      I3 => \Seg_OBUF[6]_inst_i_5_n_0\,
      O => Seg_OBUF(6)
    );
\Seg_OBUF[6]_inst_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D(6),
      I1 => D(2),
      I2 => \^q\(1),
      I3 => Y_IBUF(6),
      I4 => \^q\(0),
      I5 => Y_IBUF(2),
      O => \Seg_OBUF[6]_inst_i_11_n_0\
    );
\Seg_OBUF[6]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D(5),
      I1 => D(1),
      I2 => \^q\(1),
      I3 => Y_IBUF(5),
      I4 => \^q\(0),
      I5 => Y_IBUF(1),
      O => \Seg_OBUF[6]_inst_i_13_n_0\
    );
\Seg_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_OBUF[1]_inst_i_1_3\,
      I1 => \Seg_OBUF[6]_inst_i_7_n_0\,
      O => \Seg_OBUF[6]_inst_i_2_n_0\,
      S => sel0(2)
    );
\Seg_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_OBUF[1]_inst_i_1_0\,
      I1 => \Seg_OBUF[6]_inst_i_9_n_0\,
      O => \Seg_OBUF[6]_inst_i_3_n_0\,
      S => sel0(2)
    );
\Seg_OBUF[6]_inst_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_OBUF[1]_inst_i_1_2\,
      I1 => \Seg_OBUF[6]_inst_i_11_n_0\,
      O => \Seg_OBUF[6]_inst_i_4_n_0\,
      S => sel0(2)
    );
\Seg_OBUF[6]_inst_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Seg_OBUF[1]_inst_i_1_1\,
      I1 => \Seg_OBUF[6]_inst_i_13_n_0\,
      O => \Seg_OBUF[6]_inst_i_5_n_0\,
      S => sel0(2)
    );
\Seg_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D(7),
      I1 => D(3),
      I2 => \^q\(1),
      I3 => Y_IBUF(7),
      I4 => \^q\(0),
      I5 => Y_IBUF(3),
      O => \Seg_OBUF[6]_inst_i_7_n_0\
    );
\Seg_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => D(4),
      I1 => D(0),
      I2 => \^q\(1),
      I3 => Y_IBUF(4),
      I4 => \^q\(0),
      I5 => Y_IBUF(0),
      O => \Seg_OBUF[6]_inst_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity xil_defaultlib_FD is
  port (
    Q1 : out STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end xil_defaultlib_FD;

architecture STRUCTURE of xil_defaultlib_FD is
begin
Q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => Q_reg_0,
      Q => Q1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inmultireBooth is
  port (
    Term_OBUF : out STD_LOGIC;
    \QQ_reg[4]\ : out STD_LOGIC;
    \QQ_reg[5]\ : out STD_LOGIC;
    \QQ_reg[6]\ : out STD_LOGIC;
    \QQ_reg[7]\ : out STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC;
    Rst_IBUF : in STD_LOGIC;
    Start_IBUF : in STD_LOGIC;
    \Seg_OBUF[6]_inst_i_3\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Y_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end inmultireBooth;

architecture STRUCTURE of inmultireBooth is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ADDN/p_2_in13_in\ : STD_LOGIC;
  signal \ADDN/p_2_in3_in\ : STD_LOGIC;
  signal ComandUnit_n_0 : STD_LOGIC;
  signal ComandUnit_n_11 : STD_LOGIC;
  signal ComandUnit_n_12 : STD_LOGIC;
  signal ComandUnit_n_13 : STD_LOGIC;
  signal ComandUnit_n_14 : STD_LOGIC;
  signal ComandUnit_n_15 : STD_LOGIC;
  signal ComandUnit_n_16 : STD_LOGIC;
  signal ComandUnit_n_17 : STD_LOGIC;
  signal ComandUnit_n_18 : STD_LOGIC;
  signal ComandUnit_n_19 : STD_LOGIC;
  signal ComandUnit_n_20 : STD_LOGIC;
  signal LoadA : STD_LOGIC;
  signal LoadB : STD_LOGIC;
  signal Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Q1 : STD_LOGIC;
  signal QQ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal SubB : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sgn_B : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
ComandUnit: entity work.UC
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(5 downto 3) => p_1_in(7 downto 5),
      D(2) => p_1_in(3),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => ComandUnit_n_0,
      \FSM_sequential_stare_reg[1]_0\(0) => ComandUnit_n_19,
      \FSM_sequential_stare_reg[2]_0\(7) => ComandUnit_n_11,
      \FSM_sequential_stare_reg[2]_0\(6) => ComandUnit_n_12,
      \FSM_sequential_stare_reg[2]_0\(5) => ComandUnit_n_13,
      \FSM_sequential_stare_reg[2]_0\(4) => ComandUnit_n_14,
      \FSM_sequential_stare_reg[2]_0\(3) => ComandUnit_n_15,
      \FSM_sequential_stare_reg[2]_0\(2) => ComandUnit_n_16,
      \FSM_sequential_stare_reg[2]_0\(1) => ComandUnit_n_17,
      \FSM_sequential_stare_reg[2]_0\(0) => ComandUnit_n_18,
      LoadA => LoadA,
      Q(7 downto 1) => QQ(7 downto 1),
      Q(0) => Q(0),
      Q1 => Q1,
      \QQ_reg[6]\(7 downto 0) => A(7 downto 0),
      \QQ_reg[7]\(7 downto 0) => sgn_B(7 downto 0),
      Q_reg => ComandUnit_n_20,
      Rst_IBUF => Rst_IBUF,
      SR(0) => LoadB,
      Start_IBUF => Start_IBUF,
      SubB => SubB,
      Term_OBUF => Term_OBUF,
      Y_IBUF(7 downto 0) => Y_IBUF(7 downto 0)
    );
FD: entity work.xil_defaultlib_FD
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      Q1 => Q1,
      Q_reg_0 => ComandUnit_n_20
    );
SRRN_A: entity work.SRRN
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(5 downto 3) => p_1_in(7 downto 5),
      D(2) => p_1_in(3),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => ComandUnit_n_0,
      LoadA => LoadA,
      Q(7 downto 0) => A(7 downto 0),
      \QQ_reg[4]_0\ => \QQ_reg[4]\,
      \QQ_reg[4]_1\(1) => sgn_B(4),
      \QQ_reg[4]_1\(0) => sgn_B(2),
      \QQ_reg[5]_0\ => \QQ_reg[5]\,
      \QQ_reg[6]_0\ => \QQ_reg[6]\,
      \QQ_reg[7]_0\ => \QQ_reg[7]\,
      SR(0) => LoadB,
      \Seg_OBUF[6]_inst_i_2\(7 downto 1) => QQ(7 downto 1),
      \Seg_OBUF[6]_inst_i_2\(0) => Q(0),
      \Seg_OBUF[6]_inst_i_3\(1 downto 0) => \Seg_OBUF[6]_inst_i_3\(1 downto 0),
      SubB => SubB,
      p_2_in13_in => \ADDN/p_2_in13_in\,
      p_2_in3_in => \ADDN/p_2_in3_in\
    );
SRRN_Q: entity work.SRRN_0
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7) => ComandUnit_n_11,
      D(6) => ComandUnit_n_12,
      D(5) => ComandUnit_n_13,
      D(4) => ComandUnit_n_14,
      D(3) => ComandUnit_n_15,
      D(2) => ComandUnit_n_16,
      D(1) => ComandUnit_n_17,
      D(0) => ComandUnit_n_18,
      E(0) => ComandUnit_n_19,
      Q(7 downto 1) => QQ(7 downto 1),
      Q(0) => Q(0),
      Rst_IBUF => Rst_IBUF
    );
regN: entity work.FDN
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7 downto 0) => D(7 downto 0),
      E(0) => LoadB,
      Q(7 downto 0) => sgn_B(7 downto 0),
      \QQ_reg[4]\(3 downto 0) => A(3 downto 0),
      Rst_IBUF => Rst_IBUF,
      SubB => SubB,
      p_2_in13_in => \ADDN/p_2_in13_in\,
      p_2_in3_in => \ADDN/p_2_in3_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inmultireBoothPlaca is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    X : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    An : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Seg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Term : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of inmultireBoothPlaca : entity is true;
end inmultireBoothPlaca;

architecture STRUCTURE of inmultireBoothPlaca is
  signal An_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal DUTBooth_n_1 : STD_LOGIC;
  signal DUTBooth_n_2 : STD_LOGIC;
  signal DUTBooth_n_3 : STD_LOGIC;
  signal DUTBooth_n_4 : STD_LOGIC;
  signal Rst_IBUF : STD_LOGIC;
  signal Seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Start_IBUF : STD_LOGIC;
  signal Term_OBUF : STD_LOGIC;
  signal X_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\An_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(0),
      O => An(0)
    );
\An_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(1),
      O => An(1)
    );
\An_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(2),
      O => An(2)
    );
\An_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(3),
      O => An(3)
    );
\An_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(4),
      O => An(4)
    );
\An_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(5),
      O => An(5)
    );
\An_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(6),
      O => An(6)
    );
\An_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => An_OBUF(7),
      O => An(7)
    );
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk,
      O => Clk_IBUF
    );
DUTBooth: entity work.inmultireBooth
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7 downto 0) => X_IBUF(7 downto 0),
      \QQ_reg[4]\ => DUTBooth_n_1,
      \QQ_reg[5]\ => DUTBooth_n_2,
      \QQ_reg[6]\ => DUTBooth_n_3,
      \QQ_reg[7]\ => DUTBooth_n_4,
      Rst_IBUF => Rst_IBUF,
      \Seg_OBUF[6]_inst_i_3\(1 downto 0) => sel0(1 downto 0),
      Start_IBUF => Start_IBUF,
      Term_OBUF => Term_OBUF,
      Y_IBUF(7 downto 0) => Y_IBUF(7 downto 0)
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
\Seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(0),
      O => Seg(0)
    );
\Seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(1),
      O => Seg(1)
    );
\Seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(2),
      O => Seg(2)
    );
\Seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(3),
      O => Seg(3)
    );
\Seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(4),
      O => Seg(4)
    );
\Seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(5),
      O => Seg(5)
    );
\Seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Seg_OBUF(6),
      O => Seg(6)
    );
\Seg_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => Seg(7)
    );
Start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Start,
      O => Start_IBUF
    );
Term_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Term_OBUF,
      O => Term
    );
\X_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(0),
      O => X_IBUF(0)
    );
\X_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(1),
      O => X_IBUF(1)
    );
\X_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(2),
      O => X_IBUF(2)
    );
\X_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(3),
      O => X_IBUF(3)
    );
\X_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(4),
      O => X_IBUF(4)
    );
\X_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(5),
      O => X_IBUF(5)
    );
\X_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(6),
      O => X_IBUF(6)
    );
\X_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => X(7),
      O => X_IBUF(7)
    );
\Y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(0),
      O => Y_IBUF(0)
    );
\Y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(1),
      O => Y_IBUF(1)
    );
\Y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(2),
      O => Y_IBUF(2)
    );
\Y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(3),
      O => Y_IBUF(3)
    );
\Y_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(4),
      O => Y_IBUF(4)
    );
\Y_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(5),
      O => Y_IBUF(5)
    );
\Y_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(6),
      O => Y_IBUF(6)
    );
\Y_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Y(7),
      O => Y_IBUF(7)
    );
displ7seg: entity work.displ7seg
     port map (
      An_OBUF(7 downto 0) => An_OBUF(7 downto 0),
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7 downto 0) => X_IBUF(7 downto 0),
      Q(1 downto 0) => sel0(1 downto 0),
      SR(0) => Rst_IBUF,
      Seg_OBUF(6 downto 0) => Seg_OBUF(6 downto 0),
      \Seg_OBUF[1]_inst_i_1_0\ => DUTBooth_n_1,
      \Seg_OBUF[1]_inst_i_1_1\ => DUTBooth_n_2,
      \Seg_OBUF[1]_inst_i_1_2\ => DUTBooth_n_3,
      \Seg_OBUF[1]_inst_i_1_3\ => DUTBooth_n_4,
      Y_IBUF(7 downto 0) => Y_IBUF(7 downto 0)
    );
end STRUCTURE;
