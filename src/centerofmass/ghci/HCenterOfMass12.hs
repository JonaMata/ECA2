module HCenterOfMass12 where

import Prelude
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
thresholdIm :: [[Int]] -> Int -> [[Int]]
thresholdIm img thr = [ [ if pixel >= thr then 1 else 0 | pixel <- row ] | row <- img ]
-- command used to test in ghci: wf lightHouseBW (thresholdIm image 128)

lightHouseBW :: FilePath
lightHouseBW = "./src/centerofmass/images/lightHouseBW.pgm"

-----------------------------------------------------------------------------------------
-- Assignment 2, Center of mass of rows and picture
-----------------------------------------------------------------------------------------
comRows :: [[Int]] -> Int
comRows img 
  | mx == 0    = length img `div` 2
  | otherwise  = rmx `div` mx
  where
  rowSums = map sum img -- from now on I will use sum instead of foldl (+) 0 xs
  mx = sum rowSums
  rmx = sum [ i * rs | (i, rs) <- zip [0..] rowSums ]

com :: [[Int]] -> (Int, Int)
com img = (row, col) where
  row = comRows img
  col = comRows (transpose img) 

imageWithCom :: [[Int]] -> Int -> [[Int]]
imageWithCom img color = changePixelInImage img row col color where
  (row, col) = com img

lightHouseBWCOM :: FilePath
lightHouseBWCOM = "./src/centerofmass/images/lightHouseBWCOM.pgm"
-- commands used to test in ghci: 
-- wf lightHouseBWCOM (imageWithCom (thresholdIm image 128) 2)
-- com (thresholdIm image 128)

-----------------------------------------------------------------------------------------
-- Assignment 3 Center of mass of parts of the image, with and without borders
-----------------------------------------------------------------------------------------
comParts :: [[Int]] -> [[Int]]
comParts img = unblocks2D 128 editedBlocks where
  listOfBlocks = blocks2D 8 img
  editedBlocks = map (`imageWithCom` 2) listOfBlocks

comPartsWB :: [[Int]] -> [[Int]]
comPartsWB img = unblocks2D (128 + 32) borderBlocks where
  listOfBlocks = blocks2D 8 img
  comBlocks = map (`imageWithCom` 2) listOfBlocks
  borderBlocks = addBorders 2 comBlocks

lightHouseBWCOMBlocks :: FilePath
lightHouseBWCOMBlocks = "./src/centerofmass/images/lightHouseBWCOMBlocks.pgm"

lightHouseBWCOMBlocksWithBorders :: FilePath
lightHouseBWCOMBlocksWithBorders = "./src/centerofmass/images/lightHouseBWCOMBlocksWithBorders.pgm"

-- commands used to test in ghci: 
-- wf lightHouseBWCOMBlocks (comParts (thresholdIm image 128))
-- wf lightHouseBWCOMBlocksWithBorders (comPartsWB (thresholdIm image 128))