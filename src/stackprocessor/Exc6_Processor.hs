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
module Exc6_Processor where
-- The NOINLINE options are here because of synthesis later on.

import Clash.Prelude
import Clash.Signal
import qualified Exc2_2_Stack as Stack
import qualified Data.List as L
import Debug.Trace

type Value = Stack.Value

type RegisterFile = Vec 4 Value
type RegisterAddress = Unsigned 2

data Opcode = Mult | Add
    deriving (Show, Generic, NFDataX)

data Instr
  = Push Value
  | Calc Opcode
  | PushR RegisterAddress
  | Save RegisterAddress
  | Nop
  deriving (Show, Generic, NFDataX)

type State = (ProcState, RegisterFile)

data ProcState 
  = Calcing (Maybe Value) Opcode 
  | Saving RegisterAddress
  | Idle
  deriving (Show, Generic, NFDataX)


processor :: State -> (Instr, Value) -> (State, (Stack.Instr, Value))
processor (Idle, regs) (Nop, _) = ((Idle, regs), (Stack.Nop, head regs))
processor (Idle, regs) (Push v, _) = ((Idle, regs), (Stack.Push v, head regs))
processor (Idle, regs) (PushR addr, _) = ((Idle, regs), (Stack.Push (regs !! addr), head regs))
processor (Idle, regs) (Save addr, _) = ((Saving addr, regs), (Stack.Pop, head regs))
processor (Idle, regs) (Calc op, _) = ((Calcing Nothing op, regs), (Stack.Pop, head regs))
processor (Saving addr, regs) (_, v) = ((Idle, replace addr v regs), (Stack.Pop, head regs))
processor (Calcing Nothing op, regs) (_, v) = ((Calcing (Just v) op, regs), (Stack.Pop, head regs))
processor (Calcing (Just v) op, regs) (_, v2) = ((Idle, regs), (Stack.Push res, head regs))
  where
    res = case op of
      Mult -> v * v2
      Add  -> v + v2


{-# NOINLINE procBlock #-}
procBlock :: HiddenClockResetEnable dom
  => Signal dom (Instr, Value) -> Signal dom (Stack.Instr, Value)
procBlock = mealy processor (Idle, repeat 0)


{-# NOINLINE system #-}
system :: HiddenClockResetEnable dom
  => Signal dom Instr -> Signal dom Value
system instr = out
  where
    (stack_instr, out) = unbundle (procBlock (bundle (instr, mid)))
    mid = Stack.system stack_instr


{-# NOINLINE system' #-}
system' :: HiddenClockResetEnable dom
  => RegisterFile -> Signal dom Instr -> Signal dom Value
system' regs instr = undefined -- Add your implementation (6.2)





testSystem = simulateN @System len system inp
  where
    inp = [ Nop, Nop, PushR 0, Push 3, Calc Add, Nop, Nop, Save 1
          , Nop, PushR 2, Push 2, Calc Mult, Nop, Nop, Save 3, Nop
          , PushR 3, PushR 1, Calc Add, Nop, Nop, Save 0, Nop, Nop ]
    len = L.length inp


testSystem' = simulateN @System len (system' (1:>3:>5:>7:>Nil)) inp
  where
    inp = [ Nop, Nop, PushR 0, Push 3, Calc Mult, Nop, Nop, Save 0, Nop
          , PushR 0, PushR 1, Calc Add, Nop, Nop, Save 1, Nop
          , PushR 1, PushR 3, Calc Add, Nop, Nop, Save 3, Nop
          , PushR 2, PushR 3, Calc Add, Nop, Nop, Save 0, Nop, Nop]
    len = L.length inp

