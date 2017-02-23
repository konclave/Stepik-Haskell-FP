qsort :: Ord a => [a] -> [a]

qsort [] = []  
qsort (x:xs) = qsort [a | a <- xs, a <= x] ++ [x] ++ qsort [a | a <- xs, a > x]
