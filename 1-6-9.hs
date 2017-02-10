integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b =  sign * h * ((f a + f b) / 2 + funcSum f k h (n - 1)) where
    n = 1000
    h = if b > a then (b - a) / n else (a - b) / n
    k = if b > a then a else b
    sign = if b > a then 1 else (-1)
    funcSum f k h m | m == 1 = f (k + h)
                    | otherwise = f (k + h * m) + funcSum f k h (m - 1)
