import Numeric (showHex, showIntAtBase)
import Data.Char (intToDigit)
 --lembrando que os numeros estão em string, logo no console deve-se ter "" entre eles
 
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
converter x y
    |y == "bin" = [(show (bintodec (read x::Int))), (showHex (bintodec (read x::Int))(""))]--Num em Dec/Hex
    |y == "dec" = [(showHex (( read x::Int)) ("")), showIntAtBase (2) intToDigit (read x::Int) ("")]--Num em Hex/Bin
    |y == "hex" = [show(parseHex x),showIntAtBase (2) intToDigit (parseHex x) ("")]