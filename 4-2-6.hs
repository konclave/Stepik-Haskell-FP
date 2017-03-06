data Result' = Fail' Int | Success' Result

instance Show Result' where
    show x = case x of
        Fail' n -> "Fail: " ++ (show n)
        Success' Success -> "Success"
        
doSomeWork' :: SomeData -> Result'
doSomeWork' x = case (doSomeWork x) of 
    (Success, _) -> (Success' Success)
    (Fail, n) -> Fail' n
