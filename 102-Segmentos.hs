segmentos::[Int] -> [[Int]]
segmentos zs = reverse(foldl (\(x:xs) y ->  (x ++ [y]):(x:xs) ) [[]] zs)