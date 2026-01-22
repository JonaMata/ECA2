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


-----------------------------------------------------------------------------------------
-- Assignment 3 Center of mass of parts of the image, with and without borders
-----------------------------------------------------------------------------------------

