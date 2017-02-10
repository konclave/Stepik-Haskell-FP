sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (a, b) where
    a = sum $ digs $ abs $ x
    b = countDigs x
    countDigs x | x == 0 = 1
                | otherwise = toInteger $ length $ digs $ abs $ x
    digs 0 = []
    digs x = digs (x `div` 10) ++ [x `mod` 10]
