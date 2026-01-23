-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.miir1_types.all;

entity miir1 is
  port(-- clock
       clk : in miir1_types.clk_System;
       -- reset
       rst : in miir1_types.rst_System;
       x   : in signed(7 downto 0);
       o   : out signed(7 downto 0));
end;

architecture structural of miir1 is
  signal \c$ds_app_arg\    : miir1_types.array_of_signed_8(0 to 2) := miir1_types.array_of_signed_8'(to_signed(0,8), to_signed(0,8), to_signed(0,8));
  signal \c$out_app_arg\   : signed(7 downto 0);
  signal \c$out_app_arg_0\ : signed(7 downto 0);
  signal \c$app_arg\       : miir1_types.array_of_signed_8(0 to 2);
  signal \c$app_arg_0\     : miir1_types.array_of_signed_8(0 to 2);
  signal \c$app_arg_1\     : miir1_types.array_of_signed_8(0 to 2);
  signal b_side            : miir1_types.array_of_signed_8(0 to 3);
  signal \c$out_rec\       : signed(7 downto 0);
  signal \c$vec\           : miir1_types.array_of_signed_8(0 to 2);
  signal \c$vec1\          : miir1_types.array_of_signed_8(0 to 2);
  signal \c$vec_0\         : miir1_types.array_of_signed_8(0 to 3);
  signal \c$app_arg_1_1\   : miir1_types.Tuple2;
  signal \c$vec2\          : miir1_types.array_of_signed_8(0 to 2);
  signal \c$vec_1\         : miir1_types.array_of_signed_8(0 to 3);

begin
  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= miir1_types.array_of_signed_8'(to_signed(0,8), to_signed(0,8), to_signed(0,8));
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= \c$app_arg_1\;
    end if;
  end process;
  -- register end

  -- index begin
  indexVec : block
    signal vec_index : integer range 0 to 3-1;
  begin
    vec_index <= to_integer((to_signed(0,64)))
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;
    \c$out_app_arg\ <= \c$ds_app_arg\(vec_index);
  end block;
  -- index end

  -- index begin
  indexVec_0 : block
    signal vec_index_0 : integer range 0 to 4-1;
  begin
    vec_index_0 <= to_integer((to_signed(0,64)))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
    \c$out_app_arg_0\ <= b_side(vec_index_0);
  end block;
  -- index end

  \c$vec\ <= miir1_types.array_of_signed_8'( to_signed(4,8)
                                           , to_signed(2,8)
                                           , to_signed(1,8) );

  -- map begin
  r_map : for i in \c$app_arg\'range generate
  begin
    capp_arg_mult_0 : block
      signal capp_arg_mult_full_0 : signed(8*2-1 downto 0);
    begin
      capp_arg_mult_full_0 <= \c$out_rec\ * \c$vec\(i);
      \c$app_arg\(i) <= capp_arg_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- map end

  \c$vec1\ <= (b_side(1 to b_side'high));

  -- zipWith begin
  zipWith : for i_0 in \c$app_arg_0\'range generate
  begin
    \c$app_arg_0\(i_0) <= \c$vec1\(i_0) + \c$app_arg\(i_0);


  end generate;
  -- zipWith end

  \c$vec_0\ <= (miir1_types.array_of_signed_8'(miir1_types.array_of_signed_8'(\c$ds_app_arg\) & miir1_types.array_of_signed_8'(miir1_types.array_of_signed_8'(0 => to_signed(0,8)))));

  \c$app_arg_1_1\ <= (\c$vec_0\(0 to 1-1),\c$vec_0\(1 to \c$vec_0\'high));

  \c$vec2\ <= \c$app_arg_1_1\.Tuple2_sel1_array_of_signed_8_1;

  -- zipWith begin
  zipWith_0 : for i_1 in \c$app_arg_1\'range generate
  begin
    \c$app_arg_1\(i_1) <= \c$app_arg_0\(i_1) + \c$vec2\(i_1);


  end generate;
  -- zipWith end

  \c$vec_1\ <= miir1_types.array_of_signed_8'( to_signed(3,8)
                                             , to_signed(5,8)
                                             , to_signed(6,8)
                                             , to_signed(2,8) );

  -- map begin
  r_map_0 : for i_2 in b_side'range generate
  begin
    b_side_mult_0 : block
      signal b_side_mult_full_0 : signed(8*2-1 downto 0);
    begin
      b_side_mult_full_0 <= x * \c$vec_1\(i_2);
      b_side(i_2) <= b_side_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- map end

  \c$out_rec\ <= \c$out_app_arg\ + \c$out_app_arg_0\;

  o <= \c$out_rec\;


end;

