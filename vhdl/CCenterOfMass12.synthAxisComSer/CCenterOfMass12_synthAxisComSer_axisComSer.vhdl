-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity CCenterOfMass12_synthAxisComSer_axisComSer is
  port(state  : in synthAxisComSer_types.StateComSer;
       ds     : in synthAxisComSer_types.Tuple2_0;
       result : out synthAxisComSer_types.Tuple2_1);
end;

architecture structural of CCenterOfMass12_synthAxisComSer_axisComSer is
  signal \c$app_arg\                      : boolean;
  signal \c$app_arg_0\                    : synthAxisComSer_types.Maybe;
  signal \c$case_alt\                     : synthAxisComSer_types.Maybe;
  signal \out\                            : synthAxisComSer_types.Tuple2_2;
  signal \state'\                         : synthAxisComSer_types.StateComSer;
  signal \c$state'_case_alt\              : synthAxisComSer_types.StateComSer;
  signal m_axis_tready                    : boolean;
  signal \c$state'_case_alt_0\            : synthAxisComSer_types.StateComSer;
  signal result_0                         : synthAxisComSer_types.StateComSer;
  signal result_1                         : synthAxisComSer_types.StateComSer;
  signal \c$state'_app_arg\               : signed(63 downto 0);
  signal x1                               : signed(31 downto 0);
  signal \c$state'_app_arg_0\             : signed(63 downto 0);
  signal y1                               : signed(31 downto 0);
  signal \c$state'_case_scrut\            : synthAxisComSer_types.Tuple2;
  signal \c$state'_app_arg_1\             : signed(31 downto 0);
  signal wild6                            : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal thrImg                           : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal \imgBuf'\                        : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal \c$state'_app_arg_2\             : synthAxisComSer_types.index_8;
  signal \c$state'_app_arg_3\             : synthAxisComSer_types.index_8;
  signal \c$state'_case_scrut_0\          : boolean;
  signal \c$imgBuf'_app_arg\              : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal s_axi                            : synthAxisComSer_types.Maybe_0;
  signal x                                : synthAxisComSer_types.index_8;
  signal \c$imgBuf'_case_alt\             : synthAxisComSer_types.array_of_signed_32(0 to 7);
  signal \c$imgBuf'_case_scrut\           : signed(63 downto 0);
  signal y                                : synthAxisComSer_types.index_8;
  signal imgBuf                           : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal result_selection_2               : boolean;
  signal result_selection_res             : boolean;
  signal \c$imgBuf'_case_alt_selection_1\ : signed(63 downto 0);

begin
  result <= ( Tuple2_1_sel0_StateComSer => \state'\
            , Tuple2_1_sel1_Tuple2_3 => ( Tuple2_3_sel0_Maybe => \c$app_arg_0\
            , Tuple2_3_sel1_boolean => \c$app_arg\ ) );

  with (state(2054 downto 2054)) select
    \c$app_arg\ <= true when "0",
                   false when others;

  \c$app_arg_0\ <= \c$case_alt\ when m_axis_tready else
                   std_logic_vector'("0" & "----------");

  with (\state'\(2054 downto 2054)) select
    \c$case_alt\ <= std_logic_vector'("0" & "----------") when "0",
                    std_logic_vector'("1" & (((std_logic_vector(\out\.Tuple2_2_sel0_unsigned_0)
                     & std_logic_vector(\out\.Tuple2_2_sel1_unsigned_1))
                     & synthAxisComSer_types.toSLV(true)
                     & std_logic_vector'("1")))) when others;

  \out\ <= synthAxisComSer_types.Tuple2_2'(synthaxiscomser_types.fromSLV(\state'\(2053 downto 2046)));

  with (state(2054 downto 2054)) select
    \state'\ <= \c$state'_case_alt_0\ when "0",
                \c$state'_case_alt\ when others;

  \c$state'_case_alt\ <= std_logic_vector'("0" & (synthAxisComSer_types.toSLV(synthAxisComSer_types.array_of_array_of_8_signed_32'(0 to 8-1 =>  (synthAxisComSer_types.array_of_signed_32'(0 to 8-1 =>  to_signed(0,32) )) ))) & ((std_logic_vector(to_unsigned(0,3))
                          & std_logic_vector(to_unsigned(0,3))))) when m_axis_tready else
                         state;

  m_axis_tready <= ds.Tuple2_0_sel1_boolean;

  with (s_axi(37 downto 37)) select
    \c$state'_case_alt_0\ <= state when "0",
                             result_0 when others;

  result_selection_2 <= boolean'(synthaxiscomser_types.fromSLV(s_axi(4 downto 4)));

  result_0 <= result_1 when result_selection_2 else
              std_logic_vector'("0" & (((std_logic_vector(\imgBuf'\(0)(0)) &
              std_logic_vector(\imgBuf'\(0)(1)) &
              std_logic_vector(\imgBuf'\(0)(2)) &
              std_logic_vector(\imgBuf'\(0)(3)) &
              std_logic_vector(\imgBuf'\(0)(4)) &
              std_logic_vector(\imgBuf'\(0)(5)) &
              std_logic_vector(\imgBuf'\(0)(6)) &
              std_logic_vector(\imgBuf'\(0)(7))) &
              (std_logic_vector(\imgBuf'\(1)(0)) &
              std_logic_vector(\imgBuf'\(1)(1)) &
              std_logic_vector(\imgBuf'\(1)(2)) &
              std_logic_vector(\imgBuf'\(1)(3)) &
              std_logic_vector(\imgBuf'\(1)(4)) &
              std_logic_vector(\imgBuf'\(1)(5)) &
              std_logic_vector(\imgBuf'\(1)(6)) &
              std_logic_vector(\imgBuf'\(1)(7))) &
              (std_logic_vector(\imgBuf'\(2)(0)) &
              std_logic_vector(\imgBuf'\(2)(1)) &
              std_logic_vector(\imgBuf'\(2)(2)) &
              std_logic_vector(\imgBuf'\(2)(3)) &
              std_logic_vector(\imgBuf'\(2)(4)) &
              std_logic_vector(\imgBuf'\(2)(5)) &
              std_logic_vector(\imgBuf'\(2)(6)) &
              std_logic_vector(\imgBuf'\(2)(7))) &
              (std_logic_vector(\imgBuf'\(3)(0)) &
              std_logic_vector(\imgBuf'\(3)(1)) &
              std_logic_vector(\imgBuf'\(3)(2)) &
              std_logic_vector(\imgBuf'\(3)(3)) &
              std_logic_vector(\imgBuf'\(3)(4)) &
              std_logic_vector(\imgBuf'\(3)(5)) &
              std_logic_vector(\imgBuf'\(3)(6)) &
              std_logic_vector(\imgBuf'\(3)(7))) &
              (std_logic_vector(\imgBuf'\(4)(0)) &
              std_logic_vector(\imgBuf'\(4)(1)) &
              std_logic_vector(\imgBuf'\(4)(2)) &
              std_logic_vector(\imgBuf'\(4)(3)) &
              std_logic_vector(\imgBuf'\(4)(4)) &
              std_logic_vector(\imgBuf'\(4)(5)) &
              std_logic_vector(\imgBuf'\(4)(6)) &
              std_logic_vector(\imgBuf'\(4)(7))) &
              (std_logic_vector(\imgBuf'\(5)(0)) &
              std_logic_vector(\imgBuf'\(5)(1)) &
              std_logic_vector(\imgBuf'\(5)(2)) &
              std_logic_vector(\imgBuf'\(5)(3)) &
              std_logic_vector(\imgBuf'\(5)(4)) &
              std_logic_vector(\imgBuf'\(5)(5)) &
              std_logic_vector(\imgBuf'\(5)(6)) &
              std_logic_vector(\imgBuf'\(5)(7))) &
              (std_logic_vector(\imgBuf'\(6)(0)) &
              std_logic_vector(\imgBuf'\(6)(1)) &
              std_logic_vector(\imgBuf'\(6)(2)) &
              std_logic_vector(\imgBuf'\(6)(3)) &
              std_logic_vector(\imgBuf'\(6)(4)) &
              std_logic_vector(\imgBuf'\(6)(5)) &
              std_logic_vector(\imgBuf'\(6)(6)) &
              std_logic_vector(\imgBuf'\(6)(7))) &
              (std_logic_vector(\imgBuf'\(7)(0)) &
              std_logic_vector(\imgBuf'\(7)(1)) &
              std_logic_vector(\imgBuf'\(7)(2)) &
              std_logic_vector(\imgBuf'\(7)(3)) &
              std_logic_vector(\imgBuf'\(7)(4)) &
              std_logic_vector(\imgBuf'\(7)(5)) &
              std_logic_vector(\imgBuf'\(7)(6)) &
              std_logic_vector(\imgBuf'\(7)(7))))) & ((std_logic_vector(\c$state'_app_arg_3\)
               & std_logic_vector(\c$state'_app_arg_2\))));

  result_selection_res <= \c$state'_app_arg_1\ = to_signed(0,32);

  result_1 <= std_logic_vector'("1" & ((std_logic_vector(to_unsigned(4,4))
               & std_logic_vector(to_unsigned(4,4)))) & "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------") when result_selection_res else
              std_logic_vector'("1" & ((std_logic_vector(resize(unsigned(std_logic_vector(\c$state'_app_arg_0\)),4))
               & std_logic_vector(resize(unsigned(std_logic_vector(\c$state'_app_arg\)),4)))) & "------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");

  \c$state'_app_arg\ <= resize(x1,64);

  x1 <= \c$state'_case_scrut\.Tuple2_sel1_signed_1;

  \c$state'_app_arg_0\ <= resize(y1,64);

  y1 <= \c$state'_case_scrut\.Tuple2_sel0_signed_0;

  CCenterOfMass12_synthAxisComSer_com_cstate_case_scrut : entity CCenterOfMass12_synthAxisComSer_com
    port map
      ( result => \c$state'_case_scrut\
      , image  => thrImg );

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
    \c$state'_app_arg_1\ <= acc_3_0_20;

    vec_2 <= wild6;

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

  -- map begin
  r_map : for i in wild6'range generate
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
    wild6(i) <= acc_3_0_27;

    vec_3 <= thrImg(i);

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

  CCenterOfMass12_synthAxisComSer_thresholdIm_thrImg : entity CCenterOfMass12_synthAxisComSer_thresholdIm
    port map
      (result => thrImg, eta1   => \imgBuf'\);

  -- replace begin
  replaceVec : block
    signal vec_index : integer range 0 to 8-1;
  begin
    vec_index <= to_integer(\c$imgBuf'_case_scrut\)
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    process(vec_index,imgBuf,\c$imgBuf'_app_arg\)
      variable ivec : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
    begin
      ivec := imgBuf;
      ivec(vec_index) := \c$imgBuf'_app_arg\;
      \imgBuf'\ <= ivec;
    end process;
  end block;
  -- replace end

  \c$state'_app_arg_2\ <= to_unsigned(0,3) when \c$state'_case_scrut_0\ else
                          x + to_unsigned(1,3);

  \c$state'_app_arg_3\ <= y + to_unsigned(1,3) when \c$state'_case_scrut_0\ else
                          y;

  \c$state'_case_scrut_0\ <= x = to_unsigned(7,3);

  -- replace begin
  replaceVec_0 : block
    signal vec_index_0 : integer range 0 to 8-1;
  begin
    vec_index_0 <= to_integer((signed(std_logic_vector(resize(x,64)))))
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    process(vec_index_0,\c$imgBuf'_case_alt\,s_axi)
      variable ivec_0 : synthAxisComSer_types.array_of_signed_32(0 to 7);
    begin
      ivec_0 := \c$imgBuf'_case_alt\;
      ivec_0(vec_index_0) := signed'(synthaxiscomser_types.fromSLV(s_axi(36 downto 5)));
      \c$imgBuf'_app_arg\ <= ivec_0;
    end process;
  end block;
  -- replace end

  s_axi <= ds.Tuple2_0_sel0_Maybe_0;

  x <= synthAxisComSer_types.index_8'(synthaxiscomser_types.fromSLV(state(2 downto 0)));

  \c$imgBuf'_case_alt_selection_1\ <= \c$imgBuf'_case_scrut\;

  with (\c$imgBuf'_case_alt_selection_1\) select
    \c$imgBuf'_case_alt\ <= imgBuf(0) when x"0000000000000000",
                            imgBuf(1) when x"0000000000000001",
                            imgBuf(2) when x"0000000000000002",
                            imgBuf(3) when x"0000000000000003",
                            imgBuf(4) when x"0000000000000004",
                            imgBuf(5) when x"0000000000000005",
                            imgBuf(6) when x"0000000000000006",
                            imgBuf(7) when x"0000000000000007",
                            synthAxisComSer_types.array_of_signed_32'(0 to 7 => signed'(0 to 31 => '-')) when others;

  \c$imgBuf'_case_scrut\ <= signed(std_logic_vector(resize(y,64)));

  y <= synthAxisComSer_types.index_8'(synthaxiscomser_types.fromSLV(state(5 downto 3)));

  imgBuf <= synthAxisComSer_types.array_of_array_of_8_signed_32'(synthaxiscomser_types.fromSLV(state(2053 downto 6)));


end;

