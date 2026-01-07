-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity procBlock is
  port(-- clock
       \c$ds_bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$ds_bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta              : in Exc8_System_topEntity_types.Tuple2_2;
       result           : out Exc8_System_topEntity_types.Tuple2_3);
end;

architecture structural of procBlock is
  signal \c$ds_app_arg\               : Exc8_System_topEntity_types.Tuple2_4 := ( Tuple2_4_sel0_ProcState => std_logic_vector'("10" & "------------------")
, Tuple2_4_sel1_array_of_signed_16 => Exc8_System_topEntity_types.array_of_signed_16'( to_signed(0,16)
                                                                                     , to_signed(0,16)
                                                                                     , to_signed(0,16)
                                                                                     , to_signed(0,16) ) );
  signal \c$case_alt\                 : Exc8_System_topEntity_types.Tuple2_5;
  signal \c$case_alt_0\               : Exc8_System_topEntity_types.Tuple2_5;
  signal \c$case_alt_1\               : Exc8_System_topEntity_types.Tuple2_5;
  signal addr                         : unsigned(1 downto 0);
  signal \c$app_arg\                  : signed(15 downto 0);
  signal addr_0                       : unsigned(1 downto 0);
  signal op                           : Exc8_System_topEntity_types.Opcode;
  signal v                            : signed(15 downto 0);
  signal \c$app_arg_0\                : Exc8_System_topEntity_types.array_of_signed_16(0 to 3);
  signal addr_1                       : unsigned(1 downto 0);
  signal \c$app_arg_1\                : signed(15 downto 0);
  signal result_0                     : signed(15 downto 0);
  signal \c$case_alt_2\               : signed(15 downto 0);
  signal \r'\                         : std_logic_vector(15 downto 0);
  signal \c$r'_app_arg\               : std_logic_vector(16 downto 0);
  signal r                            : signed(16 downto 0);
  signal result_1                     : signed(15 downto 0);
  signal \c$case_alt_3\               : signed(15 downto 0);
  signal \c$app_arg_2\                : std_logic_vector(23 downto 0);
  signal \c$app_arg_3\                : std_logic;
  signal \c$app_arg_4\                : std_logic;
  signal \c$app_arg_5\                : std_logic_vector(8 downto 0);
  signal \c$app_arg_6\                : std_logic_vector(7 downto 0);
  signal rL                           : std_logic_vector(7 downto 0);
  signal rR                           : std_logic_vector(23 downto 0);
  signal ds3                          : Exc8_System_topEntity_types.Tuple2_6;
  signal v_0                          : signed(15 downto 0);
  signal \c$app_arg_7\                : signed(15 downto 0);
  signal regs                         : Exc8_System_topEntity_types.array_of_signed_16(0 to 3);
  signal op_0                         : Exc8_System_topEntity_types.Opcode;
  signal v_1                          : signed(15 downto 0);
  signal \c$case_alt_selection_1\     : Exc8_System_topEntity_types.ProcState;
  signal \c$case_alt_selection_5\     : Exc8_System_topEntity_types.Maybe_0;
  signal \c$case_alt_selection_8\     : Exc8_System_topEntity_types.Instr_0;
  signal result_selection_res         : boolean;
  signal \c$bv\                       : std_logic_vector(15 downto 0);
  signal \c$case_alt_selection_res\   : boolean;
  signal \c$bv_0\                     : std_logic_vector(15 downto 0);
  signal \c$bv_1\                     : std_logic_vector(15 downto 0);
  signal \r'_projection\              : Exc8_System_topEntity_types.Tuple2_7;
  signal result_selection_res_0       : boolean;
  signal \c$case_alt_selection_res_0\ : boolean;
  signal \c$shI\                      : signed(63 downto 0);
  signal \c$bv_2\                     : std_logic_vector(23 downto 0);
  signal \c$bv_3\                     : std_logic_vector(31 downto 0);

begin
  -- register begin
  cds_app_arg_register : process(\c$ds_bindCsr\,\c$ds_bindCsr_0\)
  begin
    if \c$ds_bindCsr_0\ =  '1'  then
      \c$ds_app_arg\ <= ( Tuple2_4_sel0_ProcState => std_logic_vector'("10" & "------------------")
  , Tuple2_4_sel1_array_of_signed_16 => Exc8_System_topEntity_types.array_of_signed_16'( to_signed(0,16)
                                                                                       , to_signed(0,16)
                                                                                       , to_signed(0,16)
                                                                                       , to_signed(0,16) ) );
    elsif rising_edge(\c$ds_bindCsr\) then
      \c$ds_app_arg\ <= \c$case_alt\.Tuple2_5_sel0_Tuple2_4;
    end if;
  end process;
  -- register end

  result <= \c$case_alt\.Tuple2_5_sel1_Tuple2_3;

  \c$case_alt_selection_1\ <= \c$ds_app_arg\.Tuple2_4_sel0_ProcState;

  with (\c$case_alt_selection_1\(19 downto 18)) select
    \c$case_alt\ <= \c$case_alt_0\ when "00",
                    ( Tuple2_5_sel0_Tuple2_4 => ( Tuple2_4_sel0_ProcState => std_logic_vector'("10" & "------------------")
                    , Tuple2_4_sel1_array_of_signed_16 => \c$app_arg_0\ )
                    , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("10" & "----------------")
                    , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "01",
                    \c$case_alt_1\ when others;

  \c$case_alt_selection_5\ <= \c$ds_app_arg\.Tuple2_4_sel0_ProcState(17 downto 1);

  with (\c$case_alt_selection_5\(16 downto 16)) select
    \c$case_alt_0\ <= ( Tuple2_5_sel0_Tuple2_4 => ( Tuple2_4_sel0_ProcState => std_logic_vector'("00" & (std_logic_vector'("1" & (std_logic_vector(v_1)))) & (Exc8_System_topEntity_types.toSLV(op_0)))
                      , Tuple2_4_sel1_array_of_signed_16 => regs )
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("10" & "----------------")
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "0",
                      ( Tuple2_5_sel0_Tuple2_4 => ( Tuple2_4_sel0_ProcState => std_logic_vector'("10" & "------------------")
                      , Tuple2_4_sel1_array_of_signed_16 => regs )
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("00" & (std_logic_vector(\c$app_arg_1\)))
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when others;

  \c$case_alt_selection_8\ <= eta.Tuple2_2_sel0_Instr_0;

  with (\c$case_alt_selection_8\(18 downto 16)) select
    \c$case_alt_1\ <= ( Tuple2_5_sel0_Tuple2_4 => \c$ds_app_arg\
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("00" & (std_logic_vector(v)))
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "000",
                      ( Tuple2_5_sel0_Tuple2_4 => ( Tuple2_4_sel0_ProcState => std_logic_vector'("00" & (std_logic_vector'("0" & "----------------")) & (Exc8_System_topEntity_types.toSLV(op)))
                      , Tuple2_4_sel1_array_of_signed_16 => regs )
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("10" & "----------------")
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "001",
                      ( Tuple2_5_sel0_Tuple2_4 => \c$ds_app_arg\
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("00" & (std_logic_vector(\c$app_arg\)))
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "010",
                      ( Tuple2_5_sel0_Tuple2_4 => ( Tuple2_4_sel0_ProcState => std_logic_vector'("01" & (std_logic_vector(addr)) & "----------------")
                      , Tuple2_4_sel1_array_of_signed_16 => regs )
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("10" & "----------------")
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when "011",
                      ( Tuple2_5_sel0_Tuple2_4 => \c$ds_app_arg\
                      , Tuple2_5_sel1_Tuple2_3 => ( Tuple2_3_sel0_Instr => std_logic_vector'("01" & "----------------")
                      , Tuple2_3_sel1_signed => \c$app_arg_7\ ) ) when others;

  addr <= unsigned'(exc8_system_topentity_types.fromSLV(eta.Tuple2_2_sel0_Instr_0(15 downto 14)));

  -- index begin
  indexVec : block
    signal vec_index : integer range 0 to 4-1;
  begin
    vec_index <= to_integer((signed(std_logic_vector(resize(addr_0,64)))))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;
    \c$app_arg\ <= regs(vec_index);
  end block;
  -- index end

  addr_0 <= unsigned'(exc8_system_topentity_types.fromSLV(eta.Tuple2_2_sel0_Instr_0(15 downto 14)));

  op <= Exc8_System_topEntity_types.Opcode'(exc8_system_topentity_types.fromSLV(eta.Tuple2_2_sel0_Instr_0(15 downto 15)));

  v <= signed'(exc8_system_topentity_types.fromSLV(eta.Tuple2_2_sel0_Instr_0(15 downto 0)));

  -- replace begin
  replaceVec : block
    signal vec_index_0 : integer range 0 to 4-1;
  begin
    vec_index_0 <= to_integer((signed(std_logic_vector(resize(addr_1,64)))))
    -- pragma translate_off
                 mod 4
    -- pragma translate_on
                 ;

    process(vec_index_0,regs,v_1)
      variable ivec : Exc8_System_topEntity_types.array_of_signed_16(0 to 3);
    begin
      ivec := regs;
      ivec(vec_index_0) := v_1;
      \c$app_arg_0\ <= ivec;
    end process;
  end block;
  -- replace end

  addr_1 <= unsigned'(exc8_system_topentity_types.fromSLV(\c$ds_app_arg\.Tuple2_4_sel0_ProcState(17 downto 16)));

  with (op_0) select
    \c$app_arg_1\ <= result_1 when Opcode'(Mult),
                     result_0 when others;

  \c$bv\ <= (\r'\);

  result_selection_res <= (( \c$r'_app_arg\(\c$r'_app_arg\'high) ) xor ( \c$bv\(\c$bv\'high) )) = '0';

  result_0 <= signed(\r'\) when result_selection_res else
              \c$case_alt_2\;

  \c$bv_0\ <= ((std_logic_vector(v_0)));

  \c$bv_1\ <= ((std_logic_vector(v_1)));

  \c$case_alt_selection_res\ <= (( \c$bv_0\(\c$bv_0\'high) ) and ( \c$bv_1\(\c$bv_1\'high) )) = '0';

  \c$case_alt_2\ <= to_signed(32767,16) when \c$case_alt_selection_res\ else
                    to_signed(-32768,16);

  \r'_projection\ <= (\c$r'_app_arg\(\c$r'_app_arg\'high downto 16),\c$r'_app_arg\(16-1 downto 0));

  \r'\ <= \r'_projection\.Tuple2_7_sel1_std_logic_vector_1;

  \c$r'_app_arg\ <= (std_logic_vector(r));

  r <= resize(v_0,17) + resize(v_1,17);

  result_selection_res_0 <= ((not \c$app_arg_4\) or \c$app_arg_3\) = '1';

  result_1 <= signed((std_logic_vector(resize(unsigned(\c$app_arg_2\),16)))) when result_selection_res_0 else
              \c$case_alt_3\;

  \c$case_alt_selection_res_0\ <= ( \c$app_arg_6\(\c$app_arg_6\'high) ) = '0';

  \c$case_alt_3\ <= to_signed(32767,16) when \c$case_alt_selection_res_0\ else
                    to_signed(-32768,16);

  \c$shI\ <= (to_signed(8,64));

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
        when ((to_signed(8,64)) >= 0) else (others => 'X')
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

  \c$bv_2\ <= (rR);

  \c$app_arg_5\ <= (std_logic_vector'(std_logic_vector'(((std_logic_vector'(0 => ( \c$bv_2\(\c$bv_2\'high) ))))) & std_logic_vector'(\c$app_arg_6\)));

  \c$app_arg_6\ <= rL;

  rL <= ds3.Tuple2_6_sel0_std_logic_vector_0;

  rR <= ds3.Tuple2_6_sel1_std_logic_vector_1;

  \c$bv_3\ <= ((std_logic_vector((v_0 * v_1))));

  ds3 <= (\c$bv_3\(\c$bv_3\'high downto 24),\c$bv_3\(24-1 downto 0));

  v_0 <= signed'(exc8_system_topentity_types.fromSLV(\c$ds_app_arg\.Tuple2_4_sel0_ProcState(16 downto 1)));

  \c$app_arg_7\ <=  regs(0) ;

  regs <= \c$ds_app_arg\.Tuple2_4_sel1_array_of_signed_16;

  op_0 <= Exc8_System_topEntity_types.Opcode'(exc8_system_topentity_types.fromSLV(\c$ds_app_arg\.Tuple2_4_sel0_ProcState(0 downto 0)));

  v_1 <= eta.Tuple2_2_sel1_signed;


end;

