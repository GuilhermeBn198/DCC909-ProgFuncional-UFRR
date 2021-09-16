maior :: [Int] -> Int
maior [x] = x
maior (x:xs)
 | maior xs > x = maior xs
 | otherwise = x
