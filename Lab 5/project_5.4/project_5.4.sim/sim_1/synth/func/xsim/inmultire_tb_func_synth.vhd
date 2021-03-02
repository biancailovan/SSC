-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Nov 11 20:47:07 2020
-- Host        : LAPTOP-FAE0D0IA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {C:/Users/bianc/Desktop/Facultate/An
--               3/SSC/Laborator/Laborator 6/project_5.4/project_5.4.sim/sim_1/synth/func/xsim/inmultire_tb_func_synth.vhd}
-- Design      : inmultire
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
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_in28_in : out STD_LOGIC;
    sgn_B : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_2_in18_in : out STD_LOGIC;
    p_2_in23_in : out STD_LOGIC;
    p_2_in8_in : out STD_LOGIC;
    p_2_in13_in : out STD_LOGIC;
    p_2_in3_in : out STD_LOGIC;
    LoadA : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    X_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end FDN;

architecture STRUCTURE of FDN is
  signal \^p_2_in18_in\ : STD_LOGIC;
  signal \^p_2_in28_in\ : STD_LOGIC;
  signal \^p_2_in8_in\ : STD_LOGIC;
  signal \^sgn_b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_OBUF[8]_inst_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \QQ[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QQ[5]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \QQ[6]_i_2\ : label is "soft_lutpair25";
begin
  p_2_in18_in <= \^p_2_in18_in\;
  p_2_in28_in <= \^p_2_in28_in\;
  p_2_in8_in <= \^p_2_in8_in\;
  sgn_B(7 downto 0) <= \^sgn_b\(7 downto 0);
\A_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^p_2_in18_in\,
      I1 => \^sgn_b\(5),
      I2 => Q(5),
      I3 => \^sgn_b\(6),
      I4 => Q(6),
      O => \^p_2_in28_in\
    );
\QQ[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^sgn_b\(0),
      I1 => Q(0),
      I2 => \^sgn_b\(1),
      I3 => Q(1),
      O => p_2_in3_in
    );
\QQ[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => \^sgn_b\(0),
      I1 => Q(0),
      I2 => \^sgn_b\(1),
      I3 => Q(1),
      I4 => \^sgn_b\(2),
      I5 => Q(2),
      O => \^p_2_in8_in\
    );
\QQ[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^p_2_in8_in\,
      I1 => \^sgn_b\(3),
      I2 => Q(3),
      O => p_2_in13_in
    );
\QQ[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \^p_2_in8_in\,
      I1 => \^sgn_b\(3),
      I2 => Q(3),
      I3 => \^sgn_b\(4),
      I4 => Q(4),
      O => \^p_2_in18_in\
    );
\QQ[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^p_2_in18_in\,
      I1 => \^sgn_b\(5),
      I2 => Q(5),
      O => p_2_in23_in
    );
\QQ[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"022AA880"
    )
        port map (
      I0 => LoadA,
      I1 => \^p_2_in28_in\,
      I2 => \^sgn_b\(7),
      I3 => Q(7),
      I4 => Q(8),
      O => D(0)
    );
\Q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(0),
      Q => \^sgn_b\(0),
      R => '0'
    );
\Q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(1),
      Q => \^sgn_b\(1),
      R => '0'
    );
\Q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(2),
      Q => \^sgn_b\(2),
      R => '0'
    );
\Q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(3),
      Q => \^sgn_b\(3),
      R => '0'
    );
\Q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(4),
      Q => \^sgn_b\(4),
      R => '0'
    );
\Q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(5),
      Q => \^sgn_b\(5),
      R => '0'
    );
\Q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(6),
      Q => \^sgn_b\(6),
      R => '0'
    );
\Q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => SR(0),
      D => X_IBUF(7),
      Q => \^sgn_b\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SRRN is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    A_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sgn_B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LoadA : in STD_LOGIC;
    p_2_in3_in : in STD_LOGIC;
    p_2_in8_in : in STD_LOGIC;
    p_2_in13_in : in STD_LOGIC;
    p_2_in18_in : in STD_LOGIC;
    p_2_in23_in : in STD_LOGIC;
    p_2_in28_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end SRRN;

architecture STRUCTURE of SRRN is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A_OBUF[8]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \QQ[7]_i_1__0\ : label is "soft_lutpair24";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\A_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A880"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => sgn_B(7),
      I3 => p_2_in28_in,
      O => A_OBUF(0)
    );
\QQ[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666FFFF96660000"
    )
        port map (
      I0 => \^q\(1),
      I1 => sgn_B(1),
      I2 => sgn_B(0),
      I3 => \^q\(0),
      I4 => LoadA,
      I5 => \^q\(2),
      O => p_1_in(1)
    );
\QQ[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(2),
      I1 => sgn_B(2),
      I2 => p_2_in3_in,
      I3 => LoadA,
      I4 => \^q\(3),
      O => p_1_in(2)
    );
\QQ[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(3),
      I1 => sgn_B(3),
      I2 => p_2_in8_in,
      I3 => LoadA,
      I4 => \^q\(4),
      O => p_1_in(3)
    );
\QQ[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(4),
      I1 => sgn_B(4),
      I2 => p_2_in13_in,
      I3 => LoadA,
      I4 => \^q\(5),
      O => p_1_in(4)
    );
\QQ[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(5),
      I1 => sgn_B(5),
      I2 => p_2_in18_in,
      I3 => LoadA,
      I4 => \^q\(6),
      O => p_1_in(5)
    );
\QQ[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(6),
      I1 => sgn_B(6),
      I2 => p_2_in23_in,
      I3 => LoadA,
      I4 => \^q\(7),
      O => p_1_in(6)
    );
\QQ[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => \^q\(7),
      I1 => sgn_B(7),
      I2 => p_2_in28_in,
      I3 => LoadA,
      I4 => \^q\(8),
      O => p_1_in(7)
    );
\QQ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
      C => CLK,
      CE => E(0),
      D => p_1_in(1),
      Q => \^q\(1),
      R => SR(0)
    );
\QQ_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
      C => CLK,
      CE => E(0),
      D => p_1_in(3),
      Q => \^q\(3),
      R => SR(0)
    );
\QQ_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
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
      C => CLK,
      CE => E(0),
      D => p_1_in(5),
      Q => \^q\(5),
      R => SR(0)
    );
\QQ_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(6),
      Q => \^q\(6),
      R => SR(0)
    );
\QQ_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(7),
      Q => \^q\(7),
      R => SR(0)
    );
\QQ_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \^q\(8),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \SRRN__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \SRRN__parameterized0\ : entity is "SRRN";
end \SRRN__parameterized0\;

architecture STRUCTURE of \SRRN__parameterized0\ is
begin
\QQ_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\QQ_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\QQ_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\QQ_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\QQ_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\QQ_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\QQ_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\QQ_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UC is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_stare_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Term_OBUF : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    LoadA : out STD_LOGIC;
    \FSM_sequential_stare_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rst_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sgn_B : in STD_LOGIC_VECTOR ( 0 to 0 );
    \QQ_reg[6]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Start_IBUF : in STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end UC;

architecture STRUCTURE of UC is
  signal \FSM_sequential_stare[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stare[2]_i_9_n_0\ : STD_LOGIC;
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
  signal \c[10]_i_1_n_0\ : STD_LOGIC;
  signal \c[11]_i_1_n_0\ : STD_LOGIC;
  signal \c[12]_i_1_n_0\ : STD_LOGIC;
  signal \c[13]_i_1_n_0\ : STD_LOGIC;
  signal \c[14]_i_1_n_0\ : STD_LOGIC;
  signal \c[15]_i_1_n_0\ : STD_LOGIC;
  signal \c[16]_i_1_n_0\ : STD_LOGIC;
  signal \c[17]_i_1_n_0\ : STD_LOGIC;
  signal \c[18]_i_1_n_0\ : STD_LOGIC;
  signal \c[19]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[20]_i_1_n_0\ : STD_LOGIC;
  signal \c[21]_i_1_n_0\ : STD_LOGIC;
  signal \c[22]_i_1_n_0\ : STD_LOGIC;
  signal \c[23]_i_1_n_0\ : STD_LOGIC;
  signal \c[24]_i_1_n_0\ : STD_LOGIC;
  signal \c[25]_i_1_n_0\ : STD_LOGIC;
  signal \c[26]_i_1_n_0\ : STD_LOGIC;
  signal \c[27]_i_1_n_0\ : STD_LOGIC;
  signal \c[28]_i_1_n_0\ : STD_LOGIC;
  signal \c[29]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  signal \c[30]_i_1_n_0\ : STD_LOGIC;
  signal \c[31]_i_1_n_0\ : STD_LOGIC;
  signal \c[31]_i_2_n_0\ : STD_LOGIC;
  signal \c[3]_i_1_n_0\ : STD_LOGIC;
  signal \c[4]_i_1_n_0\ : STD_LOGIC;
  signal \c[5]_i_1_n_0\ : STD_LOGIC;
  signal \c[6]_i_1_n_0\ : STD_LOGIC;
  signal \c[7]_i_1_n_0\ : STD_LOGIC;
  signal \c[8]_i_1_n_0\ : STD_LOGIC;
  signal \c[9]_i_1_n_0\ : STD_LOGIC;
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
  signal stare : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_c0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_c0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stare[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_stare[2]_i_9\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[0]\ : label is "count:101,idle:000,init:001,add:011,shift:100,decision:010,stop:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[1]\ : label is "count:101,idle:000,init:001,add:011,shift:100,decision:010,stop:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stare_reg[2]\ : label is "count:101,idle:000,init:001,add:011,shift:100,decision:010,stop:110";
  attribute SOFT_HLUTNM of \QQ[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \QQ[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \QQ[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \QQ[3]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \QQ[4]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \QQ[5]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \QQ[6]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \QQ[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \QQ[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \QQ[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \QQ[8]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Q[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of Term_OBUF_inst_i_1 : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of c0_carry : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \c0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \c[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \c[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \c[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \c[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \c[13]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \c[14]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \c[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \c[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \c[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \c[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \c[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \c[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \c[20]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \c[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \c[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \c[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \c[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \c[25]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \c[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \c[27]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \c[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \c[29]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \c[30]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \c[31]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \c[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \c[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \c[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \c[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \c[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \c[8]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \c[9]_i_1\ : label is "soft_lutpair19";
begin
\FSM_sequential_stare[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003B38"
    )
        port map (
      I0 => \QQ_reg[6]\(0),
      I1 => stare(1),
      I2 => stare(2),
      I3 => Start_IBUF,
      I4 => stare(0),
      I5 => Rst_IBUF,
      O => \FSM_sequential_stare[0]_i_1_n_0\
    );
\FSM_sequential_stare[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003308"
    )
        port map (
      I0 => \QQ_reg[6]\(0),
      I1 => stare(1),
      I2 => stare(2),
      I3 => stare(0),
      I4 => Rst_IBUF,
      O => \FSM_sequential_stare[1]_i_1_n_0\
    );
\FSM_sequential_stare[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000023C8"
    )
        port map (
      I0 => \FSM_sequential_stare[2]_i_2_n_0\,
      I1 => stare(1),
      I2 => stare(0),
      I3 => stare(2),
      I4 => Rst_IBUF,
      O => \FSM_sequential_stare[2]_i_1_n_0\
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
\FSM_sequential_stare[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444447"
    )
        port map (
      I0 => \QQ_reg[6]\(0),
      I1 => stare(1),
      I2 => \FSM_sequential_stare[2]_i_3_n_0\,
      I3 => \FSM_sequential_stare[2]_i_4_n_0\,
      I4 => \FSM_sequential_stare[2]_i_5_n_0\,
      I5 => \FSM_sequential_stare[2]_i_6_n_0\,
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
      D => \FSM_sequential_stare[0]_i_1_n_0\,
      Q => stare(0),
      R => '0'
    );
\FSM_sequential_stare_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_stare[1]_i_1_n_0\,
      Q => stare(1),
      R => '0'
    );
\FSM_sequential_stare_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_stare[2]_i_1_n_0\,
      Q => stare(2),
      R => '0'
    );
\QQ[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFFF06000000"
    )
        port map (
      I0 => Q(0),
      I1 => sgn_B(0),
      I2 => stare(2),
      I3 => stare(0),
      I4 => stare(1),
      I5 => Q(1),
      O => D(0)
    );
\QQ[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(0),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(1),
      O => \FSM_sequential_stare_reg[0]_0\(0)
    );
\QQ[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(1),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(2),
      O => \FSM_sequential_stare_reg[0]_0\(1)
    );
\QQ[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(2),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(3),
      O => \FSM_sequential_stare_reg[0]_0\(2)
    );
\QQ[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(3),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(4),
      O => \FSM_sequential_stare_reg[0]_0\(3)
    );
\QQ[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(4),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(5),
      O => \FSM_sequential_stare_reg[0]_0\(4)
    );
\QQ[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(5),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(6),
      O => \FSM_sequential_stare_reg[0]_0\(5)
    );
\QQ[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(6),
      I1 => stare(0),
      I2 => stare(2),
      I3 => \QQ_reg[6]\(7),
      O => \FSM_sequential_stare_reg[0]_0\(6)
    );
\QQ[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => \FSM_sequential_stare_reg[1]_0\(0)
    );
\QQ[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Y_IBUF(7),
      I1 => stare(0),
      I2 => stare(2),
      I3 => Q(0),
      O => \FSM_sequential_stare_reg[0]_0\(7)
    );
\QQ[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      O => E(0)
    );
\QQ[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stare(2),
      I1 => stare(0),
      I2 => stare(1),
      O => LoadA
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
Term_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stare(0),
      I1 => stare(2),
      I2 => stare(1),
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
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stare(2),
      I1 => \c_reg_n_0_[0]\,
      O => \c[0]_i_1_n_0\
    );
\c[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(10),
      I1 => stare(2),
      O => \c[10]_i_1_n_0\
    );
\c[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(11),
      I1 => stare(2),
      O => \c[11]_i_1_n_0\
    );
\c[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(12),
      I1 => stare(2),
      O => \c[12]_i_1_n_0\
    );
\c[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(13),
      I1 => stare(2),
      O => \c[13]_i_1_n_0\
    );
\c[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(14),
      I1 => stare(2),
      O => \c[14]_i_1_n_0\
    );
\c[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(15),
      I1 => stare(2),
      O => \c[15]_i_1_n_0\
    );
\c[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(16),
      I1 => stare(2),
      O => \c[16]_i_1_n_0\
    );
\c[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(17),
      I1 => stare(2),
      O => \c[17]_i_1_n_0\
    );
\c[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(18),
      I1 => stare(2),
      O => \c[18]_i_1_n_0\
    );
\c[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(19),
      I1 => stare(2),
      O => \c[19]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(1),
      I1 => stare(2),
      O => \c[1]_i_1_n_0\
    );
\c[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(20),
      I1 => stare(2),
      O => \c[20]_i_1_n_0\
    );
\c[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(21),
      I1 => stare(2),
      O => \c[21]_i_1_n_0\
    );
\c[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(22),
      I1 => stare(2),
      O => \c[22]_i_1_n_0\
    );
\c[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(23),
      I1 => stare(2),
      O => \c[23]_i_1_n_0\
    );
\c[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(24),
      I1 => stare(2),
      O => \c[24]_i_1_n_0\
    );
\c[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(25),
      I1 => stare(2),
      O => \c[25]_i_1_n_0\
    );
\c[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(26),
      I1 => stare(2),
      O => \c[26]_i_1_n_0\
    );
\c[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(27),
      I1 => stare(2),
      O => \c[27]_i_1_n_0\
    );
\c[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(28),
      I1 => stare(2),
      O => \c[28]_i_1_n_0\
    );
\c[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(29),
      I1 => stare(2),
      O => \c[29]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(2),
      I1 => stare(2),
      O => \c[2]_i_1_n_0\
    );
\c[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(30),
      I1 => stare(2),
      O => \c[30]_i_1_n_0\
    );
\c[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => stare(1),
      I1 => stare(0),
      I2 => stare(2),
      I3 => Rst_IBUF,
      O => \c[31]_i_1_n_0\
    );
\c[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(31),
      I1 => stare(2),
      O => \c[31]_i_2_n_0\
    );
\c[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in5(3),
      I1 => stare(2),
      O => \c[3]_i_1_n_0\
    );
\c[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(4),
      I1 => stare(2),
      O => \c[4]_i_1_n_0\
    );
\c[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(5),
      I1 => stare(2),
      O => \c[5]_i_1_n_0\
    );
\c[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(6),
      I1 => stare(2),
      O => \c[6]_i_1_n_0\
    );
\c[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(7),
      I1 => stare(2),
      O => \c[7]_i_1_n_0\
    );
\c[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(8),
      I1 => stare(2),
      O => \c[8]_i_1_n_0\
    );
\c[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in5(9),
      I1 => stare(2),
      O => \c[9]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
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
      CE => \c[31]_i_1_n_0\,
      D => \c[10]_i_1_n_0\,
      Q => \c_reg_n_0_[10]\,
      R => '0'
    );
\c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[11]_i_1_n_0\,
      Q => \c_reg_n_0_[11]\,
      R => '0'
    );
\c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[12]_i_1_n_0\,
      Q => \c_reg_n_0_[12]\,
      R => '0'
    );
\c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[13]_i_1_n_0\,
      Q => \c_reg_n_0_[13]\,
      R => '0'
    );
\c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[14]_i_1_n_0\,
      Q => \c_reg_n_0_[14]\,
      R => '0'
    );
\c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[15]_i_1_n_0\,
      Q => \c_reg_n_0_[15]\,
      R => '0'
    );
\c_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[16]_i_1_n_0\,
      Q => \c_reg_n_0_[16]\,
      R => '0'
    );
\c_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[17]_i_1_n_0\,
      Q => \c_reg_n_0_[17]\,
      R => '0'
    );
\c_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[18]_i_1_n_0\,
      Q => \c_reg_n_0_[18]\,
      R => '0'
    );
\c_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[19]_i_1_n_0\,
      Q => \c_reg_n_0_[19]\,
      R => '0'
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[1]_i_1_n_0\,
      Q => \c_reg_n_0_[1]\,
      R => '0'
    );
\c_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[20]_i_1_n_0\,
      Q => \c_reg_n_0_[20]\,
      R => '0'
    );
\c_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[21]_i_1_n_0\,
      Q => \c_reg_n_0_[21]\,
      R => '0'
    );
\c_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[22]_i_1_n_0\,
      Q => \c_reg_n_0_[22]\,
      R => '0'
    );
\c_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[23]_i_1_n_0\,
      Q => \c_reg_n_0_[23]\,
      R => '0'
    );
\c_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[24]_i_1_n_0\,
      Q => \c_reg_n_0_[24]\,
      R => '0'
    );
\c_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[25]_i_1_n_0\,
      Q => \c_reg_n_0_[25]\,
      R => '0'
    );
\c_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[26]_i_1_n_0\,
      Q => \c_reg_n_0_[26]\,
      R => '0'
    );
\c_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[27]_i_1_n_0\,
      Q => \c_reg_n_0_[27]\,
      R => '0'
    );
\c_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[28]_i_1_n_0\,
      Q => \c_reg_n_0_[28]\,
      R => '0'
    );
\c_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[29]_i_1_n_0\,
      Q => \c_reg_n_0_[29]\,
      R => '0'
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[2]_i_1_n_0\,
      Q => \c_reg_n_0_[2]\,
      R => '0'
    );
\c_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[30]_i_1_n_0\,
      Q => \c_reg_n_0_[30]\,
      R => '0'
    );
\c_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[31]_i_2_n_0\,
      Q => \c_reg_n_0_[31]\,
      R => '0'
    );
\c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[3]_i_1_n_0\,
      Q => \c_reg_n_0_[3]\,
      R => '0'
    );
\c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[4]_i_1_n_0\,
      Q => \c_reg_n_0_[4]\,
      R => '0'
    );
\c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[5]_i_1_n_0\,
      Q => \c_reg_n_0_[5]\,
      R => '0'
    );
\c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[6]_i_1_n_0\,
      Q => \c_reg_n_0_[6]\,
      R => '0'
    );
\c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[7]_i_1_n_0\,
      Q => \c_reg_n_0_[7]\,
      R => '0'
    );
\c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[8]_i_1_n_0\,
      Q => \c_reg_n_0_[8]\,
      R => '0'
    );
\c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \c[31]_i_1_n_0\,
      D => \c[9]_i_1_n_0\,
      Q => \c_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity inmultire is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    X : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Term : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of inmultire : entity is true;
end inmultire;

architecture STRUCTURE of inmultire is
  signal \ADDN/p_2_in13_in\ : STD_LOGIC;
  signal \ADDN/p_2_in18_in\ : STD_LOGIC;
  signal \ADDN/p_2_in23_in\ : STD_LOGIC;
  signal \ADDN/p_2_in28_in\ : STD_LOGIC;
  signal \ADDN/p_2_in3_in\ : STD_LOGIC;
  signal \ADDN/p_2_in8_in\ : STD_LOGIC;
  signal A_OBUF : STD_LOGIC_VECTOR ( 8 to 8 );
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal ComandUnit_n_0 : STD_LOGIC;
  signal ComandUnit_n_1 : STD_LOGIC;
  signal ComandUnit_n_10 : STD_LOGIC;
  signal ComandUnit_n_11 : STD_LOGIC;
  signal ComandUnit_n_12 : STD_LOGIC;
  signal ComandUnit_n_13 : STD_LOGIC;
  signal ComandUnit_n_6 : STD_LOGIC;
  signal ComandUnit_n_7 : STD_LOGIC;
  signal ComandUnit_n_8 : STD_LOGIC;
  signal ComandUnit_n_9 : STD_LOGIC;
  signal LoadA : STD_LOGIC;
  signal LoadB : STD_LOGIC;
  signal Q_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rst_IBUF : STD_LOGIC;
  signal Start_IBUF : STD_LOGIC;
  signal Term_OBUF : STD_LOGIC;
  signal X_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Y_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sgn_A : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal sgn_B : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\A_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(0),
      T => '1'
    );
\A_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(1),
      T => '1'
    );
\A_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(2),
      T => '1'
    );
\A_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(3),
      T => '1'
    );
\A_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(4),
      T => '1'
    );
\A_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(5),
      T => '1'
    );
\A_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(6),
      T => '1'
    );
\A_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => A(7),
      T => '1'
    );
\A_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(8),
      O => A(8)
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
ComandUnit: entity work.UC
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(0) => p_1_in(0),
      E(0) => ComandUnit_n_0,
      \FSM_sequential_stare_reg[0]_0\(7) => ComandUnit_n_6,
      \FSM_sequential_stare_reg[0]_0\(6) => ComandUnit_n_7,
      \FSM_sequential_stare_reg[0]_0\(5) => ComandUnit_n_8,
      \FSM_sequential_stare_reg[0]_0\(4) => ComandUnit_n_9,
      \FSM_sequential_stare_reg[0]_0\(3) => ComandUnit_n_10,
      \FSM_sequential_stare_reg[0]_0\(2) => ComandUnit_n_11,
      \FSM_sequential_stare_reg[0]_0\(1) => ComandUnit_n_12,
      \FSM_sequential_stare_reg[0]_0\(0) => ComandUnit_n_13,
      \FSM_sequential_stare_reg[1]_0\(0) => ComandUnit_n_1,
      LoadA => LoadA,
      Q(1 downto 0) => sgn_A(1 downto 0),
      \QQ_reg[6]\(7 downto 0) => Q_OBUF(7 downto 0),
      Rst_IBUF => Rst_IBUF,
      SR(0) => LoadB,
      Start_IBUF => Start_IBUF,
      Term_OBUF => Term_OBUF,
      Y_IBUF(7 downto 0) => Y_IBUF(7 downto 0),
      sgn_B(0) => sgn_B(0)
    );
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(2),
      O => Q(2)
    );
\Q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(3),
      O => Q(3)
    );
\Q_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(4),
      O => Q(4)
    );
\Q_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(5),
      O => Q(5)
    );
\Q_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(6),
      O => Q(6)
    );
\Q_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(7),
      O => Q(7)
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
SRRN_A: entity work.SRRN
     port map (
      A_OBUF(0) => A_OBUF(8),
      CLK => Clk_IBUF_BUFG,
      D(1) => p_1_in(8),
      D(0) => p_1_in(0),
      E(0) => ComandUnit_n_0,
      LoadA => LoadA,
      Q(8 downto 0) => sgn_A(8 downto 0),
      SR(0) => LoadB,
      p_2_in13_in => \ADDN/p_2_in13_in\,
      p_2_in18_in => \ADDN/p_2_in18_in\,
      p_2_in23_in => \ADDN/p_2_in23_in\,
      p_2_in28_in => \ADDN/p_2_in28_in\,
      p_2_in3_in => \ADDN/p_2_in3_in\,
      p_2_in8_in => \ADDN/p_2_in8_in\,
      sgn_B(7 downto 0) => sgn_B(7 downto 0)
    );
SRRN_Q: entity work.\SRRN__parameterized0\
     port map (
      CLK => Clk_IBUF_BUFG,
      D(7) => ComandUnit_n_6,
      D(6) => ComandUnit_n_7,
      D(5) => ComandUnit_n_8,
      D(4) => ComandUnit_n_9,
      D(3) => ComandUnit_n_10,
      D(2) => ComandUnit_n_11,
      D(1) => ComandUnit_n_12,
      D(0) => ComandUnit_n_13,
      E(0) => ComandUnit_n_1,
      Q(7 downto 0) => Q_OBUF(7 downto 0),
      SR(0) => Rst_IBUF
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
reg: entity work.FDN
     port map (
      CLK => Clk_IBUF_BUFG,
      D(0) => p_1_in(8),
      LoadA => LoadA,
      Q(8 downto 0) => sgn_A(8 downto 0),
      SR(0) => LoadB,
      X_IBUF(7 downto 0) => X_IBUF(7 downto 0),
      p_2_in13_in => \ADDN/p_2_in13_in\,
      p_2_in18_in => \ADDN/p_2_in18_in\,
      p_2_in23_in => \ADDN/p_2_in23_in\,
      p_2_in28_in => \ADDN/p_2_in28_in\,
      p_2_in3_in => \ADDN/p_2_in3_in\,
      p_2_in8_in => \ADDN/p_2_in8_in\,
      sgn_B(7 downto 0) => sgn_B(7 downto 0)
    );
end STRUCTURE;
