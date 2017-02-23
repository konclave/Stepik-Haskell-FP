squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes xs = concatMap (\ x -> [x^2, x^3]) xs
