module Maps (mandelbrotQuad) where

import Data.Complex

-- Complex Double means complex with float real and imaginary
mandelbrotQuad :: Complex Double -> Int -> Complex Double
mandelbrotQuad c n = if n == 1 then 0 else mandelbrotQuad c (n - 1) ^ 2 + c
