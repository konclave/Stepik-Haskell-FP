doubleFact :: Integer -> Integer
doubleFact (-1) = 1
doubleFact 0 = 1
doubleFact n = n * doubleFact (n - 2)
