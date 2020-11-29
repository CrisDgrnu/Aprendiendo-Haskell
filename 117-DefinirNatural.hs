data Natural = Cero | Suc Natural

instance Eq Natural where
    Cero == Cero = True
    Cero == _ = False
    _ == Cero = False
    Suc x == Suc y = x == y

instance Ord Natural where
    Cero <= _ = True
    (Suc x) <= (Suc y) = x<=y    
