module Maps (mandelbrotQuad) where

import Data.Complex

-- Complex Float means complex with float real and imaginary
mandelbrotQuad :: Complex Float -> Int -> Complex Float
mandelbrotQuad c n = if n == 1 then 0.0 :+ 0.0 else mandelbrotQuad c (n - 1) ^ 2 + c
