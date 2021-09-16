sequencia:: Int -> [Int]
sequencia n = [x | y <- [1..n], x <- [y, -y]]