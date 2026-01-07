library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package Exc8_System_topEntity_types is


  type Opcode is (Mult, Add);
  subtype clk_System is std_logic;
  subtype rst_System is std_logic;
  type Tuple2_6 is record
    Tuple2_6_sel0_std_logic_vector_0 : std_logic_vector(7 downto 0);
    Tuple2_6_sel1_std_logic_vector_1 : std_logic_vector(23 downto 0);
  end record;


  type Tuple2_9 is record
    Tuple2_9_sel0_unsigned_0 : unsigned(3 downto 0);
    Tuple2_9_sel1_unsigned_1 : unsigned(1 downto 0);
  end record;

  type Tuple2_7 is record
    Tuple2_7_sel0_std_logic_vector_0 : std_logic_vector(0 downto 0);
    Tuple2_7_sel1_std_logic_vector_1 : std_logic_vector(15 downto 0);
  end record;
  subtype Instr is std_logic_vector(17 downto 0);
  type Tuple2_3 is record
    Tuple2_3_sel0_Instr : Instr;
    Tuple2_3_sel1_signed : signed(15 downto 0);
  end record;
  subtype Maybe_0 is std_logic_vector(16 downto 0);
  subtype ProcState is std_logic_vector(19 downto 0);
  subtype Instr_0 is std_logic_vector(18 downto 0);
  type Tuple2_8 is record
    Tuple2_8_sel0_Instr_0 : Instr_0;
    Tuple2_8_sel1_unsigned : unsigned(3 downto 0);
  end record;
  type Tuple2_10 is record
    Tuple2_10_sel0_Tuple2_9 : Tuple2_9;
    Tuple2_10_sel1_Tuple2_8 : Tuple2_8;
  end record;
  type array_of_Instr_0 is array (integer range <>) of Instr_0;
  type Tuple2_2 is record
    Tuple2_2_sel0_Instr_0 : Instr_0;
    Tuple2_2_sel1_signed : signed(15 downto 0);
  end record;
  type Tuple2_1 is record
    Tuple2_1_sel0_unsigned : unsigned(2 downto 0);
    Tuple2_1_sel1_signed : signed(15 downto 0);
  end record;
  subtype Maybe is std_logic_vector(19 downto 0);
  type Tuple2 is record
    Tuple2_sel0_unsigned : unsigned(2 downto 0);
    Tuple2_sel1_Maybe : Maybe;
  end record;
  type Tuple2_0 is record
    Tuple2_0_sel0_unsigned : unsigned(2 downto 0);
    Tuple2_0_sel1_Tuple2 : Tuple2;
  end record;
  type array_of_signed_16 is array (integer range <>) of signed(15 downto 0);
  type Tuple2_4 is record
    Tuple2_4_sel0_ProcState : ProcState;
    Tuple2_4_sel1_array_of_signed_16 : array_of_signed_16(0 to 3);
  end record;
  type Tuple2_5 is record
    Tuple2_5_sel0_Tuple2_4 : Tuple2_4;
    Tuple2_5_sel1_Tuple2_3 : Tuple2_3;
  end record;
  function toSLV (u : in unsigned) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return unsigned;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (value : in Opcode) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Opcode;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (p : Tuple2_6) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_6;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (p : Tuple2_9) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_9;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (p : Tuple2_7) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_7;
  function toSLV (p : Tuple2_3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_3;
  function toSLV (p : Tuple2_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_8;
  function toSLV (p : Tuple2_10) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_10;
  function toSLV (value :  array_of_Instr_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_Instr_0;
  function toSLV (p : Tuple2_2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2;
  function toSLV (p : Tuple2_1) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1;
  function toSLV (p : Tuple2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2;
  function toSLV (p : Tuple2_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0;
  function toSLV (value :  array_of_signed_16) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_16;
  function toSLV (p : Tuple2_4) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_4;
  function toSLV (p : Tuple2_5) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_5;
end;

package body Exc8_System_topEntity_types is
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function fromSLV (slv : in std_logic_vector) return unsigned is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return unsigned(islv);
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (value : in Opcode) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(Opcode'pos(value), 1));
  end;
  function fromSLV (slv : in std_logic_vector) return Opcode is
  begin
    -- pragma translate_off
    if unsigned(slv) <= Opcode'pos(Opcode'high) then
    -- pragma translate_on
      return Opcode'val(to_integer(unsigned(slv)));
    -- pragma translate_off
    else
      return Opcode'val(0);
    end if;
    -- pragma translate_on
  end;
  function toSLV (sl : in std_logic) return std_logic_vector is
  begin
    return std_logic_vector'(0 => sl);
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic is
    alias islv : std_logic_vector (0 to slv'length - 1) is slv;
  begin
    return islv(0);
  end;
  function toSLV (p : Tuple2_6) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_6_sel0_std_logic_vector_0) & toSLV(p.Tuple2_6_sel1_std_logic_vector_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_6 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 31)));
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function tagToEnum (s : in signed) return boolean is
  begin
    if s = to_signed(0,64) then
      return false;
    else
      return true;
    end if;
  end;
  function dataToTag (b : in boolean) return signed is
  begin
    if b then
      return to_signed(1,64);
    else
      return to_signed(0,64);
    end if;
  end;
  function toSLV (p : Tuple2_9) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_9_sel0_unsigned_0) & toSLV(p.Tuple2_9_sel1_unsigned_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_9 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 5)));
  end;
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function fromSLV (slv : in std_logic_vector) return signed is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return signed(islv);
  end;
  function toSLV (p : Tuple2_7) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_7_sel0_std_logic_vector_0) & toSLV(p.Tuple2_7_sel1_std_logic_vector_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_7 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 16)));
  end;
  function toSLV (p : Tuple2_3) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_3_sel0_Instr) & toSLV(p.Tuple2_3_sel1_signed));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 17)),fromSLV(islv(18 to 33)));
  end;
  function toSLV (p : Tuple2_8) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_8_sel0_Instr_0) & toSLV(p.Tuple2_8_sel1_unsigned));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_8 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 18)),fromSLV(islv(19 to 22)));
  end;
  function toSLV (p : Tuple2_10) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_10_sel0_Tuple2_9) & toSLV(p.Tuple2_10_sel1_Tuple2_8));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_10 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 5)),fromSLV(islv(6 to 28)));
  end;
  function toSLV (value :  array_of_Instr_0) return std_logic_vector is
    alias ivalue    : array_of_Instr_0(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 19);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 19) + 1 to i*19) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_Instr_0 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_Instr_0(0 to slv'length / 19 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 19 to (i+1) * 19 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2_2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_2_sel0_Instr_0) & toSLV(p.Tuple2_2_sel1_signed));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 18)),fromSLV(islv(19 to 34)));
  end;
  function toSLV (p : Tuple2_1) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_1_sel0_unsigned) & toSLV(p.Tuple2_1_sel1_signed));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 18)));
  end;
  function toSLV (p : Tuple2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_sel0_unsigned) & toSLV(p.Tuple2_sel1_Maybe));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 22)));
  end;
  function toSLV (p : Tuple2_0) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_0_sel0_unsigned) & toSLV(p.Tuple2_0_sel1_Tuple2));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 25)));
  end;
  function toSLV (value :  array_of_signed_16) return std_logic_vector is
    alias ivalue    : array_of_signed_16(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 16);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 16) + 1 to i*16) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_16 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_signed_16(0 to slv'length / 16 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 16 to (i+1) * 16 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2_4) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_4_sel0_ProcState) & toSLV(p.Tuple2_4_sel1_array_of_signed_16));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_4 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 19)),fromSLV(islv(20 to 83)));
  end;
  function toSLV (p : Tuple2_5) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_5_sel0_Tuple2_4) & toSLV(p.Tuple2_5_sel1_Tuple2_3));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_5 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 83)),fromSLV(islv(84 to 117)));
  end;
end;

