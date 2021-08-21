import Text.Printf
readInts :: IO [Int]
readInts = fmap (map read.words) getLine

main :: IO ()
main = do vs <- readInts
          let [a, b] = map (read :: Int -> Int) (words vs)
          if (a>0 && b>0)
                  then putStrLn "primeiro quadrante"
                  else if (a<0 && b>0)
                          then putStrLn "segundo quadrante"
                          else if (a<0 && b<0)
                                  then putStrLn "terceiro quadrante"
                                  else if (a>0 && b<0)
                                          then putStrLn "quarto quadrante"
                                          else if (a==0 || b==0)
                                                  then putStrLn ""
                                                  else putStrLn ""