module Grid (rectangularGrid) where

import Data.List

rectangularGrid :: (Double, Double, Int) -> (Double, Double, Int) -> [(Double, Double)]
rectangularGrid (xmin, xmax, nx) (ymin, ymax, ny) =
  let xStep = (xmax - xmin) / fromIntegral (nx - 1)
      yStep = (ymax - ymin) / fromIntegral (ny - 1)
   in [(xmin + xStep * fromIntegral (ix - 1), ymin + yStep * fromIntegral (iy - 1)) | iy <- [1 .. ny], ix <- [1 .. nx]]
