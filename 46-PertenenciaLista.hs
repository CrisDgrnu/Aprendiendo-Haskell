pertenece:: Eq a => a -> [a] -> Bool
pertenece _ [] = False
pertenece e (x:xs) = if e == x then True else pertenece e xs

perteneceFoldl::Eq a => a -> [a] -> Bool
perteneceFoldl e xs = foldl (\ x y -> x || y == e ) False xs

perteneceFoldr::Eq a => a -> [a] -> Bool
perteneceFoldr e xs = foldr(\ y x -> x || y == e ) False xs