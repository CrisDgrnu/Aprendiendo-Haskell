concatenar::[[a]] -> [a]
concatenar [] = []
concatenar (x:xs) = x ++ (concatenar xs)

concatenarFoldl::[[a]] -> [a]
concatenarFoldl xs = foldl (\x y -> x++y) [] xs

concatenarFoldr::[[a]] -> [a]
concatenarFoldr xs = foldr (\x y -> x++y)   [] xs