import Numeric (showHex, showIntAtBase)
import Data.Char (intToDigit)
import Text.Printf (printf)

bintodec :: Integral i => i -> i
bintodec 0 = 0
bintodec i = 2 * bintodec (div i 10) + (mod i 10)

hexChar :: Char -> Integer
hexChar ch
    | ch == '0' = 0
    | ch == '1' = 1
    | ch == '2' = 2
    | ch == '3' = 3
    | ch == '4' = 4
    | ch == '5' = 5
    | ch == '6' = 6
    | ch == '7' = 7
    | ch == '8' = 8
    | ch == '9' = 9
    | ch == 'A' = 10
    | ch == 'B' = 11
    | ch == 'C' = 12
    | ch == 'D' = 13
    | ch == 'E' = 14
    | ch == 'F' = 15
    | ch == 'a' = 10
    | ch == 'b' = 11
    | ch == 'c' = 12
    | ch == 'd' = 13
    | ch == 'e' = 14
    | ch == 'f' = 15
    | otherwise     = 0

parseHex :: String -> Integer
parseHex [] = 0
parseHex hxStr = hexChar (last hxStr) + (16 * parseHex (init hxStr))

converter:: String -> String -> [String]
converter x y --["valor dec","valor hex","dec","hex"]
    |y == "bin" = [(show (bintodec (read x::Int))), (showHex (bintodec (read x::Int))("")),"dec","hex"] --Num em Dec/Hex
    |y == "dec" = [(showHex (( read x::Int)) ("")), showIntAtBase (2) intToDigit (read x::Int) (""),"hex","bin"] --Num em Hex/Bin
    |y == "hex" = [show(parseHex x),showIntAtBase (2) intToDigit (parseHex x) (""),"dec","bin"]
        
main::IO()
main = do arg1<-getLine::IO String
          pinga (read(arg1)::Int)
          printf ""

pinga 0 = do printf ""
pinga x = do pinga (x-1)
             arg1<-getLine::IO String
             let y = converter (head(words arg1)) (words arg1 !!1)
             printf"Caso %d:\n" x
             printf "%s %s\n" (y!!0) (y!!2)
             printf "%s %s\n" (y!!1) (y!!3)
             printf"\n" 