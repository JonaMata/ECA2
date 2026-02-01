-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity CCenterOfMass12_synthAxisComSer_axisComSer is
  port(state  : in synthAxisComSer_types.Tuple2_0;
       ds     : in synthAxisComSer_types.Tuple2_1;
       result : out synthAxisComSer_types.Tuple2_2);
end;

architecture structural of CCenterOfMass12_synthAxisComSer_axisComSer is
  signal \c$app_arg\                 : boolean;
  signal \c$case_alt\                : boolean;
  signal \c$case_alt_0\              : boolean;
  signal \c$app_arg_0\               : synthAxisComSer_types.Maybe;
  signal coords                      : synthAxisComSer_types.Tuple2_3;
  signal \c$case_alt_1\              : synthAxisComSer_types.Tuple2_4;
  signal result_0                    : synthAxisComSer_types.Tuple2_4;
  signal \c$case_alt_2\              : synthAxisComSer_types.Tuple2_4;
  signal \c$case_alt_3\              : synthAxisComSer_types.Tuple2_4;
  signal \c$$j_case_alt\             : signed(63 downto 0);
  signal \c$$j_case_alt_0\           : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal \c$$j_app_arg\              : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal \c$$j_case_alt_1\           : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal result_1                    : synthAxisComSer_types.Maybe_0;
  signal \c$send'_case_alt\          : synthAxisComSer_types.Maybe_0;
  signal \c$app_arg_1\               : signed(31 downto 0);
  signal \c$app_arg_2\               : signed(63 downto 0);
  signal \c$app_arg_3\               : signed(63 downto 0);
  signal \c$case_scrut\              : synthAxisComSer_types.Tuple2;
  signal result_2                    : synthAxisComSer_types.Tuple2_3;
  signal \c$case_alt_4\              : synthAxisComSer_types.Maybe_0;
  signal \c$case_alt_5\              : synthAxisComSer_types.Maybe_0;
  signal \c$case_alt_6\              : synthAxisComSer_types.Maybe_0;
  signal \c$case_alt_7\              : synthAxisComSer_types.Maybe_0;
  signal imgBuf                      : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal x                           : synthAxisComSer_types.Axi4Stream;
  signal thrImg                      : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal wild8                       : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal y                           : signed(31 downto 0);
  signal x1                          : signed(31 downto 0);
  signal m_axis_tready               : boolean;
  signal s_axi                       : synthAxisComSer_types.Maybe_1;
  signal \c$$j_case_scrut\           : signed(63 downto 0);
  signal \c$$j_app_arg_0\            : signed(63 downto 0);
  signal x_0                         : signed(63 downto 0);
  signal i                           : signed(63 downto 0);
  signal imgBuf_0                    : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal \c$case_alt_selection_3\    : boolean;
  signal \c$case_alt_selection_8\    : boolean;
  signal \c$$j_case_alt_selection_2\ : boolean;
  signal \c$$j_case_alt_selection_5\ : signed(63 downto 0);
  signal result_selection_2          : synthAxisComSer_types.Maybe_0;
  signal result_selection_res        : boolean;
  signal \c$case_alt_selection_12\   : boolean;
  signal \c$case_alt_selection_17\   : synthAxisComSer_types.Maybe_0;
  signal \c$shI\                     : signed(63 downto 0);

begin
  result <= ( Tuple2_2_sel0_Tuple2_0 => ( Tuple2_0_sel0_Tuple2_4 => \c$case_alt_1\
            , Tuple2_0_sel1_Maybe_0 => result_1 )
            , Tuple2_2_sel1_Tuple2_5 => ( Tuple2_5_sel0_Maybe => \c$app_arg_0\
            , Tuple2_5_sel1_boolean => \c$app_arg\ ) );

  with (result_1(8 downto 8)) select
    \c$app_arg\ <= true when "0",
                   \c$case_alt\ when others;

  with (s_axi(37 downto 37)) select
    \c$case_alt\ <= true when "0",
                    \c$case_alt_0\ when others;

  \c$case_alt_selection_3\ <= boolean'(synthaxiscomser_types.fromSLV(s_axi(4 downto 4)));

  \c$case_alt_0\ <= m_axis_tready when \c$case_alt_selection_3\ else
                    true;

  with (result_1(8 downto 8)) select
    \c$app_arg_0\ <= std_logic_vector'("0" & "----------") when "0",
                     std_logic_vector'("1" & (((std_logic_vector(coords.Tuple2_3_sel0_unsigned_0)
                      & std_logic_vector(coords.Tuple2_3_sel1_unsigned_1))
                      & synthAxisComSer_types.toSLV(true)
                      & std_logic_vector'("1")))) when others;

  coords <= synthAxisComSer_types.Tuple2_3'(synthaxiscomser_types.fromSLV(result_1(7 downto 0)));

  with (s_axi(37 downto 37)) select
    \c$case_alt_1\ <= state.Tuple2_0_sel0_Tuple2_4 when "0",
                      result_0 when others;

  with (result_1(8 downto 8)) select
    result_0 <= ( Tuple2_4_sel0_array_of_array_of_8_signed_32 => \c$$j_case_alt_0\
                , Tuple2_4_sel1_signed => \c$$j_case_alt\ ) when "0",
                \c$case_alt_2\ when others;

  \c$case_alt_selection_8\ <= boolean'(synthaxiscomser_types.fromSLV(s_axi(4 downto 4)));

  \c$case_alt_2\ <= \c$case_alt_3\ when \c$case_alt_selection_8\ else
                    ( Tuple2_4_sel0_array_of_array_of_8_signed_32 => \c$$j_case_alt_0\
                    , Tuple2_4_sel1_signed => \c$$j_case_alt\ );

  \c$case_alt_3\ <= ( Tuple2_4_sel0_array_of_array_of_8_signed_32 => \c$$j_case_alt_0\
                    , Tuple2_4_sel1_signed => \c$$j_case_alt\ ) when m_axis_tready else
                    state.Tuple2_0_sel0_Tuple2_4;

  \c$$j_case_alt_selection_2\ <= boolean'(synthaxiscomser_types.fromSLV(s_axi(4 downto 4)));

  \c$$j_case_alt\ <= to_signed(0,64) when \c$$j_case_alt_selection_2\ else
                     ((x_0 + to_signed(1,64)) and to_signed(63,64));

  -- replace begin
  replaceVec : block
    signal vec_index : integer range 0 to 8-1;
  begin
    vec_index <= to_integer(\c$$j_case_scrut\)
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    process(vec_index,imgBuf_0,\c$$j_app_arg\)
      variable ivec : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
    begin
      ivec := imgBuf_0;
      ivec(vec_index) := \c$$j_app_arg\;
      \c$$j_case_alt_0\ <= ivec;
    end process;
  end block;
  -- replace end

  -- replace begin
  replaceVec_0 : block
    signal vec_index_0 : integer range 0 to 8-1;
  begin
    vec_index_0 <= to_integer(((x_0 and to_signed(7,64))))
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    process(vec_index_0,\c$$j_case_alt_1\,s_axi)
      variable ivec_0 : synthAxisComSer_types.array_of_signed_32(0 to 7);
    begin
      ivec_0 := \c$$j_case_alt_1\;
      ivec_0(vec_index_0) := signed'(synthaxiscomser_types.fromSLV(s_axi(36 downto 5)));
      \c$$j_app_arg\ <= ivec_0;
    end process;
  end block;
  -- replace end

  \c$$j_case_alt_selection_5\ <= \c$$j_case_scrut\;

  with (\c$$j_case_alt_selection_5\) select
    \c$$j_case_alt_1\ <= imgBuf_0(0) when x"0000000000000000",
                         imgBuf_0(1) when x"0000000000000001",
                         imgBuf_0(2) when x"0000000000000002",
                         imgBuf_0(3) when x"0000000000000003",
                         imgBuf_0(4) when x"0000000000000004",
                         imgBuf_0(5) when x"0000000000000005",
                         imgBuf_0(6) when x"0000000000000006",
                         imgBuf_0(7) when x"0000000000000007",
                         synthAxisComSer_types.array_of_signed_32'(0 to 7 => signed'(0 to 31 => '-')) when others;

  result_selection_2 <= state.Tuple2_0_sel1_Maybe_0;

  with (result_selection_2(8 downto 8)) select
    result_1 <= \c$case_alt_7\ when "0",
                \c$send'_case_alt\ when others;

  \c$send'_case_alt\ <= std_logic_vector'("0" & "--------") when m_axis_tready else
                        \c$case_alt_7\;

  fold_2 : block
    signal vec_2      : synthAxisComSer_types.array_of_signed_32(0 to 7);
    signal acc_3_0_20 : signed(31 downto 0);
    signal acc_0_23   : signed(31 downto 0);
    signal acc_0_24   : signed(31 downto 0);
    signal acc_0_25   : signed(31 downto 0);
    signal acc_0_26   : signed(31 downto 0);
    signal acc_0_27   : signed(31 downto 0);
    signal acc_0_28   : signed(31 downto 0);
    signal acc_0_29   : signed(31 downto 0);
    signal acc_0_30   : signed(31 downto 0);
    signal acc_1_0_14 : signed(31 downto 0);
    signal acc_1_1_15 : signed(31 downto 0);
    signal acc_1_2_16 : signed(31 downto 0);
    signal acc_1_3_17 : signed(31 downto 0);
    signal acc_2_0_18 : signed(31 downto 0);
    signal acc_2_1_19 : signed(31 downto 0);
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

  \c$app_arg_2\ <= resize(y,64);

  \c$app_arg_3\ <= resize(x1,64);

  CCenterOfMass12_synthAxisComSer_com_ccase_scrut : entity CCenterOfMass12_synthAxisComSer_com
    port map
      (result => \c$case_scrut\, img    => thrImg);

  result_selection_res <= \c$app_arg_1\ = to_signed(0,32);

  result_2 <= ( Tuple2_3_sel0_unsigned_0 => to_unsigned(3,4)
              , Tuple2_3_sel1_unsigned_1 => to_unsigned(3,4) ) when result_selection_res else
              ( Tuple2_3_sel0_unsigned_0 => resize(unsigned(std_logic_vector(\c$app_arg_2\)),4)
              , Tuple2_3_sel1_unsigned_1 => resize(unsigned(std_logic_vector(\c$app_arg_3\)),4) );

  \c$case_alt_selection_12\ <= x.Axi4Stream_sel1_tLast;

  \c$case_alt_4\ <= std_logic_vector'("1" & ((std_logic_vector(result_2.Tuple2_3_sel0_unsigned_0)
                     & std_logic_vector(result_2.Tuple2_3_sel1_unsigned_1)))) when \c$case_alt_selection_12\ else
                    std_logic_vector'("0" & "--------");

  with (s_axi(37 downto 37)) select
    \c$case_alt_5\ <= std_logic_vector'("0" & "--------") when "0",
                      \c$case_alt_4\ when others;

  \c$case_alt_6\ <= \c$case_alt_5\ when m_axis_tready else
                    std_logic_vector'("0" & "--------");

  \c$case_alt_selection_17\ <= state.Tuple2_0_sel1_Maybe_0;

  with (\c$case_alt_selection_17\(8 downto 8)) select
    \c$case_alt_7\ <= \c$case_alt_6\ when "0",
                      state.Tuple2_0_sel1_Maybe_0 when others;

  imgBuf <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel0_array_of_array_of_8_signed_32;

  x <= synthAxisComSer_types.Axi4Stream'(synthaxiscomser_types.fromSLV(s_axi(36 downto 0)));

  CCenterOfMass12_synthAxisComSer_thresholdIm_thrImg : entity CCenterOfMass12_synthAxisComSer_thresholdIm
    port map
      (result => thrImg, eta1   => imgBuf);

  -- map begin
  r_map : for i_0 in wild8'range generate
  begin
    fold_3 : block
    signal vec_3      : synthAxisComSer_types.array_of_signed_32(0 to 7);
    signal acc_3_0_27 : signed(31 downto 0);
    signal acc_0_32   : signed(31 downto 0);
    signal acc_0_33   : signed(31 downto 0);
    signal acc_0_34   : signed(31 downto 0);
    signal acc_0_35   : signed(31 downto 0);
    signal acc_0_36   : signed(31 downto 0);
    signal acc_0_37   : signed(31 downto 0);
    signal acc_0_38   : signed(31 downto 0);
    signal acc_0_39   : signed(31 downto 0);
    signal acc_1_0_21 : signed(31 downto 0);
    signal acc_1_1_22 : signed(31 downto 0);
    signal acc_1_2_23 : signed(31 downto 0);
    signal acc_1_3_24 : signed(31 downto 0);
    signal acc_2_0_25 : signed(31 downto 0);
    signal acc_2_1_26 : signed(31 downto 0);
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

  y <= \c$case_scrut\.Tuple2_sel0_signed_0;

  x1 <= \c$case_scrut\.Tuple2_sel1_signed_1;

  m_axis_tready <= ds.Tuple2_1_sel1_boolean;

  s_axi <= ds.Tuple2_1_sel0_Maybe_1;

  \c$$j_case_scrut\ <= \c$$j_app_arg_0\;

  \c$shI\ <= to_signed(3,64);

  cj_app_arg_0_shiftR : block
    signal sh : natural;
  begin
    sh <=
        -- pragma translate_off
        natural'high when (\c$shI\(64-1 downto 31) /= 0) else
        -- pragma translate_on
        to_integer(\c$shI\);
    \c$$j_app_arg_0\ <= shift_right(x_0,sh)
        -- pragma translate_off
        when (to_signed(3,64) >= 0) else (others => 'X')
        -- pragma translate_on
        ;
  end block;

  x_0 <= i;

  i <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel1_signed;

  imgBuf_0 <= state.Tuple2_0_sel0_Tuple2_4.Tuple2_4_sel0_array_of_array_of_8_signed_32;


end;

