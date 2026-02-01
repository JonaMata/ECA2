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
type StateComSer = ((Vec 8 (Vec 8 (Signed 32)), Unsigned 8), Maybe (Unsigned 4, Unsigned 4))

-- data StateComSer =
--   Receiving (Vec 8 (Vec 8 (Signed 32))) (Index 8, Index 8) |
--   Sending (Unsigned 4, Unsigned 4)
--   deriving (Show, Generic, NFDataX)

{-# NOINLINE axisComSer #-}
axisComSer :: StateComSer -> (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool) -> (StateComSer, (Maybe ( Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool))
axisComSer state (s_axi, m_axis_tready) = (state', (m_axi, s_axis_tready))
  where
    state' = (imgBuf', send')
    imgBuf' = case (state, handshake) of
      (((imgBuf, i), _), True) ->
        (replace (div i 8) (replace (mod i 8) s_axi_tdata (imgBuf!!div i 8)) imgBuf,
          if s_axi_tlast then 0 else mod (i+1) 64)
      ((cur, _), _) -> cur
    send' = case (state, m_axis_tready, s_axi_tlast) of
      ((_, Just _), True, _) -> Nothing
      (((imgBuf, _), Nothing), True, True) -> Just coords
        where
          thrImg = thresholdIm (fromIntegral threshold) imgBuf
          coords = if sum (map sum thrImg) == 0 then
            (3,3)
          else
            (\(y, x) -> (fromIntegral y, fromIntegral x)) (com thrImg)
      ((_, cur), _, _) -> cur
    m_axi = case send' of
      Just coords -> Just (Axi4Stream coords True 0b1)
      _           -> Nothing
    s_axis_tready = case (send', s_axi_tlast, m_axis_tready) of
      (Just _, True, False)    -> False
      _            -> True
    handshake = case (s_axi, s_axis_tready) of
      (Just _, True) -> True
      _              -> False
    (s_axi_tdata, s_axi_tlast, _) = case s_axi of
      Just x -> (tData x, tLast x, tKeep x)
      _   -> (0, False, 0)


{-# NOINLINE mAxisComSer #-}
mAxisComSer :: (HiddenClockResetEnable dom)
  => Signal dom (Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)
  -> Signal dom (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
mAxisComSer mInp = mealy axisComSer initState mInp
  where
    initState = ((repeat (repeat 0), 0), Nothing)

-----------------------------------------------------------------------------------------
-- You can use the simulation function spsAxisComSerTb to print out all the iner stages of the states
spsAxisComSer :: [(Maybe (Axi4Stream (Signed 32) (BitVector 4)), Bool)] -> String
spsAxisComSer inp = simPrintState axisComSer initState inp -- Same as mealy
  where
    initState = ((repeat (repeat 0), 0), Nothing)

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

type StateComPar = ((Vec 64 (Unsigned 8), Unsigned 8), Maybe (Unsigned 4, Unsigned 4))

axisComPar :: StateComPar 
           -> (Maybe (Axi4Stream (Vec 16 (Unsigned 8)) (BitVector 16)), Bool) 
           -> (StateComPar, (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool))
axisComPar state (s_axi, m_axis_tready) = (nextState, (m_axis, s_axis_tready))
  where
    ((imgBuf, count), sendBuf) = state
    
    s_axi_tdata = maybe (repeat 0) tData s_axi
    s_axi_tlast = maybe False tLast s_axi
    s_axi_tvalid = isJust s_axi
    s_axis_tready = isNothing sendBuf || m_axis_tready
    handshake = s_axi_tvalid && s_axis_tready

    (nextBuf, nextCount) = if handshake 
      then (replaceSlice count s_axi_tdata imgBuf, if s_axi_tlast then 0 else count + 16)
      else (imgBuf, count)

    nextSendBuf = if handshake && s_axi_tlast
      then Just calculateCom
      else if m_axis_tready then Nothing else sendBuf
      where
        grid = unconcat d8 (map fromIntegral nextBuf)

        thrImg = thresholdIm (fromIntegral threshold) grid
        calculateCom = if sum (map sum thrImg) == 0 
                       then (3, 3) 
                       else (\(y, x) -> (fromIntegral y, fromIntegral x)) (com thrImg)

    nextState = ((nextBuf, nextCount), nextSendBuf)

    m_axis = case sendBuf of
      Just coords -> Just (Axi4Stream coords True 0b1)
      Nothing     -> Nothing

replaceSlice :: (KnownNat n, KnownNat m) => Unsigned 8 -> Vec m a -> Vec n a -> Vec n a
replaceSlice offset src dest = 
  let indices = iterateI (+1) (fromIntegral offset)
  in  foldl (\acc (i, val) -> replace i val acc) dest (zip indices src)

{-# NOINLINE mAxisComPar #-}
mAxisComPar :: (HiddenClockResetEnable dom)
  => Signal dom (Maybe (Axi4Stream (Vec 16 (Unsigned 8)) (BitVector 16)), Bool)
  -> Signal dom (Maybe (Axi4Stream (Unsigned 4, Unsigned 4) (BitVector 1)), Bool)
mAxisComPar mInp = mealy axisComPar initState mInp
  where
    initState = ((repeat 0, 0), Nothing)

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


