evenOnly :: [a] -> [a]
evenOnly =  fst . foldl (\(xs,idx) x -> if odd idx then (xs ++ [x], idx + 1) else (xs, idx + 1)) ([],0)
