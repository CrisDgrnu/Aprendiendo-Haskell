incluye::[Int] -> [Int] -> Bool
incluye [] _ = True
incluye _ [] = False
incluye xs ys = if (elem xs (subListas ys (length xs))) then True else False

subListas::[Int] -> Int ->[[Int]]
subListas [x,y,z] n = [[x,y,z]]
subListas (x:xs) n = [take n (x:xs)] ++ (subListas xs n)