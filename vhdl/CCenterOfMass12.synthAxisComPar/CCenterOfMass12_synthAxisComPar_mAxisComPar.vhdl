-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComPar_types.all;

entity CCenterOfMass12_synthAxisComPar_mAxisComPar is
  port(-- clock
       \c$bindCsr\   : in synthAxisComPar_types.clk_System;
       -- reset
       \c$bindCsr_0\ : in synthAxisComPar_types.rst_System;
       eta           : in synthAxisComPar_types.Tuple2_1;
       result        : out synthAxisComPar_types.Tuple2_6);
end;

architecture structural of CCenterOfMass12_synthAxisComPar_mAxisComPar is
  signal \c$ds_app_arg\ : synthAxisComPar_types.Tuple2_0 := ( Tuple2_0_sel0_Tuple2_4 => ( Tuple2_4_sel0_array_of_array_of_8_unsigned_8 => synthAxisComPar_types.array_of_array_of_8_unsigned_8'( synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) )
                                                                                                                                   , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8)
                                                                                                                                                                               , to_unsigned(0,8) ) )
, Tuple2_4_sel1_signed => to_signed(0,64) )
, Tuple2_0_sel1_Maybe_0 => std_logic_vector'("0" & "--------") );
  signal ds             : synthAxisComPar_types.Tuple2_2;

begin
  -- register begin
  cds_app_arg_register : process(\c$bindCsr\,\c$bindCsr_0\)
  begin
    if \c$bindCsr_0\ =  '1'  then
      \c$ds_app_arg\ <= ( Tuple2_0_sel0_Tuple2_4 => ( Tuple2_4_sel0_array_of_array_of_8_unsigned_8 => synthAxisComPar_types.array_of_array_of_8_unsigned_8'( synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) )
                                                                                                                                     , synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8)
                                                                                                                                                                                 , to_unsigned(0,8) ) )
  , Tuple2_4_sel1_signed => to_signed(0,64) )
  , Tuple2_0_sel1_Maybe_0 => std_logic_vector'("0" & "--------") );
    elsif rising_edge(\c$bindCsr\) then
      \c$ds_app_arg\ <= ds.Tuple2_2_sel0_Tuple2_0;
    end if;
  end process;
  -- register end

  result <= ds.Tuple2_2_sel1_Tuple2_6;

  CCenterOfMass12_synthAxisComPar_axisComPar_ds : entity CCenterOfMass12_synthAxisComPar_axisComPar
    port map
      ( result => ds
      , state  => \c$ds_app_arg\
      , ds     => eta );


end;

