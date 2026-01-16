-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.mfir3_100_types.all;

entity mfir3_100 is
  port(-- clock
       clk : in mfir3_100_types.clk_System;
       -- reset
       rst : in mfir3_100_types.rst_System;
       x   : in signed(17 downto 0);
       o   : out signed(17 downto 0));
end;

architecture structural of mfir3_100 is
  signal \c$ds_app_arg\      : mfir3_100_types.array_of_signed_18(0 to 99) := mfir3_100_types.array_of_signed_18'( to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18)
                                   , to_signed(0,18) );
  signal \c$wild_app_arg\    : mfir3_100_types.array_of_signed_18(0 to 99);
  signal \c$wild_case_alt\   : mfir3_100_types.array_of_signed_18(0 to 49);
  signal x1                  : mfir3_100_types.array_of_signed_18(0 to 49);
  signal wild                : mfir3_100_types.array_of_signed_18(0 to 49);
  signal \c$ds_app_arg_1\    : mfir3_100_types.Tuple2;
  signal \c$wild_case_alt_1\ : mfir3_100_types.Tuple2_0;
  signal \c$vec2\            : mfir3_100_types.array_of_signed_18(0 to 49);
  signal x1_projection       : mfir3_100_types.Tuple2_0;
  signal \c$vec1\            : mfir3_100_types.array_of_signed_18(0 to 49);

begin
  \c$ds_app_arg_1\ <= (\c$ds_app_arg\(0 to 99-1),\c$ds_app_arg\(99 to \c$ds_app_arg\'high));

  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= mfir3_100_types.array_of_signed_18'( to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18)
                                     , to_signed(0,18) );
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= mfir3_100_types.array_of_signed_18'(signed'(x) & \c$ds_app_arg_1\.Tuple2_sel0_array_of_signed_18_0);
    end if;
  end process;
  -- register end

  -- reverse begin
  reverse_loop : for i in 0 to (100 - 1) generate
    \c$wild_app_arg\(\c$ds_app_arg\'high - i) <= \c$ds_app_arg\(i);
  end generate;
  -- reverse end

  \c$wild_case_alt_1\ <= (\c$wild_app_arg\(0 to 50-1),\c$wild_app_arg\(50 to \c$wild_app_arg\'high));

  \c$vec2\ <= \c$wild_case_alt_1\.Tuple2_0_sel0_array_of_signed_18_0;

  -- zipWith begin
  zipWith : for i_0 in \c$wild_case_alt\'range generate
  begin
    fun_50 : block
      signal result                     : signed(17 downto 0);
      signal \c$case_alt\               : signed(17 downto 0);
      signal \r'\                       : std_logic_vector(17 downto 0);
      signal \c$r'_app_arg\             : std_logic_vector(18 downto 0);
      signal r                          : signed(18 downto 0);
      signal result_selection_res       : boolean;
      signal \c$bv\                     : std_logic_vector(17 downto 0);
      signal \c$case_alt_selection_res\ : boolean;
      signal \c$bv_0\                   : std_logic_vector(17 downto 0);
      signal \c$bv_1\                   : std_logic_vector(17 downto 0);
      signal \r'_projection\            : mfir3_100_types.Tuple2_1;
    begin
      \c$wild_case_alt\(i_0) <= result;

      \c$bv\ <= (\r'\);

      result_selection_res <= (( \c$r'_app_arg\(\c$r'_app_arg\'high) ) xor ( \c$bv\(\c$bv\'high) )) = '0';

      result <= signed(\r'\) when result_selection_res else
                \c$case_alt\;

      \c$bv_0\ <= ((std_logic_vector(x1(i_0))));

      \c$bv_1\ <= ((std_logic_vector(\c$vec2\(i_0))));

      \c$case_alt_selection_res\ <= (( \c$bv_0\(\c$bv_0\'high) ) and ( \c$bv_1\(\c$bv_1\'high) )) = '0';

      \c$case_alt\ <= to_signed(131071,18) when \c$case_alt_selection_res\ else
                      to_signed(-131072,18);

      \r'_projection\ <= (\c$r'_app_arg\(\c$r'_app_arg\'high downto 18),\c$r'_app_arg\(18-1 downto 0));

      \r'\ <= \r'_projection\.Tuple2_1_sel1_std_logic_vector_1;

      \c$r'_app_arg\ <= (std_logic_vector(r));

      r <= resize(x1(i_0),19) + resize(\c$vec2\(i_0),19);


    end block;
  end generate;
  -- zipWith end

  fold : block
    signal vec      : mfir3_100_types.array_of_signed_18(0 to 49);
    signal acc_6_0  : signed(17 downto 0);
    signal acc_1    : signed(17 downto 0);
    signal acc_2    : signed(17 downto 0);
    signal acc_3    : signed(17 downto 0);
    signal acc_4    : signed(17 downto 0);
    signal acc_5    : signed(17 downto 0);
    signal acc_6    : signed(17 downto 0);
    signal acc_7    : signed(17 downto 0);
    signal acc_8    : signed(17 downto 0);
    signal acc_9    : signed(17 downto 0);
    signal acc_10   : signed(17 downto 0);
    signal acc_11   : signed(17 downto 0);
    signal acc_12   : signed(17 downto 0);
    signal acc_13   : signed(17 downto 0);
    signal acc_14   : signed(17 downto 0);
    signal acc_15   : signed(17 downto 0);
    signal acc_16   : signed(17 downto 0);
    signal acc_17   : signed(17 downto 0);
    signal acc_18   : signed(17 downto 0);
    signal acc_19   : signed(17 downto 0);
    signal acc_20   : signed(17 downto 0);
    signal acc_21   : signed(17 downto 0);
    signal acc_22   : signed(17 downto 0);
    signal acc_23   : signed(17 downto 0);
    signal acc_24   : signed(17 downto 0);
    signal acc_25   : signed(17 downto 0);
    signal acc_26   : signed(17 downto 0);
    signal acc_27   : signed(17 downto 0);
    signal acc_28   : signed(17 downto 0);
    signal acc_29   : signed(17 downto 0);
    signal acc_30   : signed(17 downto 0);
    signal acc_31   : signed(17 downto 0);
    signal acc_32   : signed(17 downto 0);
    signal acc_33   : signed(17 downto 0);
    signal acc_34   : signed(17 downto 0);
    signal acc_35   : signed(17 downto 0);
    signal acc_36   : signed(17 downto 0);
    signal acc_37   : signed(17 downto 0);
    signal acc_38   : signed(17 downto 0);
    signal acc_39   : signed(17 downto 0);
    signal acc_40   : signed(17 downto 0);
    signal acc_41   : signed(17 downto 0);
    signal acc_42   : signed(17 downto 0);
    signal acc_43   : signed(17 downto 0);
    signal acc_44   : signed(17 downto 0);
    signal acc_45   : signed(17 downto 0);
    signal acc_46   : signed(17 downto 0);
    signal acc_47   : signed(17 downto 0);
    signal acc_48   : signed(17 downto 0);
    signal acc_49   : signed(17 downto 0);
    signal acc_50   : signed(17 downto 0);
    signal acc_1_0  : signed(17 downto 0);
    signal acc_1_1  : signed(17 downto 0);
    signal acc_1_2  : signed(17 downto 0);
    signal acc_1_3  : signed(17 downto 0);
    signal acc_1_4  : signed(17 downto 0);
    signal acc_1_5  : signed(17 downto 0);
    signal acc_1_6  : signed(17 downto 0);
    signal acc_1_7  : signed(17 downto 0);
    signal acc_1_8  : signed(17 downto 0);
    signal acc_1_9  : signed(17 downto 0);
    signal acc_1_10 : signed(17 downto 0);
    signal acc_1_11 : signed(17 downto 0);
    signal acc_1_12 : signed(17 downto 0);
    signal acc_1_13 : signed(17 downto 0);
    signal acc_1_14 : signed(17 downto 0);
    signal acc_1_15 : signed(17 downto 0);
    signal acc_1_16 : signed(17 downto 0);
    signal acc_1_17 : signed(17 downto 0);
    signal acc_1_18 : signed(17 downto 0);
    signal acc_1_19 : signed(17 downto 0);
    signal acc_1_20 : signed(17 downto 0);
    signal acc_1_21 : signed(17 downto 0);
    signal acc_1_22 : signed(17 downto 0);
    signal acc_1_23 : signed(17 downto 0);
    signal acc_2_0  : signed(17 downto 0);
    signal acc_2_1  : signed(17 downto 0);
    signal acc_2_2  : signed(17 downto 0);
    signal acc_2_3  : signed(17 downto 0);
    signal acc_2_4  : signed(17 downto 0);
    signal acc_2_5  : signed(17 downto 0);
    signal acc_2_6  : signed(17 downto 0);
    signal acc_2_7  : signed(17 downto 0);
    signal acc_2_8  : signed(17 downto 0);
    signal acc_2_9  : signed(17 downto 0);
    signal acc_2_10 : signed(17 downto 0);
    signal acc_2_11 : signed(17 downto 0);
    signal acc_3_0  : signed(17 downto 0);
    signal acc_3_1  : signed(17 downto 0);
    signal acc_3_2  : signed(17 downto 0);
    signal acc_3_3  : signed(17 downto 0);
    signal acc_3_4  : signed(17 downto 0);
    signal acc_3_5  : signed(17 downto 0);
    signal acc_4_0  : signed(17 downto 0);
    signal acc_4_1  : signed(17 downto 0);
    signal acc_4_2  : signed(17 downto 0);
    signal acc_1_24 : signed(17 downto 0);
    signal acc_5_0  : signed(17 downto 0);
    signal acc_5_1  : signed(17 downto 0);
  begin
    o <= acc_6_0;

    vec <= wild;

    acc_1 <= vec(0);

    acc_2 <= vec(1);

    acc_3 <= vec(2);

    acc_4 <= vec(3);

    acc_5 <= vec(4);

    acc_6 <= vec(5);

    acc_7 <= vec(6);

    acc_8 <= vec(7);

    acc_9 <= vec(8);

    acc_10 <= vec(9);

    acc_11 <= vec(10);

    acc_12 <= vec(11);

    acc_13 <= vec(12);

    acc_14 <= vec(13);

    acc_15 <= vec(14);

    acc_16 <= vec(15);

    acc_17 <= vec(16);

    acc_18 <= vec(17);

    acc_19 <= vec(18);

    acc_20 <= vec(19);

    acc_21 <= vec(20);

    acc_22 <= vec(21);

    acc_23 <= vec(22);

    acc_24 <= vec(23);

    acc_25 <= vec(24);

    acc_26 <= vec(25);

    acc_27 <= vec(26);

    acc_28 <= vec(27);

    acc_29 <= vec(28);

    acc_30 <= vec(29);

    acc_31 <= vec(30);

    acc_32 <= vec(31);

    acc_33 <= vec(32);

    acc_34 <= vec(33);

    acc_35 <= vec(34);

    acc_36 <= vec(35);

    acc_37 <= vec(36);

    acc_38 <= vec(37);

    acc_39 <= vec(38);

    acc_40 <= vec(39);

    acc_41 <= vec(40);

    acc_42 <= vec(41);

    acc_43 <= vec(42);

    acc_44 <= vec(43);

    acc_45 <= vec(44);

    acc_46 <= vec(45);

    acc_47 <= vec(46);

    acc_48 <= vec(47);

    acc_49 <= vec(48);

    acc_50 <= vec(49);

    fun_51 : block
        signal result_3                     : signed(17 downto 0);
        signal \c$case_alt_3\               : signed(17 downto 0);
        signal \r'_1\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_0\             : std_logic_vector(18 downto 0);
        signal r_0                          : signed(18 downto 0);
        signal result_selection_res_0       : boolean;
        signal \c$bv_2\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_0\ : boolean;
        signal \c$bv_3\                     : std_logic_vector(17 downto 0);
        signal \c$bv_4\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_0\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_0 <= result_3;

        \c$bv_2\ <= (\r'_1\);

        result_selection_res_0 <= (( \c$r'_app_arg_0\(\c$r'_app_arg_0\'high) ) xor ( \c$bv_2\(\c$bv_2\'high) )) = '0';

        result_3 <= signed(\r'_1\) when result_selection_res_0 else
                    \c$case_alt_3\;

        \c$bv_3\ <= ((std_logic_vector(acc_1)));

        \c$bv_4\ <= ((std_logic_vector(acc_2)));

        \c$case_alt_selection_res_0\ <= (( \c$bv_3\(\c$bv_3\'high) ) and ( \c$bv_4\(\c$bv_4\'high) )) = '0';

        \c$case_alt_3\ <= to_signed(131071,18) when \c$case_alt_selection_res_0\ else
                          to_signed(-131072,18);

        \r'_projection_0\ <= (\c$r'_app_arg_0\(\c$r'_app_arg_0\'high downto 18),\c$r'_app_arg_0\(18-1 downto 0));

        \r'_1\ <= \r'_projection_0\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_0\ <= (std_logic_vector(r_0));

        r_0 <= resize(acc_1,19) + resize(acc_2,19);


      end block;

    fun_52 : block
        signal result_4                     : signed(17 downto 0);
        signal \c$case_alt_4\               : signed(17 downto 0);
        signal \r'_2\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_1\             : std_logic_vector(18 downto 0);
        signal r_1                          : signed(18 downto 0);
        signal result_selection_res_1       : boolean;
        signal \c$bv_5\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_1\ : boolean;
        signal \c$bv_6\                     : std_logic_vector(17 downto 0);
        signal \c$bv_7\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_1\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_1 <= result_4;

        \c$bv_5\ <= (\r'_2\);

        result_selection_res_1 <= (( \c$r'_app_arg_1\(\c$r'_app_arg_1\'high) ) xor ( \c$bv_5\(\c$bv_5\'high) )) = '0';

        result_4 <= signed(\r'_2\) when result_selection_res_1 else
                    \c$case_alt_4\;

        \c$bv_6\ <= ((std_logic_vector(acc_3)));

        \c$bv_7\ <= ((std_logic_vector(acc_4)));

        \c$case_alt_selection_res_1\ <= (( \c$bv_6\(\c$bv_6\'high) ) and ( \c$bv_7\(\c$bv_7\'high) )) = '0';

        \c$case_alt_4\ <= to_signed(131071,18) when \c$case_alt_selection_res_1\ else
                          to_signed(-131072,18);

        \r'_projection_1\ <= (\c$r'_app_arg_1\(\c$r'_app_arg_1\'high downto 18),\c$r'_app_arg_1\(18-1 downto 0));

        \r'_2\ <= \r'_projection_1\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_1\ <= (std_logic_vector(r_1));

        r_1 <= resize(acc_3,19) + resize(acc_4,19);


      end block;

    fun_53 : block
        signal result_5                     : signed(17 downto 0);
        signal \c$case_alt_5\               : signed(17 downto 0);
        signal \r'_3\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_2\             : std_logic_vector(18 downto 0);
        signal r_2                          : signed(18 downto 0);
        signal result_selection_res_2       : boolean;
        signal \c$bv_8\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_2\ : boolean;
        signal \c$bv_9\                     : std_logic_vector(17 downto 0);
        signal \c$bv_10\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_2\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_2 <= result_5;

        \c$bv_8\ <= (\r'_3\);

        result_selection_res_2 <= (( \c$r'_app_arg_2\(\c$r'_app_arg_2\'high) ) xor ( \c$bv_8\(\c$bv_8\'high) )) = '0';

        result_5 <= signed(\r'_3\) when result_selection_res_2 else
                    \c$case_alt_5\;

        \c$bv_9\ <= ((std_logic_vector(acc_5)));

        \c$bv_10\ <= ((std_logic_vector(acc_6)));

        \c$case_alt_selection_res_2\ <= (( \c$bv_9\(\c$bv_9\'high) ) and ( \c$bv_10\(\c$bv_10\'high) )) = '0';

        \c$case_alt_5\ <= to_signed(131071,18) when \c$case_alt_selection_res_2\ else
                          to_signed(-131072,18);

        \r'_projection_2\ <= (\c$r'_app_arg_2\(\c$r'_app_arg_2\'high downto 18),\c$r'_app_arg_2\(18-1 downto 0));

        \r'_3\ <= \r'_projection_2\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_2\ <= (std_logic_vector(r_2));

        r_2 <= resize(acc_5,19) + resize(acc_6,19);


      end block;

    fun_54 : block
        signal result_6                     : signed(17 downto 0);
        signal \c$case_alt_6\               : signed(17 downto 0);
        signal \r'_4\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_3\             : std_logic_vector(18 downto 0);
        signal r_3                          : signed(18 downto 0);
        signal result_selection_res_3       : boolean;
        signal \c$bv_11\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_3\ : boolean;
        signal \c$bv_12\                    : std_logic_vector(17 downto 0);
        signal \c$bv_13\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_3\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_3 <= result_6;

        \c$bv_11\ <= (\r'_4\);

        result_selection_res_3 <= (( \c$r'_app_arg_3\(\c$r'_app_arg_3\'high) ) xor ( \c$bv_11\(\c$bv_11\'high) )) = '0';

        result_6 <= signed(\r'_4\) when result_selection_res_3 else
                    \c$case_alt_6\;

        \c$bv_12\ <= ((std_logic_vector(acc_7)));

        \c$bv_13\ <= ((std_logic_vector(acc_8)));

        \c$case_alt_selection_res_3\ <= (( \c$bv_12\(\c$bv_12\'high) ) and ( \c$bv_13\(\c$bv_13\'high) )) = '0';

        \c$case_alt_6\ <= to_signed(131071,18) when \c$case_alt_selection_res_3\ else
                          to_signed(-131072,18);

        \r'_projection_3\ <= (\c$r'_app_arg_3\(\c$r'_app_arg_3\'high downto 18),\c$r'_app_arg_3\(18-1 downto 0));

        \r'_4\ <= \r'_projection_3\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_3\ <= (std_logic_vector(r_3));

        r_3 <= resize(acc_7,19) + resize(acc_8,19);


      end block;

    fun_55 : block
        signal result_7                     : signed(17 downto 0);
        signal \c$case_alt_7\               : signed(17 downto 0);
        signal \r'_5\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_4\             : std_logic_vector(18 downto 0);
        signal r_4                          : signed(18 downto 0);
        signal result_selection_res_4       : boolean;
        signal \c$bv_14\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_4\ : boolean;
        signal \c$bv_15\                    : std_logic_vector(17 downto 0);
        signal \c$bv_16\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_4\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_4 <= result_7;

        \c$bv_14\ <= (\r'_5\);

        result_selection_res_4 <= (( \c$r'_app_arg_4\(\c$r'_app_arg_4\'high) ) xor ( \c$bv_14\(\c$bv_14\'high) )) = '0';

        result_7 <= signed(\r'_5\) when result_selection_res_4 else
                    \c$case_alt_7\;

        \c$bv_15\ <= ((std_logic_vector(acc_9)));

        \c$bv_16\ <= ((std_logic_vector(acc_10)));

        \c$case_alt_selection_res_4\ <= (( \c$bv_15\(\c$bv_15\'high) ) and ( \c$bv_16\(\c$bv_16\'high) )) = '0';

        \c$case_alt_7\ <= to_signed(131071,18) when \c$case_alt_selection_res_4\ else
                          to_signed(-131072,18);

        \r'_projection_4\ <= (\c$r'_app_arg_4\(\c$r'_app_arg_4\'high downto 18),\c$r'_app_arg_4\(18-1 downto 0));

        \r'_5\ <= \r'_projection_4\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_4\ <= (std_logic_vector(r_4));

        r_4 <= resize(acc_9,19) + resize(acc_10,19);


      end block;

    fun_56 : block
        signal result_8                     : signed(17 downto 0);
        signal \c$case_alt_8\               : signed(17 downto 0);
        signal \r'_6\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_5\             : std_logic_vector(18 downto 0);
        signal r_5                          : signed(18 downto 0);
        signal result_selection_res_5       : boolean;
        signal \c$bv_17\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_5\ : boolean;
        signal \c$bv_18\                    : std_logic_vector(17 downto 0);
        signal \c$bv_19\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_5\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_5 <= result_8;

        \c$bv_17\ <= (\r'_6\);

        result_selection_res_5 <= (( \c$r'_app_arg_5\(\c$r'_app_arg_5\'high) ) xor ( \c$bv_17\(\c$bv_17\'high) )) = '0';

        result_8 <= signed(\r'_6\) when result_selection_res_5 else
                    \c$case_alt_8\;

        \c$bv_18\ <= ((std_logic_vector(acc_11)));

        \c$bv_19\ <= ((std_logic_vector(acc_12)));

        \c$case_alt_selection_res_5\ <= (( \c$bv_18\(\c$bv_18\'high) ) and ( \c$bv_19\(\c$bv_19\'high) )) = '0';

        \c$case_alt_8\ <= to_signed(131071,18) when \c$case_alt_selection_res_5\ else
                          to_signed(-131072,18);

        \r'_projection_5\ <= (\c$r'_app_arg_5\(\c$r'_app_arg_5\'high downto 18),\c$r'_app_arg_5\(18-1 downto 0));

        \r'_6\ <= \r'_projection_5\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_5\ <= (std_logic_vector(r_5));

        r_5 <= resize(acc_11,19) + resize(acc_12,19);


      end block;

    fun_57 : block
        signal result_9                     : signed(17 downto 0);
        signal \c$case_alt_9\               : signed(17 downto 0);
        signal \r'_7\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_6\             : std_logic_vector(18 downto 0);
        signal r_6                          : signed(18 downto 0);
        signal result_selection_res_6       : boolean;
        signal \c$bv_20\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_6\ : boolean;
        signal \c$bv_21\                    : std_logic_vector(17 downto 0);
        signal \c$bv_22\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_6\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_6 <= result_9;

        \c$bv_20\ <= (\r'_7\);

        result_selection_res_6 <= (( \c$r'_app_arg_6\(\c$r'_app_arg_6\'high) ) xor ( \c$bv_20\(\c$bv_20\'high) )) = '0';

        result_9 <= signed(\r'_7\) when result_selection_res_6 else
                    \c$case_alt_9\;

        \c$bv_21\ <= ((std_logic_vector(acc_13)));

        \c$bv_22\ <= ((std_logic_vector(acc_14)));

        \c$case_alt_selection_res_6\ <= (( \c$bv_21\(\c$bv_21\'high) ) and ( \c$bv_22\(\c$bv_22\'high) )) = '0';

        \c$case_alt_9\ <= to_signed(131071,18) when \c$case_alt_selection_res_6\ else
                          to_signed(-131072,18);

        \r'_projection_6\ <= (\c$r'_app_arg_6\(\c$r'_app_arg_6\'high downto 18),\c$r'_app_arg_6\(18-1 downto 0));

        \r'_7\ <= \r'_projection_6\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_6\ <= (std_logic_vector(r_6));

        r_6 <= resize(acc_13,19) + resize(acc_14,19);


      end block;

    fun_58 : block
        signal result_10                    : signed(17 downto 0);
        signal \c$case_alt_10\              : signed(17 downto 0);
        signal \r'_8\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_7\             : std_logic_vector(18 downto 0);
        signal r_7                          : signed(18 downto 0);
        signal result_selection_res_7       : boolean;
        signal \c$bv_23\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_7\ : boolean;
        signal \c$bv_24\                    : std_logic_vector(17 downto 0);
        signal \c$bv_25\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_7\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_7 <= result_10;

        \c$bv_23\ <= (\r'_8\);

        result_selection_res_7 <= (( \c$r'_app_arg_7\(\c$r'_app_arg_7\'high) ) xor ( \c$bv_23\(\c$bv_23\'high) )) = '0';

        result_10 <= signed(\r'_8\) when result_selection_res_7 else
                     \c$case_alt_10\;

        \c$bv_24\ <= ((std_logic_vector(acc_15)));

        \c$bv_25\ <= ((std_logic_vector(acc_16)));

        \c$case_alt_selection_res_7\ <= (( \c$bv_24\(\c$bv_24\'high) ) and ( \c$bv_25\(\c$bv_25\'high) )) = '0';

        \c$case_alt_10\ <= to_signed(131071,18) when \c$case_alt_selection_res_7\ else
                           to_signed(-131072,18);

        \r'_projection_7\ <= (\c$r'_app_arg_7\(\c$r'_app_arg_7\'high downto 18),\c$r'_app_arg_7\(18-1 downto 0));

        \r'_8\ <= \r'_projection_7\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_7\ <= (std_logic_vector(r_7));

        r_7 <= resize(acc_15,19) + resize(acc_16,19);


      end block;

    fun_59 : block
        signal result_11                    : signed(17 downto 0);
        signal \c$case_alt_11\              : signed(17 downto 0);
        signal \r'_9\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_8\             : std_logic_vector(18 downto 0);
        signal r_8                          : signed(18 downto 0);
        signal result_selection_res_8       : boolean;
        signal \c$bv_26\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_8\ : boolean;
        signal \c$bv_27\                    : std_logic_vector(17 downto 0);
        signal \c$bv_28\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_8\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_8 <= result_11;

        \c$bv_26\ <= (\r'_9\);

        result_selection_res_8 <= (( \c$r'_app_arg_8\(\c$r'_app_arg_8\'high) ) xor ( \c$bv_26\(\c$bv_26\'high) )) = '0';

        result_11 <= signed(\r'_9\) when result_selection_res_8 else
                     \c$case_alt_11\;

        \c$bv_27\ <= ((std_logic_vector(acc_17)));

        \c$bv_28\ <= ((std_logic_vector(acc_18)));

        \c$case_alt_selection_res_8\ <= (( \c$bv_27\(\c$bv_27\'high) ) and ( \c$bv_28\(\c$bv_28\'high) )) = '0';

        \c$case_alt_11\ <= to_signed(131071,18) when \c$case_alt_selection_res_8\ else
                           to_signed(-131072,18);

        \r'_projection_8\ <= (\c$r'_app_arg_8\(\c$r'_app_arg_8\'high downto 18),\c$r'_app_arg_8\(18-1 downto 0));

        \r'_9\ <= \r'_projection_8\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_8\ <= (std_logic_vector(r_8));

        r_8 <= resize(acc_17,19) + resize(acc_18,19);


      end block;

    fun_60 : block
        signal result_12                    : signed(17 downto 0);
        signal \c$case_alt_12\              : signed(17 downto 0);
        signal \r'_10\                      : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_9\             : std_logic_vector(18 downto 0);
        signal r_9                          : signed(18 downto 0);
        signal result_selection_res_9       : boolean;
        signal \c$bv_29\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_9\ : boolean;
        signal \c$bv_30\                    : std_logic_vector(17 downto 0);
        signal \c$bv_31\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_9\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_9 <= result_12;

        \c$bv_29\ <= (\r'_10\);

        result_selection_res_9 <= (( \c$r'_app_arg_9\(\c$r'_app_arg_9\'high) ) xor ( \c$bv_29\(\c$bv_29\'high) )) = '0';

        result_12 <= signed(\r'_10\) when result_selection_res_9 else
                     \c$case_alt_12\;

        \c$bv_30\ <= ((std_logic_vector(acc_19)));

        \c$bv_31\ <= ((std_logic_vector(acc_20)));

        \c$case_alt_selection_res_9\ <= (( \c$bv_30\(\c$bv_30\'high) ) and ( \c$bv_31\(\c$bv_31\'high) )) = '0';

        \c$case_alt_12\ <= to_signed(131071,18) when \c$case_alt_selection_res_9\ else
                           to_signed(-131072,18);

        \r'_projection_9\ <= (\c$r'_app_arg_9\(\c$r'_app_arg_9\'high downto 18),\c$r'_app_arg_9\(18-1 downto 0));

        \r'_10\ <= \r'_projection_9\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_9\ <= (std_logic_vector(r_9));

        r_9 <= resize(acc_19,19) + resize(acc_20,19);


      end block;

    fun_61 : block
        signal result_13                     : signed(17 downto 0);
        signal \c$case_alt_13\               : signed(17 downto 0);
        signal \r'_11\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_10\             : std_logic_vector(18 downto 0);
        signal r_10                          : signed(18 downto 0);
        signal result_selection_res_10       : boolean;
        signal \c$bv_32\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_10\ : boolean;
        signal \c$bv_33\                     : std_logic_vector(17 downto 0);
        signal \c$bv_34\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_10\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_10 <= result_13;

        \c$bv_32\ <= (\r'_11\);

        result_selection_res_10 <= (( \c$r'_app_arg_10\(\c$r'_app_arg_10\'high) ) xor ( \c$bv_32\(\c$bv_32\'high) )) = '0';

        result_13 <= signed(\r'_11\) when result_selection_res_10 else
                     \c$case_alt_13\;

        \c$bv_33\ <= ((std_logic_vector(acc_21)));

        \c$bv_34\ <= ((std_logic_vector(acc_22)));

        \c$case_alt_selection_res_10\ <= (( \c$bv_33\(\c$bv_33\'high) ) and ( \c$bv_34\(\c$bv_34\'high) )) = '0';

        \c$case_alt_13\ <= to_signed(131071,18) when \c$case_alt_selection_res_10\ else
                           to_signed(-131072,18);

        \r'_projection_10\ <= (\c$r'_app_arg_10\(\c$r'_app_arg_10\'high downto 18),\c$r'_app_arg_10\(18-1 downto 0));

        \r'_11\ <= \r'_projection_10\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_10\ <= (std_logic_vector(r_10));

        r_10 <= resize(acc_21,19) + resize(acc_22,19);


      end block;

    fun_62 : block
        signal result_14                     : signed(17 downto 0);
        signal \c$case_alt_14\               : signed(17 downto 0);
        signal \r'_12\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_11\             : std_logic_vector(18 downto 0);
        signal r_11                          : signed(18 downto 0);
        signal result_selection_res_11       : boolean;
        signal \c$bv_35\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_11\ : boolean;
        signal \c$bv_36\                     : std_logic_vector(17 downto 0);
        signal \c$bv_37\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_11\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_11 <= result_14;

        \c$bv_35\ <= (\r'_12\);

        result_selection_res_11 <= (( \c$r'_app_arg_11\(\c$r'_app_arg_11\'high) ) xor ( \c$bv_35\(\c$bv_35\'high) )) = '0';

        result_14 <= signed(\r'_12\) when result_selection_res_11 else
                     \c$case_alt_14\;

        \c$bv_36\ <= ((std_logic_vector(acc_23)));

        \c$bv_37\ <= ((std_logic_vector(acc_24)));

        \c$case_alt_selection_res_11\ <= (( \c$bv_36\(\c$bv_36\'high) ) and ( \c$bv_37\(\c$bv_37\'high) )) = '0';

        \c$case_alt_14\ <= to_signed(131071,18) when \c$case_alt_selection_res_11\ else
                           to_signed(-131072,18);

        \r'_projection_11\ <= (\c$r'_app_arg_11\(\c$r'_app_arg_11\'high downto 18),\c$r'_app_arg_11\(18-1 downto 0));

        \r'_12\ <= \r'_projection_11\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_11\ <= (std_logic_vector(r_11));

        r_11 <= resize(acc_23,19) + resize(acc_24,19);


      end block;

    fun_63 : block
        signal result_15                     : signed(17 downto 0);
        signal \c$case_alt_15\               : signed(17 downto 0);
        signal \r'_13\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_12\             : std_logic_vector(18 downto 0);
        signal r_12                          : signed(18 downto 0);
        signal result_selection_res_12       : boolean;
        signal \c$bv_38\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_12\ : boolean;
        signal \c$bv_39\                     : std_logic_vector(17 downto 0);
        signal \c$bv_40\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_12\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_12 <= result_15;

        \c$bv_38\ <= (\r'_13\);

        result_selection_res_12 <= (( \c$r'_app_arg_12\(\c$r'_app_arg_12\'high) ) xor ( \c$bv_38\(\c$bv_38\'high) )) = '0';

        result_15 <= signed(\r'_13\) when result_selection_res_12 else
                     \c$case_alt_15\;

        \c$bv_39\ <= ((std_logic_vector(acc_25)));

        \c$bv_40\ <= ((std_logic_vector(acc_26)));

        \c$case_alt_selection_res_12\ <= (( \c$bv_39\(\c$bv_39\'high) ) and ( \c$bv_40\(\c$bv_40\'high) )) = '0';

        \c$case_alt_15\ <= to_signed(131071,18) when \c$case_alt_selection_res_12\ else
                           to_signed(-131072,18);

        \r'_projection_12\ <= (\c$r'_app_arg_12\(\c$r'_app_arg_12\'high downto 18),\c$r'_app_arg_12\(18-1 downto 0));

        \r'_13\ <= \r'_projection_12\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_12\ <= (std_logic_vector(r_12));

        r_12 <= resize(acc_25,19) + resize(acc_26,19);


      end block;

    fun_64 : block
        signal result_16                     : signed(17 downto 0);
        signal \c$case_alt_16\               : signed(17 downto 0);
        signal \r'_14\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_13\             : std_logic_vector(18 downto 0);
        signal r_13                          : signed(18 downto 0);
        signal result_selection_res_13       : boolean;
        signal \c$bv_41\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_13\ : boolean;
        signal \c$bv_42\                     : std_logic_vector(17 downto 0);
        signal \c$bv_43\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_13\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_13 <= result_16;

        \c$bv_41\ <= (\r'_14\);

        result_selection_res_13 <= (( \c$r'_app_arg_13\(\c$r'_app_arg_13\'high) ) xor ( \c$bv_41\(\c$bv_41\'high) )) = '0';

        result_16 <= signed(\r'_14\) when result_selection_res_13 else
                     \c$case_alt_16\;

        \c$bv_42\ <= ((std_logic_vector(acc_27)));

        \c$bv_43\ <= ((std_logic_vector(acc_28)));

        \c$case_alt_selection_res_13\ <= (( \c$bv_42\(\c$bv_42\'high) ) and ( \c$bv_43\(\c$bv_43\'high) )) = '0';

        \c$case_alt_16\ <= to_signed(131071,18) when \c$case_alt_selection_res_13\ else
                           to_signed(-131072,18);

        \r'_projection_13\ <= (\c$r'_app_arg_13\(\c$r'_app_arg_13\'high downto 18),\c$r'_app_arg_13\(18-1 downto 0));

        \r'_14\ <= \r'_projection_13\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_13\ <= (std_logic_vector(r_13));

        r_13 <= resize(acc_27,19) + resize(acc_28,19);


      end block;

    fun_65 : block
        signal result_17                     : signed(17 downto 0);
        signal \c$case_alt_17\               : signed(17 downto 0);
        signal \r'_15\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_14\             : std_logic_vector(18 downto 0);
        signal r_14                          : signed(18 downto 0);
        signal result_selection_res_14       : boolean;
        signal \c$bv_44\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_14\ : boolean;
        signal \c$bv_45\                     : std_logic_vector(17 downto 0);
        signal \c$bv_46\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_14\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_14 <= result_17;

        \c$bv_44\ <= (\r'_15\);

        result_selection_res_14 <= (( \c$r'_app_arg_14\(\c$r'_app_arg_14\'high) ) xor ( \c$bv_44\(\c$bv_44\'high) )) = '0';

        result_17 <= signed(\r'_15\) when result_selection_res_14 else
                     \c$case_alt_17\;

        \c$bv_45\ <= ((std_logic_vector(acc_29)));

        \c$bv_46\ <= ((std_logic_vector(acc_30)));

        \c$case_alt_selection_res_14\ <= (( \c$bv_45\(\c$bv_45\'high) ) and ( \c$bv_46\(\c$bv_46\'high) )) = '0';

        \c$case_alt_17\ <= to_signed(131071,18) when \c$case_alt_selection_res_14\ else
                           to_signed(-131072,18);

        \r'_projection_14\ <= (\c$r'_app_arg_14\(\c$r'_app_arg_14\'high downto 18),\c$r'_app_arg_14\(18-1 downto 0));

        \r'_15\ <= \r'_projection_14\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_14\ <= (std_logic_vector(r_14));

        r_14 <= resize(acc_29,19) + resize(acc_30,19);


      end block;

    fun_66 : block
        signal result_18                     : signed(17 downto 0);
        signal \c$case_alt_18\               : signed(17 downto 0);
        signal \r'_16\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_15\             : std_logic_vector(18 downto 0);
        signal r_15                          : signed(18 downto 0);
        signal result_selection_res_15       : boolean;
        signal \c$bv_47\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_15\ : boolean;
        signal \c$bv_48\                     : std_logic_vector(17 downto 0);
        signal \c$bv_49\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_15\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_15 <= result_18;

        \c$bv_47\ <= (\r'_16\);

        result_selection_res_15 <= (( \c$r'_app_arg_15\(\c$r'_app_arg_15\'high) ) xor ( \c$bv_47\(\c$bv_47\'high) )) = '0';

        result_18 <= signed(\r'_16\) when result_selection_res_15 else
                     \c$case_alt_18\;

        \c$bv_48\ <= ((std_logic_vector(acc_31)));

        \c$bv_49\ <= ((std_logic_vector(acc_32)));

        \c$case_alt_selection_res_15\ <= (( \c$bv_48\(\c$bv_48\'high) ) and ( \c$bv_49\(\c$bv_49\'high) )) = '0';

        \c$case_alt_18\ <= to_signed(131071,18) when \c$case_alt_selection_res_15\ else
                           to_signed(-131072,18);

        \r'_projection_15\ <= (\c$r'_app_arg_15\(\c$r'_app_arg_15\'high downto 18),\c$r'_app_arg_15\(18-1 downto 0));

        \r'_16\ <= \r'_projection_15\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_15\ <= (std_logic_vector(r_15));

        r_15 <= resize(acc_31,19) + resize(acc_32,19);


      end block;

    fun_67 : block
        signal result_19                     : signed(17 downto 0);
        signal \c$case_alt_19\               : signed(17 downto 0);
        signal \r'_17\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_16\             : std_logic_vector(18 downto 0);
        signal r_16                          : signed(18 downto 0);
        signal result_selection_res_16       : boolean;
        signal \c$bv_50\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_16\ : boolean;
        signal \c$bv_51\                     : std_logic_vector(17 downto 0);
        signal \c$bv_52\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_16\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_16 <= result_19;

        \c$bv_50\ <= (\r'_17\);

        result_selection_res_16 <= (( \c$r'_app_arg_16\(\c$r'_app_arg_16\'high) ) xor ( \c$bv_50\(\c$bv_50\'high) )) = '0';

        result_19 <= signed(\r'_17\) when result_selection_res_16 else
                     \c$case_alt_19\;

        \c$bv_51\ <= ((std_logic_vector(acc_33)));

        \c$bv_52\ <= ((std_logic_vector(acc_34)));

        \c$case_alt_selection_res_16\ <= (( \c$bv_51\(\c$bv_51\'high) ) and ( \c$bv_52\(\c$bv_52\'high) )) = '0';

        \c$case_alt_19\ <= to_signed(131071,18) when \c$case_alt_selection_res_16\ else
                           to_signed(-131072,18);

        \r'_projection_16\ <= (\c$r'_app_arg_16\(\c$r'_app_arg_16\'high downto 18),\c$r'_app_arg_16\(18-1 downto 0));

        \r'_17\ <= \r'_projection_16\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_16\ <= (std_logic_vector(r_16));

        r_16 <= resize(acc_33,19) + resize(acc_34,19);


      end block;

    fun_68 : block
        signal result_20                     : signed(17 downto 0);
        signal \c$case_alt_20\               : signed(17 downto 0);
        signal \r'_18\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_17\             : std_logic_vector(18 downto 0);
        signal r_17                          : signed(18 downto 0);
        signal result_selection_res_17       : boolean;
        signal \c$bv_53\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_17\ : boolean;
        signal \c$bv_54\                     : std_logic_vector(17 downto 0);
        signal \c$bv_55\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_17\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_17 <= result_20;

        \c$bv_53\ <= (\r'_18\);

        result_selection_res_17 <= (( \c$r'_app_arg_17\(\c$r'_app_arg_17\'high) ) xor ( \c$bv_53\(\c$bv_53\'high) )) = '0';

        result_20 <= signed(\r'_18\) when result_selection_res_17 else
                     \c$case_alt_20\;

        \c$bv_54\ <= ((std_logic_vector(acc_35)));

        \c$bv_55\ <= ((std_logic_vector(acc_36)));

        \c$case_alt_selection_res_17\ <= (( \c$bv_54\(\c$bv_54\'high) ) and ( \c$bv_55\(\c$bv_55\'high) )) = '0';

        \c$case_alt_20\ <= to_signed(131071,18) when \c$case_alt_selection_res_17\ else
                           to_signed(-131072,18);

        \r'_projection_17\ <= (\c$r'_app_arg_17\(\c$r'_app_arg_17\'high downto 18),\c$r'_app_arg_17\(18-1 downto 0));

        \r'_18\ <= \r'_projection_17\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_17\ <= (std_logic_vector(r_17));

        r_17 <= resize(acc_35,19) + resize(acc_36,19);


      end block;

    fun_69 : block
        signal result_21                     : signed(17 downto 0);
        signal \c$case_alt_21\               : signed(17 downto 0);
        signal \r'_19\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_18\             : std_logic_vector(18 downto 0);
        signal r_18                          : signed(18 downto 0);
        signal result_selection_res_18       : boolean;
        signal \c$bv_56\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_18\ : boolean;
        signal \c$bv_57\                     : std_logic_vector(17 downto 0);
        signal \c$bv_58\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_18\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_18 <= result_21;

        \c$bv_56\ <= (\r'_19\);

        result_selection_res_18 <= (( \c$r'_app_arg_18\(\c$r'_app_arg_18\'high) ) xor ( \c$bv_56\(\c$bv_56\'high) )) = '0';

        result_21 <= signed(\r'_19\) when result_selection_res_18 else
                     \c$case_alt_21\;

        \c$bv_57\ <= ((std_logic_vector(acc_37)));

        \c$bv_58\ <= ((std_logic_vector(acc_38)));

        \c$case_alt_selection_res_18\ <= (( \c$bv_57\(\c$bv_57\'high) ) and ( \c$bv_58\(\c$bv_58\'high) )) = '0';

        \c$case_alt_21\ <= to_signed(131071,18) when \c$case_alt_selection_res_18\ else
                           to_signed(-131072,18);

        \r'_projection_18\ <= (\c$r'_app_arg_18\(\c$r'_app_arg_18\'high downto 18),\c$r'_app_arg_18\(18-1 downto 0));

        \r'_19\ <= \r'_projection_18\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_18\ <= (std_logic_vector(r_18));

        r_18 <= resize(acc_37,19) + resize(acc_38,19);


      end block;

    fun_70 : block
        signal result_22                     : signed(17 downto 0);
        signal \c$case_alt_22\               : signed(17 downto 0);
        signal \r'_20\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_19\             : std_logic_vector(18 downto 0);
        signal r_19                          : signed(18 downto 0);
        signal result_selection_res_19       : boolean;
        signal \c$bv_59\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_19\ : boolean;
        signal \c$bv_60\                     : std_logic_vector(17 downto 0);
        signal \c$bv_61\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_19\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_19 <= result_22;

        \c$bv_59\ <= (\r'_20\);

        result_selection_res_19 <= (( \c$r'_app_arg_19\(\c$r'_app_arg_19\'high) ) xor ( \c$bv_59\(\c$bv_59\'high) )) = '0';

        result_22 <= signed(\r'_20\) when result_selection_res_19 else
                     \c$case_alt_22\;

        \c$bv_60\ <= ((std_logic_vector(acc_39)));

        \c$bv_61\ <= ((std_logic_vector(acc_40)));

        \c$case_alt_selection_res_19\ <= (( \c$bv_60\(\c$bv_60\'high) ) and ( \c$bv_61\(\c$bv_61\'high) )) = '0';

        \c$case_alt_22\ <= to_signed(131071,18) when \c$case_alt_selection_res_19\ else
                           to_signed(-131072,18);

        \r'_projection_19\ <= (\c$r'_app_arg_19\(\c$r'_app_arg_19\'high downto 18),\c$r'_app_arg_19\(18-1 downto 0));

        \r'_20\ <= \r'_projection_19\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_19\ <= (std_logic_vector(r_19));

        r_19 <= resize(acc_39,19) + resize(acc_40,19);


      end block;

    fun_71 : block
        signal result_23                     : signed(17 downto 0);
        signal \c$case_alt_23\               : signed(17 downto 0);
        signal \r'_21\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_20\             : std_logic_vector(18 downto 0);
        signal r_20                          : signed(18 downto 0);
        signal result_selection_res_20       : boolean;
        signal \c$bv_62\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_20\ : boolean;
        signal \c$bv_63\                     : std_logic_vector(17 downto 0);
        signal \c$bv_64\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_20\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_20 <= result_23;

        \c$bv_62\ <= (\r'_21\);

        result_selection_res_20 <= (( \c$r'_app_arg_20\(\c$r'_app_arg_20\'high) ) xor ( \c$bv_62\(\c$bv_62\'high) )) = '0';

        result_23 <= signed(\r'_21\) when result_selection_res_20 else
                     \c$case_alt_23\;

        \c$bv_63\ <= ((std_logic_vector(acc_41)));

        \c$bv_64\ <= ((std_logic_vector(acc_42)));

        \c$case_alt_selection_res_20\ <= (( \c$bv_63\(\c$bv_63\'high) ) and ( \c$bv_64\(\c$bv_64\'high) )) = '0';

        \c$case_alt_23\ <= to_signed(131071,18) when \c$case_alt_selection_res_20\ else
                           to_signed(-131072,18);

        \r'_projection_20\ <= (\c$r'_app_arg_20\(\c$r'_app_arg_20\'high downto 18),\c$r'_app_arg_20\(18-1 downto 0));

        \r'_21\ <= \r'_projection_20\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_20\ <= (std_logic_vector(r_20));

        r_20 <= resize(acc_41,19) + resize(acc_42,19);


      end block;

    fun_72 : block
        signal result_24                     : signed(17 downto 0);
        signal \c$case_alt_24\               : signed(17 downto 0);
        signal \r'_22\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_21\             : std_logic_vector(18 downto 0);
        signal r_21                          : signed(18 downto 0);
        signal result_selection_res_21       : boolean;
        signal \c$bv_65\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_21\ : boolean;
        signal \c$bv_66\                     : std_logic_vector(17 downto 0);
        signal \c$bv_67\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_21\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_21 <= result_24;

        \c$bv_65\ <= (\r'_22\);

        result_selection_res_21 <= (( \c$r'_app_arg_21\(\c$r'_app_arg_21\'high) ) xor ( \c$bv_65\(\c$bv_65\'high) )) = '0';

        result_24 <= signed(\r'_22\) when result_selection_res_21 else
                     \c$case_alt_24\;

        \c$bv_66\ <= ((std_logic_vector(acc_43)));

        \c$bv_67\ <= ((std_logic_vector(acc_44)));

        \c$case_alt_selection_res_21\ <= (( \c$bv_66\(\c$bv_66\'high) ) and ( \c$bv_67\(\c$bv_67\'high) )) = '0';

        \c$case_alt_24\ <= to_signed(131071,18) when \c$case_alt_selection_res_21\ else
                           to_signed(-131072,18);

        \r'_projection_21\ <= (\c$r'_app_arg_21\(\c$r'_app_arg_21\'high downto 18),\c$r'_app_arg_21\(18-1 downto 0));

        \r'_22\ <= \r'_projection_21\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_21\ <= (std_logic_vector(r_21));

        r_21 <= resize(acc_43,19) + resize(acc_44,19);


      end block;

    fun_73 : block
        signal result_25                     : signed(17 downto 0);
        signal \c$case_alt_25\               : signed(17 downto 0);
        signal \r'_23\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_22\             : std_logic_vector(18 downto 0);
        signal r_22                          : signed(18 downto 0);
        signal result_selection_res_22       : boolean;
        signal \c$bv_68\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_22\ : boolean;
        signal \c$bv_69\                     : std_logic_vector(17 downto 0);
        signal \c$bv_70\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_22\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_22 <= result_25;

        \c$bv_68\ <= (\r'_23\);

        result_selection_res_22 <= (( \c$r'_app_arg_22\(\c$r'_app_arg_22\'high) ) xor ( \c$bv_68\(\c$bv_68\'high) )) = '0';

        result_25 <= signed(\r'_23\) when result_selection_res_22 else
                     \c$case_alt_25\;

        \c$bv_69\ <= ((std_logic_vector(acc_45)));

        \c$bv_70\ <= ((std_logic_vector(acc_46)));

        \c$case_alt_selection_res_22\ <= (( \c$bv_69\(\c$bv_69\'high) ) and ( \c$bv_70\(\c$bv_70\'high) )) = '0';

        \c$case_alt_25\ <= to_signed(131071,18) when \c$case_alt_selection_res_22\ else
                           to_signed(-131072,18);

        \r'_projection_22\ <= (\c$r'_app_arg_22\(\c$r'_app_arg_22\'high downto 18),\c$r'_app_arg_22\(18-1 downto 0));

        \r'_23\ <= \r'_projection_22\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_22\ <= (std_logic_vector(r_22));

        r_22 <= resize(acc_45,19) + resize(acc_46,19);


      end block;

    fun_74 : block
        signal result_26                     : signed(17 downto 0);
        signal \c$case_alt_26\               : signed(17 downto 0);
        signal \r'_24\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_23\             : std_logic_vector(18 downto 0);
        signal r_23                          : signed(18 downto 0);
        signal result_selection_res_23       : boolean;
        signal \c$bv_71\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_23\ : boolean;
        signal \c$bv_72\                     : std_logic_vector(17 downto 0);
        signal \c$bv_73\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_23\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_23 <= result_26;

        \c$bv_71\ <= (\r'_24\);

        result_selection_res_23 <= (( \c$r'_app_arg_23\(\c$r'_app_arg_23\'high) ) xor ( \c$bv_71\(\c$bv_71\'high) )) = '0';

        result_26 <= signed(\r'_24\) when result_selection_res_23 else
                     \c$case_alt_26\;

        \c$bv_72\ <= ((std_logic_vector(acc_47)));

        \c$bv_73\ <= ((std_logic_vector(acc_48)));

        \c$case_alt_selection_res_23\ <= (( \c$bv_72\(\c$bv_72\'high) ) and ( \c$bv_73\(\c$bv_73\'high) )) = '0';

        \c$case_alt_26\ <= to_signed(131071,18) when \c$case_alt_selection_res_23\ else
                           to_signed(-131072,18);

        \r'_projection_23\ <= (\c$r'_app_arg_23\(\c$r'_app_arg_23\'high downto 18),\c$r'_app_arg_23\(18-1 downto 0));

        \r'_24\ <= \r'_projection_23\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_23\ <= (std_logic_vector(r_23));

        r_23 <= resize(acc_47,19) + resize(acc_48,19);


      end block;

    fun_75 : block
        signal result_27                     : signed(17 downto 0);
        signal \c$case_alt_27\               : signed(17 downto 0);
        signal \r'_25\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_24\             : std_logic_vector(18 downto 0);
        signal r_24                          : signed(18 downto 0);
        signal result_selection_res_24       : boolean;
        signal \c$bv_74\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_24\ : boolean;
        signal \c$bv_75\                     : std_logic_vector(17 downto 0);
        signal \c$bv_76\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_24\            : mfir3_100_types.Tuple2_1;
      begin
        acc_1_24 <= result_27;

        \c$bv_74\ <= (\r'_25\);

        result_selection_res_24 <= (( \c$r'_app_arg_24\(\c$r'_app_arg_24\'high) ) xor ( \c$bv_74\(\c$bv_74\'high) )) = '0';

        result_27 <= signed(\r'_25\) when result_selection_res_24 else
                     \c$case_alt_27\;

        \c$bv_75\ <= ((std_logic_vector(acc_49)));

        \c$bv_76\ <= ((std_logic_vector(acc_50)));

        \c$case_alt_selection_res_24\ <= (( \c$bv_75\(\c$bv_75\'high) ) and ( \c$bv_76\(\c$bv_76\'high) )) = '0';

        \c$case_alt_27\ <= to_signed(131071,18) when \c$case_alt_selection_res_24\ else
                           to_signed(-131072,18);

        \r'_projection_24\ <= (\c$r'_app_arg_24\(\c$r'_app_arg_24\'high downto 18),\c$r'_app_arg_24\(18-1 downto 0));

        \r'_25\ <= \r'_projection_24\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_24\ <= (std_logic_vector(r_24));

        r_24 <= resize(acc_49,19) + resize(acc_50,19);


      end block;

    fun_76 : block
        signal result_28                     : signed(17 downto 0);
        signal \c$case_alt_28\               : signed(17 downto 0);
        signal \r'_26\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_25\             : std_logic_vector(18 downto 0);
        signal r_25                          : signed(18 downto 0);
        signal result_selection_res_25       : boolean;
        signal \c$bv_77\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_25\ : boolean;
        signal \c$bv_78\                     : std_logic_vector(17 downto 0);
        signal \c$bv_79\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_25\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_0 <= result_28;

        \c$bv_77\ <= (\r'_26\);

        result_selection_res_25 <= (( \c$r'_app_arg_25\(\c$r'_app_arg_25\'high) ) xor ( \c$bv_77\(\c$bv_77\'high) )) = '0';

        result_28 <= signed(\r'_26\) when result_selection_res_25 else
                     \c$case_alt_28\;

        \c$bv_78\ <= ((std_logic_vector(acc_1_0)));

        \c$bv_79\ <= ((std_logic_vector(acc_1_1)));

        \c$case_alt_selection_res_25\ <= (( \c$bv_78\(\c$bv_78\'high) ) and ( \c$bv_79\(\c$bv_79\'high) )) = '0';

        \c$case_alt_28\ <= to_signed(131071,18) when \c$case_alt_selection_res_25\ else
                           to_signed(-131072,18);

        \r'_projection_25\ <= (\c$r'_app_arg_25\(\c$r'_app_arg_25\'high downto 18),\c$r'_app_arg_25\(18-1 downto 0));

        \r'_26\ <= \r'_projection_25\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_25\ <= (std_logic_vector(r_25));

        r_25 <= resize(acc_1_0,19) + resize(acc_1_1,19);


      end block;

    fun_77 : block
        signal result_29                     : signed(17 downto 0);
        signal \c$case_alt_29\               : signed(17 downto 0);
        signal \r'_27\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_26\             : std_logic_vector(18 downto 0);
        signal r_26                          : signed(18 downto 0);
        signal result_selection_res_26       : boolean;
        signal \c$bv_80\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_26\ : boolean;
        signal \c$bv_81\                     : std_logic_vector(17 downto 0);
        signal \c$bv_82\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_26\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_1 <= result_29;

        \c$bv_80\ <= (\r'_27\);

        result_selection_res_26 <= (( \c$r'_app_arg_26\(\c$r'_app_arg_26\'high) ) xor ( \c$bv_80\(\c$bv_80\'high) )) = '0';

        result_29 <= signed(\r'_27\) when result_selection_res_26 else
                     \c$case_alt_29\;

        \c$bv_81\ <= ((std_logic_vector(acc_1_2)));

        \c$bv_82\ <= ((std_logic_vector(acc_1_3)));

        \c$case_alt_selection_res_26\ <= (( \c$bv_81\(\c$bv_81\'high) ) and ( \c$bv_82\(\c$bv_82\'high) )) = '0';

        \c$case_alt_29\ <= to_signed(131071,18) when \c$case_alt_selection_res_26\ else
                           to_signed(-131072,18);

        \r'_projection_26\ <= (\c$r'_app_arg_26\(\c$r'_app_arg_26\'high downto 18),\c$r'_app_arg_26\(18-1 downto 0));

        \r'_27\ <= \r'_projection_26\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_26\ <= (std_logic_vector(r_26));

        r_26 <= resize(acc_1_2,19) + resize(acc_1_3,19);


      end block;

    fun_78 : block
        signal result_30                     : signed(17 downto 0);
        signal \c$case_alt_30\               : signed(17 downto 0);
        signal \r'_28\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_27\             : std_logic_vector(18 downto 0);
        signal r_27                          : signed(18 downto 0);
        signal result_selection_res_27       : boolean;
        signal \c$bv_83\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_27\ : boolean;
        signal \c$bv_84\                     : std_logic_vector(17 downto 0);
        signal \c$bv_85\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_27\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_2 <= result_30;

        \c$bv_83\ <= (\r'_28\);

        result_selection_res_27 <= (( \c$r'_app_arg_27\(\c$r'_app_arg_27\'high) ) xor ( \c$bv_83\(\c$bv_83\'high) )) = '0';

        result_30 <= signed(\r'_28\) when result_selection_res_27 else
                     \c$case_alt_30\;

        \c$bv_84\ <= ((std_logic_vector(acc_1_4)));

        \c$bv_85\ <= ((std_logic_vector(acc_1_5)));

        \c$case_alt_selection_res_27\ <= (( \c$bv_84\(\c$bv_84\'high) ) and ( \c$bv_85\(\c$bv_85\'high) )) = '0';

        \c$case_alt_30\ <= to_signed(131071,18) when \c$case_alt_selection_res_27\ else
                           to_signed(-131072,18);

        \r'_projection_27\ <= (\c$r'_app_arg_27\(\c$r'_app_arg_27\'high downto 18),\c$r'_app_arg_27\(18-1 downto 0));

        \r'_28\ <= \r'_projection_27\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_27\ <= (std_logic_vector(r_27));

        r_27 <= resize(acc_1_4,19) + resize(acc_1_5,19);


      end block;

    fun_79 : block
        signal result_31                     : signed(17 downto 0);
        signal \c$case_alt_31\               : signed(17 downto 0);
        signal \r'_29\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_28\             : std_logic_vector(18 downto 0);
        signal r_28                          : signed(18 downto 0);
        signal result_selection_res_28       : boolean;
        signal \c$bv_86\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_28\ : boolean;
        signal \c$bv_87\                     : std_logic_vector(17 downto 0);
        signal \c$bv_88\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_28\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_3 <= result_31;

        \c$bv_86\ <= (\r'_29\);

        result_selection_res_28 <= (( \c$r'_app_arg_28\(\c$r'_app_arg_28\'high) ) xor ( \c$bv_86\(\c$bv_86\'high) )) = '0';

        result_31 <= signed(\r'_29\) when result_selection_res_28 else
                     \c$case_alt_31\;

        \c$bv_87\ <= ((std_logic_vector(acc_1_6)));

        \c$bv_88\ <= ((std_logic_vector(acc_1_7)));

        \c$case_alt_selection_res_28\ <= (( \c$bv_87\(\c$bv_87\'high) ) and ( \c$bv_88\(\c$bv_88\'high) )) = '0';

        \c$case_alt_31\ <= to_signed(131071,18) when \c$case_alt_selection_res_28\ else
                           to_signed(-131072,18);

        \r'_projection_28\ <= (\c$r'_app_arg_28\(\c$r'_app_arg_28\'high downto 18),\c$r'_app_arg_28\(18-1 downto 0));

        \r'_29\ <= \r'_projection_28\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_28\ <= (std_logic_vector(r_28));

        r_28 <= resize(acc_1_6,19) + resize(acc_1_7,19);


      end block;

    fun_80 : block
        signal result_32                     : signed(17 downto 0);
        signal \c$case_alt_32\               : signed(17 downto 0);
        signal \r'_30\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_29\             : std_logic_vector(18 downto 0);
        signal r_29                          : signed(18 downto 0);
        signal result_selection_res_29       : boolean;
        signal \c$bv_89\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_29\ : boolean;
        signal \c$bv_90\                     : std_logic_vector(17 downto 0);
        signal \c$bv_91\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_29\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_4 <= result_32;

        \c$bv_89\ <= (\r'_30\);

        result_selection_res_29 <= (( \c$r'_app_arg_29\(\c$r'_app_arg_29\'high) ) xor ( \c$bv_89\(\c$bv_89\'high) )) = '0';

        result_32 <= signed(\r'_30\) when result_selection_res_29 else
                     \c$case_alt_32\;

        \c$bv_90\ <= ((std_logic_vector(acc_1_8)));

        \c$bv_91\ <= ((std_logic_vector(acc_1_9)));

        \c$case_alt_selection_res_29\ <= (( \c$bv_90\(\c$bv_90\'high) ) and ( \c$bv_91\(\c$bv_91\'high) )) = '0';

        \c$case_alt_32\ <= to_signed(131071,18) when \c$case_alt_selection_res_29\ else
                           to_signed(-131072,18);

        \r'_projection_29\ <= (\c$r'_app_arg_29\(\c$r'_app_arg_29\'high downto 18),\c$r'_app_arg_29\(18-1 downto 0));

        \r'_30\ <= \r'_projection_29\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_29\ <= (std_logic_vector(r_29));

        r_29 <= resize(acc_1_8,19) + resize(acc_1_9,19);


      end block;

    fun_81 : block
        signal result_33                     : signed(17 downto 0);
        signal \c$case_alt_33\               : signed(17 downto 0);
        signal \r'_31\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_30\             : std_logic_vector(18 downto 0);
        signal r_30                          : signed(18 downto 0);
        signal result_selection_res_30       : boolean;
        signal \c$bv_92\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_30\ : boolean;
        signal \c$bv_93\                     : std_logic_vector(17 downto 0);
        signal \c$bv_94\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_30\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_5 <= result_33;

        \c$bv_92\ <= (\r'_31\);

        result_selection_res_30 <= (( \c$r'_app_arg_30\(\c$r'_app_arg_30\'high) ) xor ( \c$bv_92\(\c$bv_92\'high) )) = '0';

        result_33 <= signed(\r'_31\) when result_selection_res_30 else
                     \c$case_alt_33\;

        \c$bv_93\ <= ((std_logic_vector(acc_1_10)));

        \c$bv_94\ <= ((std_logic_vector(acc_1_11)));

        \c$case_alt_selection_res_30\ <= (( \c$bv_93\(\c$bv_93\'high) ) and ( \c$bv_94\(\c$bv_94\'high) )) = '0';

        \c$case_alt_33\ <= to_signed(131071,18) when \c$case_alt_selection_res_30\ else
                           to_signed(-131072,18);

        \r'_projection_30\ <= (\c$r'_app_arg_30\(\c$r'_app_arg_30\'high downto 18),\c$r'_app_arg_30\(18-1 downto 0));

        \r'_31\ <= \r'_projection_30\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_30\ <= (std_logic_vector(r_30));

        r_30 <= resize(acc_1_10,19) + resize(acc_1_11,19);


      end block;

    fun_82 : block
        signal result_34                     : signed(17 downto 0);
        signal \c$case_alt_34\               : signed(17 downto 0);
        signal \r'_32\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_31\             : std_logic_vector(18 downto 0);
        signal r_31                          : signed(18 downto 0);
        signal result_selection_res_31       : boolean;
        signal \c$bv_95\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_31\ : boolean;
        signal \c$bv_96\                     : std_logic_vector(17 downto 0);
        signal \c$bv_97\                     : std_logic_vector(17 downto 0);
        signal \r'_projection_31\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_6 <= result_34;

        \c$bv_95\ <= (\r'_32\);

        result_selection_res_31 <= (( \c$r'_app_arg_31\(\c$r'_app_arg_31\'high) ) xor ( \c$bv_95\(\c$bv_95\'high) )) = '0';

        result_34 <= signed(\r'_32\) when result_selection_res_31 else
                     \c$case_alt_34\;

        \c$bv_96\ <= ((std_logic_vector(acc_1_12)));

        \c$bv_97\ <= ((std_logic_vector(acc_1_13)));

        \c$case_alt_selection_res_31\ <= (( \c$bv_96\(\c$bv_96\'high) ) and ( \c$bv_97\(\c$bv_97\'high) )) = '0';

        \c$case_alt_34\ <= to_signed(131071,18) when \c$case_alt_selection_res_31\ else
                           to_signed(-131072,18);

        \r'_projection_31\ <= (\c$r'_app_arg_31\(\c$r'_app_arg_31\'high downto 18),\c$r'_app_arg_31\(18-1 downto 0));

        \r'_32\ <= \r'_projection_31\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_31\ <= (std_logic_vector(r_31));

        r_31 <= resize(acc_1_12,19) + resize(acc_1_13,19);


      end block;

    fun_83 : block
        signal result_35                     : signed(17 downto 0);
        signal \c$case_alt_35\               : signed(17 downto 0);
        signal \r'_33\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_32\             : std_logic_vector(18 downto 0);
        signal r_32                          : signed(18 downto 0);
        signal result_selection_res_32       : boolean;
        signal \c$bv_98\                     : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_32\ : boolean;
        signal \c$bv_99\                     : std_logic_vector(17 downto 0);
        signal \c$bv_100\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_32\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_7 <= result_35;

        \c$bv_98\ <= (\r'_33\);

        result_selection_res_32 <= (( \c$r'_app_arg_32\(\c$r'_app_arg_32\'high) ) xor ( \c$bv_98\(\c$bv_98\'high) )) = '0';

        result_35 <= signed(\r'_33\) when result_selection_res_32 else
                     \c$case_alt_35\;

        \c$bv_99\ <= ((std_logic_vector(acc_1_14)));

        \c$bv_100\ <= ((std_logic_vector(acc_1_15)));

        \c$case_alt_selection_res_32\ <= (( \c$bv_99\(\c$bv_99\'high) ) and ( \c$bv_100\(\c$bv_100\'high) )) = '0';

        \c$case_alt_35\ <= to_signed(131071,18) when \c$case_alt_selection_res_32\ else
                           to_signed(-131072,18);

        \r'_projection_32\ <= (\c$r'_app_arg_32\(\c$r'_app_arg_32\'high downto 18),\c$r'_app_arg_32\(18-1 downto 0));

        \r'_33\ <= \r'_projection_32\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_32\ <= (std_logic_vector(r_32));

        r_32 <= resize(acc_1_14,19) + resize(acc_1_15,19);


      end block;

    fun_84 : block
        signal result_36                     : signed(17 downto 0);
        signal \c$case_alt_36\               : signed(17 downto 0);
        signal \r'_34\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_33\             : std_logic_vector(18 downto 0);
        signal r_33                          : signed(18 downto 0);
        signal result_selection_res_33       : boolean;
        signal \c$bv_101\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_33\ : boolean;
        signal \c$bv_102\                    : std_logic_vector(17 downto 0);
        signal \c$bv_103\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_33\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_8 <= result_36;

        \c$bv_101\ <= (\r'_34\);

        result_selection_res_33 <= (( \c$r'_app_arg_33\(\c$r'_app_arg_33\'high) ) xor ( \c$bv_101\(\c$bv_101\'high) )) = '0';

        result_36 <= signed(\r'_34\) when result_selection_res_33 else
                     \c$case_alt_36\;

        \c$bv_102\ <= ((std_logic_vector(acc_1_16)));

        \c$bv_103\ <= ((std_logic_vector(acc_1_17)));

        \c$case_alt_selection_res_33\ <= (( \c$bv_102\(\c$bv_102\'high) ) and ( \c$bv_103\(\c$bv_103\'high) )) = '0';

        \c$case_alt_36\ <= to_signed(131071,18) when \c$case_alt_selection_res_33\ else
                           to_signed(-131072,18);

        \r'_projection_33\ <= (\c$r'_app_arg_33\(\c$r'_app_arg_33\'high downto 18),\c$r'_app_arg_33\(18-1 downto 0));

        \r'_34\ <= \r'_projection_33\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_33\ <= (std_logic_vector(r_33));

        r_33 <= resize(acc_1_16,19) + resize(acc_1_17,19);


      end block;

    fun_85 : block
        signal result_37                     : signed(17 downto 0);
        signal \c$case_alt_37\               : signed(17 downto 0);
        signal \r'_35\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_34\             : std_logic_vector(18 downto 0);
        signal r_34                          : signed(18 downto 0);
        signal result_selection_res_34       : boolean;
        signal \c$bv_104\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_34\ : boolean;
        signal \c$bv_105\                    : std_logic_vector(17 downto 0);
        signal \c$bv_106\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_34\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_9 <= result_37;

        \c$bv_104\ <= (\r'_35\);

        result_selection_res_34 <= (( \c$r'_app_arg_34\(\c$r'_app_arg_34\'high) ) xor ( \c$bv_104\(\c$bv_104\'high) )) = '0';

        result_37 <= signed(\r'_35\) when result_selection_res_34 else
                     \c$case_alt_37\;

        \c$bv_105\ <= ((std_logic_vector(acc_1_18)));

        \c$bv_106\ <= ((std_logic_vector(acc_1_19)));

        \c$case_alt_selection_res_34\ <= (( \c$bv_105\(\c$bv_105\'high) ) and ( \c$bv_106\(\c$bv_106\'high) )) = '0';

        \c$case_alt_37\ <= to_signed(131071,18) when \c$case_alt_selection_res_34\ else
                           to_signed(-131072,18);

        \r'_projection_34\ <= (\c$r'_app_arg_34\(\c$r'_app_arg_34\'high downto 18),\c$r'_app_arg_34\(18-1 downto 0));

        \r'_35\ <= \r'_projection_34\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_34\ <= (std_logic_vector(r_34));

        r_34 <= resize(acc_1_18,19) + resize(acc_1_19,19);


      end block;

    fun_86 : block
        signal result_38                     : signed(17 downto 0);
        signal \c$case_alt_38\               : signed(17 downto 0);
        signal \r'_36\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_35\             : std_logic_vector(18 downto 0);
        signal r_35                          : signed(18 downto 0);
        signal result_selection_res_35       : boolean;
        signal \c$bv_107\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_35\ : boolean;
        signal \c$bv_108\                    : std_logic_vector(17 downto 0);
        signal \c$bv_109\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_35\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_10 <= result_38;

        \c$bv_107\ <= (\r'_36\);

        result_selection_res_35 <= (( \c$r'_app_arg_35\(\c$r'_app_arg_35\'high) ) xor ( \c$bv_107\(\c$bv_107\'high) )) = '0';

        result_38 <= signed(\r'_36\) when result_selection_res_35 else
                     \c$case_alt_38\;

        \c$bv_108\ <= ((std_logic_vector(acc_1_20)));

        \c$bv_109\ <= ((std_logic_vector(acc_1_21)));

        \c$case_alt_selection_res_35\ <= (( \c$bv_108\(\c$bv_108\'high) ) and ( \c$bv_109\(\c$bv_109\'high) )) = '0';

        \c$case_alt_38\ <= to_signed(131071,18) when \c$case_alt_selection_res_35\ else
                           to_signed(-131072,18);

        \r'_projection_35\ <= (\c$r'_app_arg_35\(\c$r'_app_arg_35\'high downto 18),\c$r'_app_arg_35\(18-1 downto 0));

        \r'_36\ <= \r'_projection_35\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_35\ <= (std_logic_vector(r_35));

        r_35 <= resize(acc_1_20,19) + resize(acc_1_21,19);


      end block;

    fun_87 : block
        signal result_39                     : signed(17 downto 0);
        signal \c$case_alt_39\               : signed(17 downto 0);
        signal \r'_37\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_36\             : std_logic_vector(18 downto 0);
        signal r_36                          : signed(18 downto 0);
        signal result_selection_res_36       : boolean;
        signal \c$bv_110\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_36\ : boolean;
        signal \c$bv_111\                    : std_logic_vector(17 downto 0);
        signal \c$bv_112\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_36\            : mfir3_100_types.Tuple2_1;
      begin
        acc_2_11 <= result_39;

        \c$bv_110\ <= (\r'_37\);

        result_selection_res_36 <= (( \c$r'_app_arg_36\(\c$r'_app_arg_36\'high) ) xor ( \c$bv_110\(\c$bv_110\'high) )) = '0';

        result_39 <= signed(\r'_37\) when result_selection_res_36 else
                     \c$case_alt_39\;

        \c$bv_111\ <= ((std_logic_vector(acc_1_22)));

        \c$bv_112\ <= ((std_logic_vector(acc_1_23)));

        \c$case_alt_selection_res_36\ <= (( \c$bv_111\(\c$bv_111\'high) ) and ( \c$bv_112\(\c$bv_112\'high) )) = '0';

        \c$case_alt_39\ <= to_signed(131071,18) when \c$case_alt_selection_res_36\ else
                           to_signed(-131072,18);

        \r'_projection_36\ <= (\c$r'_app_arg_36\(\c$r'_app_arg_36\'high downto 18),\c$r'_app_arg_36\(18-1 downto 0));

        \r'_37\ <= \r'_projection_36\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_36\ <= (std_logic_vector(r_36));

        r_36 <= resize(acc_1_22,19) + resize(acc_1_23,19);


      end block;

    fun_88 : block
        signal result_40                     : signed(17 downto 0);
        signal \c$case_alt_40\               : signed(17 downto 0);
        signal \r'_38\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_37\             : std_logic_vector(18 downto 0);
        signal r_37                          : signed(18 downto 0);
        signal result_selection_res_37       : boolean;
        signal \c$bv_113\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_37\ : boolean;
        signal \c$bv_114\                    : std_logic_vector(17 downto 0);
        signal \c$bv_115\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_37\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_0 <= result_40;

        \c$bv_113\ <= (\r'_38\);

        result_selection_res_37 <= (( \c$r'_app_arg_37\(\c$r'_app_arg_37\'high) ) xor ( \c$bv_113\(\c$bv_113\'high) )) = '0';

        result_40 <= signed(\r'_38\) when result_selection_res_37 else
                     \c$case_alt_40\;

        \c$bv_114\ <= ((std_logic_vector(acc_2_0)));

        \c$bv_115\ <= ((std_logic_vector(acc_2_1)));

        \c$case_alt_selection_res_37\ <= (( \c$bv_114\(\c$bv_114\'high) ) and ( \c$bv_115\(\c$bv_115\'high) )) = '0';

        \c$case_alt_40\ <= to_signed(131071,18) when \c$case_alt_selection_res_37\ else
                           to_signed(-131072,18);

        \r'_projection_37\ <= (\c$r'_app_arg_37\(\c$r'_app_arg_37\'high downto 18),\c$r'_app_arg_37\(18-1 downto 0));

        \r'_38\ <= \r'_projection_37\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_37\ <= (std_logic_vector(r_37));

        r_37 <= resize(acc_2_0,19) + resize(acc_2_1,19);


      end block;

    fun_89 : block
        signal result_41                     : signed(17 downto 0);
        signal \c$case_alt_41\               : signed(17 downto 0);
        signal \r'_39\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_38\             : std_logic_vector(18 downto 0);
        signal r_38                          : signed(18 downto 0);
        signal result_selection_res_38       : boolean;
        signal \c$bv_116\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_38\ : boolean;
        signal \c$bv_117\                    : std_logic_vector(17 downto 0);
        signal \c$bv_118\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_38\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_1 <= result_41;

        \c$bv_116\ <= (\r'_39\);

        result_selection_res_38 <= (( \c$r'_app_arg_38\(\c$r'_app_arg_38\'high) ) xor ( \c$bv_116\(\c$bv_116\'high) )) = '0';

        result_41 <= signed(\r'_39\) when result_selection_res_38 else
                     \c$case_alt_41\;

        \c$bv_117\ <= ((std_logic_vector(acc_2_2)));

        \c$bv_118\ <= ((std_logic_vector(acc_2_3)));

        \c$case_alt_selection_res_38\ <= (( \c$bv_117\(\c$bv_117\'high) ) and ( \c$bv_118\(\c$bv_118\'high) )) = '0';

        \c$case_alt_41\ <= to_signed(131071,18) when \c$case_alt_selection_res_38\ else
                           to_signed(-131072,18);

        \r'_projection_38\ <= (\c$r'_app_arg_38\(\c$r'_app_arg_38\'high downto 18),\c$r'_app_arg_38\(18-1 downto 0));

        \r'_39\ <= \r'_projection_38\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_38\ <= (std_logic_vector(r_38));

        r_38 <= resize(acc_2_2,19) + resize(acc_2_3,19);


      end block;

    fun_90 : block
        signal result_42                     : signed(17 downto 0);
        signal \c$case_alt_42\               : signed(17 downto 0);
        signal \r'_40\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_39\             : std_logic_vector(18 downto 0);
        signal r_39                          : signed(18 downto 0);
        signal result_selection_res_39       : boolean;
        signal \c$bv_119\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_39\ : boolean;
        signal \c$bv_120\                    : std_logic_vector(17 downto 0);
        signal \c$bv_121\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_39\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_2 <= result_42;

        \c$bv_119\ <= (\r'_40\);

        result_selection_res_39 <= (( \c$r'_app_arg_39\(\c$r'_app_arg_39\'high) ) xor ( \c$bv_119\(\c$bv_119\'high) )) = '0';

        result_42 <= signed(\r'_40\) when result_selection_res_39 else
                     \c$case_alt_42\;

        \c$bv_120\ <= ((std_logic_vector(acc_2_4)));

        \c$bv_121\ <= ((std_logic_vector(acc_2_5)));

        \c$case_alt_selection_res_39\ <= (( \c$bv_120\(\c$bv_120\'high) ) and ( \c$bv_121\(\c$bv_121\'high) )) = '0';

        \c$case_alt_42\ <= to_signed(131071,18) when \c$case_alt_selection_res_39\ else
                           to_signed(-131072,18);

        \r'_projection_39\ <= (\c$r'_app_arg_39\(\c$r'_app_arg_39\'high downto 18),\c$r'_app_arg_39\(18-1 downto 0));

        \r'_40\ <= \r'_projection_39\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_39\ <= (std_logic_vector(r_39));

        r_39 <= resize(acc_2_4,19) + resize(acc_2_5,19);


      end block;

    fun_91 : block
        signal result_43                     : signed(17 downto 0);
        signal \c$case_alt_43\               : signed(17 downto 0);
        signal \r'_41\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_40\             : std_logic_vector(18 downto 0);
        signal r_40                          : signed(18 downto 0);
        signal result_selection_res_40       : boolean;
        signal \c$bv_122\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_40\ : boolean;
        signal \c$bv_123\                    : std_logic_vector(17 downto 0);
        signal \c$bv_124\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_40\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_3 <= result_43;

        \c$bv_122\ <= (\r'_41\);

        result_selection_res_40 <= (( \c$r'_app_arg_40\(\c$r'_app_arg_40\'high) ) xor ( \c$bv_122\(\c$bv_122\'high) )) = '0';

        result_43 <= signed(\r'_41\) when result_selection_res_40 else
                     \c$case_alt_43\;

        \c$bv_123\ <= ((std_logic_vector(acc_2_6)));

        \c$bv_124\ <= ((std_logic_vector(acc_2_7)));

        \c$case_alt_selection_res_40\ <= (( \c$bv_123\(\c$bv_123\'high) ) and ( \c$bv_124\(\c$bv_124\'high) )) = '0';

        \c$case_alt_43\ <= to_signed(131071,18) when \c$case_alt_selection_res_40\ else
                           to_signed(-131072,18);

        \r'_projection_40\ <= (\c$r'_app_arg_40\(\c$r'_app_arg_40\'high downto 18),\c$r'_app_arg_40\(18-1 downto 0));

        \r'_41\ <= \r'_projection_40\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_40\ <= (std_logic_vector(r_40));

        r_40 <= resize(acc_2_6,19) + resize(acc_2_7,19);


      end block;

    fun_92 : block
        signal result_44                     : signed(17 downto 0);
        signal \c$case_alt_44\               : signed(17 downto 0);
        signal \r'_42\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_41\             : std_logic_vector(18 downto 0);
        signal r_41                          : signed(18 downto 0);
        signal result_selection_res_41       : boolean;
        signal \c$bv_125\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_41\ : boolean;
        signal \c$bv_126\                    : std_logic_vector(17 downto 0);
        signal \c$bv_127\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_41\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_4 <= result_44;

        \c$bv_125\ <= (\r'_42\);

        result_selection_res_41 <= (( \c$r'_app_arg_41\(\c$r'_app_arg_41\'high) ) xor ( \c$bv_125\(\c$bv_125\'high) )) = '0';

        result_44 <= signed(\r'_42\) when result_selection_res_41 else
                     \c$case_alt_44\;

        \c$bv_126\ <= ((std_logic_vector(acc_2_8)));

        \c$bv_127\ <= ((std_logic_vector(acc_2_9)));

        \c$case_alt_selection_res_41\ <= (( \c$bv_126\(\c$bv_126\'high) ) and ( \c$bv_127\(\c$bv_127\'high) )) = '0';

        \c$case_alt_44\ <= to_signed(131071,18) when \c$case_alt_selection_res_41\ else
                           to_signed(-131072,18);

        \r'_projection_41\ <= (\c$r'_app_arg_41\(\c$r'_app_arg_41\'high downto 18),\c$r'_app_arg_41\(18-1 downto 0));

        \r'_42\ <= \r'_projection_41\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_41\ <= (std_logic_vector(r_41));

        r_41 <= resize(acc_2_8,19) + resize(acc_2_9,19);


      end block;

    fun_93 : block
        signal result_45                     : signed(17 downto 0);
        signal \c$case_alt_45\               : signed(17 downto 0);
        signal \r'_43\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_42\             : std_logic_vector(18 downto 0);
        signal r_42                          : signed(18 downto 0);
        signal result_selection_res_42       : boolean;
        signal \c$bv_128\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_42\ : boolean;
        signal \c$bv_129\                    : std_logic_vector(17 downto 0);
        signal \c$bv_130\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_42\            : mfir3_100_types.Tuple2_1;
      begin
        acc_3_5 <= result_45;

        \c$bv_128\ <= (\r'_43\);

        result_selection_res_42 <= (( \c$r'_app_arg_42\(\c$r'_app_arg_42\'high) ) xor ( \c$bv_128\(\c$bv_128\'high) )) = '0';

        result_45 <= signed(\r'_43\) when result_selection_res_42 else
                     \c$case_alt_45\;

        \c$bv_129\ <= ((std_logic_vector(acc_2_10)));

        \c$bv_130\ <= ((std_logic_vector(acc_2_11)));

        \c$case_alt_selection_res_42\ <= (( \c$bv_129\(\c$bv_129\'high) ) and ( \c$bv_130\(\c$bv_130\'high) )) = '0';

        \c$case_alt_45\ <= to_signed(131071,18) when \c$case_alt_selection_res_42\ else
                           to_signed(-131072,18);

        \r'_projection_42\ <= (\c$r'_app_arg_42\(\c$r'_app_arg_42\'high downto 18),\c$r'_app_arg_42\(18-1 downto 0));

        \r'_43\ <= \r'_projection_42\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_42\ <= (std_logic_vector(r_42));

        r_42 <= resize(acc_2_10,19) + resize(acc_2_11,19);


      end block;

    fun_94 : block
        signal result_46                     : signed(17 downto 0);
        signal \c$case_alt_46\               : signed(17 downto 0);
        signal \r'_44\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_43\             : std_logic_vector(18 downto 0);
        signal r_43                          : signed(18 downto 0);
        signal result_selection_res_43       : boolean;
        signal \c$bv_131\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_43\ : boolean;
        signal \c$bv_132\                    : std_logic_vector(17 downto 0);
        signal \c$bv_133\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_43\            : mfir3_100_types.Tuple2_1;
      begin
        acc_4_0 <= result_46;

        \c$bv_131\ <= (\r'_44\);

        result_selection_res_43 <= (( \c$r'_app_arg_43\(\c$r'_app_arg_43\'high) ) xor ( \c$bv_131\(\c$bv_131\'high) )) = '0';

        result_46 <= signed(\r'_44\) when result_selection_res_43 else
                     \c$case_alt_46\;

        \c$bv_132\ <= ((std_logic_vector(acc_3_0)));

        \c$bv_133\ <= ((std_logic_vector(acc_3_1)));

        \c$case_alt_selection_res_43\ <= (( \c$bv_132\(\c$bv_132\'high) ) and ( \c$bv_133\(\c$bv_133\'high) )) = '0';

        \c$case_alt_46\ <= to_signed(131071,18) when \c$case_alt_selection_res_43\ else
                           to_signed(-131072,18);

        \r'_projection_43\ <= (\c$r'_app_arg_43\(\c$r'_app_arg_43\'high downto 18),\c$r'_app_arg_43\(18-1 downto 0));

        \r'_44\ <= \r'_projection_43\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_43\ <= (std_logic_vector(r_43));

        r_43 <= resize(acc_3_0,19) + resize(acc_3_1,19);


      end block;

    fun_95 : block
        signal result_47                     : signed(17 downto 0);
        signal \c$case_alt_47\               : signed(17 downto 0);
        signal \r'_45\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_44\             : std_logic_vector(18 downto 0);
        signal r_44                          : signed(18 downto 0);
        signal result_selection_res_44       : boolean;
        signal \c$bv_134\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_44\ : boolean;
        signal \c$bv_135\                    : std_logic_vector(17 downto 0);
        signal \c$bv_136\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_44\            : mfir3_100_types.Tuple2_1;
      begin
        acc_4_1 <= result_47;

        \c$bv_134\ <= (\r'_45\);

        result_selection_res_44 <= (( \c$r'_app_arg_44\(\c$r'_app_arg_44\'high) ) xor ( \c$bv_134\(\c$bv_134\'high) )) = '0';

        result_47 <= signed(\r'_45\) when result_selection_res_44 else
                     \c$case_alt_47\;

        \c$bv_135\ <= ((std_logic_vector(acc_3_2)));

        \c$bv_136\ <= ((std_logic_vector(acc_3_3)));

        \c$case_alt_selection_res_44\ <= (( \c$bv_135\(\c$bv_135\'high) ) and ( \c$bv_136\(\c$bv_136\'high) )) = '0';

        \c$case_alt_47\ <= to_signed(131071,18) when \c$case_alt_selection_res_44\ else
                           to_signed(-131072,18);

        \r'_projection_44\ <= (\c$r'_app_arg_44\(\c$r'_app_arg_44\'high downto 18),\c$r'_app_arg_44\(18-1 downto 0));

        \r'_45\ <= \r'_projection_44\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_44\ <= (std_logic_vector(r_44));

        r_44 <= resize(acc_3_2,19) + resize(acc_3_3,19);


      end block;

    fun_96 : block
        signal result_48                     : signed(17 downto 0);
        signal \c$case_alt_48\               : signed(17 downto 0);
        signal \r'_46\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_45\             : std_logic_vector(18 downto 0);
        signal r_45                          : signed(18 downto 0);
        signal result_selection_res_45       : boolean;
        signal \c$bv_137\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_45\ : boolean;
        signal \c$bv_138\                    : std_logic_vector(17 downto 0);
        signal \c$bv_139\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_45\            : mfir3_100_types.Tuple2_1;
      begin
        acc_4_2 <= result_48;

        \c$bv_137\ <= (\r'_46\);

        result_selection_res_45 <= (( \c$r'_app_arg_45\(\c$r'_app_arg_45\'high) ) xor ( \c$bv_137\(\c$bv_137\'high) )) = '0';

        result_48 <= signed(\r'_46\) when result_selection_res_45 else
                     \c$case_alt_48\;

        \c$bv_138\ <= ((std_logic_vector(acc_3_4)));

        \c$bv_139\ <= ((std_logic_vector(acc_3_5)));

        \c$case_alt_selection_res_45\ <= (( \c$bv_138\(\c$bv_138\'high) ) and ( \c$bv_139\(\c$bv_139\'high) )) = '0';

        \c$case_alt_48\ <= to_signed(131071,18) when \c$case_alt_selection_res_45\ else
                           to_signed(-131072,18);

        \r'_projection_45\ <= (\c$r'_app_arg_45\(\c$r'_app_arg_45\'high downto 18),\c$r'_app_arg_45\(18-1 downto 0));

        \r'_46\ <= \r'_projection_45\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_45\ <= (std_logic_vector(r_45));

        r_45 <= resize(acc_3_4,19) + resize(acc_3_5,19);


      end block;

    fun_97 : block
        signal result_49                     : signed(17 downto 0);
        signal \c$case_alt_49\               : signed(17 downto 0);
        signal \r'_47\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_46\             : std_logic_vector(18 downto 0);
        signal r_46                          : signed(18 downto 0);
        signal result_selection_res_46       : boolean;
        signal \c$bv_140\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_46\ : boolean;
        signal \c$bv_141\                    : std_logic_vector(17 downto 0);
        signal \c$bv_142\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_46\            : mfir3_100_types.Tuple2_1;
      begin
        acc_5_0 <= result_49;

        \c$bv_140\ <= (\r'_47\);

        result_selection_res_46 <= (( \c$r'_app_arg_46\(\c$r'_app_arg_46\'high) ) xor ( \c$bv_140\(\c$bv_140\'high) )) = '0';

        result_49 <= signed(\r'_47\) when result_selection_res_46 else
                     \c$case_alt_49\;

        \c$bv_141\ <= ((std_logic_vector(acc_4_0)));

        \c$bv_142\ <= ((std_logic_vector(acc_4_1)));

        \c$case_alt_selection_res_46\ <= (( \c$bv_141\(\c$bv_141\'high) ) and ( \c$bv_142\(\c$bv_142\'high) )) = '0';

        \c$case_alt_49\ <= to_signed(131071,18) when \c$case_alt_selection_res_46\ else
                           to_signed(-131072,18);

        \r'_projection_46\ <= (\c$r'_app_arg_46\(\c$r'_app_arg_46\'high downto 18),\c$r'_app_arg_46\(18-1 downto 0));

        \r'_47\ <= \r'_projection_46\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_46\ <= (std_logic_vector(r_46));

        r_46 <= resize(acc_4_0,19) + resize(acc_4_1,19);


      end block;

    fun_98 : block
        signal result_50                     : signed(17 downto 0);
        signal \c$case_alt_50\               : signed(17 downto 0);
        signal \r'_48\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_47\             : std_logic_vector(18 downto 0);
        signal r_47                          : signed(18 downto 0);
        signal result_selection_res_47       : boolean;
        signal \c$bv_143\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_47\ : boolean;
        signal \c$bv_144\                    : std_logic_vector(17 downto 0);
        signal \c$bv_145\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_47\            : mfir3_100_types.Tuple2_1;
      begin
        acc_5_1 <= result_50;

        \c$bv_143\ <= (\r'_48\);

        result_selection_res_47 <= (( \c$r'_app_arg_47\(\c$r'_app_arg_47\'high) ) xor ( \c$bv_143\(\c$bv_143\'high) )) = '0';

        result_50 <= signed(\r'_48\) when result_selection_res_47 else
                     \c$case_alt_50\;

        \c$bv_144\ <= ((std_logic_vector(acc_4_2)));

        \c$bv_145\ <= ((std_logic_vector(acc_1_24)));

        \c$case_alt_selection_res_47\ <= (( \c$bv_144\(\c$bv_144\'high) ) and ( \c$bv_145\(\c$bv_145\'high) )) = '0';

        \c$case_alt_50\ <= to_signed(131071,18) when \c$case_alt_selection_res_47\ else
                           to_signed(-131072,18);

        \r'_projection_47\ <= (\c$r'_app_arg_47\(\c$r'_app_arg_47\'high downto 18),\c$r'_app_arg_47\(18-1 downto 0));

        \r'_48\ <= \r'_projection_47\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_47\ <= (std_logic_vector(r_47));

        r_47 <= resize(acc_4_2,19) + resize(acc_1_24,19);


      end block;

    fun_99 : block
        signal result_51                     : signed(17 downto 0);
        signal \c$case_alt_51\               : signed(17 downto 0);
        signal \r'_49\                       : std_logic_vector(17 downto 0);
        signal \c$r'_app_arg_48\             : std_logic_vector(18 downto 0);
        signal r_48                          : signed(18 downto 0);
        signal result_selection_res_48       : boolean;
        signal \c$bv_146\                    : std_logic_vector(17 downto 0);
        signal \c$case_alt_selection_res_48\ : boolean;
        signal \c$bv_147\                    : std_logic_vector(17 downto 0);
        signal \c$bv_148\                    : std_logic_vector(17 downto 0);
        signal \r'_projection_48\            : mfir3_100_types.Tuple2_1;
      begin
        acc_6_0 <= result_51;

        \c$bv_146\ <= (\r'_49\);

        result_selection_res_48 <= (( \c$r'_app_arg_48\(\c$r'_app_arg_48\'high) ) xor ( \c$bv_146\(\c$bv_146\'high) )) = '0';

        result_51 <= signed(\r'_49\) when result_selection_res_48 else
                     \c$case_alt_51\;

        \c$bv_147\ <= ((std_logic_vector(acc_5_0)));

        \c$bv_148\ <= ((std_logic_vector(acc_5_1)));

        \c$case_alt_selection_res_48\ <= (( \c$bv_147\(\c$bv_147\'high) ) and ( \c$bv_148\(\c$bv_148\'high) )) = '0';

        \c$case_alt_51\ <= to_signed(131071,18) when \c$case_alt_selection_res_48\ else
                           to_signed(-131072,18);

        \r'_projection_48\ <= (\c$r'_app_arg_48\(\c$r'_app_arg_48\'high downto 18),\c$r'_app_arg_48\(18-1 downto 0));

        \r'_49\ <= \r'_projection_48\.Tuple2_1_sel1_std_logic_vector_1;

        \c$r'_app_arg_48\ <= (std_logic_vector(r_48));

        r_48 <= resize(acc_5_0,19) + resize(acc_5_1,19);


      end block;


  end block;

  x1_projection <= (\c$ds_app_arg\(0 to 50-1),\c$ds_app_arg\(50 to \c$ds_app_arg\'high));

  x1 <= x1_projection.Tuple2_0_sel0_array_of_signed_18_0;

  \c$vec1\ <= mfir3_100_types.array_of_signed_18'( to_signed(52,18)
                                                 , to_signed(52,18)
                                                 , to_signed(50,18)
                                                 , to_signed(47,18)
                                                 , to_signed(43,18)
                                                 , to_signed(38,18)
                                                 , to_signed(31,18)
                                                 , to_signed(23,18)
                                                 , to_signed(14,18)
                                                 , to_signed(5,18)
                                                 , to_signed(-5,18)
                                                 , to_signed(-15,18)
                                                 , to_signed(-26,18)
                                                 , to_signed(-37,18)
                                                 , to_signed(-47,18)
                                                 , to_signed(-57,18)
                                                 , to_signed(-66,18)
                                                 , to_signed(-74,18)
                                                 , to_signed(-80,18)
                                                 , to_signed(-85,18)
                                                 , to_signed(-88,18)
                                                 , to_signed(-88,18)
                                                 , to_signed(-87,18)
                                                 , to_signed(-83,18)
                                                 , to_signed(-77,18)
                                                 , to_signed(-69,18)
                                                 , to_signed(-57,18)
                                                 , to_signed(-44,18)
                                                 , to_signed(-28,18)
                                                 , to_signed(-9,18)
                                                 , to_signed(10,18)
                                                 , to_signed(32,18)
                                                 , to_signed(57,18)
                                                 , to_signed(82,18)
                                                 , to_signed(109,18)
                                                 , to_signed(136,18)
                                                 , to_signed(164,18)
                                                 , to_signed(192,18)
                                                 , to_signed(220,18)
                                                 , to_signed(247,18)
                                                 , to_signed(273,18)
                                                 , to_signed(298,18)
                                                 , to_signed(321,18)
                                                 , to_signed(342,18)
                                                 , to_signed(360,18)
                                                 , to_signed(376,18)
                                                 , to_signed(389,18)
                                                 , to_signed(399,18)
                                                 , to_signed(405,18)
                                                 , to_signed(409,18) );

  -- zipWith begin
  zipWith_0 : for i_1 in wild'range generate
  begin
    fun_100 : block
      signal result_52                     : signed(17 downto 0);
      signal \c$case_alt_52\               : signed(17 downto 0);
      signal \c$app_arg\                   : std_logic_vector(30 downto 0);
      signal \c$app_arg_0\                 : std_logic;
      signal \c$app_arg_1\                 : std_logic;
      signal \c$app_arg_2\                 : std_logic_vector(5 downto 0);
      signal \c$app_arg_3\                 : std_logic_vector(4 downto 0);
      signal rL                            : std_logic_vector(4 downto 0);
      signal rR                            : std_logic_vector(30 downto 0);
      signal ds3                           : mfir3_100_types.Tuple2_2;
      signal result_selection_res_49       : boolean;
      signal \c$case_alt_selection_res_49\ : boolean;
      signal \c$shI\                       : signed(63 downto 0);
      signal \c$bv_149\                    : std_logic_vector(30 downto 0);
      signal \c$bv_150\                    : std_logic_vector(35 downto 0);
    begin
      wild(i_1) <= result_52;

      result_selection_res_49 <= ((not \c$app_arg_1\) or \c$app_arg_0\) = '1';

      result_52 <= signed((std_logic_vector(resize(unsigned(\c$app_arg\),18)))) when result_selection_res_49 else
                   \c$case_alt_52\;

      \c$case_alt_selection_res_49\ <= ( \c$app_arg_3\(\c$app_arg_3\'high) ) = '0';

      \c$case_alt_52\ <= to_signed(131071,18) when \c$case_alt_selection_res_49\ else
                         to_signed(-131072,18);

      \c$shI\ <= (to_signed(13,64));

      capp_arg_shiftR : block
        signal sh : natural;
      begin
        sh <=
            -- pragma translate_off
            natural'high when (\c$shI\(64-1 downto 31) /= 0) else
            -- pragma translate_on
            to_integer(\c$shI\);
        \c$app_arg\ <= std_logic_vector(shift_right(unsigned(rR),sh))
            -- pragma translate_off
            when ((to_signed(13,64)) >= 0) else (others => 'X')
            -- pragma translate_on
            ;
      end block;

      -- reduceAnd begin,

      reduceAnd : block
        function and_reduce (arg : std_logic_vector) return std_logic is
          variable upper, lower : std_logic;
          variable half         : integer;
          variable argi         : std_logic_vector (arg'length - 1 downto 0);
          variable result       : std_logic;
        begin
          if (arg'length < 1) then
            result := '1';
          else
            argi := arg;
            if (argi'length = 1) then
              result := argi(argi'left);
            else
              half   := (argi'length + 1) / 2; -- lsb-biased tree
              upper  := and_reduce (argi (argi'left downto half));
              lower  := and_reduce (argi (half - 1 downto argi'right));
              result := upper and lower;
            end if;
          end if;
          return result;
        end;
      begin
        \c$app_arg_0\ <= and_reduce(\c$app_arg_2\);
      end block;
      -- reduceAnd end

      -- reduceOr begin
      reduceOr : block
        function or_reduce (arg : std_logic_vector) return std_logic is
          variable upper, lower : std_logic;
          variable half         : integer;
          variable argi         : std_logic_vector (arg'length - 1 downto 0);
          variable result       : std_logic;
        begin
          if (arg'length < 1) then
            result := '0';
          else
            argi := arg;
            if (argi'length = 1) then
              result := argi(argi'left);
            else
              half   := (argi'length + 1) / 2; -- lsb-biased tree
              upper  := or_reduce (argi (argi'left downto half));
              lower  := or_reduce (argi (half - 1 downto argi'right));
              result := upper or lower;
            end if;
          end if;
          return result;
        end;
      begin
        \c$app_arg_1\ <= or_reduce(\c$app_arg_2\);
      end block;
      -- reduceOr end

      \c$bv_149\ <= (rR);

      \c$app_arg_2\ <= (std_logic_vector'(std_logic_vector'(((std_logic_vector'(0 => ( \c$bv_149\(\c$bv_149\'high) ))))) & std_logic_vector'(\c$app_arg_3\)));

      \c$app_arg_3\ <= rL;

      rL <= ds3.Tuple2_2_sel0_std_logic_vector_0;

      rR <= ds3.Tuple2_2_sel1_std_logic_vector_1;

      \c$bv_150\ <= ((std_logic_vector((\c$vec1\(i_1) * \c$wild_case_alt\(i_1)))));

      ds3 <= (\c$bv_150\(\c$bv_150\'high downto 31),\c$bv_150\(31-1 downto 0));


    end block;
  end generate;
  -- zipWith end


end;

