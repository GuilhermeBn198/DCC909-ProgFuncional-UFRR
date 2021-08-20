import Text.Printf ( printf )
 
main :: IO ()
main = do ix1 <- readLn ::IO Double
          iy1 <- readLn ::IO Double
          ix2 <- readLn ::IO Double
          iy2 <- readLn ::IO Double
          printf "%.2f\n" $ sqrt ((ix2-ix1)*(ix2-ix1)+(iy2-iy1)*(iy2-iy1))