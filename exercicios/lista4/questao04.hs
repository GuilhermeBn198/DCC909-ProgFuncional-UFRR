import Data.List
compareWith::String->String->Bool
compareWith x y
    |length y /= length x = False
    |otherwise = let isElemEqual =  zipWith (==) x y
                     difValuesList = [item | item <- isElemEqual, (not item)]
                 in  null difValuesList

comparar::Int->Int->String
comparar n1 n2
    | length (show n1) >= length (show n2) = do if compareWith (show n1) (show n2) 
                                                   then "encaixa" 
                                                   else let n1tail=read(drop 1 (show n1))::Int
                                                        in comparar n1tail n2
    | otherwise = "nao encaixa"