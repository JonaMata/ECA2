-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComPar_types.all;

entity CCenterOfMass12_synthAxisComPar_comRows is
  port(eta    : in synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
       result : out unsigned(7 downto 0));
end;

architecture structural of CCenterOfMass12_synthAxisComPar_comRows is
  signal my                  : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal result_0            : unsigned(7 downto 0);
  signal \c$app_arg_app_arg\ : unsigned(7 downto 0);
  signal wild                : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal result_1            : unsigned(7 downto 0);
  signal wild_res            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);

begin
  result <= result_0 - to_unsigned(1,8);

  -- map begin
  r_map : for i in my'range generate
  begin
    fold : block
    signal vec     : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
    signal acc_3_0 : unsigned(7 downto 0);
    signal acc_1   : unsigned(7 downto 0);
    signal acc_2   : unsigned(7 downto 0);
    signal acc_3   : unsigned(7 downto 0);
    signal acc_4   : unsigned(7 downto 0);
    signal acc_5   : unsigned(7 downto 0);
    signal acc_6   : unsigned(7 downto 0);
    signal acc_7   : unsigned(7 downto 0);
    signal acc_8   : unsigned(7 downto 0);
    signal acc_1_0 : unsigned(7 downto 0);
    signal acc_1_1 : unsigned(7 downto 0);
    signal acc_1_2 : unsigned(7 downto 0);
    signal acc_1_3 : unsigned(7 downto 0);
    signal acc_2_0 : unsigned(7 downto 0);
    signal acc_2_1 : unsigned(7 downto 0);
  begin
    my(i) <= acc_3_0;

    vec <= eta(i);

    acc_1 <= vec(0);

    acc_2 <= vec(1);

    acc_3 <= vec(2);

    acc_4 <= vec(3);

    acc_5 <= vec(4);

    acc_6 <= vec(5);

    acc_7 <= vec(6);

    acc_8 <= vec(7);

    acc_1_0 <= acc_1 + acc_2;



    acc_1_1 <= acc_3 + acc_4;



    acc_1_2 <= acc_5 + acc_6;



    acc_1_3 <= acc_7 + acc_8;



    acc_2_0 <= acc_1_0 + acc_1_1;



    acc_2_1 <= acc_1_2 + acc_1_3;



    acc_3_0 <= acc_2_0 + acc_2_1;




  end block;
  end generate;
  -- map end

  result_0 <= result_1 / \c$app_arg_app_arg\
      -- pragma translate_off
      when (\c$app_arg_app_arg\ /= 0) else (others => 'X')
      -- pragma translate_on
      ;

  fold_0 : block
    signal vec_0     : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
    signal acc_3_0_6 : unsigned(7 downto 0);
    signal acc_0_5   : unsigned(7 downto 0);
    signal acc_0_6   : unsigned(7 downto 0);
    signal acc_0_7   : unsigned(7 downto 0);
    signal acc_0_8   : unsigned(7 downto 0);
    signal acc_0_9   : unsigned(7 downto 0);
    signal acc_0_10  : unsigned(7 downto 0);
    signal acc_0_11  : unsigned(7 downto 0);
    signal acc_0_12  : unsigned(7 downto 0);
    signal acc_1_0_0 : unsigned(7 downto 0);
    signal acc_1_1_1 : unsigned(7 downto 0);
    signal acc_1_2_2 : unsigned(7 downto 0);
    signal acc_1_3_3 : unsigned(7 downto 0);
    signal acc_2_0_4 : unsigned(7 downto 0);
    signal acc_2_1_5 : unsigned(7 downto 0);
  begin
    \c$app_arg_app_arg\ <= acc_3_0_6;

    vec_0 <= my;

    acc_0_5 <= vec_0(0);

    acc_0_6 <= vec_0(1);

    acc_0_7 <= vec_0(2);

    acc_0_8 <= vec_0(3);

    acc_0_9 <= vec_0(4);

    acc_0_10 <= vec_0(5);

    acc_0_11 <= vec_0(6);

    acc_0_12 <= vec_0(7);

    acc_1_0_0 <= acc_0_5 + acc_0_6;



    acc_1_1_1 <= acc_0_7 + acc_0_8;



    acc_1_2_2 <= acc_0_9 + acc_0_10;



    acc_1_3_3 <= acc_0_11 + acc_0_12;



    acc_2_0_4 <= acc_1_0_0 + acc_1_1_1;



    acc_2_1_5 <= acc_1_2_2 + acc_1_3_3;



    acc_3_0_6 <= acc_2_0_4 + acc_2_1_5;




  end block;

  iterateI : block
    signal iterateI_ho1_0_arg0 : unsigned(7 downto 0);
    signal iterateI_ho1_0_res  : unsigned(7 downto 0);
    signal iterateI_ho1_1_res  : unsigned(7 downto 0);
    signal iterateI_ho1_2_res  : unsigned(7 downto 0);
    signal iterateI_ho1_3_res  : unsigned(7 downto 0);
    signal iterateI_ho1_4_res  : unsigned(7 downto 0);
    signal iterateI_ho1_5_res  : unsigned(7 downto 0);
    signal iterateI_ho1_6_res  : unsigned(7 downto 0);
  begin
    iterateI_ho1_0_arg0 <= to_unsigned(1,8);

    iterateI_ho1_0_res <= iterateI_ho1_0_arg0 + to_unsigned(1,8);



    iterateI_ho1_1_res <= iterateI_ho1_0_res + to_unsigned(1,8);



    iterateI_ho1_2_res <= iterateI_ho1_1_res + to_unsigned(1,8);



    iterateI_ho1_3_res <= iterateI_ho1_2_res + to_unsigned(1,8);



    iterateI_ho1_4_res <= iterateI_ho1_3_res + to_unsigned(1,8);



    iterateI_ho1_5_res <= iterateI_ho1_4_res + to_unsigned(1,8);



    iterateI_ho1_6_res <= iterateI_ho1_5_res + to_unsigned(1,8);



    wild_res <= synthAxisComPar_types.array_of_unsigned_8'( to_unsigned(1,8)
                                                          , iterateI_ho1_0_res
                                                          , iterateI_ho1_1_res
                                                          , iterateI_ho1_2_res
                                                          , iterateI_ho1_3_res
                                                          , iterateI_ho1_4_res
                                                          , iterateI_ho1_5_res
                                                          , iterateI_ho1_6_res );


  end block;

  -- zipWith begin
  zipWith : for i_0 in wild'range generate
  begin
    wild(i_0) <= resize(wild_res(i_0) * my(i_0), 8);


  end generate;
  -- zipWith end

  fold_1 : block
    signal vec_1      : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
    signal acc_3_0_13 : unsigned(7 downto 0);
    signal acc_0_14   : unsigned(7 downto 0);
    signal acc_0_15   : unsigned(7 downto 0);
    signal acc_0_16   : unsigned(7 downto 0);
    signal acc_0_17   : unsigned(7 downto 0);
    signal acc_0_18   : unsigned(7 downto 0);
    signal acc_0_19   : unsigned(7 downto 0);
    signal acc_0_20   : unsigned(7 downto 0);
    signal acc_0_21   : unsigned(7 downto 0);
    signal acc_1_0_7  : unsigned(7 downto 0);
    signal acc_1_1_8  : unsigned(7 downto 0);
    signal acc_1_2_9  : unsigned(7 downto 0);
    signal acc_1_3_10 : unsigned(7 downto 0);
    signal acc_2_0_11 : unsigned(7 downto 0);
    signal acc_2_1_12 : unsigned(7 downto 0);
  begin
    result_1 <= acc_3_0_13;

    vec_1 <= wild;

    acc_0_14 <= vec_1(0);

    acc_0_15 <= vec_1(1);

    acc_0_16 <= vec_1(2);

    acc_0_17 <= vec_1(3);

    acc_0_18 <= vec_1(4);

    acc_0_19 <= vec_1(5);

    acc_0_20 <= vec_1(6);

    acc_0_21 <= vec_1(7);

    acc_1_0_7 <= acc_0_14 + acc_0_15;



    acc_1_1_8 <= acc_0_16 + acc_0_17;



    acc_1_2_9 <= acc_0_18 + acc_0_19;



    acc_1_3_10 <= acc_0_20 + acc_0_21;



    acc_2_0_11 <= acc_1_0_7 + acc_1_1_8;



    acc_2_1_12 <= acc_1_2_9 + acc_1_3_10;



    acc_3_0_13 <= acc_2_0_11 + acc_2_1_12;




  end block;


end;

