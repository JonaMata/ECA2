-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.miir2_types.all;

entity miir2 is
  port(-- clock
       clk : in miir2_types.clk_System;
       -- reset
       rst : in miir2_types.rst_System;
       x   : in signed(7 downto 0);
       o   : out signed(7 downto 0));
end;

architecture structural of miir2 is
  signal \c$ds_app_arg\   : miir2_types.array_of_signed_8(0 to 2) := miir2_types.array_of_signed_8'(to_signed(0,8), to_signed(0,8), to_signed(0,8));
  signal result           : signed(7 downto 0);
  signal intermediate     : signed(7 downto 0);
  signal wild             : miir2_types.array_of_signed_8(0 to 2);
  signal wild_0           : miir2_types.array_of_signed_8(0 to 3);
  signal \c$vec\          : miir2_types.array_of_signed_8(0 to 3);
  signal \c$ds_app_arg_1\ : miir2_types.Tuple2;
  signal \c$vec1\         : miir2_types.array_of_signed_8(0 to 2);
  signal \c$vec1_0\       : miir2_types.array_of_signed_8(0 to 3);
  signal \c$vec2\         : miir2_types.array_of_signed_8(0 to 3);

begin
  \c$vec\ <= (miir2_types.array_of_signed_8'(miir2_types.array_of_signed_8'(miir2_types.array_of_signed_8'(0 => intermediate)) & miir2_types.array_of_signed_8'(\c$ds_app_arg\)));

  \c$ds_app_arg_1\ <= (\c$vec\(0 to 3-1),\c$vec\(3 to \c$vec\'high));

  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= miir2_types.array_of_signed_8'(to_signed(0,8), to_signed(0,8), to_signed(0,8));
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= \c$ds_app_arg_1\.Tuple2_sel0_array_of_signed_8_0;
    end if;
  end process;
  -- register end

  fold : block
    signal vec     : miir2_types.array_of_signed_8(0 to 2);
    signal acc_2_0 : signed(7 downto 0);
    signal acc_1   : signed(7 downto 0);
    signal acc_2   : signed(7 downto 0);
    signal acc_1_0 : signed(7 downto 0);
    signal acc_3   : signed(7 downto 0);
  begin
    result <= acc_2_0;

    vec <= wild;

    acc_1 <= vec(0);

    acc_2 <= vec(1);

    acc_3 <= vec(2);

    acc_1_0 <= acc_1 + acc_2;



    acc_2_0 <= acc_1_0 + acc_3;




  end block;

  fold_0 : block
    signal vec_0     : miir2_types.array_of_signed_8(0 to 3);
    signal acc_2_0_1 : signed(7 downto 0);
    signal acc_0_2   : signed(7 downto 0);
    signal acc_0_3   : signed(7 downto 0);
    signal acc_0_4   : signed(7 downto 0);
    signal acc_0_5   : signed(7 downto 0);
    signal acc_1_0_0 : signed(7 downto 0);
    signal acc_1_1   : signed(7 downto 0);
  begin
    o <= acc_2_0_1;

    vec_0 <= wild_0;

    acc_0_2 <= vec_0(0);

    acc_0_3 <= vec_0(1);

    acc_0_4 <= vec_0(2);

    acc_0_5 <= vec_0(3);

    acc_1_0_0 <= acc_0_2 + acc_0_3;



    acc_1_1 <= acc_0_4 + acc_0_5;



    acc_2_0_1 <= acc_1_0_0 + acc_1_1;




  end block;

  intermediate <= x + result;

  \c$vec1\ <= miir2_types.array_of_signed_8'( to_signed(4,8)
                                            , to_signed(2,8)
                                            , to_signed(1,8) );

  -- zipWith begin
  zipWith : for i in wild'range generate
  begin
    wild_mult_0 : block
      signal wild_mult_full_0 : signed(8*2-1 downto 0);
    begin
      wild_mult_full_0 <= \c$vec1\(i) * \c$ds_app_arg\(i);
      wild(i) <= wild_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- zipWith end

  \c$vec1_0\ <= miir2_types.array_of_signed_8'( to_signed(3,8)
                                              , to_signed(5,8)
                                              , to_signed(6,8)
                                              , to_signed(2,8) );

  \c$vec2\ <= miir2_types.array_of_signed_8'(signed'(intermediate) & \c$ds_app_arg\);

  -- zipWith begin
  zipWith_0 : for i_0 in wild_0'range generate
  begin
    wild_0_mult_0 : block
      signal wild_0_mult_full_0 : signed(8*2-1 downto 0);
    begin
      wild_0_mult_full_0 <= \c$vec1_0\(i_0) * \c$vec2\(i_0);
      wild_0(i_0) <= wild_0_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- zipWith end


end;

