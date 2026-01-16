library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package mfir3_100_types is


  subtype clk_System is std_logic;
  subtype rst_System is std_logic;


  type Tuple2_2 is record
    Tuple2_2_sel0_std_logic_vector_0 : std_logic_vector(4 downto 0);
    Tuple2_2_sel1_std_logic_vector_1 : std_logic_vector(30 downto 0);
  end record;
  type array_of_signed_18 is array (integer range <>) of signed(17 downto 0);
  type Tuple2 is record
    Tuple2_sel0_array_of_signed_18_0 : array_of_signed_18(0 to 98);
    Tuple2_sel1_array_of_signed_18_1 : array_of_signed_18(0 to 0);
  end record;
  type Tuple2_0 is record
    Tuple2_0_sel0_array_of_signed_18_0 : array_of_signed_18(0 to 49);
    Tuple2_0_sel1_array_of_signed_18_1 : array_of_signed_18(0 to 49);
  end record;
  type Tuple2_1 is record
    Tuple2_1_sel0_std_logic_vector_0 : std_logic_vector(0 downto 0);
    Tuple2_1_sel1_std_logic_vector_1 : std_logic_vector(17 downto 0);
  end record;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (p : Tuple2_2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2;
  function toSLV (value :  array_of_signed_18) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_18;
  function toSLV (p : Tuple2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2;
  function toSLV (p : Tuple2_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0;
  function toSLV (p : Tuple2_1) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1;
end;

package body mfir3_100_types is
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
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
  function toSLV (p : Tuple2_2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_2_sel0_std_logic_vector_0) & toSLV(p.Tuple2_2_sel1_std_logic_vector_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 4)),fromSLV(islv(5 to 35)));
  end;
  function toSLV (value :  array_of_signed_18) return std_logic_vector is
    alias ivalue    : array_of_signed_18(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 18);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 18) + 1 to i*18) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_18 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_signed_18(0 to slv'length / 18 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 18 to (i+1) * 18 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_sel0_array_of_signed_18_0) & toSLV(p.Tuple2_sel1_array_of_signed_18_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 1781)),fromSLV(islv(1782 to 1799)));
  end;
  function toSLV (p : Tuple2_0) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_0_sel0_array_of_signed_18_0) & toSLV(p.Tuple2_0_sel1_array_of_signed_18_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 899)),fromSLV(islv(900 to 1799)));
  end;
  function toSLV (p : Tuple2_1) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_1_sel0_std_logic_vector_0) & toSLV(p.Tuple2_1_sel1_std_logic_vector_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2_1 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 18)));
  end;
end;

