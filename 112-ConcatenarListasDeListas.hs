concatR::[[a]] -> [a]
concatR [] = []
concatR (x:xs) = x ++ concatR xs