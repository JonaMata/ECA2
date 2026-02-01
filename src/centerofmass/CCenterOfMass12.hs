{-# LANGUAGE NoMonomorphismRestriction #-}
module CCenterOfMass12 where
import Clash.Prelude
import Axi
import Common
import ComAxisTb
import Data.Maybe
import qualified Data.List as L
import ImageData
-- import Debug.Trace

{-
Student information:
  Student 1
    lastname: Matarazzi
    student number: s2133202
  Student 2
    lastname: Liebe
    student number: s2506890
-}

-----------------------------------------------------------------------------------------
-- Assignment 4, Changing a pixel in a picture
-----------------------------------------------------------------------------------------

changePixelInImage 
  :: (KnownNat rows, KnownNat cols)
  => Vec rows (Vec cols Pixel) 
  -> Index rows 
  -> Index cols
  -> Pixel 
  -> Vec rows (Vec cols Pixel)
changePixelInImage image y x p = replace y newRow image where
  newRow = replace x p (image !! y)
  
thresholdIm :: (KnownNat rows, KnownNat cols) => Pixel -> Vec rows (Vec cols Pixel) -> Vec rows (Vec cols Pixel) -- flipped input types to follow the command syntax
thresholdIm thr img = map (map (\pixel -> if pixel >= thr then 1 else 0)) img

comRows :: (KnownNat rows, KnownNat cols, 1 <= rows) => Vec rows (Vec cols Pixel)  -> Index rows
comRows img 
  | mx == 0    = maxBound `shiftR` 1 -- same as div 2
  | otherwise  = fromIntegral(rmx `div` mx)
  where
    rowSums = map sum img
    mx = sum rowSums
    rmx = sum $ zipWith (*) (iterateI (+1) 0) rowSums -- iterateI is the clash way of doing [0..] apparently

com :: (KnownNat rows, KnownNat cols, 1 <= rows, 1 <= cols) => Vec rows (Vec cols Pixel)  -> (Index rows, Index cols)
com img = (row, col) where
  row = comRows img
  col = comRows (transpose img)

imageWithCom :: (KnownNat rows, KnownNat cols, 1 <= rows, 1 <= cols) => Vec rows (Vec cols Pixel) -> Pixel -> Vec rows (Vec cols Pixel)
imageWithCom img color = changePixelInImage img row col color where
  (row, col) = com img
 
-----------------------------------------------------------------------------------------
-- Assignment 5, Center of mass of parts of the image, with and without borders
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- Assignment 6, Axi streaming serial
-----------------------------------------------------------------------------------------

axisComSer state (s_axi, m_axis_tready) = (state', (m_axi, s_axis_tready))
  where
    state' = undefined
    m_axi = undefined
    s_axis_tready = undefined


mAxisComSer :: (HiddenClockResetEnable dom)
  => Signal dom (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)
  -> Signal dom (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
mAxisComSer mInp = undefined

-----------------------------------------------------------------------------------------
-- You can use the simulation function spsAxisComSerTb to print out all the iner stages of the states
-- spsAxisComSer :: [(Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)] -> String
-- spsAxisComSer inp = simPrintState axisComSer initState inp -- Same as mealy
--   where
--     initState = undefined

-- spsAxisComSerTb :: IO ()
-- spsAxisComSerTb = putStrLn $ spsAxisComSer mAxisComSerInp
-----------------------------------------------------------------------------------------

simMAxisComSerTb :: [(Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)]
simMAxisComSerTb = simulateN @System (L.length mAxisComSerInp) mAxisComSer mAxisComSerInp
simMAxisComSerTbPrint = mapM_ print $ L.zip [1..] simMAxisComSerTb
simMAxisComSerTbReport = L.filter (\(_,(m,_))-> isJust m) (L.zip [1..] simMAxisComSerTb)

-----------------------------------------------------------------------------------------
-- Assignment 7, Synthesize serial Axi
-----------------------------------------------------------------------------------------

{-# ANN synthAxisComSer
  (Synthesize
    { t_name   = "synthAxisComSer"
    , t_inputs =
      [ PortName "aclk"
      , PortName "nrst"
      , PortProduct ""
        [ PortProduct "s_axis"
          [ PortName "tvalid"
          , PortProduct ""
            [ PortName "tdata"
            , PortName "tlast"
            , PortName "tkeep" ]]
        , PortName "m_axis_tready" ]]
    , t_output = PortProduct ""
        [ PortProduct "m_axis"
          [ PortName "tvalid"
          , PortProduct ""
            [ PortName "tdata"
            , PortName "tlast"
            , PortName "tkeep" ]]
        , PortName "s_axis_tready" ]
    }) #-}
synthAxisComSer ::
     Clock System -- aclk
  -> Reset System -- nrst
  -> Signal System (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)
  -> Signal System (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
synthAxisComSer clk rst inp = exposeClockResetEnable mAxisComSer clk rst enableGen inp

-----------------------------------------------------------------------------------------
-- Assignment 8, Axi streaming parallel
-----------------------------------------------------------------------------------------

axisComPar state (s_axi, m_axis_tready) = (state', (m_axi, s_axis_tready))
  where
    state' = undefined
    m_axi = undefined
    s_axis_tready = undefined

mAxisComPar :: (HiddenClockResetEnable dom)
  => Signal dom (Maybe (Axi4Stream (Vec 16 (Unsigned 8)) (BitVector 16)), Bool)
  -> Signal dom (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
mAxisComPar mInp = undefined

-----------------------------------------------------------------------------------------
-- You can use the simulation function spsAxisComParTb to print out all the iner stages of the states
-- spsAxisComPar :: [(Maybe (Axi4Stream (Vec 16 (Unsigned 8)) (BitVector 16)), Bool)] -> String
-- spsAxisComPar inp = simPrintState axisComPar initState inp -- Same as mealy
--   where
--     initState = undefined

-- spsAxisComParTb :: IO ()
-- spsAxisComParTb = putStrLn $ spsAxisComPar mAxisComParInp
-----------------------------------------------------------------------------------------

simMAxisComParTb :: [(Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)]
simMAxisComParTb = simulateN @System (L.length mAxisComParInp) mAxisComPar mAxisComParInp
simMAxisComParTbPrint = mapM_ print $ L.zip [1..] simMAxisComParTb
simMAxisComParTbReport = L.filter (\(_,(m,_))-> isJust m) (L.zip [1..] simMAxisComParTb)

-----------------------------------------------------------------------------------------
-- Assignment 9, Synthesize parallel Axi
-----------------------------------------------------------------------------------------

{-# ANN synthAxisComPar
  (Synthesize
    { t_name   = "synthAxisComPar"
    , t_inputs =
      [ PortName "aclk"
      , PortName "nrst"
      , PortProduct ""
        [ PortProduct "s_axis"
          [ PortName "tvalid"
          , PortProduct ""
            [ PortName "tdata"
            , PortName "tlast"
            , PortName "tkeep" ]]
        , PortName "m_axis_tready" ]]
    , t_output = PortProduct ""
        [ PortProduct "m_axis"
          [ PortName "tvalid"
          , PortProduct ""
            [ PortName "tdata"
            , PortName "tlast"
            , PortName "tkeep" ]]
        , PortName "s_axis_tready" ]
    }) #-}
synthAxisComPar ::
     Clock System -- aclk
  -> Reset System -- nrst
  -> Signal System (Maybe (Axi4Stream (Vec 16 (Unsigned 8)) (BitVector 16)), Bool)
  -> Signal System (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
synthAxisComPar clk rst inp = exposeClockResetEnable mAxisComPar clk rst enableGen inp


