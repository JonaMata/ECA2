-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.mfir3t_6_types.all;

entity mfir3t_6 is
  port(-- clock
       clk : in mfir3t_6_types.clk_System;
       -- reset
       rst : in mfir3t_6_types.rst_System;
       x   : in signed(7 downto 0);
       o   : out signed(7 downto 0));
end;

architecture structural of mfir3t_6 is
  signal \c$ds_app_arg\  : mfir3t_6_types.array_of_signed_8(0 to 5) := mfir3t_6_types.array_of_signed_8'( to_signed(0,8)
                                 , to_signed(0,8)
                                 , to_signed(0,8)
                                 , to_signed(0,8)
                                 , to_signed(0,8)
                                 , to_signed(0,8) );
  signal \c$app_arg\     : mfir3t_6_types.array_of_signed_8(0 to 2);
  signal \c$app_arg_0\   : mfir3t_6_types.array_of_signed_8(0 to 5);
  signal hs_map          : mfir3t_6_types.array_of_signed_8(0 to 2);
  signal \c$app_arg_0_1\ : mfir3t_6_types.Tuple2;
  signal \c$vec1\        : mfir3t_6_types.array_of_signed_8(0 to 5);
  signal \c$vec2\        : mfir3t_6_types.array_of_signed_8(0 to 5);
  signal \c$vec\         : mfir3t_6_types.array_of_signed_8(0 to 2);

begin
  -- register begin
  cds_app_arg_register : process(clk,rst)
  begin
    if rst =  '1'  then
      \c$ds_app_arg\ <= mfir3t_6_types.array_of_signed_8'( to_signed(0,8)
                                   , to_signed(0,8)
                                   , to_signed(0,8)
                                   , to_signed(0,8)
                                   , to_signed(0,8)
                                   , to_signed(0,8) );
    elsif rising_edge(clk) then
      \c$ds_app_arg\ <= \c$app_arg_0\;
    end if;
  end process;
  -- register end

  o <=  \c$ds_app_arg\(\c$ds_app_arg\'high) ;

  -- reverse begin
  reverse_loop : for i in 0 to (3 - 1) generate
    \c$app_arg\(hs_map'high - i) <= hs_map(i);
  end generate;
  -- reverse end

  \c$app_arg_0_1\ <= (\c$ds_app_arg\(0 to 5-1),\c$ds_app_arg\(5 to \c$ds_app_arg\'high));

  \c$vec1\ <= mfir3t_6_types.array_of_signed_8'(signed'(to_signed(0,8)) & \c$app_arg_0_1\.Tuple2_sel0_array_of_signed_8_0);

  \c$vec2\ <= (mfir3t_6_types.array_of_signed_8'(mfir3t_6_types.array_of_signed_8'(hs_map) & mfir3t_6_types.array_of_signed_8'(\c$app_arg\)));

  -- zipWith begin
  zipWith : for i_0 in \c$app_arg_0\'range generate
  begin
    \c$app_arg_0\(i_0) <= \c$vec1\(i_0) + \c$vec2\(i_0);


  end generate;
  -- zipWith end

  \c$vec\ <= mfir3t_6_types.array_of_signed_8'( to_signed(3,8)
                                              , to_signed(5,8)
                                              , to_signed(7,8) );

  -- map begin
  r_map : for i_1 in hs_map'range generate
  begin
    hs_map_mult_0 : block
      signal hs_map_mult_full_0 : signed(8*2-1 downto 0);
    begin
      hs_map_mult_full_0 <= x * \c$vec\(i_1);
      hs_map(i_1) <= hs_map_mult_full_0(8-1 downto 0);
    end block;
  end generate;
  -- map end


end;

