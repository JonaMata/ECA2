-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.Exc8_System_topEntity_types.all;

entity instrBRAM is
  port(-- clock
       \c$ds_bindCsr\   : in Exc8_System_topEntity_types.clk_System;
       -- reset
       \c$ds_bindCsr_0\ : in Exc8_System_topEntity_types.rst_System;
       eta              : in unsigned(3 downto 0);
       result           : out Exc8_System_topEntity_types.Instr_0);
end;

architecture structural of instrBRAM is
  signal \c$rdI\ : signed(63 downto 0);
  signal \c$wrI\ : signed(63 downto 0);

begin
  \c$rdI\ <= (signed(std_logic_vector(resize(eta,64))));

  \c$wrI\ <= (signed'(0 to 63 => '-'));

  -- blockRam begin
  result_blockRam : block
    signal result_RAM : Exc8_System_topEntity_types.array_of_Instr_0(0 to 15) := Exc8_System_topEntity_types.array_of_Instr_0'( std_logic_vector'("010" & (std_logic_vector(to_unsigned(2,2))) & "--------------")
                                               , std_logic_vector'("000" & (std_logic_vector(to_signed(250,16))))
                                               , std_logic_vector'("001" & (Exc8_System_topEntity_types.toSLV(Opcode'(Mult))) & "---------------")
                                               , std_logic_vector'("011" & (std_logic_vector(to_unsigned(2,2))) & "--------------")
                                               , std_logic_vector'("010" & (std_logic_vector(to_unsigned(2,2))) & "--------------")
                                               , std_logic_vector'("000" & (std_logic_vector(to_signed(10,16))))
                                               , std_logic_vector'("001" & (Exc8_System_topEntity_types.toSLV(Opcode'(Mult))) & "---------------")
                                               , std_logic_vector'("010" & (std_logic_vector(to_unsigned(1,2))) & "--------------")
                                               , std_logic_vector'("001" & (Exc8_System_topEntity_types.toSLV(Opcode'(Add))) & "---------------")
                                               , std_logic_vector'("011" & (std_logic_vector(to_unsigned(1,2))) & "--------------")
                                               , std_logic_vector'("010" & (std_logic_vector(to_unsigned(1,2))) & "--------------")
                                               , std_logic_vector'("000" & (std_logic_vector(to_signed(10,16))))
                                               , std_logic_vector'("001" & (Exc8_System_topEntity_types.toSLV(Opcode'(Mult))) & "---------------")
                                               , std_logic_vector'("010" & (std_logic_vector(to_unsigned(0,2))) & "--------------")
                                               , std_logic_vector'("001" & (Exc8_System_topEntity_types.toSLV(Opcode'(Add))) & "---------------")
                                               , std_logic_vector'("011" & (std_logic_vector(to_unsigned(0,2))) & "--------------") );
    signal rd  : integer range 0 to 16 - 1;
    signal wr  : integer range 0 to 16 - 1;
  begin
    rd <= to_integer(\c$rdI\(31 downto 0))
    -- pragma translate_off
                  mod 16
    -- pragma translate_on
                  ;

    wr <= to_integer(\c$wrI\(31 downto 0))
    -- pragma translate_off
                  mod 16
    -- pragma translate_on
                  ;

    \c$n\ : process(\c$ds_bindCsr\)
    begin
      if rising_edge(\c$ds_bindCsr\) then
        if false   then
          result_RAM(wr) <= (Exc8_System_topEntity_types.Instr_0'(0 to 18 => '-'));
        end if;
        result <= result_RAM(rd);
      end if;
    end process;
  end block;
  --end blockRam


end;

