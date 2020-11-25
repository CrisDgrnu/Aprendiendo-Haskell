borrar:: Eq a => a -> [a] -> [a]
borrar _ [] = []
borrar n (x:xs) = if (n == x) then xs else x:(borrar n xs)