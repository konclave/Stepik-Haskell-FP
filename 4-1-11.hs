cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error = EQ
cmp Info Info = EQ
cmp Warning Warning = EQ
cmp Error _ = GT
cmp Info _ = LT
cmp _ Info = GT
cmp _ Error = LT
cmp _ _ = EQ
