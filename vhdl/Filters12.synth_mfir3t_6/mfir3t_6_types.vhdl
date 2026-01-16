library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package mfir3t_6_types is
  subtype clk_System is std_logic;
  subtype rst_System is std_logic;

  type array_of_signed_8 is array (integer range <>) of signed(7 downto 0);
  type Tuple2 is record
    Tuple2_sel0_array_of_signed_8_0 : array_of_signed_8(0 to 4);
    Tuple2_sel1_array_of_signed_8_1 : array_of_signed_8(0 to 0);
  end record;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (value :  array_of_signed_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_8;
  function toSLV (p : Tuple2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tuple2;
end;

package body mfir3t_6_types is
  function toSLV (sl : in std_logic) return std_logic_vector is
  begin
    return std_logic_vector'(0 => sl);
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic is
    alias islv : std_logic_vector (0 to slv'length - 1) is slv;
  begin
    return islv(0);
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
  function toSLV (value :  array_of_signed_8) return std_logic_vector is
    alias ivalue    : array_of_signed_8(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 8);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 8) + 1 to i*8) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return array_of_signed_8 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : array_of_signed_8(0 to slv'length / 8 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 8 to (i+1) * 8 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : Tuple2) return std_logic_vector is
  begin
    return (toSLV(p.Tuple2_sel0_array_of_signed_8_0) & toSLV(p.Tuple2_sel1_array_of_signed_8_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tuple2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 39)),fromSLV(islv(40 to 47)));
  end;
end;

