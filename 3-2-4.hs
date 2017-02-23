filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj a b [] = []
filterDisj a b (x:xs)
    | a x || b x = x : filterDisj a b xs
    | otherwise = filterDisj a b xs
