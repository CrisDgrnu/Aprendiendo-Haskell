insertarFinalR::Eq a =>a -> [a] -> [a]
insertarFinalR e [] = [e]
insertarFinalR e (x:xs) = if (xs == []) then x:(xs ++ [e]) else x:(insertarFinalR e xs)

insertarFinalFold::Eq a =>a -> [a] -> [a]
insertarFinalFold e xs = (foldl (\x y -> x ++ [y]) [] xs) ++ [e]