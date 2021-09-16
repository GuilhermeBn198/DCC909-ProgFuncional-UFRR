import Text.Printf (printf)
unica_ocorrencia:: Int -> [Int] -> Bool
unica_ocorrencia x y = let toBool =  [z==x | z <- y]
                           onlyEq =  [x|x<-toBool,x]
                           in length onlyEq==1