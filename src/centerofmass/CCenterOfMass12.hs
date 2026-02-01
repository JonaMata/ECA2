{-# LANGUAGE NoMonomorphismRestriction #-}
module CCenterOfMass12 where
import Clash.Prelude
import Axi
import Common
import ComAxisTb
import Data.Maybe
import qualified Data.List as L
import ImageData()
-- import Debug.Trace

-- Student information:
--  Student 1
--    lastname:
--    student number:
--  Student 2
--    lastname:
--    student number:


-----------------------------------------------------------------------------------------
-- Assignment 4, Changing a pixel in a picture
-----------------------------------------------------------------------------------------

{-# NOINLINE changePixelInImage #-}
changePixelInImage :: (KnownNat n, KnownNat m, Integral a) => Vec n (Vec m a) -> Index n -> Index m -> a -> Vec n (Vec m a)
changePixelInImage img y x color = replace y newRow img
  where
    newRow = replace x color (img!!y)

{-# NOINLINE thresholdIm #-}
thresholdIm :: (KnownNat n, KnownNat m, Integral a) => a -> Vec n (Vec m a) -> Vec n (Vec m a)
thresholdIm thr = map (map (\pixel -> if pixel >= thr then 1 else 0))


{-# NOINLINE comRows #-}
comRows :: (KnownNat n, KnownNat m, Integral a) => Vec n (Vec m a) -> a
comRows img = y-1
  where
    y = div (sum cmy) (sum my)
    cmy = zipWith (*) (iterateI (+1) 1) my
    my = map sum img

{-# NOINLINE com #-}
com :: (KnownNat n, KnownNat m, Integral a) => Vec n (Vec m a) -> (a, a)
com img = (y, x)
  where
    y = comRows img
    x = comRows (transpose img)

imageWithCom :: (KnownNat n, KnownNat m, Integral a) => Vec n (Vec m a) -> a -> Vec n (Vec m a)
imageWithCom img = changePixelInImage img (fromIntegral y) (fromIntegral x)
  where
    (y, x) = com img

-----------------------------------------------------------------------------------------
-- Assignment 5, Center of mass of parts of the image, with and without borders
-----------------------------------------------------------------------------------------

comParts img = unblocks2D d128 processedBlocks
  where
    blocks = blocks2D d8 img
    processedBlocks = map processBlock blocks
    processBlock block =  if sum (map sum block) == 0
                          then changePixelInImage block 4 4 2
                          else imageWithCom block 2

    
comPartsWB img = unblocks2D d160 blocksWB
  where
    height = length img
    newHeight = height + (div height 8) * 2
    blocks = blocks2D d8 (comParts img)
    blocksWB = addBorders 2 blocks

-----------------------------------------------------------------------------------------
-- Assignment 6, Axi streaming serial
-----------------------------------------------------------------------------------------
-- type StateComSer = (
--   imgBuf :: Vec 128 (Vec 128 (Signed 32)),
--   outBuf :: (Unsigned 4, Unsigned 4)
--   )

data StateComSer =
  Receiving (Vec 8 (Vec 8 (Signed 32))) (Index 8, Index 8) |
  Sending (Unsigned 4, Unsigned 4)
  deriving (Show, Generic, NFDataX)

{-# NOINLINE axisComSer #-}
axisComSer :: StateComSer -> (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool) -> (StateComSer, (Maybe ( Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool))
axisComSer state (s_axi, m_axis_tready) = (state', (m_axi, s_axis_tready))
  where
    state' = case (state, handshake, m_axis_tready) of
      (Receiving imgBuf (y, x), True, _) ->
        let imgBuf' = replace y (replace x s_axi_tdata (imgBuf!!y)) imgBuf
        in
        if s_axi_tlast then
          let thrImg = thresholdIm (fromIntegral threshold) imgBuf'
          in
          if sum (map sum thrImg) == 0 then
            Sending (4,4)
          else
          Sending ((\(y, x) -> (fromIntegral y, fromIntegral x)) (com $ thrImg))
        else
          Receiving imgBuf' (nextY, nextX)
            where
              nextX = if x == 7 then 0 else x + 1
              nextY = if x == 7 then y + 1 else y
      (Sending _, _, True) ->
        Receiving (repeat (repeat 0)) (0,0)
      _ -> state
    m_axi = case (m_axis_tready, state') of
      (True, Sending out) -> Just (Axi4Stream {
        tData = out,
        tLast = True,
        tKeep = 1
      })
      _ -> Nothing
    s_axis_tready = case state of
      Receiving _ _ -> True
      _             -> False
    handshake = case (s_axi, s_axis_tready) of
      (Just _, True) -> True
      _              -> False
    (s_axi_tdata, s_axi_tlast, s_axi_tkeep) = case s_axi of
      Just x -> (tData x, tLast x, tKeep x)
      _   -> (0, False, 0)


{-# NOINLINE mAxisComSer #-}
mAxisComSer :: (HiddenClockResetEnable dom)
  => Signal dom (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)
  -> Signal dom (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
mAxisComSer mInp = mealy axisComSer initState mInp
  where
    initState = Receiving (repeat (repeat 0)) (0,0)

-----------------------------------------------------------------------------------------
-- You can use the simulation function spsAxisComSerTb to print out all the iner stages of the states
spsAxisComSer :: [(Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)] -> String
spsAxisComSer inp = simPrintState axisComSer initState inp -- Same as mealy
  where
    initState = Receiving (repeat (repeat 0)) (0,0)

spsAxisComSerTb :: IO ()
spsAxisComSerTb = putStrLn $ spsAxisComSer mAxisComSerInp
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


