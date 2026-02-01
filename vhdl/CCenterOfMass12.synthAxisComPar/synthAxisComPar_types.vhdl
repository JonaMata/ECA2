library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package synthAxisComPar_types is

  type Tuple2_3 is record
    Tuple2_3_sel0_unsigned_0 : unsigned(3 downto 0);
    Tuple2_3_sel1_unsigned_1 : unsigned(3 downto 0);
  end record;
  subtype Maybe_0 is std_logic_vector(8 downto 0);

  subtype clk_System is std_logic;
  subtype rst_System is std_logic;

  type Axi4Stream_0 is record
    Axi4Stream_0_sel0_tData_0 : Tuple2_3;
    Axi4Stream_0_sel1_tLast_0 : boolean;
    Axi4Stream_0_sel2_tKeep_0 : std_logic_vector(0 downto 0);
  end record;
  subtype Maybe is std_logic_vector(10 downto 0);

  type array_of_unsigned_8 is array (integer range <>) of unsigned(7 downto 0);
  type Tuple2_5 is record
    Tuple2_5_sel0_array_of_unsigned_8_0 : array_of_unsigned_8(0 to 7);
    Tuple2_5_sel1_array_of_unsigned_8_1 : array_of_unsigned_8(0 to 7);
  end record;
  type array_of_array_of_8_unsigned_8 is array (integer range <>) of array_of_unsigned_8(0 to 7);
  type Tuple2_4 is record
    Tuple2_4_sel0_array_of_array_of_8_unsigned_8 : array_of_array_of_8_unsigned_8(0 to 7);
    Tuple2_4_sel1_signed : signed(63 downto 0);
  end record;
  type Tuple2_0 is record
    Tuple2_0_sel0_Tuple2_4 : Tuple2_4;
    Tuple2_0_sel1_Maybe_0 : Maybe_0;
  end record;
  type Tuple2 is record
    Tuple2_sel0_unsigned_0 : unsigned(7 downto 0);
    Tuple2_sel1_unsigned_1 : unsigned(7 downto 0);
  end record;
  type Axi4Stream is record
    Axi4Stream_sel0_tData : array_of_unsigned_8(0 to 15);
    Axi4Stream_sel1_tLast : boolean;
    Axi4Stream_sel2_tKeep : std_logic_vector(15 downto 0);
  end record;
  subtype Maybe_1 is std_logic_vector(145 downto 0);
  type Tuple2_1 is record
    Tuple2_1_sel0_Maybe_1 : Maybe_1;
    Tuple2_1_sel1_boolean : boolean;
  end record;
  type Tuple2_6 is record
    Tuple2_6_sel0_Maybe : Maybe;
    Tuple2_6_sel1_boolean : boolean;
  end record;
  type Tuple2_2 is record
    Tuple2_2_sel0_Tuple2_0 : Tuple2_0;
    Tuple2_2_sel1_Tuple2_6 : Tuple2_6;
  end record;
  function toSLV (u : in unsigned) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return unsigned;
  function toSLV (p : Tuple2_3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_3;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (p : Axi4Stream_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Axi4Stream_0;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (value :  array_of_unsigned_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_unsigned_8;
  function toSLV (p : Tuple2_5) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_5;
  function toSLV (value :  array_of_array_of_8_unsigned_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_8_unsigned_8;
  function toSLV (p : Tuple2_4) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_4;
  function toSLV (p : Tuple2_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0;
  function toSLV (p : Tuple2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2;
  function toSLV (p : Axi4Stream) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Axi4Stream;
  function toSLV (p : Tuple2_1) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1;
  function toSLV (p : Tuple2_6) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_6;
  function toSLV (p : Tuple2_2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2;
end;

package body synthAxisComPar_types is
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function fromSLV (slv : in std_logic_vector) return unsigned is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return unsigned(islv);
  end;
  function toSLV (p : Tuple2_3) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_3_sel0_unsigned_0) & toSLV(p.Tuple2_3_sel1_unsigned_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 7)));
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
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
  function toSLV (p : Axi4Stream_0) return std_logic_vector is
  begin
    return (toSLV(p.Axi4Stream_0_sel0_tData_0) & toSLV(p.Axi4Stream_0_sel1_tLast_0) & toSLV(p.Axi4Stream_0_sel2_tKeep_0));
  end;
  function fromSLV (slv : in std_logic_vector) return Axi4Stream_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)),fromSLV(islv(9 to 9)));
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
  function toSLV (value :  array_of_unsigned_8) return std_logic_vector is
    alias ivalue    : array_of_unsigned_8(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 8);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 8) + 1 to i*8) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_unsigned_8 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_unsigned_8(0 to slv'length / 8 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 8 to (i+1) * 8 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2_5) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_5_sel0_array_of_unsigned_8_0) & toSLV(p.Tuple2_5_sel1_array_of_unsigned_8_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_5 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 63)),fromSLV(islv(64 to 127)));
  end;
  function toSLV (value :  array_of_array_of_8_unsigned_8) return std_logic_vector is
    alias ivalue    : array_of_array_of_8_unsigned_8(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 64);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 64) + 1 to i*64) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_array_of_8_unsigned_8 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_array_of_8_unsigned_8(0 to slv'length / 64 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 64 to (i+1) * 64 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2_4) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_4_sel0_array_of_array_of_8_unsigned_8) & toSLV(p.Tuple2_4_sel1_signed));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_4 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 511)),fromSLV(islv(512 to 575)));
  end;
  function toSLV (p : Tuple2_0) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_0_sel0_Tuple2_4) & toSLV(p.Tuple2_0_sel1_Maybe_0));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 575)),fromSLV(islv(576 to 584)));
  end;
  function toSLV (p : Tuple2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_sel0_unsigned_0) & toSLV(p.Tuple2_sel1_unsigned_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)));
  end;
  function toSLV (p : Axi4Stream) return std_logic_vector is
  begin
    return (toSLV(p.Axi4Stream_sel0_tData) & toSLV(p.Axi4Stream_sel1_tLast) & toSLV(p.Axi4Stream_sel2_tKeep));
  end;
  function fromSLV (slv : in std_logic_vector) return Axi4Stream is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 127)),fromSLV(islv(128 to 128)),fromSLV(islv(129 to 144)));
  end;
  function toSLV (p : Tuple2_1) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_1_sel0_Maybe_1) & toSLV(p.Tuple2_1_sel1_boolean));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 145)),fromSLV(islv(146 to 146)));
  end;
  function toSLV (p : Tuple2_6) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_6_sel0_Maybe) & toSLV(p.Tuple2_6_sel1_boolean));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_6 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 10)),fromSLV(islv(11 to 11)));
  end;
  function toSLV (p : Tuple2_2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_2_sel0_Tuple2_0) & toSLV(p.Tuple2_2_sel1_Tuple2_6));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 584)),fromSLV(islv(585 to 596)));
  end;
end;

