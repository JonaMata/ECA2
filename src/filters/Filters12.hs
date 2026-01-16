{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore #-}
{-
Student information:
  Student 1
    lastname: Matarazzi
    student number: s2133202
  Student 2
    lastname: Liebe
    student number: s2506890
-}
module Filters12 where

import Clash.Prelude
import FilterCoefAndInput
import qualified Data.List as L

type Clk = Clock System
type Rst = Reset System
type Sig = Signal System

-- NOTE: synthesis annotated functions are at the bottom
-- comment and uncomment the functions for each assignment
-- it should not be necessary, but you may change the
-- definition of the synthesis annotated functions.

hs = (3:>5:>7:>11:>13:>17:>Nil)

-----------------------------------------------------------
-- Assignment 1
-- FIR1 N = 6
-----------------------------------------------------------



fir1_6 :: Vec 6 (Signed 8) -> Signed 8
fir1_6 xs = sum $ zipWith (*) hs xs

-----------------------------------------------------------
-- Assignment 2
-- FIR1 N = 100
-----------------------------------------------------------

fir1_100 :: Vec 100 (SFixed 5 13) -> SFixed 5 13
fir1_100 xs = sum $ zipWith (*) filterCoef xs

-----------------------------------------------------------
-- Assignment 3
-- FIR2 N = 6
-----------------------------------------------------------

fir2 :: Vec 6 (Signed 8) -> Signed 8 -> (Vec 6 (Signed 8), Signed 8)
fir2 state x = ((x:>(take d5 state), out))
  where
    out = sum $ zipWith (*) hs state

mfir2_6 :: HiddenClockResetEnable dom => Signal dom (Signed 8) -> Signal dom (Signed 8)
mfir2_6 x = mealy fir2 (repeat 0) x

simMfir2_6 = simulateN @System 20 mfir2_6 [1..20]

-----------------------------------------------------------
-- Assignment 4
-- FIR2 N = 100
-----------------------------------------------------------
fir2_100 :: Vec 100 (SFixed 5 13) -> SFixed 5 13 -> (Vec 100 (SFixed 5 13), SFixed 5 13)
fir2_100 state x = ((x:>(take d99 state), out))
  where
    out = sum $ zipWith (*) filterCoef state

mfir2_100 :: HiddenClockResetEnable dom => Signal dom (SFixed 5 13) -> Signal dom (SFixed 5 13)
mfir2_100 x = mealy fir2_100 (repeat 0) x

simMfir2_100 :: [SFixed 5 13]
simMfir2_100 = simulateN @System (L.length inputSignal) mfir2_100 inputSignal

-----------------------------------------------------------
-- Assignment 5
-- FIR3 N = 6
-----------------------------------------------------------

fir3 :: Vec 6 (Signed 8) -> Signed 8 -> (Vec 6 (Signed 8), Signed 8)
fir3 state x = (((x:>(take d5 state)), out))
  where
    out = sum $ zipWith (*) (take d3 hs) mirror_added_state
    mirror_added_state = zipWith (+) (take d3 state) (take d3 (reverse state))

mfir3_6 :: HiddenClockResetEnable dom => Signal dom (Signed 8) -> Signal dom (Signed 8)
mfir3_6 x = mealy fir3 (repeat 0) x

simMfir3_6 = simulateN @System 20 mfir3_6 [1..20]

-----------------------------------------------------------
-- Assignment 6
-- FIR3 N = 100
-----------------------------------------------------------

fir3_100 :: Vec 100 (SFixed 5 13) -> SFixed 5 13 -> (Vec 100 (SFixed 5 13), SFixed 5 13)
fir3_100 state x = (((x:>(take d99 state)), out))
  where
    out = sum $ zipWith (*) (take d50 filterCoef) mirror_added_state
    mirror_added_state = zipWith (+) (take d50 state) (take d50 (reverse state))

mfir3_100 :: HiddenClockResetEnable dom => Signal dom (SFixed 5 13) -> Signal dom (SFixed 5 13)
mfir3_100 = mealy fir3_100 (repeat 0)

simMfir3_100 = simulateN @System (L.length inputSignal) mfir3_100 inputSignal

-----------------------------------------------------------
-- Assignment 7
-- FIR3t N = 6
-----------------------------------------------------------

fir3t :: Vec 6 (Signed 8) -> Signed 8 -> (Vec 6 (Signed 8), Signed 8)
fir3t state x = (new_state, last state)
  where
    new_state = zipWith (+) ((0:>take d5 state)) (hs_map++(reverse hs_map))
    hs_map = map (x*) (take d3 hs)

mfir3t_6 :: HiddenClockResetEnable dom => Signal dom (Signed 8) -> Signal dom (Signed 8)
mfir3t_6 = mealy fir3t (repeat 0)

simMfir3t_6 = simulateN @System 20 mfir3t_6 [1..20]

-----------------------------------------------------------
-- Assignment 8
-- IIR
-----------------------------------------------------------

bs = (0.0623348 :> 0.1870044 :> 0.1870044 :> 0.0623348 :> Nil)
as = (0.9853304 :> -0.5929545 :> 0.1089457 :> Nil)

iir1 :: Vec 3 (SFixed 5 13) -> SFixed 5 13 -> (Vec 3 (SFixed 5 13), SFixed 5 13)
iir1 state x = (new_state, out)
  where
    out = state!!0+ b_side!!0
    a_side = map (out*) as
    b_side = map (x*) bs
    ab_sum = zipWith (+) (tail b_side) (a_side)
    new_state = zipWith (+) (ab_sum) ((tail state)++0:>Nil)

miir1 :: HiddenClockResetEnable dom => Signal dom (SFixed 5 13) -> Signal dom (SFixed 5 13)
miir1 = mealy iir1 (repeat 0)

simMiir1 = simulateN @System (L.length inp) miir1 inp
  where
    inp = 1:L.replicate 49 0

-----------------------------------------------------------
-- Assignment 9
-- IIR
-----------------------------------------------------------

iir2 :: Vec 3 (SFixed 5 13) -> SFixed 5 13 -> (Vec 3 (SFixed 5 13), SFixed 5 13)
iir2 state x = (new_state, out)
  where
    out = sum $ zipWith (*) bs (intermediate:>state)
    intermediate = x + (sum $ zipWith (*) as state)
    new_state = (intermediate:>(take d2 state))

miir2 :: HiddenClockResetEnable dom => Signal dom (SFixed 5 13) -> Signal dom (SFixed 5 13)
miir2 = mealy iir2 (repeat 0)

simMiir2 = simulateN @System (L.length inp) miir2 inp
  where
    inp = 1:L.replicate 49 0

-----------------------------------------------------------
-- topEntity's
-----------------------------------------------------------
{-
-- Assignment 1
{-# ANN synth_fir1_6
  (Synthesize
    { t_name   = "fir1_6"
    , t_inputs = [PortName "xs"]
    , t_output = PortName "o"
    }) #-}
-- synth_fir1_6 ::
synth_fir1_6 = fir1_6
-}
{-
-- Assignment 2
{-# ANN synth_fir1_100
  (Synthesize
    { t_name   = "fir1_100"
    , t_inputs = [PortName "xs"]
    , t_output = PortName "o"
    }) #-}
--synth_fir1_100 ::
synth_fir1_100 = fir1_100
-}
{-
-- Assignment 3
{-# ANN synth_mfir2_6
  (Synthesize
    { t_name   = "mfir2_6"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_mfir2_6 :: Clk -> Rst -> Sig (Signed 8) -> Sig (Signed 8)
synth_mfir2_6 clk rst = withClockResetEnable clk rst enableGen mfir2_6
-}
{-
-- Assignment 4
{-# ANN synth_mfir2_100
  (Synthesize
    { t_name   = "mfir2_100"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_mfir2_100 :: Clk -> Rst -> Sig (SFixed 5 13) -> Sig (SFixed 5 13)
synth_mfir2_100 clk rst = withClockResetEnable clk rst enableGen mfir2_100
-}
{-
-- Assignment 5
{-# ANN synth_mfir3_6
  (Synthesize
    { t_name   = "mfir3_6"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_mfir3_6 :: Clk -> Rst -> Sig (Signed 8) -> Sig (Signed 8)
synth_mfir3_6 clk rst = withClockResetEnable clk rst enableGen mfir3_6
-}
{-
-- Assignment 6
{-# ANN synth_mfir3_100
  (Synthesize
    { t_name   = "mfir3_100"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_mfir3_100 :: Clk -> Rst -> Sig (SFixed 5 13) -> Sig (SFixed 5 13)
synth_mfir3_100 clk rst = withClockResetEnable clk rst enableGen mfir3_100
-}
{-
-- Assignment 7
{-# ANN synth_mfir3t_6
  (Synthesize
    { t_name   = "mfir3t_6"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_mfir3t_6 :: Clk -> Rst -> Sig (Signed 8) -> Sig (Signed 8)
synth_mfir3t_6 clk rst = withClockResetEnable clk rst enableGen mfir3t_6
-}

-- Assignment 8
{-# ANN synth_miir1
  (Synthesize
    { t_name   = "miir1"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_miir1 :: Clk -> Rst -> Sig (SFixed 5 13) -> Sig (SFixed 5 13)
synth_miir1 clk rst = withClockResetEnable clk rst enableGen miir1

{-
-- Assignment 9
{-# ANN synth_miir2
  (Synthesize
    { t_name   = "miir2"
    , t_inputs = [PortName "clk", PortName "rst", PortName "x"]
    , t_output = PortName "o"
    }) #-}
synth_miir2 :: Clk -> Rst -> Sig (SFixed 5 13) -> Sig (SFixed 5 13)
synth_miir2 clk rst = withClockResetEnable clk rst enableGen miir2
-}

