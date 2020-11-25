and'::[Bool] -> Bool
and' [] = True
and' (x:xs) = x && and' xs

andFold::[Bool] -> Bool
andFold xs = foldl (\x y -> x && y) True xs