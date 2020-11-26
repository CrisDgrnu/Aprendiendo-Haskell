partes::[a] -> [[a]]
partes xs = foldl (\ x y -> x ++ map (y:) x) [[]] xs