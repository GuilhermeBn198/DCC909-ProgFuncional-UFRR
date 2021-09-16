rodarEsquerda :: Int -> [n] -> [n]
rodarEsquerda _ [] = []
rodarEsquerda n xs = zipWith const (drop n (cycle xs)) xs