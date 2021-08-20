import Text.Printf

letPositive :: Double -> Double
letPositive n = if n >=0 then n else 0

sumArr :: [Double] -> Double
sumArr[] = 0
sumArr (a:x) = a + sumArr x


main :: IO ()
main = do a <- readLn :: IO Double
          b <- readLn :: IO Double
          c <- readLn :: IO Double
          d <- readLn :: IO Double
          e <- readLn :: IO Double
          f <- readLn :: IO Double
          let allPositives = map letPositive [a, b, c, d, e, f]
          print(sumArr allPositives)
          print $ sumArr allPositives / 6