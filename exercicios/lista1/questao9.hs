import Text.Printf

-- rem - retorna a divisão inteira dos argumentos
-- abs - retorna um valor absoluto de um número

isPositive :: Int -> String
isPositive n = if (n >= 0) then "POSITIVE" else "NEGATIVE"

isOdd :: Int -> String
isOdd n = if (rem (abs(n)) 2 == 1) then "ODD " else "EVEN "

myodd :: Integer -> Bool
myodd n = rem (abs(n)) 2 == 1

main :: IO ()
main = do a <- readLn :: IO Int
          if (a /= 0) then print((isOdd a) ++ (isPositive a)) else print("NULL")
          b <- readLn :: IO Int
          if (b /= 0) then print((isOdd b) ++ (isPositive b)) else print("NULL")
          c <- readLn :: IO Int
          if (c /= 0) then print((isOdd c) ++ (isPositive c)) else print("NULL")
          d <- readLn :: IO Int
          if (d /= 0) then print((isOdd d) ++ (isPositive d)) else print("NULL")