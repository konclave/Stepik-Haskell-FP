data Shape = Circle Double | Rectangle Double Double

area :: Shape -> Double
area (Circle x) = pi * x ^ 2
area (Rectangle x y) = x * y
