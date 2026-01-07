-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity topEntity is
  port(-- clock
       clk    : in Exc8_System_topEntity_types.clk_System;
       -- reset
       rst    : in Exc8_System_topEntity_types.rst_System;
       result : out signed(15 downto 0));
end;

architecture structural of topEntity is
  signal result_1 : Exc8_System_topEntity_types.Instr_0;

begin
  system_result : entity system
    port map
      ( result        => result
      , \c$bindCsr\   => clk
      , \c$bindCsr_0\ => rst
      , eta           => result_1 );

  system_0_result_1 : entity system_0
    port map
      ( result        => result_1
      , \c$bindCsr\   => clk
      , \c$bindCsr_0\ => rst );


end;

