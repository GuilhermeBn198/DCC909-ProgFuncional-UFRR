import Text.Printf (printf)

belongs:: String -> [String] -> Bool
belongs x y = let toBool =  [z==x | z <- y] -- [True, False, True]
                  onlyEq =  [x|x<-toBool,x] -- [True, True, True]
                  in null onlyEq -- True or False

pertence::IO()
pertence= do arg1<-getLine::IO String -- arg 1
             arg2<-getLine::IO String -- arg 2
             let x = not $ belongs arg1 $ words arg2
             printf "%s\n" $ show x