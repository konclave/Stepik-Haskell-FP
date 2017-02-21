instance (Printable a, Printable b) => Printable (a, b) where
    toString (x,y) = "(" ++ toString x ++ "," ++ toString y ++ ")"
