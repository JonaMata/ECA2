-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity CCenterOfMass12_synthAxisComSer_comRows is
  port(eta    : in synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
       result : out signed(31 downto 0));
end;

architecture structural of CCenterOfMass12_synthAxisComSer_comRows is
  signal my                  : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal result_0            : signed(31 downto 0);
  signal \c$app_arg_app_arg\ : signed(31 downto 0);
  signal wild                : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal result_1            : signed(31 downto 0);
  signal wild_res            : synthAxisComSer_types.array_of_signed_32(0 to 7);

begin
  result <= result_0 - to_signed(1,32);

  -- map begin
  r_map : for i in my'range generate
  begin
    fold : block
    signal vec     : synthAxisComSer_types.array_of_signed_32(0 to 7);
    signal acc_3_0 : signed(31 downto 0);
    signal acc_1   : signed(31 downto 0);
    signal acc_2   : signed(31 downto 0);
    signal acc_3   : signed(31 downto 0);
    signal acc_4   : signed(31 downto 0);
    signal acc_5   : signed(31 downto 0);
    signal acc_6   : signed(31 downto 0);
    signal acc_7   : signed(31 downto 0);
    signal acc_8   : signed(31 downto 0);
    signal acc_1_0 : signed(31 downto 0);
    signal acc_1_1 : signed(31 downto 0);
    signal acc_1_2 : signed(31 downto 0);
    signal acc_1_3 : signed(31 downto 0);
    signal acc_2_0 : signed(31 downto 0);
    signal acc_2_1 : signed(31 downto 0);
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

  -- divSigned begin
  divSigned : block
    signal resultPos : boolean;
    signal dividerNeg : boolean;
    signal dividend2 : signed(32 downto 0);
    signal quot_res : signed(32 downto 0);
  begin
    resultPos <= result_1(result_1'high) = \c$app_arg_app_arg\(\c$app_arg_app_arg\'high);
    dividerNeg <= \c$app_arg_app_arg\(\c$app_arg_app_arg\'high) = '1';
    dividend2 <= resize(result_1,32+1)   when resultPos else
               (resize(result_1,32+1) - resize(\c$app_arg_app_arg\,32+1) - 1)   when dividerNeg else
               (resize(result_1,32+1) - resize(\c$app_arg_app_arg\,32+1) + 1);
    quot_res <= dividend2 / \c$app_arg_app_arg\
        -- pragma translate_off
        when (\c$app_arg_app_arg\ /= 0) else (others => 'X')
        -- pragma translate_on
        ;
    result_0 <= signed(quot_res(32-1 downto 0));
  end block;
  -- divSigned end

  fold_0 : block
    signal vec_0     : synthAxisComSer_types.array_of_signed_32(0 to 7);
    signal acc_3_0_6 : signed(31 downto 0);
    signal acc_0_5   : signed(31 downto 0);
    signal acc_0_6   : signed(31 downto 0);
    signal acc_0_7   : signed(31 downto 0);
    signal acc_0_8   : signed(31 downto 0);
    signal acc_0_9   : signed(31 downto 0);
    signal acc_0_10  : signed(31 downto 0);
    signal acc_0_11  : signed(31 downto 0);
    signal acc_0_12  : signed(31 downto 0);
    signal acc_1_0_0 : signed(31 downto 0);
    signal acc_1_1_1 : signed(31 downto 0);
    signal acc_1_2_2 : signed(31 downto 0);
    signal acc_1_3_3 : signed(31 downto 0);
    signal acc_2_0_4 : signed(31 downto 0);
    signal acc_2_1_5 : signed(31 downto 0);
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
    signal iterateI_ho1_0_arg0 : signed(31 downto 0);
    signal iterateI_ho1_0_res  : signed(31 downto 0);
    signal iterateI_ho1_1_res  : signed(31 downto 0);
    signal iterateI_ho1_2_res  : signed(31 downto 0);
    signal iterateI_ho1_3_res  : signed(31 downto 0);
    signal iterateI_ho1_4_res  : signed(31 downto 0);
    signal iterateI_ho1_5_res  : signed(31 downto 0);
    signal iterateI_ho1_6_res  : signed(31 downto 0);
  begin
    iterateI_ho1_0_arg0 <= to_signed(1,32);

    iterateI_ho1_0_res <= iterateI_ho1_0_arg0 + to_signed(1,32);



    iterateI_ho1_1_res <= iterateI_ho1_0_res + to_signed(1,32);



    iterateI_ho1_2_res <= iterateI_ho1_1_res + to_signed(1,32);



    iterateI_ho1_3_res <= iterateI_ho1_2_res + to_signed(1,32);



    iterateI_ho1_4_res <= iterateI_ho1_3_res + to_signed(1,32);



    iterateI_ho1_5_res <= iterateI_ho1_4_res + to_signed(1,32);



    iterateI_ho1_6_res <= iterateI_ho1_5_res + to_signed(1,32);



    wild_res <= synthAxisComSer_types.array_of_signed_32'( to_signed(1,32)
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
    wild_mult_0 : block
      signal wild_mult_full_0 : signed(32*2-1 downto 0);
    begin
      wild_mult_full_0 <= wild_res(i_0) * my(i_0);
      wild(i_0) <= wild_mult_full_0(32-1 downto 0);
    end block;
  end generate;
  -- zipWith end

  fold_1 : block
    signal vec_1      : synthAxisComSer_types.array_of_signed_32(0 to 7);
    signal acc_3_0_13 : signed(31 downto 0);
    signal acc_0_14   : signed(31 downto 0);
    signal acc_0_15   : signed(31 downto 0);
    signal acc_0_16   : signed(31 downto 0);
    signal acc_0_17   : signed(31 downto 0);
    signal acc_0_18   : signed(31 downto 0);
    signal acc_0_19   : signed(31 downto 0);
    signal acc_0_20   : signed(31 downto 0);
    signal acc_0_21   : signed(31 downto 0);
    signal acc_1_0_7  : signed(31 downto 0);
    signal acc_1_1_8  : signed(31 downto 0);
    signal acc_1_2_9  : signed(31 downto 0);
    signal acc_1_3_10 : signed(31 downto 0);
    signal acc_2_0_11 : signed(31 downto 0);
    signal acc_2_1_12 : signed(31 downto 0);
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

