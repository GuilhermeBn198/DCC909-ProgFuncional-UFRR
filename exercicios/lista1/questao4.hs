--module Main where
import Text.Printf ( printf )
 
main :: IO ()
main = do s1 <- readLn ::IO Int
          s2 <- readLn ::IO Double
          s3 <- readLn ::IO Double
          printf "NUMERO = %d\n" s1
          printf "SALARIO = U$ $.1f\n" $ s2*s3