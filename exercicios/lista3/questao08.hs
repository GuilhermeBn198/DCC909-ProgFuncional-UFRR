intersect :: Eq a => [a] -> [a] -> [a]
intersect [] _ = []
intersect (x:xs) l | x `elem` l = x : intersect xs l
                   | otherwise = intersect xs l