-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.mfir3_6_types.all;

entity mfir3_6 is
  port(-- clock
       clk : in mfir3_6_types.clk_System;
       -- reset
       rst : in mfir3_6_types.rst_System;
       x   : in signed(7 downto 0);
       o   : out signed(7 downto 0));
end;

architecture structural of mfir3_6 is
  signal \c$ds_app_arg\      : mfir3_6_types.array_of_signed_8(0 to 5) := mfir3_6_types.array_of_signed_8'( to_signed(0,8)
                                , to_signed(0,8)
                                , to_signed(0,8)
                                , to_signed(0,8)
                                , to_signed(0,8)
                                , to_signed(0,8) );
  signal \c$wild_app_arg\    : mfir3_6_types.array_of_signed_8(0 to 5);
  signal \c$wild_case_alt\   : mfir3_6_types.array_of_signed_8(0 to 2);
  signal x1                  : mfir3_6_types.array_of_signed_8(0 to 2);
  signal wild                : mfir3_6_types.array_of_signed_8(0 to 2);
  signal \c$ds_app_arg_1\    : mfir3_6_types.Tuple2;
  signal \c$wild_case_alt_1\ : mfir3_6_types.Tuple2_0;
  signal \c$vec2\            : mfir3_6_types.array_of_signed_8(0 to 2);
  signal x1_projection       : mfir3_6_types.Tuple2_0;
  signal \c$vec1\            : mfir3_6_types.array_of_signed_8(0 to 2);

begin
  \c$ds_app_arg_1\ <= (\c$ds_app_arg\(0 to 5-1),\c$ds_app_arg\(5 to \c$ds_app_arg\'high));

  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= mfir3_6_types.array_of_signed_8'( to_signed(0,8)
                                  , to_signed(0,8)
                                  , to_signed(0,8)
                                  , to_signed(0,8)
                                  , to_signed(0,8)
                                  , to_signed(0,8) );
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= mfir3_6_types.array_of_signed_8'(signed'(x) & \c$ds_app_arg_1\.Tuple2_sel0_array_of_signed_8_0);
    end if;
  end process;
  -- register end

  -- reverse begin
  reverse_loop : for i in 0 to (6 - 1) generate
    \c$wild_app_arg\(\c$ds_app_arg\'high - i) <= \c$ds_app_arg\(i);
  end generate;
  -- reverse end

  \c$wild_case_alt_1\ <= (\c$wild_app_arg\(0 to 3-1),\c$wild_app_arg\(3 to \c$wild_app_arg\'high));

  \c$vec2\ <= \c$wild_case_alt_1\.Tuple2_0_sel0_array_of_signed_8_0;

  -- zipWith begin
  zipWith : for i_0 in \c$wild_case_alt\'range generate
  begin
    \c$wild_case_alt\(i_0) <= x1(i_0) + \c$vec2\(i_0);


  end generate;
  -- zipWith end

  fold : block
    signal vec     : mfir3_6_types.array_of_signed_8(0 to 2);
    signal acc_2_0 : signed(7 downto 0);
    signal acc_1   : signed(7 downto 0);
    signal acc_2   : signed(7 downto 0);
    signal acc_1_0 : signed(7 downto 0);
    signal acc_3   : signed(7 downto 0);
  begin
    o <= acc_2_0;

    vec <= wild;

    acc_1 <= vec(0);

    acc_2 <= vec(1);

    acc_3 <= vec(2);

    acc_1_0 <= acc_1 + acc_2;



    acc_2_0 <= acc_1_0 + acc_3;




  end block;

  x1_projection <= (\c$ds_app_arg\(0 to 3-1),\c$ds_app_arg\(3 to \c$ds_app_arg\'high));

  x1 <= x1_projection.Tuple2_0_sel0_array_of_signed_8_0;

  \c$vec1\ <= mfir3_6_types.array_of_signed_8'( to_signed(3,8)
                                              , to_signed(5,8)
                                              , to_signed(7,8) );

  -- zipWith begin
  zipWith_0 : for i_1 in wild'range generate
  begin
    wild_mult_0 : block
      signal wild_mult_full_0 : signed(8*2-1 downto 0);
    begin
      wild_mult_full_0 <= \c$vec1\(i_1) * \c$wild_case_alt\(i_1);
      wild(i_1) <= wild_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- zipWith end


end;

