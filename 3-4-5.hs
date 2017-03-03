lengthList :: [a] -> Int
lengthList = foldr (\x l -> l + 1) 0
