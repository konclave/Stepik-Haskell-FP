perms :: [a] -> [[a]]
perms []         =  [[]]
perms (x:xs)     =  concatMap interleave $ perms xs
  where interleave []     =  [[x]]
        interleave (y:ys) =  (x:y:ys) : map (y:) (interleave ys)
