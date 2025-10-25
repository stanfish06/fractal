import Data.Complex
import Draw
import Grid
import Maps

inBound :: Complex Float -> Bool
inBound c = magnitude c <= 2.0

main = do
  let n_recur = 100
  let nx = 400
  let ny = 400
  let grid = rectangularGrid (-2, 0.5, nx) (-1.25, 1.25, ny)

  let values =
        map
          ( \(x, y) ->
              let val = mandelbrotQuad (x :+ y) n_recur
               in if inBound val then magnitude val / 2.0 else 1.0
          )
          grid
  let gen x y = values !! (y * nx + x)
  drawGrid "Mandelbrot_fractal.png" nx ny gen
  putStrLn ("check this: " ++ show (take 16 values))
