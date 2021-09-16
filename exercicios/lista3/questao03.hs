import Text.Printf (printf)
nroOcorrencias:: Int -> [Int] -> Int
nroOcorrencias x y = let toBool =  [z==x | z <- y]
                         onlyEq =  [x|x<-toBool,x]
                         in if null onlyEq then 0 else length onlyEq