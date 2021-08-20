module Main where
 
main :: IO ()
main = do ia <- readLn ::IO Double
          ib <- readLn ::IO Double
          ic <- readLn ::IO Double
          putStr "Area do triangulo: "
          print (ia * ic / 2)
          putStr "Area do circulo de raio C: "
          print (3.14159 * ic * ic)
          putStr "Area do trapezio: "
          print ((ia + ib) *  (ic / 2))
          putStr "Area do quadrado: "
          print (ib * ib)
          putStr "Area do retangulo: "
          print (ia * ib)
