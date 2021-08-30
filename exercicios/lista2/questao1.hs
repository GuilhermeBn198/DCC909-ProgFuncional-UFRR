import Text.Printf (printf)
import Data.List (reverse, sort)


isTriangle::[Float]->Bool
isTriangle x = x!!0 < (x!!1 + x!!2)

tipoTrianguloUm::[Float] -> String  
tipoTrianguloUm x = let ladoa = x!!0  
                        ladob = x!!1  
                        ladoc = x!!2  
                      in if ladoa * ladoa == ladob * ladob + ladoc * ladoc then "TRIANGULO RETANGULO"
                      else if ladoa * ladoa > ladob * ladob + ladoc * ladoc then "TRIANGULO OBTUSANGULO"
                      else "TRIANGULO ACUTANGULO"

tipoTrianguloDois::[Float]->String 
tipoTrianguloDois x = let ladoa = x !!0 
                          ladob = x !!1 
                          ladoc = x !!2 
                      in if ladoa == ladob && ladob == ladoc then "TRIANGULO EQUILATERO"
                      else if ladoa /= ladob && ladob /= ladoc && ladoa /= ladoc then "" 
                      else "TRIANGULO ISOCELES" 

ordDecrescente :: String->[Float]
ordDecrescente x = let ladoa = read (words x !!0)::Float 
                       ladob = read (words x !!1)::Float 
                       ladoc = read (words x !!2)::Float 
                       listSides = [ladoa, ladob, ladoc]
                   in reverse (sort listSides)


main :: IO()
main = do x <- getLine :: IO String
          let listaOrd = ordDecrescente x
          if not (isTriangle listaOrd) then printf "NAO FORMA TRIANGULO"
          else do
             print $ tipoTrianguloUm listaOrd
             print $ tipoTrianguloDois listaOrd 