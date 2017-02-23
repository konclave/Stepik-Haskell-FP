nTimes:: a -> Int -> [a]
nTimes x 0 = []
nTimes x 1 = x : []
nTimes x n = x : (nTimes x (n - 1))
