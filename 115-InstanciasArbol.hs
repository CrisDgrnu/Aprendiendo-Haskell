data Arbol a = AV | Rama (Arbol a) a (Arbol a)

a1 = (Rama (Rama ( Rama AV 12 AV) 49 (Rama (Rama AV 23 AV) 5 (Rama AV 13 AV))) 123 (Rama AV 10 AV))
a2 = (Rama (Rama (Rama AV 3 AV) 2 (Rama AV 4 AV)) 1 AV)

instance (Eq a) => Eq (Arbol a) where
    AV == AV = True
    AV == _ = False
    _ == AV = False
    (Rama i1 r1 d1) == (Rama i2 r2 d2) = (i1 == i2) && (r1==r2) && (d1 == d2)

instance (Show a) => Show (Arbol a) where
    show AV = "()"
    show (Rama i r d) = "(" ++ show i ++ " | -" ++ show r ++ "- | " ++ show d ++ ")"
