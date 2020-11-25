mitadParesF::[Int] -> [Int]
mitadParesF xs = foldl (\ x y -> if even y then x++[y `div` 2] else x ) [] xs

mitadParesC::[Int] -> [Int]
mitadParesC xs = [x `div` 2 | x<-xs, even x]