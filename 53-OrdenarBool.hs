ordenada:: Ord a => [a] -> Bool
ordenada [] = True
ordenada [x] = True
ordenada (x:y:ys) = if x<y then ordenada (y:ys) else False