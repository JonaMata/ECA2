-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity stackBlock is
  port(-- clock
       \c$ds_bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$ds_bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta              : in Exc8_System_topEntity_types.Instr;
       result           : out Exc8_System_topEntity_types.Tuple2);
end;

architecture structural of stackBlock is
  signal \c$ds_app_arg\ : unsigned(2 downto 0) := to_unsigned(0,3);
  signal result_0       : Exc8_System_topEntity_types.Tuple2_0;
  signal \c$app_arg\    : unsigned(2 downto 0);
  signal v              : signed(15 downto 0);

begin
  -- register begin
  cds_app_arg_register : process(\c$ds_bindCsr\,\c$ds_bindCsr_0\)
  begin
    if \c$ds_bindCsr_0\ =  '1'  then
      \c$ds_app_arg\ <= to_unsigned(0,3);
    elsif rising_edge(\c$ds_bindCsr\) then
      \c$ds_app_arg\ <= result_0.Tuple2_0_sel0_unsigned;
    end if;
  end process;
  -- register end

  result <= result_0.Tuple2_0_sel1_Tuple2;

  with (eta(17 downto 16)) select
    result_0 <= ( Tuple2_0_sel0_unsigned => \c$ds_app_arg\ + to_unsigned(1,3)
                , Tuple2_0_sel1_Tuple2 => ( Tuple2_sel0_unsigned => \c$ds_app_arg\
                , Tuple2_sel1_Maybe => std_logic_vector'("1" & ((std_logic_vector(\c$ds_app_arg\)
                 & std_logic_vector(v)))) ) ) when "00",
                ( Tuple2_0_sel0_unsigned => \c$ds_app_arg\
                , Tuple2_0_sel1_Tuple2 => ( Tuple2_sel0_unsigned => \c$ds_app_arg\
                , Tuple2_sel1_Maybe => std_logic_vector'("0" & "-------------------") ) ) when "01",
                ( Tuple2_0_sel0_unsigned => \c$app_arg\
                , Tuple2_0_sel1_Tuple2 => ( Tuple2_sel0_unsigned => \c$app_arg\
                , Tuple2_sel1_Maybe => std_logic_vector'("0" & "-------------------") ) ) when others;

  \c$app_arg\ <= \c$ds_app_arg\ - to_unsigned(1,3);

  v <= signed'(exc8_system_topentity_types.fromSLV(eta(15 downto 0)));


end;

