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
module Exc2_2_Stack where
-- The NOINLINE options are there because of synthesis later on.

import Clash.Prelude
import Clash.Signal

import qualified Data.List as L

type Address = Unsigned 3
type Value = SFixed 8 8

data Instr = Push Value | Nop | Pop
  deriving (Show, Generic, NFDataX)

type State = (Address) -- the stack pointer

type Output = (Address, Maybe (Address, Value))

stackController :: State -> Instr  -> (State, Output)
stackController sp Nop = (sp, (sp, Nothing))
stackController sp (Push v) = (sp + 1, (sp, Just (sp, v)))
stackController sp Pop = (sp - 1, (sp - 1, Nothing))


{-# NOINLINE stackBlock #-}
stackBlock :: HiddenClockResetEnable dom
  => Signal dom Instr -> Signal dom Output
stackBlock = mealy stackController 0


{-# NOINLINE blockRAMblock #-}
blockRAMblock :: HiddenClockResetEnable dom
  => Signal dom Address -> Signal dom (Maybe (Address, Value)) -> Signal dom Value
blockRAMblock = blockRam $ 0:>0:>0:>0:>0:>0:>0:>0:>Nil


{-# NOINLINE system #-}
system :: HiddenClockResetEnable dom
  => Signal dom Instr -> Signal dom Value
system instr = blockRAMblock read write
  where (read, write) = unbundle (stackBlock instr)


testStackBlock = mapM_ print $ simulateN @System len stackBlock inp
  where
    inp = [Nop, Nop, Push 10, Push 11, Push 12, Nop, Nop, Nop, Nop, Push 1, Nop]
    len = L.length inp

testSystem = mapM_ print $ simulateN @System len system inp
  where
    inp = [Nop, Nop, Push 10, Push 11, Push 12, Pop, Pop, Pop, Nop, Nop, Push 1, Pop, Pop]
    len = L.length inp
