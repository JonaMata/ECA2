-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.synthAxisComPar_types.all;

entity CCenterOfMass12_synthAxisComPar_thresholdIm is
  port(eta1   : in synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7);
       result : out synthAxisComPar_types.array_of_array_of_8_unsigned_8(0 to 7));
end;

architecture structural of CCenterOfMass12_synthAxisComPar_thresholdIm is


begin
  -- map begin
  r_map_0 : for i_0 in result'range generate
  begin
    -- map begin
    r_map_1 : for i_1 in result(i_0)'range generate
    begin
      selection_0 : block
          signal result_0             : unsigned(7 downto 0);
          signal result_selection_res : boolean;
        begin
          result(i_0)(i_1) <= result_0;

          result_selection_res <= eta1(i_0)(i_1) >= to_unsigned(128,8);

          result_0 <= to_unsigned(1,8) when result_selection_res else
                      to_unsigned(0,8);


        end block;
    end generate;
    -- map end
  end generate;
  -- map end


end;

