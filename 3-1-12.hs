sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 xs ys zs = sum2 (sum2 xs ys) zs where
    sum2 (x:xs) (y:ys) = (x + y) : sum2 xs ys
    sum2 [] (y:ys) = y : sum2 [] ys
    sum2 (x:xs) [] = x : sum2 xs []
    sum2 _ _ = []
