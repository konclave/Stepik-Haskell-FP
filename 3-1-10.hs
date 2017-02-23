isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs 
    | xs == [] = True
    | length xs == 1 = True
    | otherwise = ys == zs where
        n = div (length xs) 2 
        ys = drop (length xs - n) xs
        zs = reverse $ take n xs
