invertirFold:: [[a]] -> [[a]]
invertirFold xs = foldl (\x y -> (reverse y : x)) [] xs
