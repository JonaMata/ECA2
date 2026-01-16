-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.fir1_6_types.all;

entity fir1_6 is
  port(xs : in std_logic_vector(47 downto 0);
       o  : out signed(7 downto 0));
end;

architecture structural of fir1_6 is
  signal wild     : fir1_6_types.array_of_signed_8(0 to 5);
  signal xs_0     : fir1_6_types.array_of_signed_8(0 to 5);
  signal \c$vec1\ : fir1_6_types.array_of_signed_8(0 to 5);

begin
  xs_0 <= fir1_6_types.array_of_signed_8'(fir1_6_types.fromSLV(xs));

  \c$vec1\ <= fir1_6_types.array_of_signed_8'( to_signed(3,8)
                                             , to_signed(5,8)
                                             , to_signed(7,8)
                                             , to_signed(11,8)
                                             , to_signed(13,8)
                                             , to_signed(17,8) );

  -- zipWith begin
  zipWith : for i in wild'range generate
  begin
    wild_mult_0 : block
      signal wild_mult_full_0 : signed(8*2-1 downto 0);
    begin
      wild_mult_full_0 <= \c$vec1\(i) * xs_0(i);
      wild(i) <= wild_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- zipWith end

  fold : block
    signal vec     : fir1_6_types.array_of_signed_8(0 to 5);
    signal acc_3_0 : signed(7 downto 0);
    signal acc_1   : signed(7 downto 0);
    signal acc_2   : signed(7 downto 0);
    signal acc_3   : signed(7 downto 0);
    signal acc_4   : signed(7 downto 0);
    signal acc_5   : signed(7 downto 0);
    signal acc_6   : signed(7 downto 0);
    signal acc_1_0 : signed(7 downto 0);
    signal acc_1_1 : signed(7 downto 0);
    signal acc_2_0 : signed(7 downto 0);
    signal acc_1_2 : signed(7 downto 0);
  begin
    o <= acc_3_0;

    vec <= wild;

    acc_1 <= vec(0);

    acc_2 <= vec(1);

    acc_3 <= vec(2);

    acc_4 <= vec(3);

    acc_5 <= vec(4);

    acc_6 <= vec(5);

    acc_1_0 <= acc_1 + acc_2;



    acc_1_1 <= acc_3 + acc_4;



    acc_1_2 <= acc_5 + acc_6;



    acc_2_0 <= acc_1_0 + acc_1_1;



    acc_3_0 <= acc_2_0 + acc_1_2;




  end block;


end;

