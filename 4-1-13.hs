import Data.Char
processData :: SomeData -> String
processData d = 
    case doSomeWork d of 
        (Fail, n) -> "Fail: " ++ (show n)
        (_, _) -> "Success"
