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
module Exc3_2_Processor where

import Clash.Prelude
import Clash.Signal
import qualified Exc2_2_Stack as Stack

import qualified Data.List as L

type Value = Stack.Value

data Opcode = Mult | Add
  deriving (Show, Generic, NFDataX)

data Instr = Push Value | Calc Opcode | Nop
  deriving (Show, Generic, NFDataX)

data State = Calcing (Maybe Value) Opcode | Idle
  deriving (Show, Generic, NFDataX)

processor :: State -> (Instr, Value) -> (State, (Stack.Instr, Maybe Value))
processor Idle (Nop, _) = (Idle, (Stack.Nop, Nothing))
processor Idle (Push v, _) = (Idle, (Stack.Push v, Nothing))
processor Idle (Calc op, _) = (Calcing Nothing op, (Stack.Pop, Nothing))
processor (Calcing Nothing op) (_, v) = (Calcing (Just v) op, (Stack.Pop, Nothing))
processor (Calcing (Just v) Mult) (_, v2) = (Idle, (Stack.Push (v * v2), Just (v * v2)))
processor (Calcing (Just v) Add) (_, v2) = (Idle, (Stack.Push (v + v2), Just (v + v2)))



procBlock :: HiddenClockResetEnable dom
  => Signal dom (Instr, Value) -> Signal dom (Stack.Instr, Maybe Value)
procBlock = mealy processor Idle



system :: HiddenClockResetEnable dom
  => Signal dom Instr -> Signal dom (Maybe Value)
system instr = out
  where
    (stack_instr, out) = unbundle (procBlock (bundle (instr, mid)))
    mid = Stack.system stack_instr




testSystem = simulateN @System len system inp
  where
    inp = [Nop, Nop, Push 3, Push 6, Calc Add, Nop, Nop, Push 2, Calc Mult, Nop, Nop, Nop, Calc Mult, Nop, Nop]
    len = L.length inp
