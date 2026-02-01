-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComSer_types.all;

entity CCenterOfMass12_synthAxisComSer_com is
  port(img    : in synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
       result : out synthAxisComSer_types.Tuple2);
end;

architecture structural of CCenterOfMass12_synthAxisComSer_com is
  signal \c$app_arg\   : signed(31 downto 0);
  signal \c$app_arg_0\ : synthAxisComSer_types.array_of_array_of_8_signed_32(0 to 7);
  signal \c$app_arg_1\ : signed(31 downto 0);

begin
  CCenterOfMass12_synthAxisComSer_comRows_capp_arg : entity CCenterOfMass12_synthAxisComSer_comRows
    port map
      ( result => \c$app_arg\
      , eta    => \c$app_arg_0\ );

  -- transpose begin
  transpose_outer : for row_index in 0 to (8 - 1) generate
    transpose_inner : for col_index in \c$app_arg_0\'range generate
      \c$app_arg_0\(col_index)(row_index) <= img(row_index)(col_index);
    end generate;
  end generate;
  -- transpose end

  CCenterOfMass12_synthAxisComSer_comRows_capp_arg_1 : entity CCenterOfMass12_synthAxisComSer_comRows
    port map
      (result => \c$app_arg_1\, eta    => img);

  result <= ( Tuple2_sel0_signed_0 => \c$app_arg_1\
            , Tuple2_sel1_signed_1 => \c$app_arg\ );


end;

