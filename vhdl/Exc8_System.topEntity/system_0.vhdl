-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity system_0 is
  port(-- clock
       \c$bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       result        : out Exc8_System_topEntity_types.Instr_0);
end;

architecture structural of system_0 is
  signal result_0       : Exc8_System_topEntity_types.Instr_0;
  signal result_1       : Exc8_System_topEntity_types.Tuple2_8;
  signal result_fun_arg : unsigned(3 downto 0);

begin
  result_fun_arg <= result_1.Tuple2_8_sel1_unsigned;

  instrBRAM_result_0 : entity instrBRAM
    port map
      ( result           => result_0
      , \c$ds_bindCsr\   => \c$bindCsr\
      , \c$ds_bindCsr_0\ => \c$bindCsr_0\
      , eta              => result_fun_arg );

  fetchBlock_result_1 : entity fetchBlock
    port map
      ( result           => result_1
      , \c$ds_bindCsr\   => \c$bindCsr\
      , \c$ds_bindCsr_0\ => \c$bindCsr_0\
      , eta              => result_0 );

  result <= result_1.Tuple2_8_sel0_Instr_0;


end;

