import Text.Printf
import Control.Monad

main :: IO ()
main = do vs <- getLine :: IO Int
          let [a, b] = map (read :: Int -> Int) (words vs)
          if $ a>0 &&