import Data.List
import Data.Maybe
revRange :: (Char,Char) -> [Char]
revRange (a,b) = unfoldr g b
  where g c = if c >= a then Just(c, pred c) else Nothing
