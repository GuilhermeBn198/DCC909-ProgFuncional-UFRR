import Text.Printf
--decidequad :: Integer 

main :: IO ()
main = do vs <- getLine :: IO String
          let [a, b] = map (read :: String -> Int) (words vs)
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