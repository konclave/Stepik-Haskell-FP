fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == (-1) = 1
            | n == (-2) = (-1)
            | n > 0 = helper 1 1 (n - 1)
            | otherwise = helper 1 1 (n + 1)

helper acc1 acc2 n | n == 1 = acc1
		   | n == (-1) = acc1
		   | n > 0 = helper (acc1 + acc2) acc1 (n - 1)
                   | n < 0 = (-1) ^ (- n) * abs (helper (acc1 + acc2) acc1 (n + 1))
