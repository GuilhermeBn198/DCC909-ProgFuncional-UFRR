--module Main where
import Text.Printf

main :: IO ()
main = do putStrLn "Digite um numero: "
          s1 <- readLn ::IO Double
          putStrLn "Digite um segundo numero: "
          s2 <- readLn ::IO Double
          putStrLn "Digite outro numero: "
          s3 <- readLn ::IO Double
          printf "MEDIA DOS NUMEROS= %f\n" (((s1*2) + (s2*3) + (s3*5))/10)
