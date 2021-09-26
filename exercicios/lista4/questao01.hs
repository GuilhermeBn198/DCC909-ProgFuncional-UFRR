import Text.Printf(printf)

contRockeiro:: Int->String->Int
contRockeiro numToSearch number = let found = [head(show(numToSearch)) == x|x <- number]
                                      onlyFound = [x | x <- found, x]
                                  in length onlyFound

questao1 val1 val2 = let lista = [val1..val2]
                         recur0 = sum [contRockeiro 0 (show x)|x<-lista]
                         recur1 = sum [contRockeiro 1 (show x)|x<-lista]
                         recur2 = sum [contRockeiro 2 (show x)|x<-lista]
                         recur3 = sum [contRockeiro 3 (show x)|x<-lista]
                         recur4 = sum [contRockeiro 4 (show x)|x<-lista]
                         recur5 = sum [contRockeiro 5 (show x)|x<-lista]
                         recur6 = sum [contRockeiro 6 (show x)|x<-lista]
                         recur7 = sum [contRockeiro 7 (show x)|x<-lista]
                         recur8 = sum [contRockeiro 8 (show x)|x<-lista]
                         recur9 = sum [contRockeiro 9 (show x)|x<-lista]
                     in [recur0,recur1,recur2,recur3,recur4,recur5,recur6,recur7,recur8,recur9]