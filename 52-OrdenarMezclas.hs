mezcla:: Ord a => [a] -> [a] -> [a]
mezcla [] [] = []
mezcla xs [] = xs
mezcla [] ys = ys
mezcla (x:xs) (y:ys) = if x<y then (x:(mezcla xs (y:ys))) else (y:mezcla (x:xs) ys)