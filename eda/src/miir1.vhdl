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
       x   : in signed(17 downto 0);
       o   : out signed(17 downto 0));
end;

architecture structural of miir1 is
  signal \c$ds_app_arg\               : miir1_types.array_of_signed_18(0 to 2) := miir1_types.array_of_signed_18'( to_signed(0,18)
                               , to_signed(0,18)
                               , to_signed(0,18) );
  signal b_side                       : miir1_types.array_of_signed_18(0 to 3);
  signal result                       : signed(17 downto 0);
  signal \c$case_alt\                 : signed(17 downto 0);
  signal \r'\                         : std_logic_vector(17 downto 0);
  signal \c$r'_app_arg\               : std_logic_vector(18 downto 0);
  signal r                            : signed(18 downto 0);
  signal \c$app_arg\                  : miir1_types.array_of_signed_18(0 to 2);
  signal \c$app_arg_0\                : miir1_types.array_of_signed_18(0 to 2);
  signal \c$app_arg_1\                : miir1_types.array_of_signed_18(0 to 2);
  signal \c$out_app_arg\              : signed(17 downto 0);
  signal \c$out_app_arg_0\            : signed(17 downto 0);
  signal \c$vec\                      : miir1_types.array_of_signed_18(0 to 3);
  signal result_selection_res_0       : boolean;
  signal \c$bv_1\                     : std_logic_vector(17 downto 0);
  signal \c$case_alt_selection_res_0\ : boolean;
  signal \c$bv_2\                     : std_logic_vector(17 downto 0);
  signal \c$bv_3\                     : std_logic_vector(17 downto 0);
  signal \r'_projection\              : miir1_types.Tuple2;
  signal \c$vec2\                     : miir1_types.array_of_signed_18(0 to 2);
  signal \c$vec1\                     : miir1_types.array_of_signed_18(0 to 2);
  signal \c$vec_0\                    : miir1_types.array_of_signed_18(0 to 2);

begin
  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= miir1_types.array_of_signed_18'( to_signed(0,18)
                                 , to_signed(0,18)
                                 , to_signed(0,18) );
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= \c$app_arg\;
    end if;
  end process;
  -- register end

  \c$vec\ <= miir1_types.array_of_signed_18'( to_signed(510,18)
                                            , to_signed(1531,18)
                                            , to_signed(1531,18)
                                            , to_signed(510,18) );

  -- map begin
  r_map : for i in b_side'range generate
  begin
    fun_3 : block
      signal result_0                   : signed(17 downto 0);
      signal \c$case_alt_0\             : signed(17 downto 0);
      signal \c$app_arg_2\              : std_logic_vector(30 downto 0);
      signal \c$app_arg_3\              : std_logic;
      signal \c$app_arg_4\              : std_logic;
      signal \c$app_arg_5\              : std_logic_vector(5 downto 0);
      signal \c$app_arg_6\              : std_logic_vector(4 downto 0);
      signal rL                         : std_logic_vector(4 downto 0);
      signal rR                         : std_logic_vector(30 downto 0);
      signal ds3                        : miir1_types.Tuple2_0;
      signal result_selection_res       : boolean;
      signal \c$case_alt_selection_res\ : boolean;
      signal \c$shI\                    : signed(63 downto 0);
      signal \c$bv\                     : std_logic_vector(30 downto 0);
      signal \c$bv_0\                   : std_logic_vector(35 downto 0);
    begin
      b_side(i) <= result_0;

      result_selection_res <= ((not \c$app_arg_4\) or \c$app_arg_3\) = '1';

      result_0 <= signed((std_logic_vector(resize(unsigned(\c$app_arg_2\),18)))) when result_selection_res else
                  \c$case_alt_0\;

      \c$case_alt_selection_res\ <= ( \c$app_arg_6\(\c$app_arg_6\'high) ) = '0';

      \c$case_alt_0\ <= to_signed(131071,18) when \c$case_alt_selection_res\ else
                        to_signed(-131072,18);

      \c$shI\ <= (to_signed(13,64));

      capp_arg_2_shiftR : block
        signal sh : natural;
      begin
        sh <=
            -- pragma translate_off
            natural'high when (\c$shI\(64-1 downto 31) /= 0) else
            -- pragma translate_on
            to_integer(\c$shI\);
        \c$app_arg_2\ <= std_logic_vector(shift_right(unsigned(rR),sh))
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
        \c$app_arg_3\ <= and_reduce(\c$app_arg_5\);
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
        \c$app_arg_4\ <= or_reduce(\c$app_arg_5\);
      end block;
      -- reduceOr end

      \c$bv\ <= (rR);

      \c$app_arg_5\ <= (std_logic_vector'(std_logic_vector'(((std_logic_vector'(0 => ( \c$bv\(\c$bv\'high) ))))) & std_logic_vector'(\c$app_arg_6\)));

      \c$app_arg_6\ <= rL;

      rL <= ds3.Tuple2_0_sel0_std_logic_vector_0;

      rR <= ds3.Tuple2_0_sel1_std_logic_vector_1;

      \c$bv_0\ <= ((std_logic_vector((x * \c$vec\(i)))));

      ds3 <= (\c$bv_0\(\c$bv_0\'high downto 31),\c$bv_0\(31-1 downto 0));


    end block;
  end generate;
  -- map end

  \c$bv_1\ <= (\r'\);

  result_selection_res_0 <= (( \c$r'_app_arg\(\c$r'_app_arg\'high) ) xor ( \c$bv_1\(\c$bv_1\'high) )) = '0';

  result <= signed(\r'\) when result_selection_res_0 else
            \c$case_alt\;

  \c$bv_2\ <= ((std_logic_vector(\c$out_app_arg_0\)));

  \c$bv_3\ <= ((std_logic_vector(\c$out_app_arg\)));

  \c$case_alt_selection_res_0\ <= (( \c$bv_2\(\c$bv_2\'high) ) and ( \c$bv_3\(\c$bv_3\'high) )) = '0';

  \c$case_alt\ <= to_signed(131071,18) when \c$case_alt_selection_res_0\ else
                  to_signed(-131072,18);

  \r'_projection\ <= (\c$r'_app_arg\(\c$r'_app_arg\'high downto 18),\c$r'_app_arg\(18-1 downto 0));

  \r'\ <= \r'_projection\.Tuple2_sel1_std_logic_vector_1;

  \c$r'_app_arg\ <= (std_logic_vector(r));

  r <= resize(\c$out_app_arg_0\,19) + resize(\c$out_app_arg\,19);

  \c$vec2\ <= (miir1_types.array_of_signed_18'(miir1_types.array_of_signed_18'((\c$ds_app_arg\(1 to \c$ds_app_arg\'high))) & miir1_types.array_of_signed_18'(miir1_types.array_of_signed_18'(0 => to_signed(0,18)))));

  -- zipWith begin
  zipWith : for i_0 in \c$app_arg\'range generate
  begin
    fun_4 : block
      signal result_4                     : signed(17 downto 0);
      signal \c$case_alt_4\               : signed(17 downto 0);
      signal \r'_1\                       : std_logic_vector(17 downto 0);
      signal \c$r'_app_arg_0\             : std_logic_vector(18 downto 0);
      signal r_0                          : signed(18 downto 0);
      signal result_selection_res_1       : boolean;
      signal \c$bv_4\                     : std_logic_vector(17 downto 0);
      signal \c$case_alt_selection_res_1\ : boolean;
      signal \c$bv_5\                     : std_logic_vector(17 downto 0);
      signal \c$bv_6\                     : std_logic_vector(17 downto 0);
      signal \r'_projection_0\            : miir1_types.Tuple2;
    begin
      \c$app_arg\(i_0) <= result_4;

      \c$bv_4\ <= (\r'_1\);

      result_selection_res_1 <= (( \c$r'_app_arg_0\(\c$r'_app_arg_0\'high) ) xor ( \c$bv_4\(\c$bv_4\'high) )) = '0';

      result_4 <= signed(\r'_1\) when result_selection_res_1 else
                  \c$case_alt_4\;

      \c$bv_5\ <= ((std_logic_vector(\c$app_arg_0\(i_0))));

      \c$bv_6\ <= ((std_logic_vector(\c$vec2\(i_0))));

      \c$case_alt_selection_res_1\ <= (( \c$bv_5\(\c$bv_5\'high) ) and ( \c$bv_6\(\c$bv_6\'high) )) = '0';

      \c$case_alt_4\ <= to_signed(131071,18) when \c$case_alt_selection_res_1\ else
                        to_signed(-131072,18);

      \r'_projection_0\ <= (\c$r'_app_arg_0\(\c$r'_app_arg_0\'high downto 18),\c$r'_app_arg_0\(18-1 downto 0));

      \r'_1\ <= \r'_projection_0\.Tuple2_sel1_std_logic_vector_1;

      \c$r'_app_arg_0\ <= (std_logic_vector(r_0));

      r_0 <= resize(\c$app_arg_0\(i_0),19) + resize(\c$vec2\(i_0),19);


    end block;
  end generate;
  -- zipWith end

  \c$vec1\ <= (b_side(1 to b_side'high));

  -- zipWith begin
  zipWith_0 : for i_1 in \c$app_arg_0\'range generate
  begin
    fun_5 : block
      signal result_5                     : signed(17 downto 0);
      signal \c$case_alt_5\               : signed(17 downto 0);
      signal \r'_2\                       : std_logic_vector(17 downto 0);
      signal \c$r'_app_arg_1\             : std_logic_vector(18 downto 0);
      signal r_1                          : signed(18 downto 0);
      signal result_selection_res_2       : boolean;
      signal \c$bv_7\                     : std_logic_vector(17 downto 0);
      signal \c$case_alt_selection_res_2\ : boolean;
      signal \c$bv_8\                     : std_logic_vector(17 downto 0);
      signal \c$bv_9\                     : std_logic_vector(17 downto 0);
      signal \r'_projection_1\            : miir1_types.Tuple2;
    begin
      \c$app_arg_0\(i_1) <= result_5;

      \c$bv_7\ <= (\r'_2\);

      result_selection_res_2 <= (( \c$r'_app_arg_1\(\c$r'_app_arg_1\'high) ) xor ( \c$bv_7\(\c$bv_7\'high) )) = '0';

      result_5 <= signed(\r'_2\) when result_selection_res_2 else
                  \c$case_alt_5\;

      \c$bv_8\ <= ((std_logic_vector(\c$vec1\(i_1))));

      \c$bv_9\ <= ((std_logic_vector(\c$app_arg_1\(i_1))));

      \c$case_alt_selection_res_2\ <= (( \c$bv_8\(\c$bv_8\'high) ) and ( \c$bv_9\(\c$bv_9\'high) )) = '0';

      \c$case_alt_5\ <= to_signed(131071,18) when \c$case_alt_selection_res_2\ else
                        to_signed(-131072,18);

      \r'_projection_1\ <= (\c$r'_app_arg_1\(\c$r'_app_arg_1\'high downto 18),\c$r'_app_arg_1\(18-1 downto 0));

      \r'_2\ <= \r'_projection_1\.Tuple2_sel1_std_logic_vector_1;

      \c$r'_app_arg_1\ <= (std_logic_vector(r_1));

      r_1 <= resize(\c$vec1\(i_1),19) + resize(\c$app_arg_1\(i_1),19);


    end block;
  end generate;
  -- zipWith end

  \c$vec_0\ <= miir1_types.array_of_signed_18'( to_signed(8071,18)
                                              , to_signed(-4857,18)
                                              , to_signed(892,18) );

  -- map begin
  r_map_0 : for i_2 in \c$app_arg_1\'range generate
  begin
    fun_6 : block
      signal result_6                     : signed(17 downto 0);
      signal \c$case_alt_6\               : signed(17 downto 0);
      signal \c$app_arg_7\                : std_logic_vector(30 downto 0);
      signal \c$app_arg_8\                : std_logic;
      signal \c$app_arg_9\                : std_logic;
      signal \c$app_arg_10\               : std_logic_vector(5 downto 0);
      signal \c$app_arg_11\               : std_logic_vector(4 downto 0);
      signal rL_1                         : std_logic_vector(4 downto 0);
      signal rR_1                         : std_logic_vector(30 downto 0);
      signal ds3_0                        : miir1_types.Tuple2_0;
      signal result_selection_res_3       : boolean;
      signal \c$case_alt_selection_res_3\ : boolean;
      signal \c$shI_0\                    : signed(63 downto 0);
      signal \c$bv_10\                    : std_logic_vector(30 downto 0);
      signal \c$bv_11\                    : std_logic_vector(35 downto 0);
    begin
      \c$app_arg_1\(i_2) <= result_6;

      result_selection_res_3 <= ((not \c$app_arg_9\) or \c$app_arg_8\) = '1';

      result_6 <= signed((std_logic_vector(resize(unsigned(\c$app_arg_7\),18)))) when result_selection_res_3 else
                  \c$case_alt_6\;

      \c$case_alt_selection_res_3\ <= ( \c$app_arg_11\(\c$app_arg_11\'high) ) = '0';

      \c$case_alt_6\ <= to_signed(131071,18) when \c$case_alt_selection_res_3\ else
                        to_signed(-131072,18);

      \c$shI_0\ <= (to_signed(13,64));

      capp_arg_7_shiftR : block
        signal sh_0 : natural;
      begin
        sh_0 <=
            -- pragma translate_off
            natural'high when (\c$shI_0\(64-1 downto 31) /= 0) else
            -- pragma translate_on
            to_integer(\c$shI_0\);
        \c$app_arg_7\ <= std_logic_vector(shift_right(unsigned(rR_1),sh_0))
            -- pragma translate_off
            when ((to_signed(13,64)) >= 0) else (others => 'X')
            -- pragma translate_on
            ;
      end block;

      -- reduceAnd begin,

      reduceAnd_0 : block
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
        \c$app_arg_8\ <= and_reduce(\c$app_arg_10\);
      end block;
      -- reduceAnd end

      -- reduceOr begin
      reduceOr_0 : block
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
        \c$app_arg_9\ <= or_reduce(\c$app_arg_10\);
      end block;
      -- reduceOr end

      \c$bv_10\ <= (rR_1);

      \c$app_arg_10\ <= (std_logic_vector'(std_logic_vector'(((std_logic_vector'(0 => ( \c$bv_10\(\c$bv_10\'high) ))))) & std_logic_vector'(\c$app_arg_11\)));

      \c$app_arg_11\ <= rL_1;

      rL_1 <= ds3_0.Tuple2_0_sel0_std_logic_vector_0;

      rR_1 <= ds3_0.Tuple2_0_sel1_std_logic_vector_1;

      \c$bv_11\ <= ((std_logic_vector((result * \c$vec_0\(i_2)))));

      ds3_0 <= (\c$bv_11\(\c$bv_11\'high downto 31),\c$bv_11\(31-1 downto 0));


    end block;
  end generate;
  -- map end

  -- index begin
  indexVec : block
    signal vec_index : integer range 0 to 4-1;
  begin
    vec_index <= to_integer((to_signed(0,64)))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
    \c$out_app_arg\ <= b_side(vec_index);
  end block;
  -- index end

  -- index begin
  indexVec_0 : block
    signal vec_index_0 : integer range 0 to 3-1;
  begin
    vec_index_0 <= to_integer((to_signed(0,64)))
    -- pragma translate_off
                 mod 3
    -- pragma translate_on
                 ;
    \c$out_app_arg_0\ <= \c$ds_app_arg\(vec_index_0);
  end block;
  -- index end

  o <= result;


end;

