-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComPar_types.all;

entity synthAxisComPar is
  port(-- clock
       aclk          : in synthAxisComPar_types.clk_System;
       -- reset
       nrst          : in synthAxisComPar_types.rst_System;
       s_axis_tvalid : in std_logic_vector(0 downto 0);
       s_axis_tdata  : in std_logic_vector(127 downto 0);
       s_axis_tlast  : in boolean;
       s_axis_tkeep  : in std_logic_vector(15 downto 0);
       m_axis_tready : in boolean;
       m_axis_tvalid : out std_logic_vector(0 downto 0);
       m_axis_tdata  : out std_logic_vector(7 downto 0);
       m_axis_tlast  : out boolean;
       m_axis_tkeep  : out std_logic_vector(0 downto 0);
       s_axis_tready : out boolean);
end;

architecture structural of synthAxisComPar is
  signal inp            : synthAxisComPar_types.Tuple2;
  signal result         : synthAxisComPar_types.Tuple2_0;
  signal m_axis         : synthAxisComPar_types.Maybe;
  signal m_axis_0       : synthAxisComPar_types.Axi4Stream;
  signal m_axis_tdata_0 : synthAxisComPar_types.Tuple2_1;

begin
  inp <= ( Tuple2_sel0_Maybe_0 => std_logic_vector'((s_axis_tvalid) & (synthAxisComPar_types.toSLV(synthAxisComPar_types.Axi4Stream_0'(( Axi4Stream_0_sel0_tData => synthAxisComPar_types.array_of_unsigned_8'(synthAxisComPar_types.fromSLV(s_axis_tdata))
         , Axi4Stream_0_sel1_tLast => s_axis_tlast
         , Axi4Stream_0_sel2_tKeep => s_axis_tkeep )))))
         , Tuple2_sel1_boolean => m_axis_tready );

  result <= synthAxisComPar_types.Tuple2_0'( synthAxisComPar_types.Maybe'(0 to 10 => '-')
          , true );

  m_axis <= result.Tuple2_0_sel0_Maybe;

  s_axis_tready <= result.Tuple2_0_sel1_boolean;

  m_axis_tvalid <= m_axis(10 downto 10);

  m_axis_0 <= synthAxisComPar_types.Axi4Stream'(synthAxisComPar_types.fromSLV(m_axis(9 downto 0)));

  m_axis_tdata_0 <= m_axis_0.Axi4Stream_sel0_tData_0;

  m_axis_tlast <= m_axis_0.Axi4Stream_sel1_tLast_0;

  m_axis_tkeep <= m_axis_0.Axi4Stream_sel2_tKeep_0;

  m_axis_tdata <= synthAxisComPar_types.toSLV(synthAxisComPar_types.Tuple2_1'(m_axis_tdata_0));


end;

