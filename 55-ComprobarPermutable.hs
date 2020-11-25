borrar:: Eq a => a -> [a] -> [a]
borrar _ [] = []
borrar n (x:xs) = if (n == x) then xs else x:(borrar n xs)

permutables:: Eq a => [a] -> [a] -> Bool
permutables [] [] = True
permutables (x:xs) ys = elem x ys && permutables xs (borrar x ys)