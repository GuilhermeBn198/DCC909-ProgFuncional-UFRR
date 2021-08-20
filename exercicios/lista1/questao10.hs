import Text.Printf

letPositive :: Int -> Int
letPositive n = if (n >=0) then n else 0

sumArr :: [Int] -> Int
sumArr[] = 0
sumArr (a:x) = a + sumArr x


main :: IO ()
main = do a <- readLn :: IO Int
          b <- readLn :: IO Int
          c <- readLn :: IO Int
          d <- readLn :: IO Int
          e <- readLn :: IO Int
          f <- readLn :: IO Int
          let allPositives = map letPositive [a, b, c, d, e, f]
          print(sumArr allPositives)
          print $ sumArr allPositives / 6