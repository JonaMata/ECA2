-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity system_1 is
  port(-- clock
       \c$ds_bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$ds_bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta              : in Exc8_System_topEntity_types.Instr;
       result           : out signed(15 downto 0));
end;

architecture structural of system_1 is
  signal result_0         : Exc8_System_topEntity_types.Tuple2;
  signal result_fun_arg   : unsigned(2 downto 0);
  signal result_fun_arg_0 : Exc8_System_topEntity_types.Maybe;

begin
  stackBlock_result_0 : entity stackBlock
    port map
      ( result           => result_0
      , \c$ds_bindCsr\   => \c$ds_bindCsr\
      , \c$ds_bindCsr_0\ => \c$ds_bindCsr_0\
      , eta              => eta );

  result_fun_arg <= result_0.Tuple2_sel0_unsigned;

  result_fun_arg_0 <= result_0.Tuple2_sel1_Maybe;

  blockRAMblock_result : entity blockRAMblock
    port map
      ( result        => result
      , \c$bindCsr\   => \c$ds_bindCsr\
      , \c$bindCsr_0\ => \c$ds_bindCsr_0\
      , eta           => result_fun_arg
      , eta1          => result_fun_arg_0 );


end;

