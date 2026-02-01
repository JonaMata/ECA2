-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComPar_types.all;

entity CCenterOfMass12_synthAxisComPar_axisComPar is
  port(state  : in synthAxisComPar_types.Tuple2_0;
       ds     : in synthAxisComPar_types.Tuple2_1;
       result : out synthAxisComPar_types.Tuple2_2);
end;

architecture structural of CCenterOfMass12_synthAxisComPar_axisComPar is
  signal \c$app_arg\                  : boolean;
  signal \c$case_alt\                 : boolean;
  signal \c$case_alt_0\               : boolean;
  signal \c$app_arg_0\                : synthAxisComPar_types.Maybe;
  signal coords                       : synthAxisComPar_types.Tuple2_3;
  signal \c$case_alt_1\               : synthAxisComPar_types.Tuple2_4;
  signal result_0                     : synthAxisComPar_types.Tuple2_4;
  signal \c$case_alt_2\               : synthAxisComPar_types.Tuple2_4;
  signal \c$case_alt_3\               : synthAxisComPar_types.Tuple2_4;
  signal \c$$j_case_alt\              : signed(63 downto 0);
  signal result_1                     : synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
  signal \c$$j_case_alt_0\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_1\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_2\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_3\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_4\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_5\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_6\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal \c$$j_case_alt_7\            : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal ds4                          : synthAxisComPar_types.Tuple2_5;
  signal result_2                     : synthAxisComPar_types.Maybe_0;
  signal \c$send'_case_alt\           : synthAxisComPar_types.Maybe_0;
  signal \c$app_arg_1\                : unsigned(7 downto 0);
  signal \c$app_arg_2\                : signed(63 downto 0);
  signal \c$app_arg_3\                : signed(63 downto 0);
  signal \c$case_scrut\               : synthAxisComPar_types.Tuple2;
  signal result_3                     : synthAxisComPar_types.Tuple2_3;
  signal \c$case_alt_4\               : synthAxisComPar_types.Maybe_0;
  signal \c$case_alt_5\               : synthAxisComPar_types.Maybe_0;
  signal \c$case_alt_6\               : synthAxisComPar_types.Maybe_0;
  signal \c$case_alt_7\               : synthAxisComPar_types.Maybe_0;
  signal imgBuf                       : synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
  signal x                            : synthAxisComPar_types.Axi4Stream;
  signal thrImg                       : synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
  signal wild8                        : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
  signal y                            : unsigned(7 downto 0);
  signal x1                           : unsigned(7 downto 0);
  signal m_axis_tready                : boolean;
  signal s_axi                        : synthAxisComPar_types.Maybe_1;
  signal \c$$j_app_arg\               : signed(63 downto 0);
  signal x_0                          : signed(63 downto 0);
  signal i                            : signed(63 downto 0);
  signal imgBuf_0                     : synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
  signal \c$case_alt_selection_3\     : boolean;
  signal \c$case_alt_selection_8\     : boolean;
  signal \c$$j_case_alt_selection_2\  : boolean;
  signal \c$$j_case_alt_selection_5\  : signed(63 downto 0);
  signal \c$$j_case_alt_selection_4\  : signed(63 downto 0);
  signal \c$$j_case_alt_selection_8\  : signed(63 downto 0);
  signal \c$$j_case_alt_selection_7\  : signed(63 downto 0);
  signal \c$$j_case_alt_selection_11\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_10\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_14\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_13\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_17\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_16\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_20\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_19\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_23\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_22\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_26\ : signed(63 downto 0);
  signal \c$$j_case_alt_selection_25\ : signed(63 downto 0);
  signal \c$vec\                      : synthAxisComPar_types.array_of_unsigned_8(0 to 15);
  signal result_selection_2           : synthAxisComPar_types.Maybe_0;
  signal result_selection_res         : boolean;
  signal \c$case_alt_selection_12\    : boolean;
  signal \c$case_alt_selection_17\    : synthAxisComPar_types.Maybe_0;

begin
  result <= ( Tuple2_2_sel0_Tuple2_0 => ( Tuple2_0_sel0_Tuple2_4 => \c$case_alt_1\
            , Tuple2_0_sel1_Maybe_0 => result_2 )
            , Tuple2_2_sel1_Tuple2_6 => ( Tuple2_6_sel0_Maybe => \c$app_arg_0\
            , Tuple2_6_sel1_boolean => \c$app_arg\ ) );

  with (result_2(8 downto 8)) select
    \c$app_arg\ <= true when "0",
                   \c$case_alt\ when others;

  with (s_axi(145 downto 145)) select
    \c$case_alt\ <= true when "0",
                    \c$case_alt_0\ when others;

  \c$case_alt_selection_3\ <= boolean'(synthaxiscompar_types.fromSLV(s_axi(16 downto 16)));

  \c$case_alt_0\ <= m_axis_tready when \c$case_alt_selection_3\ else
                    true;

  with (result_2(8 downto 8)) select
    \c$app_arg_0\ <= std_logic_vector'("0" & "----------") when "0",
                     std_logic_vector'("1" & (((std_logic_vector(coords.Tuple2_3_sel0_unsigned_0)
                      & std_logic_vector(coords.Tuple2_3_sel1_unsigned_1))
                      & synthAxisComPar_types.toSLV(true)
                      & std_logic_vector'("1")))) when others;

  coords <= synthAxisComPar_types.Tuple2_3'(synthaxiscompar_types.fromSLV(result_2(7 downto 0)));

  with (s_axi(145 downto 145)) select
    \c$case_alt_1\ <= state.Tuple2_0_sel0_Tuple2_4 when "0",
                      result_0 when others;

  with (result_2(8 downto 8)) select
    result_0 <= ( Tuple2_4_sel0_array_of_array_of_8_unsigned_8 => result_1
                , Tuple2_4_sel1_signed => \c$$j_case_alt\ ) when "0",
                \c$case_alt_2\ when others;

  \c$case_alt_selection_8\ <= boolean'(synthaxiscompar_types.fromSLV(s_axi(16 downto 16)));

  \c$case_alt_2\ <= \c$case_alt_3\ when \c$case_alt_selection_8\ else
                    ( Tuple2_4_sel0_array_of_array_of_8_unsigned_8 => result_1
                    , Tuple2_4_sel1_signed => \c$$j_case_alt\ );

  \c$case_alt_3\ <= ( Tuple2_4_sel0_array_of_array_of_8_unsigned_8 => result_1
                    , Tuple2_4_sel1_signed => \c$$j_case_alt\ ) when m_axis_tready else
                    state.Tuple2_0_sel0_Tuple2_4;

  \c$$j_case_alt_selection_2\ <= boolean'(synthaxiscompar_types.fromSLV(s_axi(16 downto 16)));

  \c$$j_case_alt\ <= to_signed(0,64) when \c$$j_case_alt_selection_2\ else
                     ((x_0 + to_signed(1,64)) and to_signed(3,64));

  -- replace begin
  replaceVec : block
    signal vec_index : integer range 0 to 8-1;
  begin
    vec_index <= to_integer(((\c$$j_app_arg\ + to_signed(1,64))))
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    process(vec_index,\c$$j_case_alt_7\,\c$$j_case_alt_6\,\c$$j_case_alt_5\,\c$$j_case_alt_4\,\c$$j_case_alt_3\,\c$$j_case_alt_2\,\c$$j_case_alt_1\,\c$$j_case_alt_0\,ds4)
      variable ivec : synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
    begin
      ivec := synthAxisComPar_types.array_of_array_of_8_unsigned_8'( \c$$j_case_alt_7\
                                                       , \c$$j_case_alt_6\
                                                       , \c$$j_case_alt_5\
                                                       , \c$$j_case_alt_4\
                                                       , \c$$j_case_alt_3\
                                                       , \c$$j_case_alt_2\
                                                       , \c$$j_case_alt_1\
                                                       , \c$$j_case_alt_0\ );
      ivec(vec_index) := ds4.Tuple2_5_sel1_array_of_unsigned_8_1;
      result_1 <= ivec;
    end process;
  end block;
  -- replace end

  \c$$j_case_alt_selection_5\ <= \c$$j_case_alt_selection_4\;

  \c$$j_case_alt_selection_4\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_5\) select
    \c$$j_case_alt_0\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000007",
                         imgBuf_0(7) when others;

  \c$$j_case_alt_selection_8\ <= \c$$j_case_alt_selection_7\;

  \c$$j_case_alt_selection_7\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_8\) select
    \c$$j_case_alt_1\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000006",
                         imgBuf_0(6) when others;

  \c$$j_case_alt_selection_11\ <= \c$$j_case_alt_selection_10\;

  \c$$j_case_alt_selection_10\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_11\) select
    \c$$j_case_alt_2\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000005",
                         imgBuf_0(5) when others;

  \c$$j_case_alt_selection_14\ <= \c$$j_case_alt_selection_13\;

  \c$$j_case_alt_selection_13\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_14\) select
    \c$$j_case_alt_3\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000004",
                         imgBuf_0(4) when others;

  \c$$j_case_alt_selection_17\ <= \c$$j_case_alt_selection_16\;

  \c$$j_case_alt_selection_16\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_17\) select
    \c$$j_case_alt_4\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000003",
                         imgBuf_0(3) when others;

  \c$$j_case_alt_selection_20\ <= \c$$j_case_alt_selection_19\;

  \c$$j_case_alt_selection_19\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_20\) select
    \c$$j_case_alt_5\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000002",
                         imgBuf_0(2) when others;

  \c$$j_case_alt_selection_23\ <= \c$$j_case_alt_selection_22\;

  \c$$j_case_alt_selection_22\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_23\) select
    \c$$j_case_alt_6\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000001",
                         imgBuf_0(1) when others;

  \c$$j_case_alt_selection_26\ <= \c$$j_case_alt_selection_25\;

  \c$$j_case_alt_selection_25\ <= \c$$j_app_arg\;

  with (\c$$j_case_alt_selection_26\) select
    \c$$j_case_alt_7\ <= ds4.Tuple2_5_sel0_array_of_unsigned_8_0 when x"0000000000000000",
                         imgBuf_0(0) when others;

  \c$vec\ <= synthAxisComPar_types.array_of_unsigned_8'(synthaxiscompar_types.fromSLV(s_axi(144 downto 17)));

  ds4 <= (\c$vec\(0 to 8-1),\c$vec\(8 to \c$vec\'high));

  result_selection_2 <= state.Tuple2_0_sel1_Maybe_0;

  with (result_selection_2(8 downto 8)) select
    result_2 <= \c$case_alt_7\ when "0",
                \c$send'_case_alt\ when others;

  \c$send'_case_alt\ <= std_logic_vector'("0" & "--------") when m_axis_tready else
                        \c$case_alt_7\;

  fold_2 : block
    signal vec_2      : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
    signal acc_3_0_20 : unsigned(7 downto 0);
    signal acc_0_23   : unsigned(7 downto 0);
    signal acc_0_24   : unsigned(7 downto 0);
    signal acc_0_25   : unsigned(7 downto 0);
    signal acc_0_26   : unsigned(7 downto 0);
    signal acc_0_27   : unsigned(7 downto 0);
    signal acc_0_28   : unsigned(7 downto 0);
    signal acc_0_29   : unsigned(7 downto 0);
    signal acc_0_30   : unsigned(7 downto 0);
    signal acc_1_0_14 : unsigned(7 downto 0);
    signal acc_1_1_15 : unsigned(7 downto 0);
    signal acc_1_2_16 : unsigned(7 downto 0);
    signal acc_1_3_17 : unsigned(7 downto 0);
    signal acc_2_0_18 : unsigned(7 downto 0);
    signal acc_2_1_19 : unsigned(7 downto 0);
  begin
    \c$app_arg_1\ <= acc_3_0_20;

    vec_2 <= wild8;

    acc_0_23 <= vec_2(0);

    acc_0_24 <= vec_2(1);

    acc_0_25 <= vec_2(2);

    acc_0_26 <= vec_2(3);

    acc_0_27 <= vec_2(4);

    acc_0_28 <= vec_2(5);

    acc_0_29 <= vec_2(6);

    acc_0_30 <= vec_2(7);

    acc_1_0_14 <= acc_0_23 + acc_0_24;



    acc_1_1_15 <= acc_0_25 + acc_0_26;



    acc_1_2_16 <= acc_0_27 + acc_0_28;



    acc_1_3_17 <= acc_0_29 + acc_0_30;



    acc_2_0_18 <= acc_1_0_14 + acc_1_1_15;



    acc_2_1_19 <= acc_1_2_16 + acc_1_3_17;



    acc_3_0_20 <= acc_2_0_18 + acc_2_1_19;




  end block;

  \c$app_arg_2\ <= signed(std_logic_vector(resize(y,64)));

  \c$app_arg_3\ <= signed(std_logic_vector(resize(x1,64)));

  CCenterOfMass12_synthAxisComPar_com_ccase_scrut : entity CCenterOfMass12_synthAxisComPar_com
    port map
      (result => \c$case_scrut\, img    => thrImg);

  result_selection_res <= \c$app_arg_1\ = to_unsigned(0,8);

  result_3 <= ( Tuple2_3_sel0_unsigned_0 => to_unsigned(3,4)
              , Tuple2_3_sel1_unsigned_1 => to_unsigned(3,4) ) when result_selection_res else
              ( Tuple2_3_sel0_unsigned_0 => resize(unsigned(std_logic_vector(\c$app_arg_2\)),4)
              , Tuple2_3_sel1_unsigned_1 => resize(unsigned(std_logic_vector(\c$app_arg_3\)),4) );

  \c$case_alt_selection_12\ <= x.Axi4Stream_sel1_tLast;

  \c$case_alt_4\ <= std_logic_vector'("1" & ((std_logic_vector(result_3.Tuple2_3_sel0_unsigned_0)
                     & std_logic_vector(result_3.Tuple2_3_sel1_unsigned_1)))) when \c$case_alt_selection_12\ else
                    std_logic_vector'("0" & "--------");

  with (s_axi(145 downto 145)) select
    \c$case_alt_5\ <= std_logic_vector'("0" & "--------") when "0",
                      \c$case_alt_4\ when others;

  \c$case_alt_6\ <= \c$case_alt_5\ when m_axis_tready else
                    std_logic_vector'("0" & "--------");

  \c$case_alt_selection_17\ <= state.Tuple2_0_sel1_Maybe_0;

  with (\c$case_alt_selection_17\(8 downto 8)) select
    \c$case_alt_7\ <= \c$case_alt_6\ when "0",
                      state.Tuple2_0_sel1_Maybe_0 when others;

  imgBuf <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel0_array_of_array_of_8_unsigned_8;

  x <= synthAxisComPar_types.Axi4Stream'(synthaxiscompar_types.fromSLV(s_axi(144 downto 0)));

  CCenterOfMass12_synthAxisComPar_thresholdIm_thrImg : entity CCenterOfMass12_synthAxisComPar_thresholdIm
    port map
      (result => thrImg, eta1   => imgBuf);

  -- map begin
  r_map : for i_0 in wild8'range generate
  begin
    fold_3 : block
    signal vec_3      : synthAxisComPar_types.array_of_unsigned_8(0 to 7);
    signal acc_3_0_27 : unsigned(7 downto 0);
    signal acc_0_32   : unsigned(7 downto 0);
    signal acc_0_33   : unsigned(7 downto 0);
    signal acc_0_34   : unsigned(7 downto 0);
    signal acc_0_35   : unsigned(7 downto 0);
    signal acc_0_36   : unsigned(7 downto 0);
    signal acc_0_37   : unsigned(7 downto 0);
    signal acc_0_38   : unsigned(7 downto 0);
    signal acc_0_39   : unsigned(7 downto 0);
    signal acc_1_0_21 : unsigned(7 downto 0);
    signal acc_1_1_22 : unsigned(7 downto 0);
    signal acc_1_2_23 : unsigned(7 downto 0);
    signal acc_1_3_24 : unsigned(7 downto 0);
    signal acc_2_0_25 : unsigned(7 downto 0);
    signal acc_2_1_26 : unsigned(7 downto 0);
  begin
    wild8(i_0) <= acc_3_0_27;

    vec_3 <= thrImg(i_0);

    acc_0_32 <= vec_3(0);

    acc_0_33 <= vec_3(1);

    acc_0_34 <= vec_3(2);

    acc_0_35 <= vec_3(3);

    acc_0_36 <= vec_3(4);

    acc_0_37 <= vec_3(5);

    acc_0_38 <= vec_3(6);

    acc_0_39 <= vec_3(7);

    acc_1_0_21 <= acc_0_32 + acc_0_33;



    acc_1_1_22 <= acc_0_34 + acc_0_35;



    acc_1_2_23 <= acc_0_36 + acc_0_37;



    acc_1_3_24 <= acc_0_38 + acc_0_39;



    acc_2_0_25 <= acc_1_0_21 + acc_1_1_22;



    acc_2_1_26 <= acc_1_2_23 + acc_1_3_24;



    acc_3_0_27 <= acc_2_0_25 + acc_2_1_26;




  end block;
  end generate;
  -- map end

  y <= \c$case_scrut\.Tuple2_sel0_unsigned_0;

  x1 <= \c$case_scrut\.Tuple2_sel1_unsigned_1;

  m_axis_tready <= ds.Tuple2_1_sel1_boolean;

  s_axi <= ds.Tuple2_1_sel0_Maybe_1;

  cj_app_arg_mult : block
    signal cj_app_arg_mult_full : signed(64*2-1 downto 0);
  begin
    cj_app_arg_mult_full <= x_0 * to_signed(2,64);
    \c$$j_app_arg\ <= cj_app_arg_mult_full(64-1 downto 0);
  end block;

  x_0 <= i;

  i <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel1_signed;

  imgBuf_0 <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel0_array_of_array_of_8_unsigned_8;


end;

