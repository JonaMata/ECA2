-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity CCenterOfMass12_synthAxisComSer_mAxisComSer is
  port(-- clock
       \c$bindCsr\   : in synthAxisComSer_types.clk_System;
       -- reset
       \c$bindCsr_0\ : in synthAxisComSer_types.rst_System;
       eta           : in synthAxisComSer_types.Tuple2_0;
       result        : out synthAxisComSer_types.Tuple2_3);
end;

architecture structural of CCenterOfMass12_synthAxisComSer_mAxisComSer is
  signal \c$ds_app_arg\ : synthAxisComSer_types.StateComSer := std_logic_vector'("0" & (std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32)) &
std_logic_vector'(std_logic_vector(to_signed(0,32))))))))))))))))))) & ((std_logic_vector(to_unsigned(0,3))
 & std_logic_vector(to_unsigned(0,3)))));
  signal ds             : synthAxisComSer_types.Tuple2_1;

begin
  -- register begin
  cds_app_arg_register : process(\c$bindCsr\,\c$bindCsr_0\)
  begin
    if \c$bindCsr_0\ =  '1'  then
      \c$ds_app_arg\ <= std_logic_vector'("0" & (std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)))))))))) &
  std_logic_vector'(std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32)) &
  std_logic_vector'(std_logic_vector(to_signed(0,32))))))))))))))))))) & ((std_logic_vector(to_unsigned(0,3))
   & std_logic_vector(to_unsigned(0,3)))));
    elsif rising_edge(\c$bindCsr\) then
      \c$ds_app_arg\ <= ds.Tuple2_1_sel0_StateComSer;
    end if;
  end process;
  -- register end

  result <= ds.Tuple2_1_sel1_Tuple2_3;

  CCenterOfMass12_synthAxisComSer_axisComSer_ds : entity CCenterOfMass12_synthAxisComSer_axisComSer
    port map
      ( result => ds
      , state  => \c$ds_app_arg\
      , ds     => eta );


end;

