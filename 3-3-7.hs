-- data Odd = Odd Integer deriving (Eq,Show)
-- не убирайте комментарий с предыдущей строки
-- определение Odd уже присутствует в вызывающей программе
instance Enum Odd where
    succ (Odd x) = Odd (x + 2)
    pred (Odd x) = Odd (x - 2)
    toEnum = Odd . toInteger
    fromEnum (Odd x) = fromIntegral x
    enumFrom (Odd x) = Odd x : (enumFrom . succ . Odd $ x)
    enumFromThen (Odd x) (Odd y) = (Odd x) : enumFromThen (Odd y) (Odd (2 * y - x))
    enumFromTo (Odd x) (Odd y)
        | x > y = []
        | (Odd x) == (Odd y) = [(Odd y)]
        | otherwise = (Odd x) : enumFromTo (succ $ Odd $ x) (Odd y)

    enumFromThenTo (Odd x) (Odd y) (Odd z)
        | x == y && x == z = Odd x : enumFromThenTo (Odd x) (Odd y) (Odd z)
        | x == y = []
        | (x < y && x > z) || (x > y && x < z) = []
        | otherwise = (Odd x) : enumFromThenTo (Odd y) (Odd (y + step)) (Odd z) where step = y - x