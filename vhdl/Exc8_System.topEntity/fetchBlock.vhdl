-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity fetchBlock is
  port(-- clock
       \c$ds_bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$ds_bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta              : in Exc8_System_topEntity_types.Instr_0;
       result           : out Exc8_System_topEntity_types.Tuple2_8);
end;

architecture structural of fetchBlock is
  signal \c$ds_app_arg\             : Exc8_System_topEntity_types.Tuple2_9 := ( Tuple2_9_sel0_unsigned_0 => to_unsigned(0,4)
, Tuple2_9_sel1_unsigned_1 => to_unsigned(1,2) );
  signal \c$case_alt\               : Exc8_System_topEntity_types.Tuple2_10;
  signal \c$case_alt_0\             : Exc8_System_topEntity_types.Tuple2_10;
  signal stallt                     : unsigned(1 downto 0);
  signal \c$app_arg\                : unsigned(3 downto 0);
  signal pc                         : unsigned(3 downto 0);
  signal \c$case_alt_selection_res\ : boolean;

begin
  -- register begin
  cds_app_arg_register : process(\c$ds_bindCsr\,\c$ds_bindCsr_0\)
  begin
    if \c$ds_bindCsr_0\ =  '1'  then
      \c$ds_app_arg\ <= ( Tuple2_9_sel0_unsigned_0 => to_unsigned(0,4)
  , Tuple2_9_sel1_unsigned_1 => to_unsigned(1,2) );
    elsif rising_edge(\c$ds_bindCsr\) then
      \c$ds_app_arg\ <= \c$case_alt\.Tuple2_10_sel0_Tuple2_9;
    end if;
  end process;
  -- register end

  result <= \c$case_alt\.Tuple2_10_sel1_Tuple2_8;

  \c$case_alt_selection_res\ <= stallt > to_unsigned(0,2);

  \c$case_alt\ <= ( Tuple2_10_sel0_Tuple2_9 => ( Tuple2_9_sel0_unsigned_0 => pc
                  , Tuple2_9_sel1_unsigned_1 => stallt - to_unsigned(1,2) )
                  , Tuple2_10_sel1_Tuple2_8 => ( Tuple2_8_sel0_Instr_0 => std_logic_vector'("100" & "----------------")
                  , Tuple2_8_sel1_unsigned => pc ) ) when \c$case_alt_selection_res\ else
                  \c$case_alt_0\;

  with (eta(18 downto 16)) select
    \c$case_alt_0\ <= ( Tuple2_10_sel0_Tuple2_9 => ( Tuple2_9_sel0_unsigned_0 => \c$app_arg\
                      , Tuple2_9_sel1_unsigned_1 => to_unsigned(2,2) )
                      , Tuple2_10_sel1_Tuple2_8 => ( Tuple2_8_sel0_Instr_0 => eta
                      , Tuple2_8_sel1_unsigned => \c$app_arg\ ) ) when "001",
                      ( Tuple2_10_sel0_Tuple2_9 => ( Tuple2_9_sel0_unsigned_0 => \c$app_arg\
                      , Tuple2_9_sel1_unsigned_1 => to_unsigned(1,2) )
                      , Tuple2_10_sel1_Tuple2_8 => ( Tuple2_8_sel0_Instr_0 => eta
                      , Tuple2_8_sel1_unsigned => \c$app_arg\ ) ) when "011",
                      ( Tuple2_10_sel0_Tuple2_9 => ( Tuple2_9_sel0_unsigned_0 => \c$app_arg\
                      , Tuple2_9_sel1_unsigned_1 => to_unsigned(0,2) )
                      , Tuple2_10_sel1_Tuple2_8 => ( Tuple2_8_sel0_Instr_0 => eta
                      , Tuple2_8_sel1_unsigned => \c$app_arg\ ) ) when others;

  stallt <= \c$ds_app_arg\.Tuple2_9_sel1_unsigned_1;

  \c$app_arg\ <= pc + to_unsigned(1,4);

  pc <= \c$ds_app_arg\.Tuple2_9_sel0_unsigned_0;


end;

