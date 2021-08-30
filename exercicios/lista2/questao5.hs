import Text.Printf

main :: IO ()
main = do linha1 <- getLine :: IO String
          linha2 <- getLine :: IO String
          let [ codigo1, numero1, valor1 ] = map ( read :: String -> Int ) $ words linha1
          let [ codigo2, numero2, valor2 ] = map ( read :: String -> Int ) $ words linha2
          printf "Total a pagar: %d\n" $ numero1 * valor1 + numero2 * valor2