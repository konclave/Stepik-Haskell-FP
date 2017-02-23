groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems xs = glue ( split xs ) where
    split xs = span (== head xs) xs
    glue (ms, []) = ms : [] 
    glue (ms, ns) = ms : glue ( split ns )
    
