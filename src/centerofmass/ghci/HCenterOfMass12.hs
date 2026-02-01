module HCenterOfMass12 where

import Image
import Data.List

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
-- Assignment 1, From grayscale to black and white
-----------------------------------------------------------------------------------------

-- Convert a grayscale image to a black and white image using a given threshold value.
thresholdIm :: (Num a, Ord a)
  => [[a]] -- list of list of values
  -> a     -- threshold value
  -> [[a]] -- list of list of values with updated value
thresholdIm img thr =
  [ [ if pixel >= thr then 1 else 0 | pixel <- row ] | row <- img ]
-- command used to test in ghci: wf lighthouseBW (thresholdIm image 128)

lightHouseBW :: FilePath
lightHouseBW = "../images/lightHouseBW.pgm"

-----------------------------------------------------------------------------------------
-- Assignment 2, Center of mass of rows and picture
-----------------------------------------------------------------------------------------

comRows :: [[Int]] -> Int
comRows image = y-1
  where
    y = div (sum cmy) (sum my)
    cmy = zipWith (*) [1..] my
    my = map sum image

com :: [[Int]] -> (Int, Int)
com image = (x, y)
  where
    y = comRows image
    x = comRows (transpose image)

imageWithCom :: [[Int]] -> Int -> [[Int]]
imageWithCom image = changePixelInImage image y x
  where
    (x, y) = com image

-----------------------------------------------------------------------------------------
-- Assignment 3 Center of mass of parts of the image, with and without borders
-----------------------------------------------------------------------------------------

comParts :: [[Int]] -> [[Int]]
comParts image = unblocks2D height processedBlocks
  where
    height = length image
    blocks = blocks2D 8 image
    processedBlocks = map processBlock blocks
    processBlock block =  if sum (map sum block) == 0
                          then changePixelInImage block 4 4 2
                          else imageWithCom block 2

    
comPartsWB :: [[Int]] -> [[Int]]
comPartsWB image = unblocks2D newHeight blocksWB
  where
    height = length image
    newHeight = height + (div height 8) * 2
    blocks = blocks2D 8 (comParts image)
    blocksWB = addBorders 2 blocks