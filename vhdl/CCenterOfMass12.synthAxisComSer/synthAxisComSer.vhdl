-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity synthAxisComSer is
  port(-- clock
       aclk          : in synthAxisComSer_types.clk_System;
       -- reset
       nrst          : in synthAxisComSer_types.rst_System;
       s_axis_tvalid : in std_logic_vector(0 downto 0);
       s_axis_tdata  : in signed(31 downto 0);
       s_axis_tlast  : in boolean;
       s_axis_tkeep  : in std_logic_vector(3 downto 0);
       m_axis_tready : in boolean;
       m_axis_tvalid : out std_logic_vector(0 downto 0);
       m_axis_tdata  : out std_logic_vector(7 downto 0);
       m_axis_tlast  : out boolean;
       m_axis_tkeep  : out std_logic_vector(0 downto 0);
       s_axis_tready : out boolean);
end;

architecture structural of synthAxisComSer is
  signal inp            : synthAxisComSer_types.Tuple2_0;
  signal result         : synthAxisComSer_types.Tuple2_3;
  signal m_axis         : synthAxisComSer_types.Maybe;
  signal m_axis_0       : synthAxisComSer_types.Axi4Stream;
  signal m_axis_tdata_0 : synthAxisComSer_types.Tuple2_2;

begin
  inp <= ( Tuple2_0_sel0_Maybe_0 => std_logic_vector'((s_axis_tvalid) & (synthAxisComSer_types.toSLV(synthAxisComSer_types.Axi4Stream_0'(( Axi4Stream_0_sel0_tData => s_axis_tdata
         , Axi4Stream_0_sel1_tLast => s_axis_tlast
         , Axi4Stream_0_sel2_tKeep => s_axis_tkeep )))))
         , Tuple2_0_sel1_boolean => m_axis_tready );

  CCenterOfMass12_synthAxisComSer_mAxisComSer_result : entity CCenterOfMass12_synthAxisComSer_mAxisComSer
    port map
      ( result        => result
      , \c$bindCsr\   => aclk
      , \c$bindCsr_0\ => nrst
      , eta           => inp );

  m_axis <= result.Tuple2_3_sel0_Maybe;

  s_axis_tready <= result.Tuple2_3_sel1_boolean;

  m_axis_tvalid <= m_axis(10 downto 10);

  m_axis_0 <= synthAxisComSer_types.Axi4Stream'(synthAxisComSer_types.fromSLV(m_axis(9 downto 0)));

  m_axis_tdata_0 <= m_axis_0.Axi4Stream_sel0_tData_0;

  m_axis_tlast <= m_axis_0.Axi4Stream_sel1_tLast_0;

  m_axis_tkeep <= m_axis_0.Axi4Stream_sel2_tKeep_0;

  m_axis_tdata <= synthAxisComSer_types.toSLV(synthAxisComSer_types.Tuple2_2'(m_axis_tdata_0));


end;

