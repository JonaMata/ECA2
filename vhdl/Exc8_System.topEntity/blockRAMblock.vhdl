-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity blockRAMblock is
  port(-- clock
       \c$bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta           : in unsigned(2 downto 0);
       eta1          : in Exc8_System_topEntity_types.Maybe;
       result        : out signed(15 downto 0));
end;

architecture structural of blockRAMblock is
  signal \c$app_arg\ : boolean;
  signal ds          : Exc8_System_topEntity_types.Tuple2_1;
  signal a1          : Exc8_System_topEntity_types.Tuple2_1;
  signal \c$rdI\     : signed(63 downto 0);
  signal \c$wrI\     : signed(63 downto 0);

begin
  with (eta1(19 downto 19)) select
    \c$app_arg\ <= false when "0",
                   true when others;

  \c$rdI\ <= (signed(std_logic_vector(resize(eta,64))));

  \c$wrI\ <= (signed(std_logic_vector(resize(ds.Tuple2_1_sel0_unsigned,64))));

  -- blockRam begin
  result_blockRam : block
    signal result_RAM : Exc8_System_topEntity_types.array_of_signed_16(0 to 7) := Exc8_System_topEntity_types.array_of_signed_16'( to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16)
                                                 , to_signed(0,16) );
    signal rd  : integer range 0 to 8 - 1;
    signal wr  : integer range 0 to 8 - 1;
  begin
    rd <= to_integer(\c$rdI\(31 downto 0))
    -- pragma translate_off
                  mod 8
    -- pragma translate_on
                  ;

    wr <= to_integer(\c$wrI\(31 downto 0))
    -- pragma translate_off
                  mod 8
    -- pragma translate_on
                  ;

    \c$n\ : process(\c$bindCsr\)
    begin
      if rising_edge(\c$bindCsr\) then
        if \c$app_arg\   then
          result_RAM(wr) <= ds.Tuple2_1_sel1_signed;
        end if;
        result <= result_RAM(rd);
      end if;
    end process;
  end block;
  --end blockRam

  with (eta1(19 downto 19)) select
    ds <= ( Tuple2_1_sel0_unsigned => unsigned'(0 to 2 => '-')
          , Tuple2_1_sel1_signed => signed'(0 to 15 => '-') ) when "0",
          a1 when others;

  a1 <= Exc8_System_topEntity_types.Tuple2_1'(exc8_system_topentity_types.fromSLV(eta1(18 downto 0)));


end;

