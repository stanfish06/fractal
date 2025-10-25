module Draw where

import Codec.Picture
import Data.Word

-- Float between 0 and 1
type Gen = (Int -> Int -> Float)

drawGrid :: String -> Int -> Int -> Gen -> IO ()
drawGrid path width height gen = writePng path $ generateImage pixelRenderer width height
  where
    pixelRenderer x y =
      let v = floor (gen x y * 255) :: Word8
       in PixelRGB8 v v v
