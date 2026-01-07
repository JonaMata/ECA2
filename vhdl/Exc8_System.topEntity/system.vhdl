-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity system is
  port(-- clock
       \c$bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta           : in Exc8_System_topEntity_types.Instr_0;
       result        : out signed(15 downto 0));
end;

architecture structural of system is
  signal result_0         : signed(15 downto 0);
  signal result_1         : Exc8_System_topEntity_types.Tuple2_3;
  signal result_fun_arg   : Exc8_System_topEntity_types.Instr;
  signal result_fun_arg_0 : Exc8_System_topEntity_types.Tuple2_2;

begin
  result_fun_arg <= result_1.Tuple2_3_sel0_Instr;

  system_1_result_0 : entity system_1
    port map
      ( result           => result_0
      , \c$ds_bindCsr\   => \c$bindCsr\
      , \c$ds_bindCsr_0\ => \c$bindCsr_0\
      , eta              => result_fun_arg );

  result_fun_arg_0 <= ( Tuple2_2_sel0_Instr_0 => eta
                      , Tuple2_2_sel1_signed => result_0 );

  procBlock_result_1 : entity procBlock
    port map
      ( result           => result_1
      , \c$ds_bindCsr\   => \c$bindCsr\
      , \c$ds_bindCsr_0\ => \c$bindCsr_0\
      , eta              => result_fun_arg_0 );

  result <= result_1.Tuple2_3_sel1_signed;


end;

