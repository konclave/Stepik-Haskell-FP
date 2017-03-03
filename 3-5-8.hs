meanList :: [Double] -> Double
meanList = (\(s,p) -> s / p) . foldr (\x (s,l) -> (s+x, l+1)) (0,0)
