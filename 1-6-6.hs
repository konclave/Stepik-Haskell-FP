seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n > 2 = let
             helper k1 k2 k3 2 = k1
             helper k1 k2 k3 k = helper (k1 + k2 - 2 * k3) k1 k2 (k - 1)
         in helper 3 2 1 n

											 
